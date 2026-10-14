#!/usr/bin/env python3
"""Overlay-aware symbol table built from the linked ARM9 ELF.

The matching build emits ``build/<game>/main.nef`` with every function and
data symbol (about 43k) and one ELF section per overlay, named after the
overlay (``OVY_38``, ``field``, ``intro_title`` ...).  Overlays share address
ranges, so an address alone is ambiguous: this module resolves an address to
a symbol *given the set of overlays currently loaded*.

Overlay section name -> overlay id comes from the absolute symbols
``SDK_OVERLAY_<name>_ID`` the linker emits.

Usage::

    syms = SymbolTable.load()            # cached under build/<game>/emu/
    syms.lookup("ReadMsgDataIntoString") # -> Symbol
    syms.resolve(0x0221ba10, loaded={0, 38})  # -> Symbol or None
    syms.functions_in_file("asm/overlay_38_thumb_a02.s")  # by .s/.c defines
"""
from __future__ import annotations

import bisect
import json
import os
import re
import subprocess
import sys
from dataclasses import asdict, dataclass, field
from pathlib import Path
from typing import Dict, Iterable, List, Optional, Set

REPO = Path(__file__).resolve().parents[3]
READELF = os.environ.get("READELF", "arm-none-eabi-readelf")
MAIN_OVERLAY = -1  # pseudo id for the static ARM9 module (always loaded)
UNNAMED_RE = re.compile(r"^(sub_|unk_|ov\d+_[0-9A-F]{8}$|_0[0-9A-F]{7}$)")


@dataclass
class Symbol:
    name: str
    addr: int
    size: int
    kind: str  # FUNC | OBJECT | NOTYPE
    overlay: int  # MAIN_OVERLAY or FSOverlayID
    section: str

    @property
    def end(self) -> int:
        return self.addr + max(self.size, 2)

    @property
    def unnamed(self) -> bool:
        return bool(UNNAMED_RE.match(self.name))


class SymbolTable:
    def __init__(self, symbols: List[Symbol], overlay_names: Dict[int, str],
                 overlay_base: Optional[Dict[int, int]] = None):
        self.symbols = symbols
        self.overlay_names = overlay_names  # id -> section name
        self.overlay_base = overlay_base or {}  # id -> load address of the overlay image
        self.by_name: Dict[str, Symbol] = {}
        self._by_overlay: Dict[int, List[Symbol]] = {}
        for s in symbols:
            self.by_name.setdefault(s.name, s)
            self._by_overlay.setdefault(s.overlay, []).append(s)
        self._starts: Dict[int, List[int]] = {}
        for ov, lst in self._by_overlay.items():
            lst.sort(key=lambda s: (s.addr, -s.size))
            self._starts[ov] = [s.addr for s in lst]

    # ------------------------------------------------------------ loading
    @classmethod
    def load(cls, game: str = "heartgold.us", elf: Optional[Path] = None,
             refresh: bool = False) -> "SymbolTable":
        elf = elf or REPO / "build" / game / "main.nef"
        if not elf.exists():
            sys.exit(f"missing {elf}: build the ROM first (chiri pkg -- build --target main --no-compare)")
        cache = elf.parent / "emu" / "symbols.json"
        if not refresh and cache.exists() and cache.stat().st_mtime >= elf.stat().st_mtime:
            data = json.loads(cache.read_text())
            return cls([Symbol(**d) for d in data["symbols"]],
                       {int(k): v for k, v in data["overlay_names"].items()},
                       {int(k): v for k, v in data["overlay_base"].items()})
        table = cls._from_elf(elf)
        cache.parent.mkdir(parents=True, exist_ok=True)
        cache.write_text(json.dumps({
            "symbols": [asdict(s) for s in table.symbols],
            "overlay_names": table.overlay_names,
            "overlay_base": table.overlay_base,
        }))
        return table

    @classmethod
    def _from_elf(cls, elf: Path) -> "SymbolTable":
        sections, sec_addr = cls._read_sections(elf)
        raw = subprocess.run([READELF, "-s", "-W", str(elf)], check=True,
                             capture_output=True, text=True).stdout
        overlay_ids: Dict[str, int] = {}
        rows = []
        for line in raw.splitlines():
            parts = line.split()
            if len(parts) < 8 or not parts[0].endswith(":"):
                continue
            _, value, size, typ, _bind, _vis, ndx, name = parts[:8]
            m = re.match(r"SDK_OVERLAY_(.+)_ID$", name)
            if m:
                overlay_ids[m.group(1)] = int(value, 16)
                continue
            if ndx == "ABS":
                continue
            if ndx == "UND" or typ not in ("FUNC", "OBJECT", "NOTYPE") or name.startswith("$"):
                continue
            addr = int(value, 16)
            if addr < 0x01FF0000:  # overlay-id constants and other non-memory symbols
                continue
            rows.append((addr & ~1, int(size, 0), typ, ndx, name))
        syms: List[Symbol] = []
        overlay_names: Dict[int, str] = {MAIN_OVERLAY: "main"}
        for addr, size, typ, ndx, name in rows:
            sec = sections.get(int(ndx), "")
            if sec in ("main", "ITCM", "DTCM", "main_defs", "main_table"):
                ov = MAIN_OVERLAY
            elif sec in overlay_ids:
                ov = overlay_ids[sec]
                overlay_names[ov] = sec
            else:
                continue  # relocation / metadata sections
            syms.append(Symbol(name, addr, size, typ, ov, sec))
        overlay_base = {ov: sec_addr[sec] for sec, ov in overlay_ids.items() if sec in sec_addr}
        return cls(syms, overlay_names, overlay_base)

    @staticmethod
    def _read_sections(elf: Path):
        """index -> name, and name -> lowest load address of that name's sections."""
        raw = subprocess.run([READELF, "-S", "-W", str(elf)], check=True,
                             capture_output=True, text=True).stdout
        names: Dict[int, str] = {}
        addrs: Dict[str, int] = {}
        for m in re.finditer(r"^\s*\[\s*(\d+)\]\s+(\S+)\s+(\S+)\s+([0-9a-f]{8})", raw, re.M):
            idx, name, typ, addr = int(m.group(1)), m.group(2), m.group(3), int(m.group(4), 16)
            names[idx] = name
            if typ == "PROGBITS" and addr:
                addrs[name] = min(addrs.get(name, addr), addr)
        return names, addrs

    # ------------------------------------------------------------ queries
    def lookup(self, name: str) -> Symbol:
        try:
            return self.by_name[name]
        except KeyError:
            raise KeyError(f"no symbol {name!r} in ELF") from None

    def overlay_id(self, name_or_id) -> int:
        """Accept 38, 'OVY_38', 'intro_title', or 'main'."""
        if isinstance(name_or_id, int):
            return name_or_id
        if name_or_id.lstrip("-").isdigit():
            return int(name_or_id)
        if name_or_id == "main":
            return MAIN_OVERLAY
        for ov, sec in self.overlay_names.items():
            if sec == name_or_id:
                return ov
        m = re.match(r"(?:OVY_|ov|overlay_)0*(\d+)$", name_or_id)
        if m:
            return int(m.group(1))
        raise KeyError(f"unknown overlay {name_or_id!r}")

    def _in_overlay(self, ov: int, addr: int) -> Optional[Symbol]:
        starts = self._starts.get(ov)
        if not starts:
            return None
        i = bisect.bisect_right(starts, addr) - 1
        while i >= 0:
            s = self._by_overlay[ov][i]
            if s.addr <= addr < s.end:
                return s
            if addr - s.addr > 0x10000:
                break
            i -= 1
        return None

    def resolve(self, addr: int, loaded: Iterable[int] = ()) -> Optional[Symbol]:
        """Address -> symbol, preferring the static module, then loaded overlays."""
        addr &= ~1
        s = self._in_overlay(MAIN_OVERLAY, addr)
        if s:
            return s
        for ov in loaded:
            s = self._in_overlay(ov, addr)
            if s:
                return s
        return None

    def candidates(self, addr: int) -> List[Symbol]:
        """Every symbol at this address across all overlays (for collision reports)."""
        addr &= ~1
        out = []
        for ov in self._by_overlay:
            s = self._in_overlay(ov, addr)
            if s:
                out.append(s)
        return out

    def functions(self, overlay=None, unnamed_only: bool = False) -> List[Symbol]:
        ov = None if overlay is None else self.overlay_id(overlay)
        return [s for s in self.symbols
                if s.kind == "FUNC" and (ov is None or s.overlay == ov)
                and (not unnamed_only or s.unnamed)]

    def functions_in_file(self, path: str) -> List[Symbol]:
        """Functions defined by an asm/*.s (thumb/arm_func_start) or src/*.c file."""
        text = (REPO / path).read_text(errors="replace")
        if path.endswith(".s"):
            names = re.findall(r"^\s*(?:thumb|arm)_func_start\s+(\w+)", text, re.M)
        else:
            names = re.findall(r"^\w[\w\s\*]*?\b(\w+)\s*\([^;]*?\)\s*\{", text, re.M)
        return [self.by_name[n] for n in names if n in self.by_name]


