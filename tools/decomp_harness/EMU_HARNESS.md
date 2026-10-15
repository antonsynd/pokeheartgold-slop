# Emulator harness: naming symbols from runtime evidence

This document describes `tools/decomp_harness/emu/` and the loop an agent runs
on top of it to turn `unk_XXXXXXXX` / `sub_XXXXXXXX` / `ovNN_XXXXXXXX` symbols
into human-readable names backed by evidence. It is a **naming** tool. It does
not help matching: symbol names never change bytes, and nothing here touches
the build.

Everything stated as fact below was verified on 2026-10-12 on an Apple Silicon
Mac with py-desmume 0.0.9 against the HeartGold build in `build/heartgold.us/`.

## 1. Why dynamic evidence

Static sources already carry most names: the Platinum twins (`twins.py`), the
hgify Ghidra-style C, callers in named code. They fail on the same residue:
functions with no twin or a link-order (`between`/`order`) twin, overlay code
Platinum does not have, and globals whose only static clue is an address.

The emulator supplies what static reading cannot: *when* a function runs,
*what* it is handed, *what it returns*, *which text* it causes to appear, and
*who writes* a given word of RAM. Those are the facts that let a name be
asserted rather than guessed.

Current backlog (`emu/symbols.py stats`):

| | functions | unnamed |
|---|---|---|
| whole ARM9 (`main.nef`) | 34,519 | 23,412 |
| static module (`main`) | 11,116 | 3,543 |
| `field` overlay (ov1) | 1,763 | 1,355 |

## 2. Components

```
tools/decomp_harness/emu/
  symbols.py     overlay-aware symbol table from build/<game>/main.nef
  harness.py     DeSmuME wrapper: input, overlay tracking, hooks, savestates
  scenarios.json scenario graph (committed)      scenarios.py  materialize/explore
  trace.py       one experiment -> JSON evidence record
build/<game>/emu/
  symbols.json   cache (keyed on main.nef mtime)
  states/<name>.dst + .json sidecar + .png      regenerable, never committed
tools/decomp_harness/naming_evidence.jsonl      append-only experiment log (trace.py --record)
tools/decomp_harness/naming_proposals.jsonl     name proposals awaiting a rename pass (section 6)
```

**Symbol table.** `arm-none-eabi-readelf -s` over `main.nef` yields ~43k
symbols. Each overlay is its own ELF section (`OVY_38`, `field`,
`intro_title`), and the linker emits `SDK_OVERLAY_<section>_ID` constants, so
every symbol knows its overlay id. Overlays share address ranges (`0x0221BA00`
is a function entry in ov5, ov6, ov13, ov38 and ov96 at once), so
`resolve(addr, loaded)` needs the loaded set. `overlay_base[id]` is the load
address of each overlay image, used to cross-check RAM against
`build/<game>/<section>.sbin`.

**Harness.** One `Harness` per process: the DeSmuME library is a singleton,
and constructing a second instance segfaults the interpreter. It installs
four tracking hooks at construction: `HandleLoadOverlay` / `UnloadOverlayByID`
(the game wrapper in `src/poke_overlay.c`) and `FS_LoadOverlay` /
`FS_UnloadOverlay` (the SDK). Both layers are required: the wrapper's
`NoInit` / `NoInitAsync` paths bypass `FS_LoadOverlay`, and the boot-time loads
of ov0 and ov38 bypass the wrapper.

`hook(symbol)` registers an exec callback at the function's entry. Every hit
increments the count and the caller tally. For the first `max_samples` hits
(default 16, `trace.py --max-samples N`) it also keeps r0 to r3, LR, and
arms a one-shot hook at the return address to capture r0; later hits are
counted only. Hits that occur while the symbol's overlay is not loaded are
counted as `collisions`, not hits. Hooks are cheap: 3,543 hooks over 120
frames cost 0.18 s. What costs is Python work per *hit*, so a per-frame
function dominates, not a large silent set.

`run_script` is the input language used by scenarios and `trace.py --script`:

```
wait N | press KEYS [hold] | hold KEYS N | touch X Y [hold] | release
until overlay=N|hit=SYMBOL [max=N] [spam=KEYS] [every=N]
```

