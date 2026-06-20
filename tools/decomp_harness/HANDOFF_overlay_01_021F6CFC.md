# Handoff: decomp `asm/overlay_01_021F6CFC.s` → matching `src/overlay_01_021F6CFC.c`

**Goal:** byte-for-byte match (objdiff per-function **and** `chiri pkg -- compare` SHA1; also build SoulSilver).
17 functions, ~650 insn, **no rodata / no .data / no .bss** (only inline literal pools + one inline jump table). It's a **Frontier field task** — a 13-state FSM that swaps/registers player names against the Battle Frontier record store and prints messages. Work struct is **0x9C bytes**, allocated from `HEAP_ID_FIELD2`. `main.lsf` **line 517**: flip `asm/overlay_01_021F6CFC.o` → `src/overlay_01_021F6CFC.o`.

This was just promoted to the top of the triage queue after `overlay_01_02203A18` matched. No prior `knowledge.json` entry, no logged attempts — fresh target.

## Setup
```bash
cd /Users/anton/Documents/github/pokeheartgold-slop
pkill -f 'make.*heartgold\|mwccarm\|mwldarm\|mwasmarm' 2>/dev/null; sleep 1
# The Makefile globs src/*.c, so it compiles a new src/<name>.c even before the lsf flip.
# 1) write src/overlay_01_021F6CFC.c, then build once to produce BOTH objects:
chiri pkg -- build --target main --no-compare   # timeout 1200000; links asm (lsf), compiles your C too
cp build/heartgold.us/asm/overlay_01_021F6CFC.o /tmp/ref.o          # asm reference (NOTE: asm/ subdir, not overlay_01/)
python3 tools/decomp_harness/objdiff.py /tmp/ref.o build/heartgold.us/src/overlay_01_021F6CFC.o
# 2) flip main.lsf line 517 asm→src, rebuild, then the AUTHORITATIVE check:
chiri pkg -- compare                 # heartgold SHA1
chiri pkg -- build --game soulsilver # soulsilver SHA1 (src/ is shared; should also match)
```
objdiff usage: `objdiff.py ref.o c.o` (summary), `objdiff.py ref.o c.o --disasm <fn>` (side-by-side). Both objdiff **and** `chiri pkg -- compare` must pass.

## Exports / visibility
- **Only `ov01_021F729C` is `.public`-defined here → the single non-static function.** All other 16 are file-local → **`static`** (including the task callback `ov01_021F7100`, referenced only via an in-file literal pool).
- `ov01_021F729C` already has a **frozen prototype** at `include/overlay_01.h:85` — `void ov01_021F729C(FieldSystem *fieldSystem);` — and is called from the already-matched `src/scrcmd_c.c` (ScrCmd_151). **Match that signature exactly. Do NOT add this file's struct/decls to `overlay_01.h` and do NOT `#include` a new private header anywhere that pulls `overlay_01.h`** (MWCC `-ipa file` cascades on any added declaration). Define the `Work` struct + the unheadered callee externs **locally in the .c** (split-header discipline). The 16 statics don't need a header.

## Public entry `ov01_021F729C(FieldSystem *fieldSystem)` (verbatim asm transcription)
```c
void ov01_021F729C(FieldSystem *fieldSystem) {
    TaskManager *taskman = fieldSystem->taskman;          // [r6,#0x10]
    Work *work = Heap_AllocAtEnd(HEAP_ID_FIELD2, 0x9C);   // mov r0,#0xb; mov r1,#0x9c
    ov01_021F722C(work);                                  // work init (CpuFill8 + msg/format/strings)
    work->fieldSystem = fieldSystem;                      // [r4,#0x30]
    work->saveData = fieldSystem->saveData;               // [r4,#0x34] = [r6,#0xc]
    work->state = 0;                                      // [r4,#0x44]
    if (taskman == NULL) {
        FieldSystem_CreateTask(fieldSystem, ov01_021F7100, work);
    } else {
        TaskManager_Call(taskman, ov01_021F7100, work);
    }
}
```
`HEAP_ID_FIELD2 == 11 == 0xb` (see `include/constants/heap.h`). Verify `sizeof(Work) == 0x9C` after you finalize the struct (use `sizeof(Work)` in the alloc, not a literal, if it matches).

