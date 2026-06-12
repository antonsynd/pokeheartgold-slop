---
name: Fix Blocker
description: Coordinated multi-file fix for a systemic matching blocker from blockers.json (e.g. IPA shared-header clusters, staged rodata fixes). Run with /fix-blocker <blocker-id>. This is the ONLY sanctioned way to modify files outside a single decomp target.
disable-model-invocation: true
---

## Fix a Systemic Blocker

Blockers in `tools/decomp_harness/blockers.json` gate many pending files (see
the gating counts in `COVERAGE.md`). Fixing one requires touching multiple
files at once — which the per-file `/decomp` rules forbid — so this skill
exists to do it safely. The core invariant: **every already-matched file must
emit byte-identical objects after the fix.**

### Step 0: Pick the blocker

If no blocker id was given, print the table from `COVERAGE.md`'s Blockers
section (value-ordered by `gates pending files`) and ask which to fix. Read
the blocker's entry in `blockers.json`: `description`, `files_blocked`,
`fix_plan`.

### Step 1: Enumerate the cluster

Build the full set of files the fix can affect:

1. `files_blocked` from the blocker entry.
2. Headers the fix will touch (from `fix_plan` / the failure reasons in
   `progress.json`).
3. **Every already-matched C file that includes those headers** (grep
   `src/` for the includes; transitively if headers include each other).
4. Pending asm files gated by the blocker (`triage_report.json` `gated_by`)
   — these are candidates to re-match as part of the fix, not obligations.

Report the cluster before proceeding.

### Step 2: Capture reference objects

Before changing anything, build the current state and save a reference `.o`
for every matched file in the cluster:

```bash
chiri pkg -- build --target main --no-compare    # timeout: 1200000
mkdir -p /tmp/blocker_ref
for f in <matched cluster files>; do cp build/heartgold.us/src/$f.o /tmp/blocker_ref/; done
```

Also save reference asm objects for any blocked files being re-matched:
`cp build/heartgold.us/asm/<name>.o /tmp/blocker_ref/<name>_asm.o`.

### Step 3: Apply the coordinated fix

Follow the blocker's `fix_plan`. Typical shapes:

- **ipa-shared-headers**: change the shared header signatures to the TRUE
  signatures (the ones the callee asm proves), then re-match every affected
  file in the same change. Consult `knowledge.json` for the evidence.
- **staged-rodata-and-prototype-fixes**: reorder `static const` arrays to
  match the asm `.rodata` layout; land together with the staged prototype
  fixes.
- For blocked files now unblocked: do the normal `/decomp` flow for each
  (write C, flip `main.lsf`), but inside this one coordinated change.

### Step 4: Verify — the gate

```bash
chiri pkg -- build --target main --no-compare    # timeout: 1200000
```

1. **Every matched cluster file**: `cmp /tmp/blocker_ref/$f.o build/heartgold.us/src/$f.o`
   must be byte-identical, OR (if the fix intentionally changes its codegen
   to the correct bytes) `objdiff.py <name>_asm-reference comparison must
   pass. Unexplained divergence = stop.
2. **Every re-matched file**: `python3 tools/decomp_harness/objdiff.py
   /tmp/blocker_ref/<name>_asm.o build/heartgold.us/src/<name>.o --summary`.
3. **Full ROM**: `chiri pkg -- compare` must pass (this is the whole point —
   after the staged-rodata blocker is cleared, full-ROM compare works again).

If verification cannot be satisfied, revert everything
(`git checkout -- <files>`, restore `main.lsf`) and record what you learned
in `attempts_log.jsonl` and the blocker's entry — a documented failed fix
attempt is valuable.

### Step 5: Land and update state

One commit containing the entire coordinated change. Then:

1. Mark the blocker resolved in `blockers.json` (keep the entry, add
   `"resolved": "<date>", "resolution": "<one line>"`).
2. Move re-matched files from `failed` to `completed` in `progress.json`.
3. Regenerate: `python3 tools/decomp_harness/triage.py --rebuild --top 5`.
4. Add what made the fix work to the pattern DB (`patterns.py add`).
5. Run the `decomp-verifier` agent on each re-matched file.

### Rules

- Builds: one at a time, `timeout: 1200000`, never raw `make -C`.
- Never delete or modify `asm/*.s` files.
- If the cluster turns out larger than expected mid-fix (a header reaches
  more matched files than enumerated), STOP and re-run Step 1/2 for the
  larger cluster rather than hoping.
- This skill must never be invoked implicitly — the user chooses when to
  spend a multi-file change.
