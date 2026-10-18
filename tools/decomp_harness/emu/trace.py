#!/usr/bin/env python3
"""Run one dynamic experiment and emit a JSON evidence record.

    trace.py --state tutorial_menu --overlay 53 --script "touch 128 40" --frames 240
    trace.py --state tutorial_menu --file src/main.c --symbols ReadMsgDataIntoString --frames 120
    trace.py --state boot --overlay main --unnamed --frames 300 --shots build/heartgold.us/emu/evidence/shots
    trace.py ... --watch gSystem:64 --watch 021d1200:4   # write provenance (symbol or hex address)
    trace.py ... --poke 021d1130=1:1                     # perturbation: write RAM before the script
    trace.py ... --record "why this experiment"           # also append to naming_evidence.jsonl

Output goes to build/<game>/emu/evidence/<timestamp>.json unless --out is given
('-' = stdout); naming_evidence.jsonl and proposals should point at that path.

Hook count is cheap (measured 2026-10-12: 3,543 hooks, 120 frames, 0.18 s);
what costs is the Python callback per *hit*, so a per-frame function with
return capture is the expensive case, not a big silent set.
"""
from __future__ import annotations

import argparse
import json
import re
import sys
import time
from collections import defaultdict
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from emu.harness import Harness  # noqa: E402
from emu.scenarios import load_graph, materialize  # noqa: E402

EVIDENCE = Path(__file__).resolve().parents[1] / "naming_evidence.jsonl"


def main(argv):
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--game", default="heartgold.us")
    ap.add_argument("--state", default="boot", help="scenario to start from (materialized on demand)")
    g = ap.add_argument_group("what to hook")
    g.add_argument("--file", action="append", default=[], help="asm/*.s or src/*.c: hook its functions")
    g.add_argument("--symbols", default="", help="comma list of symbol names")
    g.add_argument("--overlay", action="append", default=[], help="hook every function of this overlay")
    g.add_argument("--unnamed", action="store_true", help="with --overlay/--file: only unk_/sub_/ovNN_ names")
    g.add_argument("--watch", action="append", default=[], help="ADDR:SIZE write provenance (ADDR = symbol or hex)")
    g.add_argument("--poke", action="append", default=[], help="ADDR=VALUE[:SIZE] written after the state loads (SIZE 1|2|4, default 4)")
    g.add_argument("--no-return", action="store_true", help="skip return-value capture (faster)")
    g.add_argument("--max-samples", type=int, default=16, help="arg/return samples kept per function (default 16)")
    r = ap.add_argument_group("what to do")
    r.add_argument("--script", action="append", default=[], help="Harness.run_script lines, in order")
    r.add_argument("--frames", type=int, default=0, help="extra frames to run after the script")
    r.add_argument("--shots", default=None, help="dir for before/after screenshots")
    r.add_argument("--out", default=None, help="JSON output path ('-' = stdout; default build/<game>/emu/evidence/<ts>.json)")
    r.add_argument("--record", default=None, help="append a naming_evidence.jsonl entry with this note")
    args = ap.parse_args(argv)

    h = Harness(args.game, max_samples=args.max_samples)
    graph = load_graph()
    materialize(h, graph, args.state, log=lambda m: print(m, file=sys.stderr))
    side = h.load_state(args.state)

    def addr_of(text: str) -> int:
        """'gSystem' | 'gSystem+0x24' | '021d110c' -> address."""
        m = re.match(r"^([A-Za-z_]\w*)(?:\+(0x[0-9a-fA-F]+|\d+))?$", text)
        if m:
            return h.syms.lookup(m.group(1)).addr + (int(m.group(2), 0) if m.group(2) else 0)
        return int(text, 16)

    pokes = []
    for pk in args.poke:
        lhs, rhs = pk.split("=", 1)
        val, _, size = rhs.partition(":")
        a, n = addr_of(lhs), int(size or 4)
        h.write(a, int(val, 0), n)
        pokes.append({"addr": f"{a:08x}", "value": int(val, 0), "size": n})

    targets = []
    for f in args.file:
        targets += h.syms.functions_in_file(f)
    for ov in args.overlay:
        targets += h.syms.functions(ov)
    if args.unnamed:
        targets = [s for s in targets if s.unnamed]
    targets += [h.syms.lookup(n) for n in args.symbols.split(",") if n]
    seen = set()
    targets = [t for t in targets if not (t.name in seen or seen.add(t.name))]
    if not targets and not args.watch:
        sys.exit("nothing to hook: give --file/--symbols/--overlay/--watch")
    h.hook_many(targets, capture_return=not args.no_return)

    watches = defaultdict(lambda: defaultdict(int))
    for w in args.watch:
        a, n = w.split(":")
        base = addr_of(a)
        h.watch_write(base, int(n, 0), lambda addr, sz, who, _b=base: watches[f"{_b:08x}"].__setitem__(
            f"{who}@+{addr - _b:#x}", watches[f"{_b:08x}"][f"{who}@+{addr - _b:#x}"] + 1))

    shots = []
    if args.shots:
        shots.append(str(h.screenshot(Path(args.shots) / "before.png")))
    t0 = time.time()
    f0 = h.frame
    h.run_script(args.script)
    h.step(args.frames)
    wall = time.time() - t0
    if args.shots:
        shots.append(str(h.screenshot(Path(args.shots) / "after.png")))

    funcs = h.report()
    rec = {
        "game": args.game, "state": args.state, "state_meta": {k: side.get(k) for k in ("frame", "loaded", "loaded_mismatch")},
        "script": args.script, "pokes": pokes, "frames": h.frame - f0, "wall_s": round(wall, 2),
        "max_samples": args.max_samples,
        "hooked": len(targets), "fired": sum(1 for v in funcs.values() if v["hits"]),
        "overlay_log": h.overlay_log, "loaded_end": sorted(h.loaded),
        "functions": funcs, "watches": {k: dict(v) for k, v in watches.items()}, "screenshots": shots,
    }
    text = json.dumps(rec, indent=1)
    if args.out is None:
        ev = h.states_dir.parent / "evidence"
        ev.mkdir(parents=True, exist_ok=True)
        args.out = str(ev / f"{time.strftime('%Y%m%d-%H%M%S')}_{args.state}.json")
    if args.out == "-":
        print(text)
    else:
        Path(args.out).write_text(text, newline="\n")
        print(f"wrote {args.out}: {rec['fired']}/{rec['hooked']} hooked functions fired in {rec['frames']} frames ({wall:.1f}s)",
              file=sys.stderr)
    if args.record:
        with EVIDENCE.open("a", newline="\n") as fp:
            fp.write(json.dumps({"ts": time.strftime("%Y-%m-%dT%H:%M:%S"), "note": args.record,
                                 "state": args.state, "script": args.script, "frames": rec["frames"],
                                 "fired": {k: v["hits"] for k, v in funcs.items() if v["hits"]},
                                 "silent": [k for k, v in funcs.items() if not v["hits"]],
                                 "out": args.out}) + "\n")
    h.close()


if __name__ == "__main__":
    main(sys.argv[1:])