`KEYS` is `A`, `B`, `X`, `Y`, `L`, `R`, `START`, `SELECT`, `UP`, `DOWN`,
`LEFT`, `RIGHT`, joined with `+`. Touch coordinates are bottom-screen pixels
(0..255, 0..191). Screenshots stack top over bottom, so a bottom-screen
element at screenshot y=232 is touched at y=40.

**Scenario graph.** `scenarios.json` is a tree of named states. Each node names
its parent, a script, and the overlays expected loaded afterwards.
`materialize` builds parents first and saves `<name>.dst` plus a sidecar with
frame count, loaded overlays, the script, and the last overlay events. Loading
a state restores the loaded set from the sidecar and checks it against the
images resident in RAM. The emulator is deterministic, so states are build
artifacts: `make tidy` removes them and `materialize` recreates them.

Shipped states (no save file exists, so boot runs straight into a new game):

| state | reached by | loaded |
|---|---|---|
| `boot` | cold reset, frame 0 | none |
| `tutorial_menu` | wait 600, tap A until ov53 loads, wait 300 | 53 |
| `tutorial_controls` | touch CONTROL INFO, wait 240 | 53 |

## 3. What the harness can observe

Each observation type below is an *evidence class*. The agent loop in section
4 chooses which class a hypothesis needs, and the judgement rules in 4.5 say
how much each is worth.

| class | mechanism | tells you |
|---|---|---|
| **presence** | hit counts per scenario | the feature a function belongs to ("fires only while the bag is open") |
| **shape** | r0..r3 and r0-on-return samples | pointer vs small int vs bool; which arg is the context struct; enum ranges |
| **call graph** | resolved LR per hit | who the real callers are at runtime, including through function-pointer tables that static analysis cannot follow |
| **text** | hooks on `NewMsgDataFromNarc` (r2 = message bank file id; r1 is the NARC id and is constant) and `ReadMsgDataIntoString` (r0 = `MsgData *`, r1 = string number) | which message bank and string a code path displays |
| **write provenance** | `watch_write(addr, size)` | which function writes a global or struct field, and in which scenario |
| **screen** | screenshot before and after | what visibly changed, for the agent to look at |
| **perturbation** | `trace.py --poke ADDR=VALUE[:SIZE]` writes RAM after the state loads, before the script | which value a function reads; whether a flag gates a branch |

## 4. The agent loop

The loop is one symbol (or one tight cluster of symbols) per iteration. The
output of an iteration is an evidence record and, when justified, a proposal.
It is not a rename: see section 6.

### 4.1 Discover: pick a target

Rank candidates with these sources, in this order of preference:

1. **The file currently being decompiled.** Names chosen while matching a file
   are the ones that stick. `next_target.sh --info` gives the file;
   `emu/symbols.py file asm/<name>.s` lists its functions with sizes and
   overlay.
2. **Unnamed functions with named neighbours.** A `sub_` whose callers and
   callees are already named is usually nameable from one trace. Use
   `query_graph callers_of` / `callees_of` from the code-review graph, or the
   `callers` field of a previous trace.
3. **Low-confidence twins.** `twins.py func <sym>` with `found_by` of
   `between` or `order` is a hypothesis to test, not a name to trust.
4. **Hub functions.** `get_hub_nodes` from the graph. A hub with a good name
   improves every caller's readability.
5. **Globals written from many places** that appear as raw addresses in C.

Skip a symbol when any of these hold: it is dead code (hgify marks it, or no
static caller and no table reference), it is a tiny leaf already obvious from
its body (a getter of a struct field with a known struct), or its overlay has
no scenario in the graph yet and building one is a larger job than the name
is worth (then record a graph gap instead; see 4.3).

### 4.2 Hypothesize

Write the hypothesis before running anything, as a prediction the trace can
falsify. A hypothesis has four parts:

- **Name candidate(s)**, from the twin, hgify body, caller names, and the
  strings or NARC ids the body references.
- **Trigger prediction**: the scenario or input in which it must fire, and one
  in which it must not.
- **Shape prediction**: what r0..r3 are (pointer to which struct, small enum,
  bool) and what it returns.
- **Side-effect prediction**: text shown, global written, overlay loaded.

