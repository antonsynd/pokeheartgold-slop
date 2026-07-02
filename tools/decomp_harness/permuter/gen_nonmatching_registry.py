#!/usr/bin/env python3
"""
gen_nonmatching_registry.py — enumerate every `#ifdef NONMATCHING` block under
src/ and classify it for the permuter queue (ROADMAP T1.4).

Writes tools/decomp_harness/nonmatching_registry.json. One entry per NONMATCHING
function: {file, function, line, failure_class, permuter_candidate, reason,
source}. failure_class is decided in priority order:
  1. attempts_log.py outcomes/lessons for the function,
  2. the `// NONMATCHING:` comment in/near the block,
  3. blockers.json gating,
  4. else "unknown" (permuter may still try).

permuter_candidate is False only when the class is provably NOT a codegen-search
problem (blocker-gated copy-prop entry idiom, or a frozen-header signature lock
that split-header discipline resolves without any search).
"""
import json
import os
import re
import subprocess
import sys

SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(SCRIPT_DIR, "..", "..", ".."))
os.chdir(ROOT)
HARNESS = "tools/decomp_harness"
OUT = os.path.join(HARNESS, "nonmatching_registry.json")

KEYWORDS = {"if", "for", "while", "switch", "return", "sizeof", "do", "else"}
FUNC_TAIL = re.compile(r'([A-Za-z_][A-Za-z0-9_]*)\s*$')


def load_attempts():
    rows = []
    p = os.path.join(HARNESS, "attempts_log.jsonl")
    with open(p) as f:
        for line in f:
            line = line.strip()
            if line:
                try:
                    rows.append(json.loads(line))
                except json.JSONDecodeError:
                    pass
    return rows


def extract_func_name(body):
    for ln in body:
        s = ln.strip()
        if not s or s.startswith(("//", "*", "/*", "#")):
            continue
        if "(" in ln and ";" not in ln.split("(")[0]:
            pre = ln.split("(")[0]
            m = FUNC_TAIL.search(pre)
            if m and m.group(1) not in KEYWORDS:
                return m.group(1)
            ids = [x for x in re.findall(r'[A-Za-z_][A-Za-z0-9_]*', pre)
                   if x not in KEYWORDS]
            if ids:
                return ids[-1]
    return None


def parse_blocks():
    files = sorted(subprocess.check_output(
        ["grep", "-rl", "#ifdef NONMATCHING", "src/"]).decode().split())
    blocks = []
    for fpath in files:
        lines = open(fpath).readlines()
        n = len(lines)
        i = 0
        while i < n:
            if lines[i].strip().startswith("#ifdef NONMATCHING"):
                start = i
                depth, else_idx, end_idx, j = 1, None, None, i + 1
                while j < n:
                    s = lines[j].strip()
                    if s.startswith("#if"):
                        depth += 1
                    elif s.startswith("#endif"):
                        depth -= 1
                        if depth == 0:
                            end_idx = j
                            break
                    elif s.startswith("#else") and depth == 1:
                        else_idx = j
                    j += 1
                cbody = lines[start + 1:(else_idx or end_idx or start + 1)]
                func = extract_func_name(cbody)
                ctx = lines[max(0, start - 4):(end_idx + 1 if end_idx else start + 1)]
                comment = ""
                for ln in ctx:
                    m = re.search(r'NONMATCHING:\s*(.*)', ln)
                    if m:
                        comment = m.group(1).strip()
                        break
                blocks.append({"file": fpath, "line": start + 1,
                               "function": func, "comment": comment})
                i = (end_idx + 1) if end_idx else (start + 1)
            else:
                i += 1
    return blocks


