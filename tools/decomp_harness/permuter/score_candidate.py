#!/usr/bin/env python3
"""
score_candidate.py — fitness function for the decomp-permuter (ROADMAP T1.4).

Compiles ONE candidate C translation unit standalone (byte-identical to make,
same flag set as compile_one.sh) and scores it against a reference object with
objdiff --score --json. Implements the non-negotiable IPA fitness contract:

    * fitness = the TARGET function's diff_halfwords (minimize; 0 + status
      "match" == solved),
    * BUT the candidate is REJECTED (accepted=false, exit != 0) unless every
      OTHER function in the TU that currently matches the reference stays
      byte-identical. MWCC's -ipa file makes a local edit able to perturb an
      unrelated already-matched sibling; a candidate that regresses a sibling
      is worthless no matter how good the target score is.

"currently matches" is measured from a BASELINE compile of the committed TU
(the as-is src/<name>.c) against the same reference. Siblings that already fail
in the baseline are exempt (the permuter is not responsible for them while it
works the target); siblings that match in the baseline are the guarded set.

Output: one machine-readable JSON object on stdout (the permuter parses this);
human notes go to stderr. Exit codes:
    0  accepted   (candidate compiled, no sibling regressed; score is valid)
    3  compile-failed
    4  target-missing   (target function absent from the compiled object)
    5  sibling-regression   (a guarded sibling stopped matching)
    2  usage error

The MWCC flag list is copied verbatim from compile_one.sh (validated
byte-identical: only the embedded DWARF source path differs, which objdiff
ignores). compile_one.sh remains the canonical source — keep these in sync.
"""

import argparse
import json
import os
import subprocess
import sys

SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
PROJECT_ROOT = os.path.abspath(os.path.join(SCRIPT_DIR, "..", "..", ".."))
OBJDIFF = os.path.join(PROJECT_ROOT, "tools", "decomp_harness", "objdiff.py")
MWCC = "tools/mwccarm/2.0/sp2p2/mwccarm.exe"


def mwcflags(version_define):
    # Mirrors compile_one.sh MWCFLAGS (common.mk:125 with WORK_DIR=".").
    # DEPFLAGS intentionally omitted (no .d files -> no Wine path corruption).
    return [
        version_define, "-DGAME_REMASTER=0", "-DENGLISH", "-DPM_KEEP_ASSERTS",
        "-DSDK_ARM9", "-DSDK_CODE_ARM", "-DSDK_FINALROM",
        "-O4,p",
        "-sym", "on", "-enum", "int", "-lang", "c99",
        "-Cpp_exceptions", "off", "-gccext,on",
        "-proc", "arm946e", "-msgstyle", "gcc", "-gccinc",
        "-i", "./src", "-i", "./include", "-i", "./include/library",
        "-i", "./files", "-I./lib/include",
        "-ipa", "file", "-interworking", "-inline", "on,noauto", "-char", "signed",
        "-W", "all", "-W", "pedantic", "-W", "noimpl_signedunsigned",
        "-W", "noimplicitconv", "-W", "nounusedarg", "-W", "nomissingreturn",
        "-W", "error",
    ]


def resolve_game(game):
    g = game.lower()
    if g in ("heartgold", "hg"):
        return "heartgold.us", "-DHEARTGOLD"
    if g in ("soulsilver", "ss"):
        return "soulsilver.us", "-DSOULSILVER"
    sys.exit(f"score_candidate: unsupported --game '{game}'")


def compile_candidate(src_c, out_o, version_define):
    """Compile src_c -> out_o with the make-equivalent flags. Returns (ok, log)."""
    os.makedirs(os.path.dirname(out_o), exist_ok=True)
    env = dict(os.environ)
    env["MWCIncludes"] = "lib/include"
    env["LM_LICENSE_FILE"] = "tools/mwccarm/license.dat"
    wine = env.get("WINE", "wine")
    cmd = [wine, MWCC] + mwcflags(version_define) + ["-c", "-o", out_o, src_c]
    p = subprocess.run(cmd, cwd=PROJECT_ROOT, env=env,
                       capture_output=True, text=True)
    return p.returncode == 0 and os.path.exists(out_o), (p.stdout + p.stderr)


def score(ref_o, cand_o):
    """objdiff --score --json ref vs cand -> {func: record}."""
    p = subprocess.run(
        [sys.executable, OBJDIFF, ref_o, cand_o, "--score", "--json"],
        cwd=PROJECT_ROOT, capture_output=True, text=True)
    # objdiff exits 1 when not all match; that's expected, parse regardless.
    try:
        data = json.loads(p.stdout)
    except json.JSONDecodeError:
        sys.exit(f"score_candidate: objdiff produced no JSON:\n{p.stdout}\n{p.stderr}")
    return data["functions"]


def matches(rec):
    return rec.get("status") == "match" and rec.get("diff_halfwords", 1) == 0