## Work struct (0x9C) — provisional, VERIFY every offset against `ldr/str [rN,#off]`
```c
typedef struct {
    // 0x00..0x08 set by ov01_021F722C init (window state region @0x10 etc.)
    String *unk8;              // 0x08  String_New(0x6E); ReadMsgDataIntoString dest
    String *unkC;              // 0x0C  String_New(0x6E); StringExpandPlaceholders dest
    Window window;             // 0x10  inline Window (WindowIsInUse/RemoveWindow/AddWindow via &work->window)
    // ... window is ~0x20 bytes; fields 0x30+ below
    FieldSystem *fieldSystem;  // 0x30
    SaveData *saveData;        // 0x34  = fieldSystem->saveData
    MessageFormat *messageFormat; // 0x38
    MsgData *msgData;          // 0x3C  NewMsgDataFromNarc(narc 0x1B, file 0x30B)
    u8 textPrinterId;          // 0x40  u8! stored from sub_0205B5B4; read lsl#18/lsr#18 → TextPrinterCheckActive((u8))
    int state;                 // 0x44  jump-table discriminant (0..0xC)
    int slots[16];             // 0x48  record array; fn2 scans slots[i]==2; sub_0203A1C4(save,&slots,...)
    int unk88;                 // 0x88  selected index; -1 sentinel (mov r1,#0; mvn r1,r1)
    int unk8c;                 // 0x8C  profile-build sub-state; switched -1/0 (signed)
    int unk90;                 // 0x90  status flag from sub-machine
    int unk94;                 // 0x94  out-slot; passed as &work->unk94 to ov01_021F6A9C
    u16 unk98;                 // 0x98  strh/ldrh; ov01_021F6CA0 sub-machine counter (cleared in wait states)
    u16 unk9a;                 // 0x9A  strh/ldrh; state-8/11 inner-switch counter
} Work; // size 0x9C
```
Notes: offsets ≥0x80 are reached via `add rBase,#imm; ldr/str [rBase]` — that falls out of struct access automatically; just keep the offsets exact. The sibling `asm/overlay_01_021F6830.s` touches a SHARED work type at +0x90/+0x98/+0xd0..+0xdc, so this struct is the 0x30..0x9C window of a larger shape — but for THIS file a local 0x9C struct is sufficient (only `ov01_021F729C` is exported and it doesn't expose the struct). The `window` at 0x10 may be better modeled as a `Window` member or a byte gap — derive its size from `bg_window.h` and the `&work->window` (`work+0x10`) call sites.

## Functions (17) — order MUST match asm
1. `ov01_021F6CFC(work)` **state 0 init** (~50): clear records, `sub_0203A1C4(save,&slots,…)`, `LoadUserFrameGfx1/2` (tile bases 0x1E2/0x3D9), advance state→1; returns BOOL (nonzero → task forces teardown). **static**
2. `ov01_021F6D78(work)` **state 1** (~70): loop `i < sub_02037454()` (reload count each iter — it's clobbered by the call; use walking ptr `&work->slots[i]`), find `slots[i]==2`, `Bag_HasItem(... item 0x1B5 ...)`, `BufferPlayersName`, msg 0x3E. BOOL.
3. `ov01_021F6E44(work)` **state 2** (~16): `TextPrinterCheckActive((u8)work->textPrinterId)` wait; `work->unk98=0`; state→3.
4. `ov01_021F6E68(work)` **state 3** (~45): drive `ov01_021F6CA0` sub-machine; loop 0x20 (`int i; blt`); msg 0x3F; state→4.
5. `ov01_021F6ED8(work)` **state 4** (~16): wait printer; clear unk98; state→5.
6. `ov01_021F6EFC(work)` **state 5** (~35): `ov01_021F6CA0`; if unk9a cleared → state 8, else `BufferPlayersName` + msg 0x40 → state 6.
7. `ov01_021F6F44(work)` **state 6** (~16): wait printer; clear unk98; state→7.
8. `ov01_021F6F68(work)` **state 7** (~22): `ov01_021F6CA0`; → state 0xC, or msg 0x3F → state 4.
9. `ov01_021F6F94(work)` **state 8** (~38): inner switch on `ldrh work->unk9a` (cases 0/1, unsigned): `ov01_021F6A9C` then `ov01_021F6C28`.
10. `ov01_021F6FDC(work)` **state 9** (~60): switch on `work->unk8c` (-1 / 0, signed): `PlayerProfile_New`, `Save_Profile_PlayerName_Set`, free; msg 0x40/0x41.
11. `ov01_021F7060(work)` **state 10** (~16): wait printer; clear unk98; state→0xB.
12. `ov01_021F7084(work)` **state 11** (~55): `ov01_021F6CA0`; `Save_Frontier_GetStatic` + `sub_020311AC` + record-store write (`sub_0202C338`/`sub_0202C254` family) + msg via `sub_0203A280`, state→1; else msg 0x40 → state 6.
13. `ov01_021F7100(taskman, work)` **TaskFunc** (~70 + 13-entry table): `work=GetEnvironment; GetFieldSystem;` **13-case dense `switch(work->state)` 0..0xC**. Each case calls the matching handler #1–#11/#1-shifted; **cases 0 and 1 check the handler's BOOL return and force `work->state=0xC` if nonzero**; cases 2..0xB just call+`break`; **case 0xC** = teardown (`ov01_021F7268`, `Heap_Free(work)`, `sub_0203E30C()`, returns 1). Most paths share one trailing `return 0` (`_021F71C0`). Returns BOOL. **static.** (Mapping of state index → handler is exact in the asm `_021F713C.._021F71AC` blocks — transcribe carefully; the dispatch is NOT simply state N → handler N for all N.)
14. `ov01_021F71C4(work, msgId)` **msg helper** (~40): (re)create window @`work->window` (0x10), `ReadMsgDataIntoString(msgData, msgId, unk8)`, `StringExpandPlaceholders(messageFormat, unkC, unk8)`, print via `sub_0205B5B4`, store printer id → `work->textPrinterId`. `msgId` is s32 (values 0x3E–0x41). **static.**
15. `ov01_021F722C(work)` **init** (~25): `MI_CpuFill8(work, 0, 0x9C)`; `MessageFormat_New`→unk38; `NewMsgDataFromNarc(0x1B, 0x30B)`→unk3C; `unk8=String_New(0x6E)`; `unkC=String_New(0x6E)`. **static.**
16. `ov01_021F7268(work)` **teardown** (~20): `DestroyMsgData`, `MessageFormat_Delete`, `String_Delete(unk8)`, `String_Delete(unkC)`, `RemoveWindow(&work->window)` if `WindowIsInUse`. **static.**
17. `ov01_021F729C(fieldSystem)` **public entry** (see above). **non-static.**

## Callees — local extern vs existing header
**Use existing headers** (include and call): `LoadUserFrameGfx1/2` (`render_window.h`), `Save_Frontier_GetStatic`/`sub_02030FE4` (`unk_02030A98.h`), `sub_02034818` (`unk_02034354.h`), `sub_0203A1C4` (`unk_02037C94.h`), `sub_02037454` (`unk_02035900.h`), `sub_0203E30C` (`field_system.h`), `sub_0202C254`/`sub_0202C6F4`/record-store (`unk_0202C034.h`), `sub_0205B514/564/5B4` (`text_0205B4EC.h`), `Bag_HasItem`/`Save_Bag_Get` (`bag.h`), `NewMsgDataFromNarc`/`DestroyMsgData`/`ReadMsgDataIntoString` (`msgdata.h`), `MessageFormat_New/Delete` (`message_format.h`), `BufferPlayersName`/`StringExpandPlaceholders`/`String_New/Delete` (`pm_string.h`/`message_format.h`), `Heap_AllocAtEnd`/`Heap_Free` (`heap.h`), `WindowIsInUse`/`RemoveWindow`/`AddWindow` (`bg_window.h`), `TextPrinterCheckActive` (`text.h`), `PlayerProfile_New`/`Save_Profile_PlayerName_Set` (`player_data.h`), `Options_GetFrame`/`Save_PlayerData_GetOptionsAddr` (`options.h`), `MI_CpuFill8` (NitroSDK), `FieldSystem_CreateTask`/`TaskManager_Call`/`TaskManager_GetFieldSystem`/`TaskManager_GetEnvironment` (`task.h`). **Verify each name/sig before relying on it** — the analyzer inferred some; cross-check the header.

**Need LOCAL forward declarations** (parent files still asm — declare in the .c, NOT in a shared header):
- `BOOL ov01_021F6A9C(void *a0, int a1, int *a2)`  — shared w/ `021F6830.s`
- `BOOL ov01_021F6C28(Work *work)`                 — shared w/ `021F6830.s`
- `BOOL ov01_021F6CA0(Work *work)`                 — shared w/ `021F6830.s` (the sub-machine; drives unk98)
- `int  sub_020311AC(void *frontier, u16 *name)`   — infer exact types from the asm load widths
- `void sub_0203A280(SaveData*, int, int, int)`    — has a stacked 5th arg (`str r0,[sp]`); RE-READ arity at decomp time
- record-store writers paralleling `sub_0202C254` (e.g. `sub_0202C338`) — confirm in `unk_0202C034.h` first; only local-extern if absent

## Gotchas
- **IPA discipline is the #1 risk.** `ov01_021F729C` is in the frozen `overlay_01.h` and called from matched `scrcmd_c.c`. Don't touch that header; keep the `FieldSystem*` signature. Local struct + local externs only. [[ipa-split-header]] [[ipa-static-no-escape]]
- **Dense 13-case jump table** (`ov01_021F7100`, state 0..0xC). Write `switch (work->state)` with **all 13 cases present (no gaps)** or MWCC emits an if-else chain. Emit case bodies in the asm block order (`_021F713C`…`_021F71AC`). objdiff may report a spurious SIZE diff on this fn (inline-table $d/$t miscount) — **confirm with `chiri pkg -- compare`** (same artifact just seen on `ov01_02203CB8`). [[objdiff-false-positive-inline-jumptable-disasm]]
- **State-machine shared return:** several cases `b` to one trailing `return FALSE`; case 0xC returns `TRUE` inline. Use `break;` for the false paths + one trailing `return FALSE;`. [[shared-store-return-as-fall-off-block]]
- **`unk98`/`unk9a` are `u16`** (strh/ldrh). The zero-extended `ldrh` compares **unsigned** (`blo`) without a cast; `field++` matches the `add #1; strh`. Don't widen to int. [[cast-unsigned-for-branch]]
- **`textPrinterId` @0x40 is `u8`** (stored from `sub_0205B5B4`, read `lsl#18/lsr#18`). Declare it `u8` to reproduce the truncation.
- **`-1` sentinels** at unk88/unk8c are **signed `int`** (`mov;mvn`), compared with signed branches.
- **Count-reload loop** in `ov01_021F6D78`: re-evaluate `sub_02037454()` in the loop bound (the call clobbers the cached count), and use the walking-pointer shape the asm shows. [[manager-count-reload-vs-param-in-init-loop]] [[index-vs-walking-pointer-regalloc]]
- **First-declared local = HIGHEST sp offset** (just confirmed on `02203A18`): if a function with stack VecFx32/struct locals has swapped sp offsets, reorder declarations so the highest-offset local is declared first.
- **Before calling any same-size instruction reorder "unmatchable":** read what every live register holds at the call site — a "leftover" register matching a just-computed/stored value is usually a **missing function argument**, not a scheduler quirk (that was the whole story of `ov01_02203BB4`/`sub_02026E18`). [[two-arg-callee-looks-like-unmatchable-store-hoist]]

## Reference siblings (read first)
- `src/overlay_01_021FF854.c` / `021FFC0C.c` / `022051EC.c` — field-task/effect family shape (manager/work/template, local externs, split-header).
- `src/scrcmd_c.c` (ScrCmd_151 caller of `ov01_021F729C`) and `include/overlay_01.h:85` (frozen proto).
- Query the patterns DB as you go: `python3 tools/decomp_harness/patterns.py query --grep <word>`. Log dead ends: `attempts_log.py add`.

## On success
1. `progress.json`: remove from `failed`/queue, append to `matched` (note size, key tricks).
2. `patterns.py add --json` any new trick; `triage.py --rebuild --top 0`; `coverage_ledger.py`.
3. `./tools/build_attestation.sh` (writes `build_attestation.json`, MATCH).
4. Commit `src/overlay_01_021F6CFC.c` + `main.lsf` + harness + `build_attestation.json`; remove this handoff doc. Commit footer per CLAUDE.md (Co-Authored-By + Claude-Session).