Example: `ov53_021E67C4` (the one caller of `OakSpeech_FillBgLayerWithPalette`
in the trace in 4.8) predicts "fires exactly once after CONTROL INFO is
touched and never while the menu idles, r0 is the OakSpeech work pointer
`0x022A01C8`, returns nothing meaningful, and precedes the first full-screen
text draw of the controls page."

A hypothesis that cannot name a scenario where the function should fire is
not ready. Go back to 4.1 or build the scenario (4.3).

### 4.3 Design the experiment

Pick the smallest experiment that can break the hypothesis.

| hypothesis says | experiment template |
|---|---|
| belongs to feature F | **differential presence**: trace the symbol set in a scenario with F and one without; it must fire in the first and be silent in the second |
| arg N is a pointer to struct S | **shape**: trace with return capture; all samples of arg N must fall in main RAM and, if S has a known field, `read_u32(ptr+off)` must look like that field |
| displays string S | **text**: hook the symbol together with `ReadMsgDataIntoString`; the string read must occur between entry and return, with the predicted bank file id in r2 of `NewMsgDataFromNarc` and the predicted string number in r1 of `ReadMsgDataIntoString` |
| writes global G | **write provenance**: `--watch G:size` (G is a symbol name, `name+off`, or a hex address); the writer must resolve to the symbol |
| is a getter/setter of field at +off | **shape + provenance** on the same run |
| is gated by flag F | **perturbation**: `--poke F=1:1` on the same state and script, compare hit counts with the unpoked run |

Then choose the start state. If the graph has no state for the feature,
extend it: use `scenarios.py explore <nearest> --script ... --shots DIR` to
find an input sequence, confirm the overlay set is stable for a few hundred
frames, add a node to `scenarios.json` with an `expect.loaded` list, and
materialize it. Prefer `until overlay=N` over fixed waits so the script
survives timing drift. Record a graph gap in the evidence log when the state
is out of reach (needs a save file, a Pokémon, a Wi-Fi peer).

Experiments are cheap. Measured: 252 frames with 58 hooks in 0.29 s;
`tutorial_menu` materialized from cold boot (1,195 frames) in 2.8 s. Prefer several
narrow runs over one broad one; the JSON stays readable and the differential
comparison is explicit.

### 4.4 Run

```
python3 tools/decomp_harness/emu/trace.py \
    --state tutorial_menu --overlay 53 \
    --symbols ReadMsgDataIntoString,NewMsgDataFromNarc \
    --script "touch 128 40" --script "wait 120" --frames 120 \
    --shots build/heartgold.us/emu/evidence/ov53_controls \
    --record "ov53 presence: control-info path"
```

`--overlay 53` hooks every function of that overlay (ov53 is already C:
`src/oaks_speech*.c`); `--file asm/<name>.s` or `--file src/<name>.c` hooks
the functions one file defines. Without `--out`, the record is written to
`build/<game>/emu/evidence/<timestamp>_<state>.json`; keep evidence there,
not in `/tmp`, because proposals (4.6) point at it.

Read the JSON, not the screen. The fields that matter: `fired`/`hooked`,
`functions[*].hits`, `collisions`, `callers`, `samples[*].args/ret`,
`overlay_log`, `watches`, and `state_meta.loaded_mismatch` (a non-empty value
means symbol resolution for that run is suspect; rebuild the state).

### 4.5 Judge

Rules, applied in order:

1. **Any `collisions` on the target invalidates its samples** for that run:
   another overlay's code executed at that address. Check `overlay_log`, fix
   the scenario, rerun.
2. **Silence is evidence only with a positive control.** A function that did
   not fire in a scenario means nothing unless a sibling expected to fire in
   the same run did. Trace the cluster, never the single symbol.
3. **Presence confirmed** when the function fires in every scenario that has
   the feature and in none of the controls, across at least two scenario pairs
   when the graph allows it.
4. **Shape confirmed** when every kept sample agrees (same pointer region,
   same value range, same caller pattern), the sample cap was not the limit
   (raise `--max-samples` until kept equals hits, or the function is
   per-frame and 16 samples span the run), and at least one value was
   dereferenced and made sense. A `ret` is meaningful only if the function is
   known to return something: for a `void` function it is whatever r0 held at
   the return address.
5. **Side effect confirmed** when the predicted text, write, or overlay event
   occurs between entry and return of the function, not merely in the same
   frame.
