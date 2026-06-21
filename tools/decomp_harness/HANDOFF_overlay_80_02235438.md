# Handoff: `asm/overlay_80_02235438.s` (Battle Frontier script commands)

**Status: 9/11 functions matched (WIP).** `main.lsf` is on `asm/overlay_80_02235438.o` so the full
ROM still matches (`chiri pkg -- compare` = EXIT 0). `src/frontier/overlay_80_02235438.c` is
committed but NOT in the build. To resume: flip `main.lsf` to `src/frontier/`, rebuild asm ref,
fix the 2 remaining functions.

```
cp build/heartgold.us/asm/overlay_80_02235438.o /tmp/overlay_80_02235438_asm.o   # build w/ asm first
gsed -i 's|Object asm/overlay_80_02235438.o|Object src/frontier/overlay_80_02235438.o|' main.lsf
chiri pkg -- build --target main --no-compare
python3 tools/decomp_harness/objdiff.py /tmp/overlay_80_02235438_asm.o build/heartgold.us/src/frontier/overlay_80_02235438.o --summary
```

## What it is
11 Battle Frontier script-command handlers `BOOL FrtCmd_NNN(FrontierScriptContext *ctx)`
(091, 132-138) + 3 static helpers (ov80_0223558C/573C/774). No header. The 8 FrtCmd_* are
`.public` (registered in a command table elsewhere) → non-static with a forward-decl block.
`ov80_0223558C/573C/774` are NOT in the .inc .public list → static. `ov80_0223C034` is an
extern table (`extern const u16 ov80_0223C034[];`, indexed `ldrh [base + idx*2]`).

## MATCHED (9): FrtCmd_091, 133, 134, 135, 136, 138, ov80_0223558C, ov80_0223573C, ov80_02235774.

## REMAINING 2:
- **FrtCmd_132** (260 vs 348, mine 88B short) — big `switch(sel)` on the ReadHalfWord value.
  asm: `cmp #0x3b bgt CC; sub #0x21 bmi C6; <jump table 0x21..0x3b>; ... C6:(sel<0x21) cmp #2;
  CC:(sel>0x3b) cmp #0x64; default→GF_AssertFail`. The drafter used
  `if(sel>0x3b){}else if(sel<0x21){}else{switch}` which places the if-bodies FIRST; the asm
  places the **jump table / case bodies first**, range-handlers (2, 0x64) after. Also the case
  BODY layout (per [[switch-case-body-layout-follows-source-order-not-case-value]]) is in the
  ORIGINAL source order, NOT ascending — asm body order by address is:
  2(ResetSystem), 0x2e, 0x37, 0x21, 0x22, 0x23, 0x24, 0x2b, 0x28, 0x29, 0x2c, 0x25, 0x26, 0x27,
  0x3a, 0x3b, 0x64, default. Try a SINGLE `switch(sel)` containing cases {2, 0x21..0x3b (only the
  real ones; assert entries fall to default via the table gaps), 0x64, default} written in that
  body order. (Assert cases 0x2a/0x2d/0x2f-0x36/0x38/0x39 → default, don't list them.)
- **FrtCmd_137** (18 diffs) — logic is correct. Two nits: (1) register swap — asm has ctx/data=r4,
  varptr=r5; mine has ctx/data=r5, varptr=r4 (try reordering the local decls). (2) the
  `if (sub_02037C0C(...)==1){*varptr=1; return FALSE;} *varptr=0; return TRUE;` — asm places the
  `return FALSE` AFTER the return-TRUE block and branches to it (`b`), mine inlines it; try
  inverting to `if(...!=1){*varptr=0; return TRUE;} *varptr=1; return FALSE;`.

## Notes
- FrtCmd_091 = `FrontierScriptContext_ReadHalfWord(ctx); StopBGM(GF_GetCurrentPlayingBGM(), 0); return FALSE;`.
- `data = Frontier_GetData(ctx->frontierSystem->unk0)`; `launchArgs = Frontier_GetLaunchArgs(ctx->frontierSystem->unk0)`.