def main(argv: List[str]) -> None:
    import argparse
    ap = argparse.ArgumentParser(description=__doc__.split("\n\n")[0])
    ap.add_argument("--game", default="heartgold.us")
    ap.add_argument("--refresh", action="store_true", help="ignore the cache")
    sub = ap.add_subparsers(dest="cmd", required=True)
    p = sub.add_parser("resolve", help="address -> symbol(s)")
    p.add_argument("addr", type=lambda x: int(x, 16))
    p.add_argument("--loaded", default="", help="comma list of loaded overlay ids/names")
    p = sub.add_parser("lookup", help="name -> address")
    p.add_argument("name")
    p = sub.add_parser("file", help="functions defined in an asm/.s or src/.c file")
    p.add_argument("path")
    p = sub.add_parser("stats", help="naming backlog per overlay")
    args = ap.parse_args(argv)
    t = SymbolTable.load(args.game, refresh=args.refresh)
    if args.cmd == "resolve":
        loaded = [t.overlay_id(x) for x in args.loaded.split(",") if x]
        s = t.resolve(args.addr, loaded)
        print("resolved:", s)
        for c in t.candidates(args.addr):
            print("candidate:", c)
    elif args.cmd == "lookup":
        print(t.lookup(args.name))
    elif args.cmd == "file":
        for s in t.functions_in_file(args.path):
            print(f"{s.addr:08x} {s.size:5d} {t.overlay_names[s.overlay]:14s} {s.name}")
    elif args.cmd == "stats":
        tot = unn = 0
        for ov in sorted(t.overlay_names):
            fs = t.functions(ov)
            u = sum(s.unnamed for s in fs)
            tot += len(fs); unn += u
            print(f"{t.overlay_names[ov]:16s} id={ov:4d} funcs={len(fs):5d} unnamed={u:5d}")
        print(f"total funcs={tot} unnamed={unn}")


if __name__ == "__main__":
    main(sys.argv[1:])