6. **Contradiction** (fires in a control, or a sample breaks the shape) ends
   the hypothesis. Log it as a dead end with what was observed; do not retune
   the hypothesis in the same iteration without a new prediction.

Confidence vocabulary for the proposal file:

- `confirmed`: presence plus at least one of shape or side effect, with a
  control.
- `likely`: presence with a control, or shape plus twin agreement.
- `weak`: a single run, no control; worth a comment in the C, not a rename.

### 4.6 Record

`trace.py --record` appends one line to `naming_evidence.jsonl` with the
scenario, script, fired set, silent set, and output path. Beyond that, the
agent appends a proposal line to `naming_proposals.jsonl` when confidence is
`likely` or `confirmed`:

```json
{"symbol": "ov53_021E67C4", "proposed": "OakSpeech_InitBgLayers",
 "confidence": "likely", "kind": "func",
 "evidence": ["build/heartgold.us/emu/evidence/20261012-180211_tutorial_menu.json"], "hypothesis": "...", "controls": ["boot"],
 "twin": null, "ts": "2026-10-12T18:02:11"}
```

Dead ends go to `attempts_log.py add` with the file and symbol, same as
matching dead ends, so the next session does not rerun the same experiment.

### 4.7 Loop control

- One symbol or cluster per iteration; at most three experiments per
  hypothesis before logging a dead end and moving on.
- Stop a session when the queue from 4.1 is empty for the current file, when
  three consecutive targets ended in graph gaps (build scenarios instead), or
  when a run reports `loaded_mismatch` twice for the same state (the state is
  stale; re-materialize with `--force`).
- Never rename inside the loop. Proposals accumulate; renames are applied in a
  batch by a human or by a dedicated pass (section 6).

### 4.8 Worked example

Tracing all 58 functions of ov53 from `tutorial_menu` through a touch on
CONTROL INFO produced, among others:

| symbol | hits | callers | r0 | ret |
|---|---|---|---|---|
| `OakSpeech_Main` | 124 | `OverlayManager_Run` | `0x0226F200` | 0 |
| `OakSpeech_DoMainTask` | 124 | `OakSpeech_Main` | `0x022A01C8` | 0 |
| `OakSpeech_MultichoiceMenuHandleInputVertical` | 21 | `OakSpeech_DoMainTask` | `0x022A01C8` | `0xFFFFFFFF` |
| `ReadMsgDataIntoString` | 2 | `OakSpeech_ShowTutorialTouchMsg`, `OakSpeech_PrintAndFadeFullScreenText` | `0x022E0164` | `0x80` (void: leftover r0, see 4.5) |
| `OakSpeech_FillBgLayerWithPalette` | 1 | `ov53_021E67C4` | `0x022A01C8` | 0 |

Had these been unnamed, the evidence alone supports: a per-frame entry called
by the overlay manager (the application `main`), a per-frame worker taking the
same work pointer, a menu input handler polled every other frame that
returns -1 while nothing is chosen and stops being called once the touch
lands (21 hits, frames 1196 to 1236), and a one-shot routine
`ov53_021E67C4` that runs 100 frames after the touch, right before the first
full-screen text draw of the controls page (an initialiser for that page,
not for the overlay).
Each of those is a `likely` name after one run and `confirmed` after a second
scenario (`tutorial_controls`) shows the menu handler silent and the text
reader firing with a different string id.

## 5. Extending the scenario graph

Only two states exist beyond boot. Most of the game is behind the new-game
flow: player name entry uses the touch keyboard, then Oak's speech, then the
overworld. Two routes:

1. **Script the new game once.** A long script in `scenarios.json` under
   `overworld_start`, built with `explore` and screenshots. The emulator is
   deterministic, so once it works it keeps working for this ROM.
2. **Use a save file.** DeSmuME reads the ROM's name with a `.dsv` suffix
   next to the ROM: `build/heartgold.us/pokeheartgold.us.dsv` or
   `build/soulsilver.us/pokesoulsilver.us.dsv` (`*.dsv` is gitignored). A
   save with a party, items, and Pokédex entries unlocks battle, bag, PC, and
   Pokégear states from the main menu in a few hundred frames each. The file
   must be produced in DeSmuME or converted to its `.dsv` format.

   A save changes the graph, it does not extend it: with a save present the
   main menu offers CONTINUE first, so `tutorial_menu`'s "tap A until ov53"
   script times out, and existing `.dst` states embed the old backup memory
   without any `loaded_mismatch` signal. Adding a save therefore means a new
   branch under `boot` (`main_menu_saved`, `overworld`, ...) and
   `materialize --force` for everything, or a separate states directory per
   save.

