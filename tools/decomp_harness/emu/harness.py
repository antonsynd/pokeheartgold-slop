#!/usr/bin/env python3
"""DeSmuME-backed dynamic-analysis harness for the matching decomp.

Wraps py-desmume with the two things a naming harness needs that the raw
emulator does not give you:

* **Overlay-aware symbols.**  Hooks on ``FS_LoadOverlay`` / ``FS_UnloadOverlay``
  keep the set of loaded overlays current, so every PC / LR resolves to the
  right ``ovNN_XXXXXXXX`` symbol.  ``detect_loaded()`` cross-checks that set
  against RAM using the built overlay binaries, which is how a freshly loaded
  savestate recovers it.
* **Function hooks with return capture.**  ``hook(symbol)`` counts every
  entry and every caller, keeps r0-r3 and r0-on-return for the first
  ``max_samples`` hits (default 16), and ignores hits when the symbol's
  overlay is not loaded (another overlay's code lives at that address).

Input gotchas (both verified 2026-10-12, see EMU_HARNESS.md):
``cycle(with_joystick=False)`` always, and keys are driven by
``keypad_update(mask)`` with a mask this class owns — the library's
``keypad_add_key`` presses every button.
"""
from __future__ import annotations

import json
import os
import re
import time
from collections import defaultdict
from dataclasses import dataclass, field
from pathlib import Path
from typing import Callable, Dict, Iterable, List, Optional, Set, Union

from desmume.controls import Keys, keymask
from desmume.emulator import DeSmuME

from .symbols import MAIN_OVERLAY, REPO, Symbol, SymbolTable

KEY_NAMES = {
    "A": Keys.KEY_A, "B": Keys.KEY_B, "X": Keys.KEY_X, "Y": Keys.KEY_Y,
    "L": Keys.KEY_L, "R": Keys.KEY_R, "START": Keys.KEY_START, "SELECT": Keys.KEY_SELECT,
    "UP": Keys.KEY_UP, "DOWN": Keys.KEY_DOWN, "LEFT": Keys.KEY_LEFT, "RIGHT": Keys.KEY_RIGHT,
}
KEYINPUT = 0x04000130
U32 = 0xFFFFFFFF


def key_mask(spec: str) -> int:
    """'A' | 'START+SELECT+L+R' -> active-high mask for keypad_update."""
    mask = 0
    for k in spec.upper().split("+"):
        if k:
            mask |= keymask(KEY_NAMES[k])
    return mask


@dataclass
class Hit:
    frame: int
    args: List[int]
    lr: int
    caller: Optional[str]
    ret: Optional[int] = None


@dataclass
class FunctionTrace:
    symbol: str
    addr: int
    overlay: int
    hits: int = 0
    collisions: int = 0  # address executed while this overlay was NOT loaded
    samples: List[Hit] = field(default_factory=list)
    callers: Dict[str, int] = field(default_factory=lambda: defaultdict(int))


