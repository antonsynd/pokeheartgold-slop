#!/usr/bin/env python3
"""Materialize and inspect the scenario graph (scenarios.json).

    scenarios.py list
    scenarios.py materialize tutorial_controls [--force]   # builds parents first
    scenarios.py explore tutorial_menu --script "touch 128 96" --script "wait 240" --shots DIR
"""
from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from emu.harness import Harness  # noqa: E402

HERE = Path(__file__).resolve().parent
SCENARIOS = HERE / "scenarios.json"


def load_graph() -> dict:
    g = json.loads(SCENARIOS.read_text())
    g.pop("_doc", None)
    return g


def materialize(h: Harness, graph: dict, name: str, force: bool = False, log=print) -> None:
    sc = graph[name]
    if h.state_path(name).exists() and not force:
        return
    parent = sc["from"]
    if parent is None:
        h.emu.reset(); h.frame = 0; h.loaded = set(); h.keys = 0
        h.emu.input.keypad_update(0)
    else:
        materialize(h, graph, parent, force, log)
        h.load_state(parent)
    log(f"[{name}] from {parent}: {sc['script']}")
    h.run_script(sc["script"])
    missing = set(sc.get("expect", {}).get("loaded", [])) - h.loaded
    if missing:
        raise RuntimeError(f"[{name}] expected overlays {sorted(missing)} loaded; have {sorted(h.loaded)}")
    p = h.save_state(name, {"scenario": name, "from": parent, "script": sc["script"],
                            "overlay_log": h.overlay_log[-20:]})
    h.screenshot(p.with_suffix(".png"))
    log(f"[{name}] saved {p.name} frame={h.frame} loaded={sorted(h.loaded)}")


def main(argv):
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--game", default="heartgold.us")
    sub = ap.add_subparsers(dest="cmd", required=True)
    sub.add_parser("list")
    p = sub.add_parser("materialize"); p.add_argument("name"); p.add_argument("--force", action="store_true")
    p = sub.add_parser("explore"); p.add_argument("name")
    p.add_argument("--script", action="append", default=[]); p.add_argument("--shots", default=None)
    args = ap.parse_args(argv)
    graph = load_graph()
    if args.cmd == "list":
        h = Harness(args.game)
        for n, sc in graph.items():
            have = "ready" if h.state_path(n).exists() else "-----"
            print(f"{have} {n:24s} from={sc['from']!s:20s} {sc.get('note','')}")
        return
    h = Harness(args.game)
    if args.cmd == "materialize":
        materialize(h, graph, args.name, args.force)
    elif args.cmd == "explore":
        materialize(h, graph, args.name)
        side = h.load_state(args.name)
        print("loaded:", sorted(h.loaded), side.get("loaded_mismatch", ""))
        for i, line in enumerate(args.script):
            h.run_script([line])
            print(f"after {line!r}: frame={h.frame} loaded={sorted(h.loaded)} overlays={h.overlay_log[-3:]}")
            if args.shots:
                h.screenshot(Path(args.shots) / f"{i:02d}_{line.replace(' ', '_')}.png")
    h.close()


if __name__ == "__main__":
    main(sys.argv[1:])