The second route is the one worth taking before any field or battle overlay
is targeted. Until then, targets should be chosen from the overlays the
current graph reaches: boot (ov0, ov38), `intro_title` (ov60), ov74, the
main menu (ov36, resident for 17 frames), and OakSpeech (ov53).

Rules for new nodes: a stable state means the loaded set is unchanged for
300 frames with no input; `expect.loaded` must list every overlay the
experiments will hook; a node's script should start with input that is safe
to repeat (a `wait`, or an `until`), because `materialize` runs it exactly once
from the parent's saved frame.

## 6. From proposals to renames

Renaming is out of scope for the harness because it touches many files and
needs a build to prove it was mechanical: `asm/*.s`, `asm/include/*.inc`,
`include/*.h`, `src/**/*.c`, the hgify files, `platinum_twins.tsv`,
`knowledge.json`, `nonmatching/`, and `split_manifests/`. A rename pass
should: take `naming_proposals.jsonl` entries at `confirmed` (and `likely`
with a matching twin), apply them with a single tool that rewrites all
occurrences as whole words, run `chiri pkg -- compare` and the SoulSilver
build, and mark the proposals `applied` with the commit hash. Names are not
bytes, so a correct rename cannot change the SHA1. If it does, the rename hit
a string literal or a macro, and must be reverted.

## 7. Pitfalls (all observed)

- **Joystick polling presses every button.** `emu.cycle()` defaults to
  `with_joystick=True`; with no SDL joystick initialised the game sees
  START+SELECT+L+R held and soft-resets every ~200 frames with a white
  screen. The harness always passes `with_joystick=False`.
- **`keypad_add_key` presses every button.** `keypad_get()` returns the
  active-low hardware form and `keypad_update()` takes active-high masks; the
  convenience wrapper combines them. The harness owns the mask and calls
  `keypad_update` directly.
- **Two emulator instances in one process crash the interpreter.** One
  `Harness` per process; use subprocesses for parallel runs.
- **Overlay loads have two paths.** Hooking only `FS_LoadOverlay` misses
  `NoInit`/`Async` loads (ov53 was invisible). Hooking only
  `HandleLoadOverlay` misses the boot loads of ov0 and ov38.
- **Unloaded overlay images stay in RAM.** `detect_loaded()` reports resident
  images, a superset of the loaded set; it is a sanity check for the sidecar,
  not a replacement. The authoritative table is the `PMiLoadedOverlay` list
  in `src/poke_overlay.c`; reading it from RAM is the correct fix and is not
  yet implemented.
- **The main menu is not a stable state** without a save file: ov36 is loaded
  for 17 frames and replaced by ov53.
- **Return capture assumes a normal return.** Tail calls, `noreturn`
  functions, and longjmp-style exits leave the armed return hook pending; a
  later pass through that address will attribute an unrelated r0. Treat
  `ret` as a sample, not a guarantee, and prefer entry evidence.
- **Inlined code never fires.** A symbol with no hits in any scenario and
  with callers that *do* fire may simply have been inlined at those sites;
  check the caller's disassembly before calling it dead.
- **Timing is approximate.** DeSmuME is less accurate than melonDS; use frame
  counts for ordering, not for cycle-level claims.
- **Register reads are signed.** The library returns signed ints; the harness
  masks to 32 bits so `-1` appears as `0xFFFFFFFF`.

## 8. Open work

1. Read the game's own loaded-overlay table from RAM instead of sidecars.
2. A `.dsv` save with a developed game, and the scenario nodes it unlocks.
3. A "fire map" batch: every scenario times every unnamed function, stored as
   a matrix, so discovery (4.1) can query "which scenarios reach this symbol"
   without running anything.
4. The rename tool described in section 6.
5. SoulSilver: the harness takes `--game soulsilver.us` but no states have
   been built for it.
