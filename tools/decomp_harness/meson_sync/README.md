# Meson sync scripts

Tools for the pret master (Meson) sync, issue #22. The plan is `../MESON_SYNC_PLAN.md`; §11 says what each guard proves and how it was tested.

All take git revisions or paths as arguments and run from the repo root.

## Guards (tested)

| Script | Checks | Plan |
|---|---|---|
| `meson_test_staleness.sh SCRATCH_DIR` | Reproduces `meson test` passing on a stale ROM with meson 1.12.0, and shows `depends:` fixing it (D7). Needs meson 1.12.0 cloned at `SCRATCH_DIR/meson-1.12.0`. | §11.1 |
| `sym_map_guard.py SYNC UPSTREAM OURS [map.tsv \| --seed]` | Rejects R3 renames of fork-introduced names; counts refs only in files that differ from upstream. Exit 1 on a hard violation. | §11.2 |
| `r3_decls.py UPSTREAM OURS` | Fork C files that would call a renamed symbol with no prototype after R3. | §11.2 |
| `parity.py` | Normalized object comparison (allocated sections, locals by position, relocs, `sym_map`). | Phase 4.3, §11.4 |
| `parity_selftest.py OBJ.o` | Mutation tests for `parity.py`. | §11.4 |
| `dupglobals.py BUILD_DIR [LSF]` | Globals defined by two linked objects; the Meson link rejects them. | §11.5 |

For OURS, a trial merge tree works: `git -c merge.renameLimit=20000 merge-tree --write-tree --no-messages mainline upstream/master | head -1`.

## Prototypes for `meson_port.py` (research code)

| Script | What it is |
|---|---|
| `sym_map_full.py` | The R3 map as data: 118 sync point → upstream symbol renames, plus 3 R9 API renames. |
| `rules.py` | Regex versions of R1–R9 (`rewrite_c`, `rewrite_asm`). |
| `verify.py [PATHS]` | Applies `rules.py` to each upstream-changed file's sync-point version and diffs against upstream. |
| `lsf_recon.py OLD NEW` | Block-by-block `main.lsf` comparison, old Make names mangled to `main.nef.p/…`. |
| `lsfconv.py` | Throwaway test of the Phase 3 `lsf` algorithm. |
| `exposure3.py`, `shims.py` | Exposure counts for the rewrite rules and the R10 SDK stand-ins. They read inputs left in `$TMPDIR` by the original research run, so expect to adapt them. |