# (failure_class, permuter_candidate, reason, source). Priority: the copy-prop
# and frozen-header signals first (they set permuter_candidate False); then the
# attempts_log OUTCOME as the primary discriminator (reliable, unlike fuzzy
# lesson-keyword matching — e.g. one lesson literally reads "no soft-float in
# these"); lesson/comment text only *refines* within an outcome; finally, for
# blocks with no attempts, the block comment; else unknown.
def classify(func, comment, attempts):
    L = " ".join(a.get("lesson", "") for a in attempts).lower()
    outcomes = {a.get("outcome") for a in attempts}
    C = comment.lower()
    src = "attempts_log" if attempts else ("block_comment" if comment else "none")

    # 1. copy-prop entry idiom — blocker-gated, provably unreachable.
    if "copy-propagat" in L or "copyprop" in L or "copy propagat" in L:
        return ("param-copyprop-cmp", False,
                "provably unreachable per blocker param-copyprop-cmp: MWCC "
                "copy-props param copies back to r0; the 'adds rN,r0,#0; cmp' "
                "entry idiom cannot arise from pure C",
                "blocker:param-copyprop-cmp")

    # 2. frozen public-header signature lock — split-header discipline, no search.
    if "blocked" in outcomes or "header-locked" in L or "frozen public header" in L \
            or ("header" in L and ("param type" in L or "declares" in L)):
        return ("header-locked-signature", False,
                "frozen public-header signature (e.g. BOOL/int return vs void "
                "decl); resolve with split-header / local-prototype discipline "
                "(blocker ipa-shared-headers), not a codegen search",
                src if attempts else "blocker:ipa-shared-headers")

    # 3. outcome-primary classification (attempts present, non-blocked).
    if "regalloc_diff" in outcomes:
        return ("regalloc-tiebreak", True,
                "MWCC register-allocation / scheduling tie-break; primary "
                "permuter target (equivalent C shapes flip the allocator)", src)
    if "instruction_diff" in outcomes:
        return ("instruction-schedule", True,
                "instruction scheduling / load-delay-slot fill differs; primary "
                "permuter target (statement reorder / temp introduction)", src)
    if "section_diff" in outcomes:
        if "arg-address" in L or "address fold" in L or "arg address" in L:
            return ("arg-address-folding", True,
                    "MWCC folds an argument address differently; codegen-shape "
                    "search candidate", src)
        return ("section-pad", True,
                "section / literal-pool / trailing-pad layout artifact; permuter "
                "may reshape it, low confidence", src)
    if "size_mismatch" in outcomes:
        if "spill" in L or "stack" in L or "stack slot" in C or "spill" in C:
            return ("spill-slot-layout", True,
                    "spill-slot / stack-frame layout differs; permuter may find "
                    "it via temp-var and statement-order mutations", src)
        if ("const" in L and "promot" in L) or "promot" in C:
            return ("const-promotion", True,
                    "MWCC constant/offset-promotion heuristic not source-"
                    "controllable; permuter constant-mutation pass may hit it", src)
        return ("size-mismatch", True,
                "size mismatch, root cause unattributed; permuter may try", src)
    if "abandoned" in outcomes:
        return ("control-flow-divergence", True,
                "draft C diverges structurally (stack frame / control flow); "
                "permuter needs a compiling near-match first, low confidence", src)

    # 4. comment-based (no discriminating outcome; e.g. outcome 'matched' under a
    #    NONMATCHING #else, or blocks with no attempts at all).
    if "soft-float" in C or "soft float" in C or "aprijuice" in C:
        return ("soft-float", True,
                "soft-float helper call sequence differs; permuter may reorder "
                "the C expression but low confidence", src)
    if "schedul" in C and "slot" in C:
        return ("instruction-schedule", True,
                "instruction scheduling / load-delay-slot fill differs; primary "
                "permuter target (statement reorder / temp introduction)", src)
    if "stack frame" in C or "control flow" in C:
        return ("control-flow-divergence", True,
                "draft C diverges structurally (stack frame / control flow); "
                "permuter needs a compiling near-match first, low confidence", src)
    if "spill" in C or "stack slot" in C:
        return ("spill-slot-layout", True,
                "spill-slot / stack-frame layout differs; permuter may find it "
                "via temp-var and statement-order mutations", src)
    if "regalloc" in C or "register-alloc" in C or "register alloc" in C \
            or "scheduling/regalloc" in C or ("tie" in C and "schedul" in C):
        return ("regalloc-tiebreak", True,
                "MWCC register-allocation / scheduling tie-break; primary "
                "permuter target (equivalent C shapes flip the allocator)", src)

    # 5. unknown.
    return ("unknown", True,
            "no recorded failure analysis; permuter may attempt", "none")


def load_blocker_ids():
    b = json.load(open(os.path.join(HARNESS, "blockers.json")))
    return [x["id"] for x in b["blockers"]]


def main():
    attempts = load_attempts()

    def att_for(fn):
        return [a for a in attempts if a.get("function") == fn]

    blocks = parse_blocks()
    entries = []
    for b in blocks:
        fn = b["function"]
        a = att_for(fn) if fn else []
        cls, cand, reason, source = classify(fn, b["comment"], a)
        entries.append({
            "file": b["file"],
            "function": fn,
            "line": b["line"],
            "failure_class": cls,
            "permuter_candidate": cand,
            "reason": reason,
            "source": source,
        })

    entries.sort(key=lambda e: (e["file"], e["line"]))
    total = len(entries)
    cand = sum(1 for e in entries if e["permuter_candidate"])
    by_class = {}
    for e in entries:
        by_class.setdefault(e["failure_class"], 0)
        by_class[e["failure_class"]] += 1

    doc = {
        "schema": 1,
        "generated": "2026-07-02",
        "generator": "tools/decomp_harness/permuter/gen_nonmatching_registry.py",
        "total": total,
        "candidates": cand,
        "do_not_queue": total - cand,
        "by_failure_class": dict(sorted(by_class.items(),
                                        key=lambda kv: -kv[1])),
        "blocks": entries,
        "_notes": {
            "reference_for_candidate": "For a permuter run, the reference object "
            "is build/<game>/asm/<name>.o when the file is pending, or "
            "build/<game>/src/<name>.o (last green build) for a NONMATCHING "
            "function inside an already-matched TU — score_candidate.py picks "
            "this automatically.",
            "permuter_candidate_false_means": "provably not a codegen-search "
            "problem (blocker-gated copy-prop entry idiom, or a frozen-header "
            "signature lock resolved by split-header discipline).",
            "known_blocker_ids": load_blocker_ids(),
        },
    }
    with open(OUT, "w") as f:
        json.dump(doc, f, indent=2)
        f.write("\n")
    print(f"wrote {OUT}: total={total} candidates={cand} "
          f"do_not_queue={total - cand}")
    for k, v in doc["by_failure_class"].items():
        print(f"  {k:26} {v}")


if __name__ == "__main__":
    main()