def main():
    ap = argparse.ArgumentParser(description="Permuter fitness function.")
    ap.add_argument("--tu", required=True, help="src/<name>.c — the TU identity")
    ap.add_argument("--func", required=True, help="target function name")
    ap.add_argument("--candidate", help="candidate C file (default: --tu, i.e. score as-is)")
    ap.add_argument("--out-dir", required=True, help="per-job output dir (parallel-safe)")
    ap.add_argument("--ref", help="reference .o (default: asm ref if present else src ref)")
    ap.add_argument("--baseline-o", help="precomputed baseline .o for the guard set "
                    "(default: compile --tu once, cached in --out-dir)")
    ap.add_argument("--game", default="heartgold")
    ap.add_argument("--json", action="store_true", default=True,
                    help="(always on) emit JSON on stdout")
    args = ap.parse_args()

    os.chdir(PROJECT_ROOT)
    build, version_define = resolve_game(args.game)

    tu = args.tu
    if not (tu.startswith("src/") and tu.endswith(".c")) or not os.path.isfile(tu):
        sys.exit(f"score_candidate: --tu '{tu}' must be an existing src/*.c path")
    basename = os.path.splitext(os.path.basename(tu))[0]

    candidate = args.candidate or tu
    if not os.path.isfile(candidate):
        sys.exit(f"score_candidate: --candidate '{candidate}' does not exist")

    # --- reference selection ---
    ref = args.ref
    if not ref:
        asm_ref = f"build/{build}/asm/{basename}.o"
        src_ref = f"build/{build}/src/{basename}.o"
        if os.path.isfile(asm_ref):
            ref = asm_ref            # pending file: asm object is retail truth
        elif os.path.isfile(src_ref):
            ref = src_ref            # matched TU: last green src object is truth
        else:
            sys.exit(f"score_candidate: no reference object; pass --ref "
                     f"(looked for {asm_ref}, {src_ref})")
    if not os.path.isfile(ref):
        sys.exit(f"score_candidate: --ref '{ref}' does not exist")

    out_dir = args.out_dir
    os.makedirs(out_dir, exist_ok=True)

    result = {
        "schema": 1, "tu": tu, "function": args.func, "ref": ref,
        "game": build, "candidate": candidate,
    }

    # --- compile candidate ---
    cand_o = os.path.join(out_dir, f"{basename}.o")
    ok, log = compile_candidate(candidate, cand_o, version_define)
    if not ok:
        result.update(accepted=False, compile_ok=False, status="compile-failed",
                      score=None, rejected_reason="candidate failed to compile",
                      regressed_siblings=[], target=None,
                      compile_log_tail=log.strip().splitlines()[-8:])
        print(json.dumps(result))
        print("score_candidate: REJECTED — compile failed", file=sys.stderr)
        return 3
    result["compile_ok"] = True

    # --- baseline (which siblings currently match) ---
    if args.baseline_o:
        baseline_o = args.baseline_o
        if not os.path.isfile(baseline_o):
            sys.exit(f"score_candidate: --baseline-o '{baseline_o}' does not exist")
    elif os.path.realpath(candidate) == os.path.realpath(tu):
        baseline_o = cand_o          # scoring the as-is TU: candidate IS the baseline
    else:
        baseline_o = os.path.join(out_dir, f"baseline_{basename}.o")
        if not os.path.isfile(baseline_o):
            bok, blog = compile_candidate(tu, baseline_o, version_define)
            if not bok:
                sys.exit(f"score_candidate: baseline TU failed to compile:\n{blog}")

    base_funcs = score(ref, baseline_o)
    guard = {f for f, r in base_funcs.items() if f != args.func and matches(r)}

    # --- score candidate ---
    cand_funcs = score(ref, cand_o)
    target = cand_funcs.get(args.func)
    if target is None:
        result.update(accepted=False, status="target-missing", score=None,
                      rejected_reason=f"target '{args.func}' not in compiled object",
                      regressed_siblings=[], target=None,
                      guarded_siblings=sorted(guard))
        print(json.dumps(result))
        print(f"score_candidate: REJECTED — target '{args.func}' missing", file=sys.stderr)
        return 4

    regressed = sorted(f for f in guard
                       if not matches(cand_funcs.get(f, {"status": "missing"})))
    if regressed:
        result.update(accepted=False, status="sibling-regression", score=None,
                      rejected_reason=f"{len(regressed)} guarded sibling(s) regressed",
                      regressed_siblings=regressed, target=target,
                      guarded_siblings=sorted(guard))
        print(json.dumps(result))
        print(f"score_candidate: REJECTED — sibling regression: {regressed}",
              file=sys.stderr)
        return 5

    result.update(accepted=True, status=target["status"],
                  score=target["diff_halfwords"], rejected_reason=None,
                  regressed_siblings=[], target=target,
                  guarded_siblings=sorted(guard))
    print(json.dumps(result))
    solved = target["diff_halfwords"] == 0 and target["status"] == "match"
    print(f"score_candidate: ACCEPTED — {args.func} diff_halfwords="
          f"{target['diff_halfwords']}"
          f"{'  (SOLVED)' if solved else ''}  guarded {len(guard)} sibling(s)",
          file=sys.stderr)
    return 0


if __name__ == "__main__":
    sys.exit(main())