class Harness:
    def __init__(self, game: str = "heartgold.us", rom: Optional[Path] = None,
                 syms: Optional[SymbolTable] = None, max_samples: int = 16):
        self.game = game
        self.rom = rom or REPO / "build" / game / f"poke{game.split('.')[0]}.us.nds"
        if not self.rom.exists():
            raise FileNotFoundError(f"{self.rom}: build the ROM first")
        self.syms = syms or SymbolTable.load(game)
        self.states_dir = REPO / "build" / game / "emu" / "states"
        self.states_dir.mkdir(parents=True, exist_ok=True)
        self.max_samples = max_samples
        self.emu = DeSmuME()
        self.emu.open(str(self.rom))
        self.mem = self.emu.memory
        self.regs = self.mem.register_arm9
        self.frame = 0
        self.keys = 0
        self.loaded: Set[int] = set()
        self.overlay_log: List[tuple] = []  # (frame, 'load'|'unload', id)
        self._exec_cbs: Dict[int, List[Callable]] = defaultdict(list)
        self._pending_returns: Dict[int, List[tuple]] = defaultdict(list)  # ret addr -> [(trace, hit)]
        self.traces: Dict[str, FunctionTrace] = {}
        self._install_overlay_tracking()

    # ------------------------------------------------------------ exec hook multiplexing
    def _exec(self, addr: int, cb: Callable[[int], None]) -> None:
        addr &= ~1
        first = not self._exec_cbs[addr]
        self._exec_cbs[addr].append(cb)
        if first:
            def dispatch(a, _size, _addr=addr):
                for f in list(self._exec_cbs[_addr]):
                    f(_addr)
            self.mem.register_exec(addr, dispatch)

    def _install_overlay_tracking(self) -> None:
        # Two layers: the game's wrapper (poke_overlay.c) has NoInit/Async paths
        # that bypass FS_LoadOverlay, and the SDK entry points catch boot-time
        # loads that bypass the wrapper.  add/discard are idempotent, so a load
        # seen at both layers is harmless.
        def tracker(reg: str, what: str):
            def cb(_):
                ov = getattr(self.regs, reg)
                if what == "load":
                    self.loaded.add(ov)
                else:
                    self.loaded.discard(ov)
                self.overlay_log.append((self.frame, what, ov))
            return cb

        for name, reg, what in (("HandleLoadOverlay", "r0", "load"), ("UnloadOverlayByID", "r0", "unload"),
                                ("FS_LoadOverlay", "r1", "load"), ("FS_UnloadOverlay", "r1", "unload")):
            self._exec(self.syms.lookup(name).addr, tracker(reg, what))

    # ------------------------------------------------------------ overlays
    def resolve(self, addr: int) -> Optional[Symbol]:
        return self.syms.resolve(addr, self.loaded)

    def name(self, addr: int) -> str:
        s = self.resolve(addr)
        return s.name if s else f"?{addr:08x}"

    def detect_loaded(self, probe: int = 64) -> Set[int]:
        """Recover the loaded-overlay set by comparing RAM with each built overlay image."""
        found: Set[int] = set()
        for ov, sec in self.syms.overlay_names.items():
            if ov == MAIN_OVERLAY:
                continue
            sbin = REPO / "build" / self.game / f"{sec}.sbin"
            start = self.syms.overlay_base.get(ov)
            if not sbin.exists() or start is None:
                continue
            want = sbin.read_bytes()[:probe]
            if len(want) < probe:
                continue
            if self.read_bytes(start, probe) == want:
                found.add(ov)
        return found

    # ------------------------------------------------------------ stepping and input
    def step(self, frames: int = 1) -> None:
        for _ in range(frames):
            self.emu.cycle(with_joystick=False)
            self.frame += 1

    def hold(self, keys: str) -> None:
        self.keys |= key_mask(keys)
        self.emu.input.keypad_update(self.keys)

    def release(self, keys: Optional[str] = None) -> None:
        self.keys = 0 if keys is None else self.keys & ~key_mask(keys)
        self.emu.input.keypad_update(self.keys)

    def press(self, keys: str, hold: int = 4, gap: int = 2) -> None:
        self.hold(keys); self.step(hold); self.release(keys); self.step(gap)

    def touch(self, x: int, y: int, hold: int = 4, gap: int = 2) -> None:
        self.emu.input.touch_set_pos(x, y); self.step(hold)
        self.emu.input.touch_release(); self.step(gap)

    def run_until(self, overlay: Optional[int] = None, hit: Optional[str] = None,
                  max_frames: int = 3000, spam: Optional[str] = None, every: int = 90) -> bool:
        """Step until overlay `overlay` loads or symbol `hit` executes; optionally
        tapping `spam` keys every `every` frames.  Returns False on timeout."""
        done = [overlay is not None and overlay in self.loaded]
        if hit is not None:
            self._exec(self.syms.lookup(hit).addr, lambda _: done.__setitem__(0, True))
        if overlay is not None:
            self._exec(self.syms.lookup("HandleLoadOverlay").addr,
                       lambda _: done.__setitem__(0, True) if self.regs.r0 == overlay else None)
            self._exec(self.syms.lookup("FS_LoadOverlay").addr,
                       lambda _: done.__setitem__(0, True) if self.regs.r1 == overlay else None)
        for i in range(max_frames):
            if done[0]:
                return True
            if spam and i % every == 0:
                self.press(spam)
            else:
                self.step()
        return done[0]

    def run_script(self, script: Iterable[str]) -> None:
        """Steps: 'wait N' | 'press KEYS [hold]' | 'hold KEYS N' | 'touch X Y [hold]' | 'release'
        | 'until overlay=N|hit=SYM [max=N] [spam=KEYS] [every=N]'."""
        for line in script:
            parts = line.split()
            if not parts:
                continue
            op, args = parts[0].lower(), parts[1:]
            if op == "until":
                kv = dict(a.split("=", 1) for a in args)
                ok = self.run_until(overlay=int(kv["overlay"]) if "overlay" in kv else None,
                                    hit=kv.get("hit"), max_frames=int(kv.get("max", 3000)),
                                    spam=kv.get("spam"), every=int(kv.get("every", 90)))
                if not ok:
                    raise TimeoutError(f"script step {line!r} did not complete within max frames")
            elif op == "wait":
                self.step(int(args[0]))
            elif op == "press":
                self.press(args[0], int(args[1]) if len(args) > 1 else 4)
            elif op == "hold":
                self.hold(args[0]); self.step(int(args[1])); self.release(args[0])
            elif op == "touch":
                self.touch(int(args[0]), int(args[1]), int(args[2]) if len(args) > 2 else 4)
            elif op == "release":
                self.release()
            else:
                raise ValueError(f"unknown script op {line!r}")

    # ------------------------------------------------------------ savestates
    def state_path(self, name: str) -> Path:
        return self.states_dir / f"{name}.dst"

    def save_state(self, name: str, meta: Optional[dict] = None) -> Path:
        p = self.state_path(name)
        self.emu.savestate.save_file(str(p))
        side = {"frame": self.frame, "loaded": sorted(self.loaded), "keys": self.keys,
                "rom": str(self.rom.relative_to(REPO)), "saved": time.strftime("%Y-%m-%dT%H:%M:%S"),
                **(meta or {})}
        p.with_suffix(".json").write_text(json.dumps(side, indent=1))
        return p

    def load_state(self, name: str) -> dict:
        p = self.state_path(name)
        if not p.exists():
            raise FileNotFoundError(f"no savestate {name!r}; run scenarios.py materialize {name}")
        self.emu.savestate.load_file(str(p))
        side = json.loads(p.with_suffix(".json").read_text())
        self.frame = side.get("frame", 0)
        self.keys = 0
        self.emu.input.keypad_update(0)
        self.loaded = set(side.get("loaded", []))
        resident = self.detect_loaded()  # superset: unloaded images stay in RAM until overwritten
        if not self.loaded <= resident:
            side["loaded_mismatch"] = {"sidecar": sorted(self.loaded), "resident": sorted(resident)}
            self.loaded &= resident
        return side

    # ------------------------------------------------------------ function hooks
    def hook(self, sym: Union[str, Symbol], on_enter: Optional[Callable[[FunctionTrace, Hit], None]] = None,
             capture_return: bool = True) -> FunctionTrace:
        s = self.syms.lookup(sym) if isinstance(sym, str) else sym
        tr = self.traces.setdefault(s.name, FunctionTrace(s.name, s.addr, s.overlay))

        def on_entry(_):
            if s.overlay != MAIN_OVERLAY and s.overlay not in self.loaded:
                tr.collisions += 1
                return
            r = self.regs
            lr = r.lr
            hit = Hit(self.frame, [r.r0 & U32, r.r1 & U32, r.r2 & U32, r.r3 & U32], lr & U32, self.name(lr))
            tr.hits += 1
            tr.callers[hit.caller] += 1
            keep = len(tr.samples) < self.max_samples
            if keep:
                tr.samples.append(hit)
            if on_enter:
                on_enter(tr, hit)
            if capture_return and keep:
                self._arm_return(lr & ~1, tr, hit)

        self._exec(s.addr, on_entry)
        return tr

    def _arm_return(self, ret: int, tr: FunctionTrace, hit: Hit) -> None:
        pend = self._pending_returns[ret]
        if not pend:
            def on_ret(_):
                p = self._pending_returns[ret]
                if p:
                    _tr, h = p.pop()
                    h.ret = self.regs.r0 & U32
            self._exec(ret, on_ret)
        pend.append((tr, hit))

    def hook_many(self, syms: Iterable[Union[str, Symbol]], **kw) -> List[FunctionTrace]:
        return [self.hook(s, **kw) for s in syms]

    def watch_write(self, addr: int, size: int, cb: Callable[[int, int, str], None]) -> None:
        """cb(addr, size, writer_name) for every write into [addr, addr+size)."""
        def on_write(a, sz):
            cb(a, sz, self.name(self.regs.pc))
        self.mem.register_write(addr, on_write, size)

    def watch_read(self, addr: int, size: int, cb: Callable[[int, int, str], None]) -> None:
        def on_read(a, sz):
            cb(a, sz, self.name(self.regs.pc))
        self.mem.register_read(addr, on_read, size)

    # ------------------------------------------------------------ observation
    def screenshot(self, path: Union[str, Path]) -> Path:
        path = Path(path)
        path.parent.mkdir(parents=True, exist_ok=True)
        self.emu.screenshot().save(str(path))
        return path

    def read_u32(self, addr: int) -> int:
        return self.mem.unsigned.read_long(addr)

    def write(self, addr: int, value: int, size: int = 4) -> None:
        """Perturbation: write a 1/2/4-byte value into RAM."""
        {1: self.mem.write_byte, 2: self.mem.write_short, 4: self.mem.write_long}[size](addr, value)

    def read_bytes(self, addr: int, n: int) -> bytes:
        return bytes(self.mem.read(addr, addr + n, 1, False))

    def report(self) -> dict:
        out = {}
        for name, tr in self.traces.items():
            out[name] = {
                "addr": f"{tr.addr:08x}", "overlay": self.syms.overlay_names[tr.overlay],
                "hits": tr.hits, "collisions": tr.collisions,
                "callers": dict(sorted(tr.callers.items(), key=lambda kv: -kv[1])),
                "samples": [{"frame": h.frame, "args": [f"{a:#x}" for a in h.args],
                             "caller": h.caller, "ret": None if h.ret is None else f"{h.ret:#x}"}
                            for h in tr.samples],
            }
        return out

    def close(self) -> None:
        self.emu.destroy()
