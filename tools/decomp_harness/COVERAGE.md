# Decomp Coverage Ledger

*Generated 2026-10-11T04:46:55Z by `coverage_ledger.py` — do not hand-edit; regenerate after each decomp.*

Tracked functions (files with retained asm): **16653** — matched 2847, pending 12909, plus 20 matched-but-blocked inside failed files.

| status | files | functions | insn lines | ~text bytes |
|---|---|---|---|---|
| matched | 139 | 2847 | 87424 | 195924 |
| blocked | 51 | 897 | 29123 | 64116 |
| pending | 1280 | 12909 | 690049 | 1545696 |
| upstream | 1636 | 0 | 0 | 0 |

## Blockers (value-ordered: fix what gates the most)

| id | blocks | gates pending files | description |
|---|---|---|---|
| param-copyprop-cmp | 0 | 3 | MWCC copy-propagates parameter copies: 'adds r4, r0, #0; cmp r4, #N' at function entry cannot be produced from pure C (MWCC substitutes back to r0; the shape only arises for saved return values after a bl). Affected functions need the NONMATCHING inline-asm fallback — routine, not a wall (proven: unk_0200B150 re-landed 2026-07-02 via ROADMAP T0.2, full ROM SHA1 OK). Entry-idiom scan (asmscan) finds the remaining sites in pending files: overlay_102 (6), unk_02077678 (4), overlay_96 (3), overlay_48 (2), overlay_112, unk_020517A4, unk_02058034 (1 each). Gated files carry the affected function names in triage_report copyprop_funcs. (unk_02004A44 sub_020058F4 was a false positive -- saved return value after a bl; matched in plain C 2026-10-06.) |
| ext-data-section-split | 0 | 3 | Data-only files exporting multiple EXTERNAL (.public) const arrays: MWCC (all modes — with/without -ipa file, pragma or not; T0.3 experiments 2026-07-02 disproved the earlier mwldarm-reorder theory) emits file-scope external consts SIZE-ASCENDING with a deterministic equal-size scramble, so a retail layout that is not size-ascending cannot come from one TU in source order. objdiff cannot see section order — verify these files ONLY with chiri pkg -- compare. |
| ipa-shared-headers | 0 | 0 | MWCC -ipa file: changing a signature in a shared header cascades codegen changes into every already-matched caller in other compilation units. Affects only files that must ADD or CHANGE declarations in a frozen header — call-only consumers of the exported APIs are NOT gated (proven by patterns 'ipa-blocked-files-can-call-sound-fns-without-cascade' and 'false-ipa-gate-shared-imports'). Diagnostic before blaming IPA for any mismatch: recompile the TU without '-ipa file' and objdiff (pattern ipa-file-flag-effects-and-removal-nonviability). |
| ipa-cse-literal-pool | 1 | 0 | MWCC -ipa file caches repeated literal-pool addresses/large offsets in callee-saved registers across calls where retail reloads them (or vice versa). A codegen-shape problem, not a header problem — split from ipa-shared-headers 2026-07-01, where this file's ubiquitous exports (BeginNormalPaletteFade family, imported by ~84 pending .inc files) badly inflated the gate count. |
| objdiff-false-positives | 0 | 0 | RESOLVED. objdiff.py had a critical bug: the byte extraction regex did not match MWCC's ARM Thumb objdump format (packed hex like 'b418' vs expected space-separated 'b4 18'). It extracted 0 bytes for every function, so 0==0 always reported MATCH. 11 decomps accepted via objdiff were not actually byte-matching. Fixed; all 11 non-matching decomps reverted to asm. 2 decomps that truly match (unk_0202DB34, battle_arcade_game_board_data) kept. |

## Blocked files (51)

| file | functions | insn lines | data-only | notes |
|---|---|---|---|---|
| asm/unk_02014DA0.s | 63 | 1189 |  |  SPL particle-emitter display (63 funcs); 50/63 matched WIP; remaining 13 incl EBC(41), sub_02015550(+24), sub_02015460 h |
| asm/overlay_01_021F1348.s | 61 | 831 |  |  Camera/3D-effect cluster HEAD (GF3dGfxRawResMan resource manager). 61 funcs, 2 manager struct families. Drafted via 3 pa |
| asm/overlay_02_02245B80.s | 41 | 1635 |  |   |
| asm/unk_02015DD8.s | 40 | 679 |  |  Tractable but large (40 fns NNS G2D sprite manager + GE-register renderer). Fully decoded in attempts_log (struct layout |
| asm/unk_02031B0C.s | 39 | 1300 |  |  ApricornBox save module (39 funcs); 16/39 matched WIP. KEY: solved the non-self-contained-header include-order issue (cl |
| asm/overlay_01_021FB878.s | 34 | 877 |  |   |
| asm/unk_0200FA24.s | 33 | 753 |  | ipa-cse-literal-pool IPA-blocked: header signature conflicts, IPA CSE caching, loop codegen. C file exists at src/unk_0200FA24.c but cannot b |
| asm/overlay_80_0223AC24.s | 32 | 1161 |  |   |
| asm/unk_02034354.s | 30 | 891 |  |  link-battle comm PlayerProfile manager (30 funcs); 21/30 matched WIP; remaining 9 incl sub_02034638 NONMATCHING (int-ret |
| asm/unk_0205A44C.s | 28 | 863 |  |   |
| asm/unk_02054648.s | 26 | 946 |  |   |
| asm/unk_0206979C.s | 25 | 257 |  | regalloc-reg-number-swap 24/25 NEAR-MISS. NNS_G3d anim/render wrapper; all fns match except sub_020698E8, which has a maxFrame/0-const r3<->r4 re |
| asm/overlay_01_021FD41C.s | 24 | 660 |  |  20/24 matched; Camera/3D-effect map-object effect (dependent on overlay_01_021F1348 cluster head via local externs). 20/24 functions ma |
| asm/unk_0205AC88.s | 22 | 808 |  |   |
| asm/unk_020957B0.s | 22 | 723 |  |  22 fns / 750 insns, NO header/caller/sibling (all types inferred). Byte-packed command structs + stack-arg (sp+0x20 sign |
| asm/unk_0201956C.s | 21 | 757 |  |   |
| asm/unk_02012DD8.s | 20 | 869 |  |   |
| asm/unk_0203A3B0.s | 20 | 693 |  |   |
| asm/overlay_80_022310C4.s | 20 | 1219 |  |   |
| asm/overlay_80_0222F608.s | 19 | 731 |  |   |
| asm/unk_020210A0.s | 18 | 578 |  |  Intricate touchpad auto-sampling driver (overlay_33-class). Fully decoded (struct TouchpadState 0x5C, all 18 fns) but de |
| asm/overlay_80_02237A70.s | 18 | 620 |  |   |
| asm/unk_0208F814.s | 17 | 370 |  | ipa-shared-headers  |
| asm/overlay_01_021F3F50.s | 17 | 549 |  |  16/17 functions byte-match. Only ov01_021F4048 mismatches (+12 bytes) — pure MWCC global register allocation: asm keeps  |
| asm/overlay_80_02238034.s | 15 | 502 |  |  14/15 functions byte-match (MultiplayerCheck via switch-form). Holdouts: ov80_022383C0 needs LICM to sink entry=ctx+0x33 |
| asm/overlay_01_021FEA0C.s | 14 | 235 |  |  11/14 match; 3 MWCC reg-alloc/addressing holdouts (VecFx32 base-ptr zeroing in EAB0/EB8C, callee-reg-count in EBC0). WIP |
| asm/overlay_01_021FEEEC.s | 14 | 595 |  |   |
| asm/overlay_80_02236450.s | 14 | 814 |  |   |
| asm/overlay_33.s | 12 | 550 |  |  11/12 functions byte-match (WIP src/overlay_33.c kept, main.lsf left on asm). Touchscreen selection-menu overlay: work s |
| asm/overlay_38_thumb.s | 12 | 681 |  |  Outlier: ~700 insns GTS/DWC Wi-Fi crypto+parser (LCG cipher, SHA1, hex codec, 2 state machines). Fully decoded in attemp |
| asm/unk_02020B8C.s | 11 | 595 |  |  2D/3D overworld geometry FX math. 9/11 byte-match (WIP src/unk_02020B8C.c kept, main.lsf reverted to asm so build stays  |
| asm/overlay_80_02235438.s | 11 | 349 |  |  Battle Frontier script commands (11 funcs); 9/11 matched WIP; remaining FrtCmd_132 (switch body-order/layout) + FrtCmd_1 |
| asm/overlay_01_021EABA8.s | 10 | 386 |  |  WIP 7/10 functions + rodata + bss matched (see attempts_log). Camera preset/transition overlay. Holdouts: ov01_021EAEE0  |
| asm/overlay_01_021FE780.s | 10 | 284 |  |  9/10 byte-match. Only ov01_021FE970 differs: identical instructions+size, param0 in r5 vs r6 (reg-alloc cascade). No ext |
| asm/unk_020850F4.s | 9 | 530 |  |   |
| asm/overlay_01_021FEC38.s | 9 | 149 |  |  8/9 byte-match (near-clone of 021FED9C). Only ov01_021FED14 cb1 differs -- same MWCC scheduling holdout as 021FED9C ov01 |
| asm/overlay_01_021FED9C.s | 9 | 140 |  |  8/9 byte-match (all inferred cluster signatures correct). Only ov01_021FEE64 cb1 differs: MWCC scheduling/reg-alloc (dat |
| asm/overlay_104.s | 9 | 668 |  |   |
| asm/overlay_80_02239D74.s | 8 | 280 |  | regalloc-loop-ptr-swap Frontier graphics-loader (8 fns). 7/8 match byte-for-byte; ov80_02239DD0 screen-copy loop has an irreducible r4/r5 swap  |
| asm/overlay_12_02265E28.s | 7 | 212 |  |  Battle-sprite resource loader. rodata (ManagedSpriteTemplate[2]+u16[24]x2+u16[24][3]) MATCHES exactly; 5/7 fns bl-only ( |
| asm/overlay_105.s | 7 | 530 |  |   |
| asm/overlay_01_021F4464.s | 5 | 234 |  |  VRAM display-capture (DISPCAPCNT) setup. 3/5 fns match (ov01_021F4464/44B4/4584 bl-only; mode field unk00 MUST be int fo |
| asm/overlay_80_022357B4.s | 5 | 150 |  | regalloc-loop-ptr-swap Frontier overlay_80; 2/5 match clean (ov80_02235898, ov80_022358B0) + C4(bl-reloc). Blockers: ov80_022357B4 copy loop ne |
| asm/overlay_116.s | 5 | 368 |  |   |
| asm/unk_02025C44.s | 4 | 276 |  | regalloc-pointer-spill G2D module; 3/4 match (GF_InitG2dRenderer, GF_SetG2dRendererSurface, sub_02025C54). sub_02025C98 (NNSG2dRndCellCullingFu |
| asm/unk_02087FD4.s | 3 | 59 |  | large-reloc-data-file ~4032-byte relocation-heavy rodata (field-move-response trees, ~27 nested tables chained via .word pointers) + 3 trivial |
| asm/unk_02026DE0.s | 2 | 39 |  |  sub_02026E18 matches; sub_02026DE0 not reproducible under MWCC -O4,p. asm keeps a late-materialized stack buffer (dead b |
| asm/overlay_114.s | 2 | 538 |  |   |
| asm/unk_02055BF0_data.s | 0 | 0 | yes | ext-data-section-split Data-only: 3 external const fn-ptr arrays (sMapEnterRoutines, sMapExitRoutines, _020FC76C) referenced only by already-ma |
| asm/middleware.s | 0 | 0 | yes |  Data-only: 7 NUL-terminated SDK middleware version strings in a custom .version section (single ordered section, each .b |
| asm/overlay_12_battle_command.s | 0 | 0 | yes |   |

## Matched files (asm retained) (139)

| file | functions | insn lines | data-only | notes |
|---|---|---|---|---|
| asm/overlay_02_02248728.s | 364 | 14752 |  | retained_asm |
| asm/unk_02004A44.s | 95 | 1764 |  | harness |
| asm/unk_02032844.s | 75 | 2017 |  | harness |
| asm/unk_02030A98.s | 71 | 1383 |  | harness |
| asm/unk_02023694.s | 68 | 1608 |  | harness |
| asm/unk_0202B614.s | 61 | 1125 |  | retained_asm |
| asm/unk_02034B0C.s | 56 | 1530 |  | harness |
| asm/unk_02005D10.s | 50 | 1584 |  | harness |
| asm/unk_020689C8.s | 48 | 429 |  | harness |
| asm/overlay_98.s | 47 | 1310 |  | harness |
| asm/unk_02074E5C.s | 46 | 849 |  | retained_asm |
| asm/overlay_41_02248400.s | 46 | 1253 |  | harness |
| asm/unk_02033AE0.s | 44 | 959 |  | harness |
| asm/unk_02013534.s | 40 | 1211 |  | retained_asm |
| asm/unk_0202D230.s | 40 | 807 |  | harness |
| asm/frontier_map.s | 40 | 2050 |  | harness |
| asm/unk_0202FBCC.s | 39 | 1695 |  | harness |
| asm/overlay_83_02246E08.s | 39 | 1339 |  | harness |
| asm/overlay_01_021F8D80.s | 38 | 727 |  | harness |
| asm/overlay_18_021F8AB8.s | 38 | 1357 |  | harness |
| asm/overlay_01_021FC66C.s | 37 | 733 |  | harness |
| asm/overlay_32.s | 36 | 1354 |  | harness |
| asm/overlay_34.s | 36 | 1981 |  | harness |
| asm/overlay_29.s | 34 | 1335 |  | harness |
| asm/unk_02096C88.s | 31 | 400 |  | retained_asm |
| asm/overlay_01_021F6830.s | 31 | 524 |  | harness |
| asm/overlay_14_021F58B8.s | 30 | 1558 |  | harness |
| asm/overlay_01_022001E4.s | 28 | 514 |  | harness |
| asm/overlay_14_021F4B90.s | 27 | 1474 |  | harness |
| asm/unk_02018000.s | 26 | 379 |  | harness |
| asm/unk_0202C034.s | 25 | 792 |  | harness |
| asm/unk_020863F4.s | 24 | 1701 |  | harness |
| asm/overlay_01_021FDA14.s | 23 | 863 |  | harness |
| asm/overlay_18_021F7ED4.s | 23 | 1319 |  | harness |
| asm/unk_02066EDC.s | 22 | 784 |  | harness |
| asm/unk_02077678.s | 21 | 217 |  | harness |
| asm/overlay_01_021FC05C.s | 21 | 463 |  | harness |
| asm/overlay_80_02229EE0.s | 21 | 1079 |  | retained_asm |
| asm/unk_0202068C.s | 20 | 404 |  | harness |
| asm/frontier.s | 20 | 319 |  | harness |
| asm/overlay_80_0223A00C.s | 20 | 1380 |  | harness |
| asm/overlay_83_022479E4.s | 20 | 335 |  | harness |
| asm/unk_02014A08.s | 19 | 395 |  | harness |
| asm/unk_0202C730.s | 19 | 245 |  | harness |
| asm/unk_020379A0.s | 19 | 341 |  | harness |
| asm/unk_0208F658.s | 19 | 188 |  | harness |
| asm/overlay_80_0222ACA0.s | 19 | 235 |  | harness |
| asm/unk_02087284.s | 18 | 901 |  | harness |
| asm/overlay_01_022031C0.s | 18 | 912 |  | harness |
| asm/overlay_80_022372D8.s | 18 | 870 |  | retained_asm |
| asm/unk_02085604.s | 17 | 1659 |  | harness |
| asm/unk_02087A78.s | 17 | 425 |  | harness |
| asm/overlay_01_021F6CFC.s | 17 | 632 |  | retained_asm |
| asm/overlay_80_02235900.s | 17 | 737 |  | harness |
| asm/overlay_80_02236B78.s | 17 | 831 |  | retained_asm |
| asm/overlay_93_arm.s | 17 | 854 |  | retained_asm |
| asm/unk_020773AC.s | 16 | 301 |  | harness |
| asm/unk_0208FB64.s | 16 | 245 |  | harness |
| asm/unk_02091880.s | 16 | 516 |  | harness |
| asm/overlay_01_021FB04C.s | 16 | 352 |  | harness |
| asm/overlay_01_021FE200.s | 16 | 391 |  | harness |
| asm/unk_0205BFF0.s | 15 | 254 |  | harness |
| asm/overlay_01_021FD1B8.s | 15 | 255 |  | harness |
| asm/overlay_80_02230B8C.s | 15 | 530 |  | harness |
| asm/model_attributes.s | 14 | 316 |  | retained_asm |
| asm/overlay_58.s | 14 | 470 |  | harness |
| asm/frontier_system.s | 14 | 328 |  | harness |
| asm/unk_02078834.s | 13 | 596 |  | retained_asm |
| asm/overlay_01_021FC4C4.s | 13 | 178 |  | harness |
| asm/overlay_01_021FE590.s | 13 | 211 |  | harness |
| asm/overlay_01_02203A18.s | 13 | 450 |  | retained_asm |
| asm/unk_0202DB34.s | 12 | 47 |  | harness |
| asm/unk_0203DB6C.s | 12 | 346 |  | harness |
| asm/unk_02067A60.s | 12 | 363 |  | harness |
| asm/unk_02068FC8.s | 12 | 599 |  | harness |
| asm/unk_0208DE40.s | 12 | 762 |  | harness |
| asm/overlay_01_021FB5D4.s | 12 | 291 |  | harness |
| asm/overlay_01_021FCD2C.s | 12 | 156 |  | harness |
| asm/overlay_01_022051EC.s | 12 | 219 |  | retained_asm |
| asm/unk_0200B150.s | 11 | 238 |  | harness |
| asm/unk_02055244.s | 11 | 189 |  | harness |
| asm/unk_02056680.s | 11 | 724 |  | harness |
| asm/unk_0205BB1C.s | 11 | 551 |  | harness |
| asm/unk_02097024.s | 11 | 198 |  | harness |
| asm/overlay_01_021EAF00.s | 11 | 88 |  | harness |
| asm/overlay_01_021FB4C0.s | 11 | 117 |  | harness |
| asm/overlay_01_021FF854.s | 10 | 402 |  | retained_asm |
| asm/overlay_01_02200858.s | 10 | 286 |  | harness |
| asm/overlay_01_02203E40.s | 10 | 187 |  | harness |
| asm/overlay_80_02239960.s | 10 | 168 |  | harness |
| asm/unk_020163E0.s | 9 | 249 |  | harness |
| asm/unk_02069660.s | 9 | 132 |  | harness |
| asm/overlay_01_021FF464.s | 9 | 247 |  | retained_asm |
| asm/overlay_01_021FF6B0.s | 9 | 173 |  | harness |
| asm/overlay_01_02200040.s | 9 | 173 |  | harness |
| asm/overlay_01_022006A8.s | 9 | 182 |  | harness |
| asm/unk_0203BA5C.s | 8 | 155 |  | harness |
| asm/unk_020517A4.s | 8 | 185 |  | harness |
| asm/unk_020915B0.s | 8 | 65 |  | harness |
| asm/overlay_01_021FFC0C.s | 8 | 300 |  | retained_asm |
| asm/overlay_80_02235390.s | 8 | 64 |  | harness |
| asm/overlay_80_02235FC8.s | 8 | 524 |  | harness |
| asm/overlay_80_022384D8.s | 8 | 150 |  | harness |
| asm/unk_020192D0.s | 7 | 265 |  | harness |
| asm/unk_020318C8.s | 7 | 26 |  | harness |
| asm/overlay_01_021EAFD4.s | 7 | 247 |  | harness |
| asm/overlay_01_021FAD1C.s | 7 | 388 |  | harness |
| asm/overlay_01_021FB368.s | 7 | 159 |  | harness |
| asm/overlay_01_021FCE98.s | 7 | 334 |  | harness |
| asm/unk_0202E41C.s | 6 | 60 |  | harness |
| asm/overlay_01_021EA6C4.s | 6 | 104 |  | harness |
| asm/overlay_01_021F3114.s | 6 | 252 |  | harness |
| asm/unk_02087E70.s | 5 | 142 |  | harness |
| asm/overlay_01_021FAC44.s | 5 | 97 |  | harness |
| asm/unk_02017FAC.s | 4 | 60 |  | harness |
| asm/unk_0201F990.s | 4 | 171 |  | harness |
| asm/unk_020977CC.s | 4 | 195 |  | harness |
| asm/unk_020979A8.s | 4 | 191 |  | harness |
| asm/unk_02097BE0.s | 4 | 144 |  | harness |
| asm/overlay_01_021F3378.s | 4 | 276 |  | harness |
| asm/overlay_80_02239AF8.s | 4 | 107 |  | harness |
| asm/overlay_80_02239BF0.s | 4 | 173 |  | harness |
| asm/unk_0206793C.s | 3 | 117 |  | harness |
| asm/unk_02092B04.s | 3 | 73 |  | harness |
| asm/unk_020961D8.s | 3 | 129 |  | harness |
| asm/unk_02097B78.s | 3 | 43 |  | harness |
| asm/overlay_12_0226BEC4.s | 3 | 113 |  | retained_asm |
| asm/overlay_41_0224BE34.s | 3 | 146 |  | harness |
| asm/unk_02027010.s | 2 | 72 |  | harness |
| asm/unk_020551B8.s | 2 | 59 |  | harness |
| asm/unk_02078DD8.s | 2 | 34 |  | harness |
| asm/unk_02095DF4.s | 2 | 112 |  | harness |
| asm/overlay_01_021F467C.s | 2 | 56 |  | harness |
| asm/overlay_35.s | 2 | 23 |  | harness |
| asm/overlay_118.s | 1 | 251 |  | harness |
| asm/unk_data_020FD978.s | 0 | 0 | yes | harness |
| asm/overlay_01_data_02208BFC.s | 0 | 0 | yes | retained_asm |
| asm/battle_arcade_game_board_data.s | 0 | 0 | yes | harness |
| asm/battle_arcade_game_board_data2.s | 0 | 0 | yes | split_tu |

## Pending files (1280)

| file | functions | insn lines | data-only | notes |
|---|---|---|---|---|
| asm/overlay_96.s | 1435 | 95260 |  |  |
| asm/overlay_07.s | 812 | 44378 |  |  |
| asm/overlay_45_thumb.s | 544 | 12631 |  |  |
| asm/overlay_112.s | 522 | 23933 |  |  |
| asm/overlay_74_thumb.s | 495 | 24729 |  |  |
| asm/overlay_08.s | 266 | 15738 |  |  |
| asm/overlay_85.s | 255 | 8468 |  |  |
| asm/overlay_18_021F0918.s | 217 | 10810 |  |  |
| asm/overlay_12_battle_controller_opponent.s | 216 | 16947 |  |  |
| asm/overlay_14_021E5900.s | 214 | 9741 |  |  |
| asm/overlay_71.s | 211 | 9115 |  |  |
| asm/overlay_15.s | 203 | 12648 |  |  |
| asm/overlay_13_thumb_2.s | 158 | 11775 |  |  |
| asm/unk_02062108.s | 150 | 1925 |  |  |
| asm/overlay_57.s | 149 | 7522 |  |  |
| asm/unk_0201010C.s | 127 | 5168 |  |  |
| asm/overlay_89.s | 120 | 7456 |  |  |
| asm/overlay_75.s | 100 | 5223 |  |  |
| asm/overlay_93_thumb_2.s | 100 | 5287 |  |  |
| asm/overlay_39_thumb.s | 97 | 3842 |  |  |
| asm/overlay_87.s | 97 | 4577 |  |  |
| asm/overlay_27.s | 96 | 5299 |  |  |
| asm/unk_020632B0.s | 93 | 2449 |  |  |
| asm/overlay_01_021EB1E8.s | 92 | 4616 |  |  |
| asm/unk_02035900.s | 90 | 3629 |  |  |
| asm/overlay_49_022655E0.s | 90 | 4663 |  |  |
| asm/overlay_00_thumb.s | 89 | 3729 |  |  |
| asm/overlay_108.s | 88 | 5292 |  |  |
| asm/overlay_05.s | 87 | 5413 |  |  |
| asm/overlay_01_021EFB38.s | 85 | 2703 |  |  |
| asm/overlay_68.s | 85 | 3810 |  |  |
| asm/unk_02061284.s | 84 | 1566 |  |  |
| asm/overlay_12_battle_controller.s | 84 | 4613 |  |  |
| asm/overlay_01_021F1AFC.s | 83 | 2341 |  |  |
| asm/overlay_86.s | 80 | 4128 |  |  |
| asm/overlay_109.s | 79 | 3535 |  |  |
| asm/overlay_82.s | 77 | 3645 |  |  |
| asm/overlay_93_thumb_1.s | 77 | 4544 |  |  |
| asm/overlay_01_021F72DC.s | 76 | 2867 |  |  |
| asm/overlay_106.s | 76 | 2241 |  |  |
| asm/overlay_18_021EE35C.s | 74 | 4160 |  |  |
| asm/overlay_01_021F4704.s | 72 | 3868 |  |  |
| asm/overlay_14_021F6628.s | 67 | 2368 |  |  |
| asm/overlay_37.s | 67 | 3562 |  |  |
| asm/nitrocrypto.s | 67 | 4245 |  |  |
| asm/unk_0205CB48.s | 66 | 2253 |  |  |
| asm/overlay_49_0225EEAC.s | 66 | 5027 |  |  |
| asm/overlay_108_021E8850.s | 66 | 3407 |  |  |
| asm/unk_0205FD20.s | 63 | 2271 |  |  |
| asm/overlay_41_02245EA0.s | 63 | 1380 |  |  |
| asm/unk_02016EDC.s | 62 | 1931 |  |  |
| asm/overlay_95.s | 62 | 3039 |  |  |
| asm/overlay_49_0225D6AC.s | 61 | 2703 |  |  |
| asm/unk_02058AEC.s | 60 | 2722 |  |  |
| asm/unk_020932E0.s | 60 | 4110 |  |  |
| asm/overlay_28.s | 56 | 2419 |  |  |
| asm/overlay_47.s | 56 | 2431 |  |  |
| asm/unk_02056D7C.s | 55 | 2153 |  |  |
| asm/overlay_80_022340E8.s | 55 | 2076 |  |  |
| asm/overlay_80_0222AEF8.s | 54 | 1733 |  |  |
| asm/unk_02058034.s | 53 | 1107 |  |  |
| asm/overlay_18_021F6AB0.s | 53 | 2250 |  |  |
| asm/unk_020658D4.s | 50 | 1346 |  |  |
| asm/overlay_trainer_card_main.s | 50 | 3853 |  |  |
| asm/overlay_88.s | 50 | 1919 |  |  |
| asm/overlay_111.s | 50 | 2039 |  |  |
| asm/overlay_01_021EDAFC.s | 49 | 2435 |  |  |
| asm/overlay_113.s | 49 | 2034 |  |  |
| asm/overlay_31.s | 46 | 2733 |  |  |
| asm/overlay_49_022595CC.s | 46 | 1265 |  |  |
| asm/overlay_41_02249A40.s | 43 | 1303 |  |  |
| asm/overlay_49_02267F94.s | 43 | 1554 |  |  |
| asm/overlay_67.s | 43 | 2250 |  |  |
| asm/overlay_41_02247828.s | 42 | 1331 |  |  |
| asm/overlay_trainer_card_signature.s | 42 | 2238 |  |  |
| asm/unk_0208B1AC.s | 41 | 2005 |  |  |
| asm/overlay_41_02248ED4.s | 41 | 1292 |  |  |
| asm/render_window.s | 40 | 2610 |  |  |
| asm/overlay_01_022053EC.s | 40 | 1592 |  |  |
| asm/overlay_41_0224B21C.s | 40 | 1348 |  |  |
| asm/overlay_97.s | 39 | 2560 |  |  |
| asm/overlay_120.s | 39 | 1994 |  |  |
| asm/overlay_14_021EE26C.s | 38 | 1321 |  |  |
| asm/overlay_41_0224A5A4.s | 38 | 1417 |  |  |
| asm/overlay_49_022649F4.s | 38 | 1266 |  |  |
| asm/overlay_41_02246B34.s | 37 | 1412 |  |  |
| asm/overlay_69.s | 37 | 3237 |  |  |
| asm/unk_0208C3E4.s | 35 | 2926 |  |  |
| asm/overlay_01_021E90C0.s | 35 | 2433 |  |  |
| asm/overlay_14_021F0A80.s | 35 | 1435 |  |  |
| asm/overlay_64.s | 35 | 2388 |  |  |
| asm/overlay_12_022378C0.s | 33 | 4670 |  |  |
| asm/overlay_56.s | 31 | 1964 |  |  |
| asm/overlay_115.s | 31 | 2138 |  |  |
| asm/overlay_14_021EFDE4.s | 30 | 1356 |  |  |
| asm/overlay_80_02231BF8.s | 26 | 905 |  |  |
| asm/overlay_80_022324C4.s | 26 | 1946 |  |  |
| asm/unk_020755E8.s | 22 | 3237 |  |  |
| asm/overlay_14_021F1808.s | 21 | 1375 |  |  |
| asm/overlay_80_0222FD08.s | 21 | 1614 |  |  |
| asm/overlay_46.s | 20 | 1476 |  |  |
| asm/overlay_70_248.s | 20 | 1530 |  |  |
| asm/overlay_49_02268D94.s | 17 | 940 |  |  |
| asm/overlay_40_203.s | 16 | 1495 |  |  |
| asm/unk_02096910.s | 15 | 400 |  |  |
| asm/overlay_14_021EEF34.s | 15 | 1538 |  |  |
| asm/overlay_14_021F2490_29.s | 15 | 609 |  |  |
| asm/overlay_40_117.s | 14 | 2021 |  |  |
| asm/unk_02088288_28.s | 13 | 1129 |  |  |
| asm/unk_02088288_31.s | 13 | 691 |  |  |
| asm/overlay_72_00.s | 13 | 778 |  |  |
| asm/overlay_43_54.s | 12 | 1092 |  |  |
| asm/overlay_92_38.s | 12 | 1427 |  |  |
| asm/overlay_40_42.s | 11 | 1777 |  |  |
| asm/overlay_49_02261FC0.s | 10 | 1432 |  |  |
| asm/overlay_59_37.s | 10 | 478 |  |  |
| asm/overlay_10_trainer_ai_08.s | 9 | 2180 |  |  |
| asm/overlay_59_43.s | 9 | 648 |  |  |
| asm/overlay_70_04.s | 9 | 531 |  |  |
| asm/overlay_80_0222BDF4_131.s | 9 | 553 |  |  |
| asm/overlay_90_65.s | 9 | 673 |  |  |
| asm/overlay_92_04.s | 9 | 1597 |  |  |
| asm/overlay_99_59.s | 9 | 778 |  |  |
| asm/overlay_117.s | 9 | 1192 |  |  |
| asm/overlay_48_08.s | 8 | 434 |  |  |
| asm/overlay_59_23.s | 8 | 718 |  |  |
| asm/overlay_70_02.s | 8 | 206 |  |  |
| asm/overlay_99_45.s | 8 | 446 |  |  |
| asm/overlay_40_20.s | 7 | 690 |  |  |
| asm/overlay_70_183.s | 7 | 419 |  |  |
| asm/overlay_72_37.s | 7 | 321 |  |  |
| asm/overlay_73_92.s | 7 | 321 |  |  |
| asm/overlay_83_0223DD60_14.s | 7 | 476 |  |  |
| asm/overlay_83_02242FE8.s | 7 | 1412 |  |  |
| asm/overlay_83_02243D7C_55.s | 7 | 473 |  |  |
| asm/overlay_90_19.s | 7 | 306 |  |  |
| asm/overlay_99_17.s | 7 | 499 |  |  |
| asm/overlay_99_22.s | 7 | 464 |  |  |
| asm/overlay_102_16.s | 7 | 496 |  |  |
| asm/overlay_40_07.s | 6 | 446 |  |  |
| asm/overlay_40_145.s | 6 | 601 |  |  |
| asm/overlay_40_187.s | 6 | 1147 |  |  |
| asm/overlay_40_213.s | 6 | 755 |  |  |
| asm/overlay_49_02262DB8.s | 6 | 1405 |  |  |
| asm/overlay_59_08.s | 6 | 476 |  |  |
| asm/overlay_59_45.s | 6 | 230 |  |  |
| asm/overlay_59_86.s | 6 | 173 |  |  |
| asm/overlay_70_74.s | 6 | 431 |  |  |
| asm/overlay_80_0222BDF4_133.s | 6 | 391 |  |  |
| asm/overlay_91_90.s | 6 | 498 |  |  |
| asm/overlay_99_32.s | 6 | 401 |  |  |
| asm/overlay_103_50.s | 6 | 208 |  |  |
| asm/overlay_119.s | 6 | 2588 |  |  |
| asm/unk_02088288_15.s | 5 | 613 |  |  |
| asm/unk_02088288_33.s | 5 | 437 |  |  |
| asm/overlay_14_021F2490_61.s | 5 | 260 |  |  |
| asm/overlay_40_98.s | 5 | 1135 |  |  |
| asm/overlay_40_158.s | 5 | 731 |  |  |
| asm/overlay_40_190.s | 5 | 1102 |  |  |
| asm/overlay_40_237.s | 5 | 586 |  |  |
| asm/overlay_40_261.s | 5 | 713 |  |  |
| asm/overlay_43_66.s | 5 | 261 |  |  |
| asm/overlay_59_04.s | 5 | 189 |  |  |
| asm/overlay_70_10.s | 5 | 143 |  |  |
| asm/overlay_70_181.s | 5 | 143 |  |  |
| asm/overlay_73_02.s | 5 | 267 |  |  |
| asm/overlay_81_57.s | 5 | 251 |  |  |
| asm/overlay_83_0223DD60_43.s | 5 | 318 |  |  |
| asm/overlay_83_02243D7C_08.s | 5 | 293 |  |  |
| asm/overlay_90_49.s | 5 | 332 |  |  |
| asm/overlay_99_34.s | 5 | 266 |  |  |
| asm/overlay_102_18.s | 5 | 254 |  |  |
| asm/overlay_102_66.s | 5 | 452 |  |  |
| asm/overlay_14_021F2490_35.s | 4 | 91 |  |  |
| asm/overlay_14_021F2490_64.s | 4 | 185 |  |  |
| asm/overlay_40_85.s | 4 | 406 |  |  |
| asm/overlay_40_92.s | 4 | 452 |  |  |
| asm/overlay_40_106.s | 4 | 573 |  |  |
| asm/overlay_40_127.s | 4 | 490 |  |  |
| asm/overlay_40_179.s | 4 | 717 |  |  |
| asm/overlay_40_181.s | 4 | 556 |  |  |
| asm/overlay_40_198.s | 4 | 604 |  |  |
| asm/overlay_40_279.s | 4 | 586 |  |  |
| asm/overlay_43_39.s | 4 | 312 |  |  |
| asm/overlay_43_62.s | 4 | 132 |  |  |
| asm/overlay_43_79.s | 4 | 233 |  |  |
| asm/overlay_43_84.s | 4 | 915 |  |  |
| asm/overlay_48_03.s | 4 | 279 |  |  |
| asm/overlay_48_05.s | 4 | 345 |  |  |
| asm/overlay_59_53.s | 4 | 177 |  |  |
| asm/overlay_65_07.s | 4 | 685 |  |  |
| asm/overlay_70_273.s | 4 | 97 |  |  |
| asm/overlay_72_12.s | 4 | 270 |  |  |
| asm/overlay_73_68.s | 4 | 242 |  |  |
| asm/overlay_80_0222BDF4_29.s | 4 | 123 |  |  |
| asm/overlay_83_0223DD60_00.s | 4 | 384 |  |  |
| asm/overlay_83_0223DD60_33.s | 4 | 384 |  |  |
| asm/overlay_83_0223DD60_56.s | 4 | 268 |  |  |
| asm/overlay_90_62.s | 4 | 112 |  |  |
| asm/overlay_92_18.s | 4 | 125 |  |  |
| asm/overlay_92_25.s | 4 | 608 |  |  |
| asm/overlay_92_51.s | 4 | 1733 |  |  |
| asm/overlay_99_29.s | 4 | 182 |  |  |
| asm/overlay_102_40.s | 4 | 252 |  |  |
| asm/overlay_102_80.s | 4 | 247 |  |  |
| asm/overlay_102_95.s | 4 | 94 |  |  |
| asm/overlay_103_76.s | 4 | 160 |  |  |
| asm/unk_02088288_04.s | 3 | 178 |  |  |
| asm/overlay_01_021F944C_32.s | 3 | 143 |  |  |
| asm/overlay_01_021F944C_51.s | 3 | 312 |  |  |
| asm/overlay_14_021EAF08_27.s | 3 | 940 |  |  |
| asm/overlay_14_021F2490_46.s | 3 | 209 |  |  |
| asm/overlay_14_021F2490_67.s | 3 | 197 |  |  |
| asm/overlay_40_11.s | 3 | 403 |  |  |
| asm/overlay_40_15.s | 3 | 347 |  |  |
| asm/overlay_40_23.s | 3 | 108 |  |  |
| asm/overlay_40_38.s | 3 | 167 |  |  |
| asm/overlay_40_50.s | 3 | 117 |  |  |
| asm/overlay_40_151.s | 3 | 299 |  |  |
| asm/overlay_40_155.s | 3 | 175 |  |  |
| asm/overlay_40_172.s | 3 | 629 |  |  |
| asm/overlay_40_196.s | 3 | 129 |  |  |
| asm/overlay_40_210.s | 3 | 452 |  |  |
| asm/overlay_40_229.s | 3 | 331 |  |  |
| asm/overlay_40_251.s | 3 | 166 |  |  |
| asm/overlay_43_00.s | 3 | 260 |  |  |
| asm/overlay_43_47.s | 3 | 68 |  |  |
| asm/overlay_43_52.s | 3 | 394 |  |  |
| asm/overlay_43_75.s | 3 | 127 |  |  |
| asm/overlay_43_86.s | 3 | 348 |  |  |
| asm/overlay_59_27.s | 3 | 181 |  |  |
| asm/overlay_59_71.s | 3 | 254 |  |  |
| asm/overlay_65_14.s | 3 | 311 |  |  |
| asm/overlay_70_93.s | 3 | 86 |  |  |
| asm/overlay_70_95.s | 3 | 294 |  |  |
| asm/overlay_70_114.s | 3 | 169 |  |  |
| asm/overlay_70_127.s | 3 | 244 |  |  |
| asm/overlay_70_212.s | 3 | 105 |  |  |
| asm/overlay_70_217.s | 3 | 101 |  |  |
| asm/overlay_70_261.s | 3 | 213 |  |  |
| asm/overlay_70_284.s | 3 | 85 |  |  |
| asm/overlay_72_20.s | 3 | 79 |  |  |
| asm/overlay_72_71.s | 3 | 181 |  |  |
| asm/overlay_73_07.s | 3 | 258 |  |  |
| asm/overlay_73_18.s | 3 | 121 |  |  |
| asm/overlay_73_51.s | 3 | 195 |  |  |
| asm/overlay_73_75.s | 3 | 79 |  |  |
| asm/overlay_81_26.s | 3 | 342 |  |  |
| asm/overlay_81_66.s | 3 | 99 |  |  |
| asm/overlay_81_86.s | 3 | 50 |  |  |
| asm/overlay_83_0223DD60_04.s | 3 | 567 |  |  |
| asm/overlay_83_0223DD60_06.s | 3 | 257 |  |  |
| asm/overlay_83_0223DD60_16.s | 3 | 169 |  |  |
| asm/overlay_83_02243D7C_02.s | 3 | 199 |  |  |
| asm/overlay_91_66.s | 3 | 52 |  |  |
| asm/overlay_91_78.s | 3 | 168 |  |  |
| asm/overlay_92_48.s | 3 | 948 |  |  |
| asm/overlay_99_00.s | 3 | 239 |  |  |
| asm/overlay_99_11.s | 3 | 177 |  |  |
| asm/overlay_99_36.s | 3 | 209 |  |  |
| asm/overlay_99_48.s | 3 | 85 |  |  |
| asm/overlay_102_05.s | 3 | 79 |  |  |
| asm/overlay_102_49.s | 3 | 224 |  |  |
| asm/overlay_102_85.s | 3 | 113 |  |  |
| asm/overlay_102_109.s | 3 | 51 |  |  |
| asm/overlay_102_113.s | 3 | 178 |  |  |
| asm/overlay_103_19.s | 3 | 131 |  |  |
| asm/unk_02088288_02.s | 2 | 261 |  |  |
| asm/unk_02088288_12.s | 2 | 232 |  |  |
| asm/unk_02088288_21.s | 2 | 211 |  |  |
| asm/overlay_14_021EAF08_25.s | 2 | 120 |  |  |
| asm/overlay_14_021EAF08_34.s | 2 | 214 |  |  |
| asm/overlay_14_021EAF08_45.s | 2 | 128 |  |  |
| asm/overlay_14_021F2490_21.s | 2 | 89 |  |  |
| asm/overlay_14_021F2490_27.s | 2 | 146 |  |  |
| asm/overlay_40_31.s | 2 | 94 |  |  |
| asm/overlay_40_33.s | 2 | 507 |  |  |
| asm/overlay_40_36.s | 2 | 140 |  |  |
| asm/overlay_40_80.s | 2 | 139 |  |  |
| asm/overlay_40_153.s | 2 | 264 |  |  |
| asm/overlay_40_160.s | 2 | 458 |  |  |
| asm/overlay_40_166.s | 2 | 267 |  |  |
| asm/overlay_40_170.s | 2 | 61 |  |  |
| asm/overlay_40_176.s | 2 | 337 |  |  |
| asm/overlay_40_185.s | 2 | 54 |  |  |
| asm/overlay_40_205.s | 2 | 205 |  |  |
| asm/overlay_40_218.s | 2 | 440 |  |  |
| asm/overlay_40_220.s | 2 | 58 |  |  |
| asm/overlay_40_225.s | 2 | 498 |  |  |
| asm/overlay_40_227.s | 2 | 285 |  |  |
| asm/overlay_40_249.s | 2 | 246 |  |  |
| asm/overlay_40_276.s | 2 | 175 |  |  |
| asm/overlay_43_15.s | 2 | 126 |  |  |
| asm/overlay_43_17.s | 2 | 214 |  |  |
| asm/overlay_43_43.s | 2 | 129 |  |  |
| asm/overlay_49_0225A154_39.s | 2 | 203 |  |  |
| asm/overlay_49_02263B74.s | 2 | 1450 |  |  |
| asm/overlay_59_00.s | 2 | 107 |  |  |
| asm/overlay_59_15.s | 2 | 109 |  |  |
| asm/overlay_59_17.s | 2 | 102 |  |  |
| asm/overlay_59_21.s | 2 | 181 |  |  |
| asm/overlay_59_39.s | 2 | 147 |  |  |
| asm/overlay_59_41.s | 2 | 104 |  |  |
| asm/overlay_59_47.s | 2 | 109 |  |  |
| asm/overlay_59_74.s | 2 | 214 |  |  |
| asm/overlay_59_79.s | 2 | 71 |  |  |
| asm/overlay_65_04.s | 2 | 224 |  |  |
| asm/overlay_65_17.s | 2 | 53 |  |  |
| asm/overlay_65_19.s | 2 | 203 |  |  |
| asm/overlay_65_22.s | 2 | 277 |  |  |
| asm/overlay_65_45.s | 2 | 70 |  |  |
| asm/overlay_65_48.s | 2 | 233 |  |  |
| asm/overlay_70_00.s | 2 | 684 |  |  |
| asm/overlay_70_06.s | 2 | 45 |  |  |
| asm/overlay_70_25.s | 2 | 171 |  |  |
| asm/overlay_70_29.s | 2 | 166 |  |  |
| asm/overlay_70_39.s | 2 | 226 |  |  |
| asm/overlay_70_84.s | 2 | 167 |  |  |
| asm/overlay_70_102.s | 2 | 182 |  |  |
| asm/overlay_70_116.s | 2 | 72 |  |  |
| asm/overlay_70_122.s | 2 | 229 |  |  |
| asm/overlay_70_146.s | 2 | 66 |  |  |
| asm/overlay_70_152.s | 2 | 71 |  |  |
| asm/overlay_70_240.s | 2 | 383 |  |  |
| asm/overlay_70_244.s | 2 | 804 |  |  |
| asm/overlay_70_275.s | 2 | 114 |  |  |
| asm/overlay_70_279.s | 2 | 330 |  |  |
| asm/overlay_72_02.s | 2 | 29 |  |  |
| asm/overlay_72_15.s | 2 | 345 |  |  |
| asm/overlay_72_31.s | 2 | 127 |  |  |
| asm/overlay_72_39.s | 2 | 71 |  |  |
| asm/overlay_72_65.s | 2 | 68 |  |  |
| asm/overlay_73_00.s | 2 | 271 |  |  |
| asm/overlay_73_57.s | 2 | 229 |  |  |
| asm/overlay_73_59.s | 2 | 29 |  |  |
| asm/overlay_73_70.s | 2 | 331 |  |  |
| asm/overlay_73_86.s | 2 | 94 |  |  |
| asm/overlay_73_94.s | 2 | 113 |  |  |
| asm/overlay_80_0222BDF4_33.s | 2 | 120 |  |  |
| asm/overlay_80_0222BDF4_59.s | 2 | 143 |  |  |
| asm/overlay_80_0222BDF4_113.s | 2 | 57 |  |  |
| asm/overlay_80_0222BDF4_122.s | 2 | 72 |  |  |
| asm/overlay_80_0222BDF4_136.s | 2 | 169 |  |  |
| asm/overlay_81_00.s | 2 | 496 |  |  |
| asm/overlay_81_04.s | 2 | 254 |  |  |
| asm/overlay_81_21.s | 2 | 68 |  |  |
| asm/overlay_81_38.s | 2 | 39 |  |  |
| asm/overlay_81_42.s | 2 | 108 |  |  |
| asm/overlay_81_64.s | 2 | 449 |  |  |
| asm/overlay_83_0223DD60_30.s | 2 | 181 |  |  |
| asm/overlay_83_02243D7C_16.s | 2 | 79 |  |  |
| asm/overlay_83_02243D7C_40.s | 2 | 188 |  |  |
| asm/overlay_90_36.s | 2 | 47 |  |  |
| asm/overlay_90_39.s | 2 | 94 |  |  |
| asm/overlay_90_44.s | 2 | 142 |  |  |
| asm/overlay_90_71.s | 2 | 86 |  |  |
| asm/overlay_90_86.s | 2 | 10 |  |  |
| asm/overlay_91_52.s | 2 | 286 |  |  |
| asm/overlay_91_68.s | 2 | 87 |  |  |
| asm/overlay_91_74.s | 2 | 74 |  |  |
| asm/overlay_92_06.s | 2 | 297 |  |  |
| asm/overlay_99_07.s | 2 | 137 |  |  |
| asm/overlay_99_15.s | 2 | 96 |  |  |
| asm/overlay_99_43.s | 2 | 65 |  |  |
| asm/overlay_99_52.s | 2 | 67 |  |  |
| asm/overlay_99_57.s | 2 | 56 |  |  |
| asm/overlay_102_34.s | 2 | 17 |  |  |
| asm/overlay_102_38.s | 2 | 75 |  |  |
| asm/overlay_102_47.s | 2 | 118 |  |  |
| asm/overlay_102_93.s | 2 | 80 |  |  |
| asm/overlay_102_111.s | 2 | 136 |  |  |
| asm/overlay_103_15.s | 2 | 75 |  |  |
| asm/overlay_103_25.s | 2 | 119 |  |  |
| asm/overlay_103_48.s | 2 | 46 |  |  |
| asm/overlay_103_63.s | 2 | 170 |  |  |
| asm/overlay_103_72.s | 2 | 56 |  |  |
| asm/unk_02088288_03.s | 1 | 39 |  |  |
| asm/unk_02088288_13.s | 1 | 12 |  |  |
| asm/unk_02088288_14.s | 1 | 8 |  |  |
| asm/unk_02088288_16.s | 1 | 8 |  |  |
| asm/unk_02088288_17.s | 1 | 8 |  |  |
| asm/unk_02088288_18.s | 1 | 114 |  |  |
| asm/unk_02088288_26.s | 1 | 20 |  |  |
| asm/unk_02088288_30.s | 1 | 13 |  |  |
| asm/unk_02088288_38.s | 1 | 6 |  |  |
| asm/unk_02088288_39.s | 1 | 18 |  |  |
| asm/unk_02088288_40.s | 1 | 26 |  |  |
| asm/unk_02088288_41.s | 1 | 26 |  |  |
| asm/unk_02088288_42.s | 1 | 18 |  |  |
| asm/unk_02088288_43.s | 1 | 6 |  |  |
| asm/unk_02088288_44.s | 1 | 6 |  |  |
| asm/unk_02088288_46.s | 1 | 44 |  |  |
| asm/unk_02088288_49.s | 1 | 45 |  |  |
| asm/unk_02088288_50.s | 1 | 17 |  |  |
| asm/unk_02088288_51.s | 1 | 16 |  |  |
| asm/unk_02088288_52.s | 1 | 16 |  |  |
| asm/unk_02088288_53.s | 1 | 32 |  |  |
| asm/unk_02088288_54.s | 1 | 17 |  |  |
| asm/overlay_01_021F944C_00.s | 1 | 35 |  |  |
| asm/overlay_01_021F944C_01.s | 1 | 11 |  |  |
| asm/overlay_01_021F944C_17.s | 1 | 5 |  |  |
| asm/overlay_01_021F944C_18.s | 1 | 5 |  |  |
| asm/overlay_01_021F944C_20.s | 1 | 18 |  |  |
| asm/overlay_01_021F944C_21.s | 1 | 18 |  |  |
| asm/overlay_01_021F944C_28.s | 1 | 45 |  |  |
| asm/overlay_01_021F944C_35.s | 1 | 4 |  |  |
| asm/overlay_01_021F944C_37.s | 1 | 4 |  |  |
| asm/overlay_01_021F944C_38.s | 1 | 4 |  |  |
| asm/overlay_10_trainer_ai_01.s | 1 | 28 |  |  |
| asm/overlay_10_trainer_ai_02.s | 1 | 28 |  |  |
| asm/overlay_10_trainer_ai_04.s | 1 | 44 |  |  |
| asm/overlay_14_021EAF08_05.s | 1 | 20 |  |  |
| asm/overlay_14_021EAF08_09.s | 1 | 3 |  |  |
| asm/overlay_14_021EAF08_12.s | 1 | 113 |  |  |
| asm/overlay_14_021EAF08_16.s | 1 | 45 |  |  |
| asm/overlay_14_021EAF08_23.s | 1 | 332 |  |  |
| asm/overlay_14_021EAF08_38.s | 1 | 22 |  |  |
| asm/overlay_14_021EAF08_50.s | 1 | 29 |  |  |
| asm/overlay_14_021EAF08_53.s | 1 | 388 |  |  |
| asm/overlay_14_021EAF08_57.s | 1 | 52 |  |  |
| asm/overlay_14_021F2490_00.s | 1 | 79 |  |  |
| asm/overlay_14_021F2490_14.s | 1 | 14 |  |  |
| asm/overlay_14_021F2490_15.s | 1 | 13 |  |  |
| asm/overlay_14_021F2490_18.s | 1 | 13 |  |  |
| asm/overlay_14_021F2490_19.s | 1 | 9 |  |  |
| asm/overlay_14_021F2490_20.s | 1 | 18 |  |  |
| asm/overlay_14_021F2490_23.s | 1 | 16 |  |  |
| asm/overlay_14_021F2490_28.s | 1 | 15 |  |  |
| asm/overlay_14_021F2490_30.s | 1 | 19 |  |  |
| asm/overlay_14_021F2490_31.s | 1 | 21 |  |  |
| asm/overlay_14_021F2490_32.s | 1 | 24 |  |  |
| asm/overlay_14_021F2490_34.s | 1 | 15 |  |  |
| asm/overlay_14_021F2490_36.s | 1 | 94 |  |  |
| asm/overlay_14_021F2490_37.s | 1 | 38 |  |  |
| asm/overlay_14_021F2490_38.s | 1 | 87 |  |  |
| asm/overlay_14_021F2490_40.s | 1 | 99 |  |  |
| asm/overlay_14_021F2490_41.s | 1 | 34 |  |  |
| asm/overlay_14_021F2490_42.s | 1 | 46 |  |  |
| asm/overlay_14_021F2490_43.s | 1 | 46 |  |  |
| asm/overlay_14_021F2490_44.s | 1 | 28 |  |  |
| asm/overlay_14_021F2490_48.s | 1 | 46 |  |  |
| asm/overlay_14_021F2490_50.s | 1 | 77 |  |  |
| asm/overlay_14_021F2490_51.s | 1 | 38 |  |  |
| asm/overlay_14_021F2490_52.s | 1 | 41 |  |  |
| asm/overlay_14_021F2490_53.s | 1 | 51 |  |  |
| asm/overlay_14_021F2490_54.s | 1 | 61 |  |  |
| asm/overlay_14_021F2490_59.s | 1 | 10 |  |  |
| asm/overlay_14_021F2490_60.s | 1 | 58 |  |  |
| asm/overlay_14_021F2490_63.s | 1 | 64 |  |  |
| asm/overlay_14_021F2490_65.s | 1 | 48 |  |  |
| asm/overlay_40_00.s | 1 | 243 |  |  |
| asm/overlay_40_02.s | 1 | 170 |  |  |
| asm/overlay_40_06.s | 1 | 15 |  |  |
| asm/overlay_40_13.s | 1 | 101 |  |  |
| asm/overlay_40_14.s | 1 | 12 |  |  |
| asm/overlay_40_17.s | 1 | 57 |  |  |
| asm/overlay_40_19.s | 1 | 58 |  |  |
| asm/overlay_40_21.s | 1 | 42 |  |  |
| asm/overlay_40_22.s | 1 | 10 |  |  |
| asm/overlay_40_24.s | 1 | 14 |  |  |
| asm/overlay_40_26.s | 1 | 21 |  |  |
| asm/overlay_40_27.s | 1 | 26 |  |  |
| asm/overlay_40_29.s | 1 | 44 |  |  |
| asm/overlay_40_39.s | 1 | 11 |  |  |
| asm/overlay_40_40.s | 1 | 14 |  |  |
| asm/overlay_40_41.s | 1 | 8 |  |  |
| asm/overlay_40_49.s | 1 | 3 |  |  |
| asm/overlay_40_53.s | 1 | 11 |  |  |
| asm/overlay_40_60.s | 1 | 45 |  |  |
| asm/overlay_40_61.s | 1 | 14 |  |  |
| asm/overlay_40_64.s | 1 | 76 |  |  |
| asm/overlay_40_65.s | 1 | 11 |  |  |
| asm/overlay_40_67.s | 1 | 447 |  |  |
| asm/overlay_40_70.s | 1 | 8 |  |  |
| asm/overlay_40_71.s | 1 | 247 |  |  |
| asm/overlay_40_72.s | 1 | 8 |  |  |
| asm/overlay_40_73.s | 1 | 35 |  |  |
| asm/overlay_40_81.s | 1 | 7 |  |  |
| asm/overlay_40_83.s | 1 | 39 |  |  |
| asm/overlay_40_84.s | 1 | 6 |  |  |
| asm/overlay_40_86.s | 1 | 24 |  |  |
| asm/overlay_40_87.s | 1 | 17 |  |  |
| asm/overlay_40_88.s | 1 | 53 |  |  |
| asm/overlay_40_90.s | 1 | 230 |  |  |
| asm/overlay_40_93.s | 1 | 18 |  |  |
| asm/overlay_40_96.s | 1 | 22 |  |  |
| asm/overlay_40_100.s | 1 | 174 |  |  |
| asm/overlay_40_101.s | 1 | 120 |  |  |
| asm/overlay_40_102.s | 1 | 10 |  |  |
| asm/overlay_40_103.s | 1 | 125 |  |  |
| asm/overlay_40_104.s | 1 | 95 |  |  |
| asm/overlay_40_107.s | 1 | 165 |  |  |
| asm/overlay_40_110.s | 1 | 37 |  |  |
| asm/overlay_40_111.s | 1 | 50 |  |  |
| asm/overlay_40_114.s | 1 | 36 |  |  |
| asm/overlay_40_115.s | 1 | 68 |  |  |
| asm/overlay_40_118.s | 1 | 41 |  |  |
| asm/overlay_40_124.s | 1 | 54 |  |  |
| asm/overlay_40_125.s | 1 | 96 |  |  |
| asm/overlay_40_133.s | 1 | 17 |  |  |
| asm/overlay_40_134.s | 1 | 19 |  |  |
| asm/overlay_40_140.s | 1 | 102 |  |  |
| asm/overlay_40_141.s | 1 | 126 |  |  |
| asm/overlay_40_142.s | 1 | 54 |  |  |
| asm/overlay_40_143.s | 1 | 106 |  |  |
| asm/overlay_40_144.s | 1 | 10 |  |  |
| asm/overlay_40_150.s | 1 | 11 |  |  |
| asm/overlay_40_152.s | 1 | 10 |  |  |
| asm/overlay_40_154.s | 1 | 10 |  |  |
| asm/overlay_40_159.s | 1 | 46 |  |  |
| asm/overlay_40_161.s | 1 | 10 |  |  |
| asm/overlay_40_164.s | 1 | 115 |  |  |
| asm/overlay_40_167.s | 1 | 53 |  |  |
| asm/overlay_40_168.s | 1 | 82 |  |  |
| asm/overlay_40_171.s | 1 | 65 |  |  |
| asm/overlay_40_173.s | 1 | 31 |  |  |
| asm/overlay_40_175.s | 1 | 96 |  |  |
| asm/overlay_40_178.s | 1 | 10 |  |  |
| asm/overlay_40_180.s | 1 | 10 |  |  |
| asm/overlay_40_184.s | 1 | 54 |  |  |
| asm/overlay_40_188.s | 1 | 147 |  |  |
| asm/overlay_40_189.s | 1 | 10 |  |  |
| asm/overlay_40_194.s | 1 | 95 |  |  |
| asm/overlay_40_197.s | 1 | 42 |  |  |
| asm/overlay_40_201.s | 1 | 9 |  |  |
| asm/overlay_40_202.s | 1 | 9 |  |  |
| asm/overlay_40_204.s | 1 | 10 |  |  |
| asm/overlay_40_206.s | 1 | 187 |  |  |
| asm/overlay_40_209.s | 1 | 130 |  |  |
| asm/overlay_40_212.s | 1 | 185 |  |  |
| asm/overlay_40_214.s | 1 | 151 |  |  |
| asm/overlay_40_215.s | 1 | 10 |  |  |
| asm/overlay_40_216.s | 1 | 10 |  |  |
| asm/overlay_40_217.s | 1 | 13 |  |  |
| asm/overlay_40_219.s | 1 | 10 |  |  |
| asm/overlay_40_221.s | 1 | 10 |  |  |
| asm/overlay_40_222.s | 1 | 10 |  |  |
| asm/overlay_40_223.s | 1 | 10 |  |  |
| asm/overlay_40_224.s | 1 | 4 |  |  |
| asm/overlay_40_228.s | 1 | 16 |  |  |
| asm/overlay_40_230.s | 1 | 35 |  |  |
| asm/overlay_40_231.s | 1 | 44 |  |  |
| asm/overlay_40_233.s | 1 | 217 |  |  |
| asm/overlay_40_234.s | 1 | 10 |  |  |
| asm/overlay_40_235.s | 1 | 10 |  |  |
| asm/overlay_40_236.s | 1 | 13 |  |  |
| asm/overlay_40_239.s | 1 | 274 |  |  |
| asm/overlay_40_240.s | 1 | 10 |  |  |
| asm/overlay_40_241.s | 1 | 10 |  |  |
| asm/overlay_40_242.s | 1 | 10 |  |  |
| asm/overlay_40_243.s | 1 | 10 |  |  |
| asm/overlay_40_244.s | 1 | 10 |  |  |
| asm/overlay_40_245.s | 1 | 10 |  |  |
| asm/overlay_40_246.s | 1 | 4 |  |  |
| asm/overlay_40_247.s | 1 | 329 |  |  |
| asm/overlay_40_255.s | 1 | 37 |  |  |
| asm/overlay_40_256.s | 1 | 73 |  |  |
| asm/overlay_40_258.s | 1 | 37 |  |  |
| asm/overlay_40_259.s | 1 | 97 |  |  |
| asm/overlay_40_262.s | 1 | 230 |  |  |
| asm/overlay_40_263.s | 1 | 225 |  |  |
| asm/overlay_40_264.s | 1 | 102 |  |  |
| asm/overlay_40_266.s | 1 | 21 |  |  |
| asm/overlay_40_270.s | 1 | 25 |  |  |
| asm/overlay_40_280.s | 1 | 17 |  |  |
| asm/overlay_40_281.s | 1 | 62 |  |  |
| asm/overlay_40_282.s | 1 | 21 |  |  |
| asm/overlay_40_283.s | 1 | 35 |  |  |
| asm/overlay_40_284.s | 1 | 57 |  |  |
| asm/overlay_43_02.s | 1 | 58 |  |  |
| asm/overlay_43_03.s | 1 | 47 |  |  |
| asm/overlay_43_05.s | 1 | 38 |  |  |
| asm/overlay_43_09.s | 1 | 13 |  |  |
| asm/overlay_43_11.s | 1 | 44 |  |  |
| asm/overlay_43_14.s | 1 | 16 |  |  |
| asm/overlay_43_20.s | 1 | 68 |  |  |
| asm/overlay_43_21.s | 1 | 20 |  |  |
| asm/overlay_43_22.s | 1 | 30 |  |  |
| asm/overlay_43_24.s | 1 | 52 |  |  |
| asm/overlay_43_25.s | 1 | 21 |  |  |
| asm/overlay_43_26.s | 1 | 53 |  |  |
| asm/overlay_43_27.s | 1 | 23 |  |  |
| asm/overlay_43_28.s | 1 | 21 |  |  |
| asm/overlay_43_29.s | 1 | 45 |  |  |
| asm/overlay_43_31.s | 1 | 7 |  |  |
| asm/overlay_43_32.s | 1 | 80 |  |  |
| asm/overlay_43_36.s | 1 | 23 |  |  |
| asm/overlay_43_40.s | 1 | 3 |  |  |
| asm/overlay_43_41.s | 1 | 135 |  |  |
| asm/overlay_43_44.s | 1 | 33 |  |  |
| asm/overlay_43_45.s | 1 | 22 |  |  |
| asm/overlay_43_53.s | 1 | 3 |  |  |
| asm/overlay_43_56.s | 1 | 19 |  |  |
| asm/overlay_43_57.s | 1 | 14 |  |  |
| asm/overlay_43_64.s | 1 | 48 |  |  |
| asm/overlay_43_67.s | 1 | 14 |  |  |
| asm/overlay_43_69.s | 1 | 3 |  |  |
| asm/overlay_43_70.s | 1 | 22 |  |  |
| asm/overlay_43_71.s | 1 | 192 |  |  |
| asm/overlay_43_73.s | 1 | 43 |  |  |
| asm/overlay_43_76.s | 1 | 3 |  |  |
| asm/overlay_43_82.s | 1 | 31 |  |  |
| asm/overlay_43_85.s | 1 | 167 |  |  |
| asm/overlay_43_88.s | 1 | 56 |  |  |
| asm/overlay_48_00.s | 1 | 119 |  |  |
| asm/overlay_48_01.s | 1 | 89 |  |  |
| asm/overlay_48_02.s | 1 | 49 |  |  |
| asm/overlay_48_06.s | 1 | 25 |  |  |
| asm/overlay_48_10.s | 1 | 14 |  |  |
| asm/overlay_48_13.s | 1 | 152 |  |  |
| asm/overlay_48_15.s | 1 | 63 |  |  |
| asm/overlay_48_16.s | 1 | 17 |  |  |
| asm/overlay_48_27.s | 1 | 64 |  |  |
| asm/overlay_48_32.s | 1 | 20 |  |  |
| asm/overlay_48_34.s | 1 | 43 |  |  |
| asm/overlay_48_36.s | 1 | 113 |  |  |
| asm/overlay_48_38.s | 1 | 47 |  |  |
| asm/overlay_48_43.s | 1 | 4 |  |  |
| asm/overlay_48_45.s | 1 | 53 |  |  |
| asm/overlay_48_52.s | 1 | 46 |  |  |
| asm/overlay_48_56.s | 1 | 18 |  |  |
| asm/overlay_48_58.s | 1 | 25 |  |  |
| asm/overlay_48_63.s | 1 | 21 |  |  |
| asm/overlay_48_64.s | 1 | 18 |  |  |
| asm/overlay_49_02258800_05.s | 1 | 41 |  |  |
| asm/overlay_49_02258800_06.s | 1 | 70 |  |  |
| asm/overlay_49_02258800_10.s | 1 | 10 |  |  |
| asm/overlay_49_02258800_13.s | 1 | 104 |  |  |
| asm/overlay_49_0225A154_00.s | 1 | 7 |  |  |
| asm/overlay_49_0225A154_01.s | 1 | 7 |  |  |
| asm/overlay_49_0225A154_02.s | 1 | 22 |  |  |
| asm/overlay_49_0225A154_03.s | 1 | 23 |  |  |
| asm/overlay_49_0225A154_04.s | 1 | 7 |  |  |
| asm/overlay_49_0225A154_05.s | 1 | 7 |  |  |
| asm/overlay_49_0225A154_06.s | 1 | 7 |  |  |
| asm/overlay_49_0225A154_07.s | 1 | 19 |  |  |
| asm/overlay_49_0225A154_08.s | 1 | 7 |  |  |
| asm/overlay_49_0225A154_09.s | 1 | 6 |  |  |
| asm/overlay_49_0225A154_10.s | 1 | 11 |  |  |
| asm/overlay_49_0225A154_11.s | 1 | 22 |  |  |
| asm/overlay_49_0225A154_12.s | 1 | 23 |  |  |
| asm/overlay_49_0225A154_13.s | 1 | 23 |  |  |
| asm/overlay_49_0225A154_14.s | 1 | 9 |  |  |
| asm/overlay_49_0225A154_16.s | 1 | 10 |  |  |
| asm/overlay_49_0225A154_22.s | 1 | 35 |  |  |
| asm/overlay_49_0225A154_23.s | 1 | 11 |  |  |
| asm/overlay_49_0225A154_24.s | 1 | 28 |  |  |
| asm/overlay_49_0225A154_35.s | 1 | 191 |  |  |
| asm/overlay_49_0225A154_36.s | 1 | 5 |  |  |
| asm/overlay_49_0225A154_37.s | 1 | 45 |  |  |
| asm/overlay_49_0225A154_40.s | 1 | 26 |  |  |
| asm/overlay_49_0225A154_41.s | 1 | 38 |  |  |
| asm/overlay_49_0225A154_43.s | 1 | 19 |  |  |
| asm/overlay_49_0225A154_44.s | 1 | 41 |  |  |
| asm/overlay_49_0225A154_45.s | 1 | 42 |  |  |
| asm/overlay_49_0225A154_55.s | 1 | 76 |  |  |
| asm/overlay_49_0225A154_62.s | 1 | 24 |  |  |
| asm/overlay_49_0225A154_63.s | 1 | 20 |  |  |
| asm/overlay_49_0225A154_70.s | 1 | 64 |  |  |
| asm/overlay_49_0225A154_71.s | 1 | 21 |  |  |
| asm/overlay_49_0225A154_73.s | 1 | 25 |  |  |
| asm/overlay_49_0225A154_75.s | 1 | 5 |  |  |
| asm/overlay_49_0225A154_77.s | 1 | 41 |  |  |
| asm/overlay_49_0225A154_79.s | 1 | 32 |  |  |
| asm/overlay_49_0225A154_80.s | 1 | 21 |  |  |
| asm/overlay_49_0225A154_81.s | 1 | 9 |  |  |
| asm/overlay_49_0225A154_95.s | 1 | 19 |  |  |
| asm/overlay_49_0225A154_98.s | 1 | 72 |  |  |
| asm/overlay_49_0225A154_99.s | 1 | 86 |  |  |
| asm/overlay_49_0225A154_100.s | 1 | 54 |  |  |
| asm/overlay_49_0225A154_102.s | 1 | 56 |  |  |
| asm/overlay_49_0225CB50_01.s | 1 | 67 |  |  |
| asm/overlay_49_0225CB50_03.s | 1 | 94 |  |  |
| asm/overlay_49_0225CB50_08.s | 1 | 7 |  |  |
| asm/overlay_49_0225CB50_15.s | 1 | 17 |  |  |
| asm/overlay_59_01.s | 1 | 17 |  |  |
| asm/overlay_59_02.s | 1 | 67 |  |  |
| asm/overlay_59_05.s | 1 | 3 |  |  |
| asm/overlay_59_06.s | 1 | 22 |  |  |
| asm/overlay_59_07.s | 1 | 3 |  |  |
| asm/overlay_59_09.s | 1 | 8 |  |  |
| asm/overlay_59_10.s | 1 | 13 |  |  |
| asm/overlay_59_13.s | 1 | 18 |  |  |
| asm/overlay_59_14.s | 1 | 14 |  |  |
| asm/overlay_59_22.s | 1 | 22 |  |  |
| asm/overlay_59_29.s | 1 | 35 |  |  |
| asm/overlay_59_30.s | 1 | 15 |  |  |
| asm/overlay_59_31.s | 1 | 50 |  |  |
| asm/overlay_59_32.s | 1 | 25 |  |  |
| asm/overlay_59_33.s | 1 | 9 |  |  |
| asm/overlay_59_35.s | 1 | 262 |  |  |
| asm/overlay_59_38.s | 1 | 43 |  |  |
| asm/overlay_59_40.s | 1 | 43 |  |  |
| asm/overlay_59_42.s | 1 | 43 |  |  |
| asm/overlay_59_44.s | 1 | 17 |  |  |
| asm/overlay_59_46.s | 1 | 3 |  |  |
| asm/overlay_59_49.s | 1 | 20 |  |  |
| asm/overlay_59_57.s | 1 | 46 |  |  |
| asm/overlay_59_59.s | 1 | 70 |  |  |
| asm/overlay_59_61.s | 1 | 47 |  |  |
| asm/overlay_59_62.s | 1 | 23 |  |  |
| asm/overlay_59_63.s | 1 | 9 |  |  |
| asm/overlay_59_65.s | 1 | 157 |  |  |
| asm/overlay_59_67.s | 1 | 50 |  |  |
| asm/overlay_59_69.s | 1 | 95 |  |  |
| asm/overlay_59_72.s | 1 | 20 |  |  |
| asm/overlay_59_73.s | 1 | 18 |  |  |
| asm/overlay_59_76.s | 1 | 69 |  |  |
| asm/overlay_59_80.s | 1 | 13 |  |  |
| asm/overlay_59_83.s | 1 | 9 |  |  |
| asm/overlay_59_89.s | 1 | 41 |  |  |
| asm/overlay_65_00.s | 1 | 162 |  |  |
| asm/overlay_65_01.s | 1 | 21 |  |  |
| asm/overlay_65_02.s | 1 | 64 |  |  |
| asm/overlay_65_03.s | 1 | 122 |  |  |
| asm/overlay_65_06.s | 1 | 38 |  |  |
| asm/overlay_65_08.s | 1 | 53 |  |  |
| asm/overlay_65_09.s | 1 | 72 |  |  |
| asm/overlay_65_10.s | 1 | 71 |  |  |
| asm/overlay_65_11.s | 1 | 36 |  |  |
| asm/overlay_65_12.s | 1 | 42 |  |  |
| asm/overlay_65_15.s | 1 | 95 |  |  |
| asm/overlay_65_18.s | 1 | 140 |  |  |
| asm/overlay_65_21.s | 1 | 32 |  |  |
| asm/overlay_65_29.s | 1 | 11 |  |  |
| asm/overlay_65_31.s | 1 | 35 |  |  |
| asm/overlay_65_32.s | 1 | 93 |  |  |
| asm/overlay_65_33.s | 1 | 35 |  |  |
| asm/overlay_65_35.s | 1 | 86 |  |  |
| asm/overlay_65_36.s | 1 | 128 |  |  |
| asm/overlay_65_37.s | 1 | 40 |  |  |
| asm/overlay_65_39.s | 1 | 65 |  |  |
| asm/overlay_65_41.s | 1 | 33 |  |  |
| asm/overlay_65_42.s | 1 | 132 |  |  |
| asm/overlay_65_43.s | 1 | 35 |  |  |
| asm/overlay_65_44.s | 1 | 71 |  |  |
| asm/overlay_65_46.s | 1 | 79 |  |  |
| asm/overlay_65_47.s | 1 | 13 |  |  |
| asm/overlay_65_49.s | 1 | 23 |  |  |
| asm/overlay_65_50.s | 1 | 10 |  |  |
| asm/overlay_70_01.s | 1 | 5 |  |  |
| asm/overlay_70_03.s | 1 | 51 |  |  |
| asm/overlay_70_05.s | 1 | 66 |  |  |
| asm/overlay_70_13.s | 1 | 16 |  |  |
| asm/overlay_70_14.s | 1 | 14 |  |  |
| asm/overlay_70_18.s | 1 | 41 |  |  |
| asm/overlay_70_24.s | 1 | 20 |  |  |
| asm/overlay_70_27.s | 1 | 13 |  |  |
| asm/overlay_70_31.s | 1 | 119 |  |  |
| asm/overlay_70_41.s | 1 | 9 |  |  |
| asm/overlay_70_43.s | 1 | 24 |  |  |
| asm/overlay_70_44.s | 1 | 61 |  |  |
| asm/overlay_70_52.s | 1 | 94 |  |  |
| asm/overlay_70_53.s | 1 | 9 |  |  |
| asm/overlay_70_54.s | 1 | 18 |  |  |
| asm/overlay_70_55.s | 1 | 89 |  |  |
| asm/overlay_70_56.s | 1 | 16 |  |  |
| asm/overlay_70_58.s | 1 | 37 |  |  |
| asm/overlay_70_60.s | 1 | 92 |  |  |
| asm/overlay_70_66.s | 1 | 19 |  |  |
| asm/overlay_70_67.s | 1 | 38 |  |  |
| asm/overlay_70_68.s | 1 | 37 |  |  |
| asm/overlay_70_69.s | 1 | 81 |  |  |
| asm/overlay_70_72.s | 1 | 185 |  |  |
| asm/overlay_70_73.s | 1 | 76 |  |  |
| asm/overlay_70_75.s | 1 | 10 |  |  |
| asm/overlay_70_77.s | 1 | 32 |  |  |
| asm/overlay_70_79.s | 1 | 152 |  |  |
| asm/overlay_70_86.s | 1 | 21 |  |  |
| asm/overlay_70_87.s | 1 | 64 |  |  |
| asm/overlay_70_89.s | 1 | 7 |  |  |
| asm/overlay_70_94.s | 1 | 35 |  |  |
| asm/overlay_70_97.s | 1 | 100 |  |  |
| asm/overlay_70_98.s | 1 | 16 |  |  |
| asm/overlay_70_100.s | 1 | 94 |  |  |
| asm/overlay_70_105.s | 1 | 54 |  |  |
| asm/overlay_70_107.s | 1 | 99 |  |  |
| asm/overlay_70_111.s | 1 | 32 |  |  |
| asm/overlay_70_115.s | 1 | 57 |  |  |
| asm/overlay_70_119.s | 1 | 111 |  |  |
| asm/overlay_70_120.s | 1 | 16 |  |  |
| asm/overlay_70_123.s | 1 | 114 |  |  |
| asm/overlay_70_125.s | 1 | 35 |  |  |
| asm/overlay_70_130.s | 1 | 43 |  |  |
| asm/overlay_70_131.s | 1 | 173 |  |  |
| asm/overlay_70_132.s | 1 | 43 |  |  |
| asm/overlay_70_133.s | 1 | 158 |  |  |
| asm/overlay_70_135.s | 1 | 19 |  |  |
| asm/overlay_70_136.s | 1 | 25 |  |  |
| asm/overlay_70_137.s | 1 | 19 |  |  |
| asm/overlay_70_138.s | 1 | 19 |  |  |
| asm/overlay_70_139.s | 1 | 27 |  |  |
| asm/overlay_70_140.s | 1 | 75 |  |  |
| asm/overlay_70_141.s | 1 | 19 |  |  |
| asm/overlay_70_142.s | 1 | 19 |  |  |
| asm/overlay_70_153.s | 1 | 18 |  |  |
| asm/overlay_70_154.s | 1 | 23 |  |  |
| asm/overlay_70_155.s | 1 | 46 |  |  |
| asm/overlay_70_157.s | 1 | 77 |  |  |
| asm/overlay_70_160.s | 1 | 109 |  |  |
| asm/overlay_70_164.s | 1 | 103 |  |  |
| asm/overlay_70_165.s | 1 | 16 |  |  |
| asm/overlay_70_167.s | 1 | 71 |  |  |
| asm/overlay_70_169.s | 1 | 64 |  |  |
| asm/overlay_70_173.s | 1 | 22 |  |  |
| asm/overlay_70_176.s | 1 | 38 |  |  |
| asm/overlay_70_179.s | 1 | 22 |  |  |
| asm/overlay_70_182.s | 1 | 33 |  |  |
| asm/overlay_70_184.s | 1 | 30 |  |  |
| asm/overlay_70_186.s | 1 | 29 |  |  |
| asm/overlay_70_188.s | 1 | 19 |  |  |
| asm/overlay_70_189.s | 1 | 129 |  |  |
| asm/overlay_70_191.s | 1 | 63 |  |  |
| asm/overlay_70_196.s | 1 | 99 |  |  |
| asm/overlay_70_198.s | 1 | 61 |  |  |
| asm/overlay_70_199.s | 1 | 14 |  |  |
| asm/overlay_70_200.s | 1 | 44 |  |  |
| asm/overlay_70_201.s | 1 | 19 |  |  |
| asm/overlay_70_202.s | 1 | 70 |  |  |
| asm/overlay_70_203.s | 1 | 12 |  |  |
| asm/overlay_70_204.s | 1 | 43 |  |  |
| asm/overlay_70_205.s | 1 | 35 |  |  |
| asm/overlay_70_206.s | 1 | 72 |  |  |
| asm/overlay_70_207.s | 1 | 12 |  |  |
| asm/overlay_70_208.s | 1 | 43 |  |  |
| asm/overlay_70_209.s | 1 | 14 |  |  |
| asm/overlay_70_211.s | 1 | 14 |  |  |
| asm/overlay_70_213.s | 1 | 37 |  |  |
| asm/overlay_70_214.s | 1 | 12 |  |  |
| asm/overlay_70_216.s | 1 | 12 |  |  |
| asm/overlay_70_218.s | 1 | 15 |  |  |
| asm/overlay_70_219.s | 1 | 17 |  |  |
| asm/overlay_70_221.s | 1 | 14 |  |  |
| asm/overlay_70_222.s | 1 | 15 |  |  |
| asm/overlay_70_223.s | 1 | 11 |  |  |
| asm/overlay_70_224.s | 1 | 32 |  |  |
| asm/overlay_70_225.s | 1 | 39 |  |  |
| asm/overlay_70_230.s | 1 | 71 |  |  |
| asm/overlay_70_234.s | 1 | 30 |  |  |
| asm/overlay_70_235.s | 1 | 32 |  |  |
| asm/overlay_70_239.s | 1 | 4 |  |  |
| asm/overlay_70_242.s | 1 | 23 |  |  |
| asm/overlay_70_246.s | 1 | 47 |  |  |
| asm/overlay_70_249.s | 1 | 96 |  |  |
| asm/overlay_70_256.s | 1 | 34 |  |  |
| asm/overlay_70_257.s | 1 | 9 |  |  |
| asm/overlay_70_259.s | 1 | 57 |  |  |
| asm/overlay_70_264.s | 1 | 26 |  |  |
| asm/overlay_70_265.s | 1 | 14 |  |  |
| asm/overlay_70_269.s | 1 | 67 |  |  |
| asm/overlay_70_270.s | 1 | 9 |  |  |
| asm/overlay_70_271.s | 1 | 19 |  |  |
| asm/overlay_70_277.s | 1 | 101 |  |  |
| asm/overlay_70_280.s | 1 | 81 |  |  |
| asm/overlay_70_285.s | 1 | 42 |  |  |
| asm/overlay_70_286.s | 1 | 20 |  |  |
| asm/overlay_70_287.s | 1 | 12 |  |  |
| asm/overlay_70_288.s | 1 | 21 |  |  |
| asm/overlay_70_289.s | 1 | 21 |  |  |
| asm/overlay_70_290.s | 1 | 47 |  |  |
| asm/overlay_70_291.s | 1 | 7 |  |  |
| asm/overlay_70_293.s | 1 | 12 |  |  |
| asm/overlay_70_294.s | 1 | 64 |  |  |
| asm/overlay_70_296.s | 1 | 127 |  |  |
| asm/overlay_70_297.s | 1 | 15 |  |  |
| asm/overlay_70_298.s | 1 | 26 |  |  |
| asm/overlay_70_300.s | 1 | 25 |  |  |
| asm/overlay_72_01.s | 1 | 49 |  |  |
| asm/overlay_72_07.s | 1 | 16 |  |  |
| asm/overlay_72_08.s | 1 | 14 |  |  |
| asm/overlay_72_11.s | 1 | 39 |  |  |
| asm/overlay_72_16.s | 1 | 122 |  |  |
| asm/overlay_72_21.s | 1 | 35 |  |  |
| asm/overlay_72_22.s | 1 | 21 |  |  |
| asm/overlay_72_23.s | 1 | 50 |  |  |
| asm/overlay_72_24.s | 1 | 7 |  |  |
| asm/overlay_72_26.s | 1 | 12 |  |  |
| asm/overlay_72_27.s | 1 | 86 |  |  |
| asm/overlay_72_29.s | 1 | 126 |  |  |
| asm/overlay_72_30.s | 1 | 15 |  |  |
| asm/overlay_72_32.s | 1 | 15 |  |  |
| asm/overlay_72_33.s | 1 | 45 |  |  |
| asm/overlay_72_34.s | 1 | 50 |  |  |
| asm/overlay_72_35.s | 1 | 20 |  |  |
| asm/overlay_72_36.s | 1 | 21 |  |  |
| asm/overlay_72_38.s | 1 | 16 |  |  |
| asm/overlay_72_40.s | 1 | 18 |  |  |
| asm/overlay_72_41.s | 1 | 16 |  |  |
| asm/overlay_72_42.s | 1 | 44 |  |  |
| asm/overlay_72_43.s | 1 | 21 |  |  |
| asm/overlay_72_45.s | 1 | 10 |  |  |
| asm/overlay_72_46.s | 1 | 13 |  |  |
| asm/overlay_72_47.s | 1 | 20 |  |  |
| asm/overlay_72_48.s | 1 | 20 |  |  |
| asm/overlay_72_49.s | 1 | 20 |  |  |
| asm/overlay_72_50.s | 1 | 20 |  |  |
| asm/overlay_72_51.s | 1 | 20 |  |  |
| asm/overlay_72_52.s | 1 | 11 |  |  |
| asm/overlay_72_57.s | 1 | 19 |  |  |
| asm/overlay_72_58.s | 1 | 26 |  |  |
| asm/overlay_72_72.s | 1 | 9 |  |  |
| asm/overlay_72_76.s | 1 | 12 |  |  |
| asm/overlay_72_80.s | 1 | 54 |  |  |
| asm/overlay_72_85.s | 1 | 116 |  |  |
| asm/overlay_72_89.s | 1 | 23 |  |  |
| asm/overlay_73_01.s | 1 | 74 |  |  |
| asm/overlay_73_03.s | 1 | 22 |  |  |
| asm/overlay_73_11.s | 1 | 26 |  |  |
| asm/overlay_73_12.s | 1 | 17 |  |  |
| asm/overlay_73_19.s | 1 | 12 |  |  |
| asm/overlay_73_22.s | 1 | 13 |  |  |
| asm/overlay_73_23.s | 1 | 12 |  |  |
| asm/overlay_73_28.s | 1 | 46 |  |  |
| asm/overlay_73_32.s | 1 | 12 |  |  |
| asm/overlay_73_33.s | 1 | 68 |  |  |
| asm/overlay_73_40.s | 1 | 59 |  |  |
| asm/overlay_73_48.s | 1 | 62 |  |  |
| asm/overlay_73_55.s | 1 | 82 |  |  |
| asm/overlay_73_56.s | 1 | 18 |  |  |
| asm/overlay_73_58.s | 1 | 40 |  |  |
| asm/overlay_73_67.s | 1 | 31 |  |  |
| asm/overlay_73_71.s | 1 | 122 |  |  |
| asm/overlay_73_76.s | 1 | 35 |  |  |
| asm/overlay_73_77.s | 1 | 13 |  |  |
| asm/overlay_73_78.s | 1 | 50 |  |  |
| asm/overlay_73_79.s | 1 | 7 |  |  |
| asm/overlay_73_81.s | 1 | 12 |  |  |
| asm/overlay_73_82.s | 1 | 86 |  |  |
| asm/overlay_73_83.s | 1 | 22 |  |  |
| asm/overlay_73_84.s | 1 | 126 |  |  |
| asm/overlay_73_85.s | 1 | 15 |  |  |
| asm/overlay_73_88.s | 1 | 120 |  |  |
| asm/overlay_73_89.s | 1 | 50 |  |  |
| asm/overlay_73_90.s | 1 | 20 |  |  |
| asm/overlay_73_91.s | 1 | 21 |  |  |
| asm/overlay_73_96.s | 1 | 96 |  |  |
| asm/overlay_73_97.s | 1 | 46 |  |  |
| asm/overlay_73_98.s | 1 | 21 |  |  |
| asm/overlay_73_100.s | 1 | 10 |  |  |
| asm/overlay_73_101.s | 1 | 13 |  |  |
| asm/overlay_73_103.s | 1 | 11 |  |  |
| asm/overlay_73_122.s | 1 | 13 |  |  |
| asm/overlay_73_124.s | 1 | 16 |  |  |
| asm/overlay_73_128.s | 1 | 157 |  |  |
| asm/overlay_80_0222BDF4_02.s | 1 | 56 |  |  |
| asm/overlay_80_0222BDF4_03.s | 1 | 8 |  |  |
| asm/overlay_80_0222BDF4_07.s | 1 | 15 |  |  |
| asm/overlay_80_0222BDF4_09.s | 1 | 15 |  |  |
| asm/overlay_80_0222BDF4_11.s | 1 | 15 |  |  |
| asm/overlay_80_0222BDF4_12.s | 1 | 9 |  |  |
| asm/overlay_80_0222BDF4_13.s | 1 | 10 |  |  |
| asm/overlay_80_0222BDF4_15.s | 1 | 13 |  |  |
| asm/overlay_80_0222BDF4_16.s | 1 | 14 |  |  |
| asm/overlay_80_0222BDF4_19.s | 1 | 25 |  |  |
| asm/overlay_80_0222BDF4_27.s | 1 | 17 |  |  |
| asm/overlay_80_0222BDF4_35.s | 1 | 94 |  |  |
| asm/overlay_80_0222BDF4_36.s | 1 | 16 |  |  |
| asm/overlay_80_0222BDF4_38.s | 1 | 41 |  |  |
| asm/overlay_80_0222BDF4_43.s | 1 | 67 |  |  |
| asm/overlay_80_0222BDF4_48.s | 1 | 21 |  |  |
| asm/overlay_80_0222BDF4_49.s | 1 | 12 |  |  |
| asm/overlay_80_0222BDF4_50.s | 1 | 13 |  |  |
| asm/overlay_80_0222BDF4_51.s | 1 | 25 |  |  |
| asm/overlay_80_0222BDF4_53.s | 1 | 14 |  |  |
| asm/overlay_80_0222BDF4_57.s | 1 | 10 |  |  |
| asm/overlay_80_0222BDF4_62.s | 1 | 17 |  |  |
| asm/overlay_80_0222BDF4_71.s | 1 | 22 |  |  |
| asm/overlay_80_0222BDF4_80.s | 1 | 17 |  |  |
| asm/overlay_80_0222BDF4_81.s | 1 | 21 |  |  |
| asm/overlay_80_0222BDF4_82.s | 1 | 21 |  |  |
| asm/overlay_80_0222BDF4_86.s | 1 | 13 |  |  |
| asm/overlay_80_0222BDF4_89.s | 1 | 14 |  |  |
| asm/overlay_80_0222BDF4_90.s | 1 | 13 |  |  |
| asm/overlay_80_0222BDF4_91.s | 1 | 28 |  |  |
| asm/overlay_80_0222BDF4_92.s | 1 | 4 |  |  |
| asm/overlay_80_0222BDF4_96.s | 1 | 53 |  |  |
| asm/overlay_80_0222BDF4_97.s | 1 | 32 |  |  |
| asm/overlay_80_0222BDF4_98.s | 1 | 18 |  |  |
| asm/overlay_80_0222BDF4_104.s | 1 | 45 |  |  |
| asm/overlay_80_0222BDF4_107.s | 1 | 46 |  |  |
| asm/overlay_80_0222BDF4_111.s | 1 | 45 |  |  |
| asm/overlay_80_0222BDF4_117.s | 1 | 12 |  |  |
| asm/overlay_80_0222BDF4_118.s | 1 | 7 |  |  |
| asm/overlay_80_0222BDF4_119.s | 1 | 13 |  |  |
| asm/overlay_80_0222BDF4_121.s | 1 | 5 |  |  |
| asm/overlay_80_0222BDF4_123.s | 1 | 9 |  |  |
| asm/overlay_80_0222BDF4_127.s | 1 | 31 |  |  |
| asm/overlay_80_0222BDF4_129.s | 1 | 31 |  |  |
| asm/overlay_80_0222BDF4_130.s | 1 | 32 |  |  |
| asm/overlay_80_0222BDF4_140.s | 1 | 45 |  |  |
| asm/overlay_80_0222BDF4_142.s | 1 | 60 |  |  |
| asm/overlay_80_0222BDF4_144.s | 1 | 60 |  |  |
| asm/overlay_80_0222BDF4_146.s | 1 | 31 |  |  |
| asm/overlay_81_02.s | 1 | 96 |  |  |
| asm/overlay_81_03.s | 1 | 57 |  |  |
| asm/overlay_81_05.s | 1 | 4 |  |  |
| asm/overlay_81_06.s | 1 | 45 |  |  |
| asm/overlay_81_08.s | 1 | 11 |  |  |
| asm/overlay_81_11.s | 1 | 77 |  |  |
| asm/overlay_81_12.s | 1 | 7 |  |  |
| asm/overlay_81_19.s | 1 | 23 |  |  |
| asm/overlay_81_25.s | 1 | 48 |  |  |
| asm/overlay_81_27.s | 1 | 36 |  |  |
| asm/overlay_81_29.s | 1 | 65 |  |  |
| asm/overlay_81_33.s | 1 | 51 |  |  |
| asm/overlay_81_34.s | 1 | 17 |  |  |
| asm/overlay_81_35.s | 1 | 23 |  |  |
| asm/overlay_81_36.s | 1 | 29 |  |  |
| asm/overlay_81_39.s | 1 | 59 |  |  |
| asm/overlay_81_40.s | 1 | 28 |  |  |
| asm/overlay_81_41.s | 1 | 133 |  |  |
| asm/overlay_81_43.s | 1 | 42 |  |  |
| asm/overlay_81_44.s | 1 | 33 |  |  |
| asm/overlay_81_45.s | 1 | 25 |  |  |
| asm/overlay_81_46.s | 1 | 11 |  |  |
| asm/overlay_81_47.s | 1 | 129 |  |  |
| asm/overlay_81_48.s | 1 | 39 |  |  |
| asm/overlay_81_49.s | 1 | 36 |  |  |
| asm/overlay_81_50.s | 1 | 28 |  |  |
| asm/overlay_81_51.s | 1 | 11 |  |  |
| asm/overlay_81_52.s | 1 | 127 |  |  |
| asm/overlay_81_56.s | 1 | 103 |  |  |
| asm/overlay_81_65.s | 1 | 36 |  |  |
| asm/overlay_81_69.s | 1 | 42 |  |  |
| asm/overlay_81_70.s | 1 | 43 |  |  |
| asm/overlay_81_74.s | 1 | 38 |  |  |
| asm/overlay_81_77.s | 1 | 23 |  |  |
| asm/overlay_81_80.s | 1 | 76 |  |  |
| asm/overlay_81_82.s | 1 | 3 |  |  |
| asm/overlay_81_83.s | 1 | 9 |  |  |
| asm/overlay_81_87.s | 1 | 28 |  |  |
| asm/overlay_81_88.s | 1 | 7 |  |  |
| asm/overlay_81_89.s | 1 | 16 |  |  |
| asm/overlay_81_90.s | 1 | 41 |  |  |
| asm/overlay_81_91.s | 1 | 28 |  |  |
| asm/overlay_81_92.s | 1 | 7 |  |  |
| asm/overlay_83_0223DD60_02.s | 1 | 1337 |  |  |
| asm/overlay_83_0223DD60_07.s | 1 | 53 |  |  |
| asm/overlay_83_0223DD60_08.s | 1 | 21 |  |  |
| asm/overlay_83_0223DD60_10.s | 1 | 21 |  |  |
| asm/overlay_83_0223DD60_15.s | 1 | 25 |  |  |
| asm/overlay_83_0223DD60_17.s | 1 | 39 |  |  |
| asm/overlay_83_0223DD60_18.s | 1 | 45 |  |  |
| asm/overlay_83_0223DD60_23.s | 1 | 3 |  |  |
| asm/overlay_83_0223DD60_25.s | 1 | 3 |  |  |
| asm/overlay_83_0223DD60_27.s | 1 | 95 |  |  |
| asm/overlay_83_0223DD60_29.s | 1 | 133 |  |  |
| asm/overlay_83_0223DD60_31.s | 1 | 62 |  |  |
| asm/overlay_83_0223DD60_38.s | 1 | 19 |  |  |
| asm/overlay_83_0223DD60_39.s | 1 | 63 |  |  |
| asm/overlay_83_0223DD60_40.s | 1 | 41 |  |  |
| asm/overlay_83_0223DD60_42.s | 1 | 23 |  |  |
| asm/overlay_83_0223DD60_44.s | 1 | 22 |  |  |
| asm/overlay_83_0223DD60_45.s | 1 | 52 |  |  |
| asm/overlay_83_0223DD60_52.s | 1 | 193 |  |  |
| asm/overlay_83_0223DD60_54.s | 1 | 688 |  |  |
| asm/overlay_83_0223DD60_55.s | 1 | 20 |  |  |
| asm/overlay_83_0223DD60_57.s | 1 | 5 |  |  |
| asm/overlay_83_02243D7C_03.s | 1 | 54 |  |  |
| asm/overlay_83_02243D7C_04.s | 1 | 21 |  |  |
| asm/overlay_83_02243D7C_06.s | 1 | 21 |  |  |
| asm/overlay_83_02243D7C_10.s | 1 | 3 |  |  |
| asm/overlay_83_02243D7C_11.s | 1 | 3 |  |  |
| asm/overlay_83_02243D7C_12.s | 1 | 10 |  |  |
| asm/overlay_83_02243D7C_17.s | 1 | 44 |  |  |
| asm/overlay_83_02243D7C_19.s | 1 | 20 |  |  |
| asm/overlay_83_02243D7C_22.s | 1 | 3 |  |  |
| asm/overlay_83_02243D7C_24.s | 1 | 19 |  |  |
| asm/overlay_83_02243D7C_25.s | 1 | 64 |  |  |
| asm/overlay_83_02243D7C_26.s | 1 | 41 |  |  |
| asm/overlay_83_02243D7C_27.s | 1 | 23 |  |  |
| asm/overlay_83_02243D7C_29.s | 1 | 12 |  |  |
| asm/overlay_83_02243D7C_36.s | 1 | 19 |  |  |
| asm/overlay_83_02243D7C_38.s | 1 | 161 |  |  |
| asm/overlay_83_02243D7C_39.s | 1 | 20 |  |  |
| asm/overlay_83_02243D7C_42.s | 1 | 8 |  |  |
| asm/overlay_83_02243D7C_44.s | 1 | 58 |  |  |
| asm/overlay_83_02243D7C_46.s | 1 | 14 |  |  |
| asm/overlay_83_02243D7C_48.s | 1 | 195 |  |  |
| asm/overlay_83_02243D7C_50.s | 1 | 907 |  |  |
| asm/overlay_83_02243D7C_51.s | 1 | 10 |  |  |
| asm/overlay_83_02243D7C_52.s | 1 | 35 |  |  |
| asm/overlay_83_02243D7C_54.s | 1 | 5 |  |  |
| asm/overlay_90_01.s | 1 | 5 |  |  |
| asm/overlay_90_02.s | 1 | 5 |  |  |
| asm/overlay_90_03.s | 1 | 5 |  |  |
| asm/overlay_90_09.s | 1 | 11 |  |  |
| asm/overlay_90_10.s | 1 | 7 |  |  |
| asm/overlay_90_12.s | 1 | 44 |  |  |
| asm/overlay_90_13.s | 1 | 23 |  |  |
| asm/overlay_90_15.s | 1 | 15 |  |  |
| asm/overlay_90_16.s | 1 | 19 |  |  |
| asm/overlay_90_21.s | 1 | 57 |  |  |
| asm/overlay_90_22.s | 1 | 7 |  |  |
| asm/overlay_90_25.s | 1 | 33 |  |  |
| asm/overlay_90_40.s | 1 | 68 |  |  |
| asm/overlay_90_45.s | 1 | 84 |  |  |
| asm/overlay_90_47.s | 1 | 390 |  |  |
| asm/overlay_90_48.s | 1 | 13 |  |  |
| asm/overlay_90_51.s | 1 | 39 |  |  |
| asm/overlay_90_55.s | 1 | 41 |  |  |
| asm/overlay_90_56.s | 1 | 24 |  |  |
| asm/overlay_90_58.s | 1 | 55 |  |  |
| asm/overlay_90_60.s | 1 | 46 |  |  |
| asm/overlay_90_66.s | 1 | 13 |  |  |
| asm/overlay_90_67.s | 1 | 543 |  |  |
| asm/overlay_90_68.s | 1 | 436 |  |  |
| asm/overlay_90_69.s | 1 | 14 |  |  |
| asm/overlay_90_73.s | 1 | 29 |  |  |
| asm/overlay_91_00.s | 1 | 31 |  |  |
| asm/overlay_91_02.s | 1 | 5 |  |  |
| asm/overlay_91_03.s | 1 | 13 |  |  |
| asm/overlay_91_04.s | 1 | 16 |  |  |
| asm/overlay_91_05.s | 1 | 5 |  |  |
| asm/overlay_91_08.s | 1 | 38 |  |  |
| asm/overlay_91_15.s | 1 | 188 |  |  |
| asm/overlay_91_16.s | 1 | 146 |  |  |
| asm/overlay_91_17.s | 1 | 98 |  |  |
| asm/overlay_91_20.s | 1 | 32 |  |  |
| asm/overlay_91_27.s | 1 | 242 |  |  |
| asm/overlay_91_29.s | 1 | 18 |  |  |
| asm/overlay_91_30.s | 1 | 11 |  |  |
| asm/overlay_91_34.s | 1 | 11 |  |  |
| asm/overlay_91_38.s | 1 | 109 |  |  |
| asm/overlay_91_39.s | 1 | 31 |  |  |
| asm/overlay_91_42.s | 1 | 3 |  |  |
| asm/overlay_91_48.s | 1 | 6 |  |  |
| asm/overlay_91_49.s | 1 | 144 |  |  |
| asm/overlay_91_50.s | 1 | 84 |  |  |
| asm/overlay_91_51.s | 1 | 36 |  |  |
| asm/overlay_91_54.s | 1 | 72 |  |  |
| asm/overlay_91_55.s | 1 | 21 |  |  |
| asm/overlay_91_56.s | 1 | 118 |  |  |
| asm/overlay_91_60.s | 1 | 69 |  |  |
| asm/overlay_91_64.s | 1 | 38 |  |  |
| asm/overlay_91_86.s | 1 | 14 |  |  |
| asm/overlay_91_88.s | 1 | 49 |  |  |
| asm/overlay_91_95.s | 1 | 46 |  |  |
| asm/overlay_91_96.s | 1 | 60 |  |  |
| asm/overlay_91_102.s | 1 | 7 |  |  |
| asm/overlay_92_01.s | 1 | 3 |  |  |
| asm/overlay_92_09.s | 1 | 22 |  |  |
| asm/overlay_92_21.s | 1 | 42 |  |  |
| asm/overlay_92_23.s | 1 | 201 |  |  |
| asm/overlay_92_27.s | 1 | 47 |  |  |
| asm/overlay_92_30.s | 1 | 19 |  |  |
| asm/overlay_92_34.s | 1 | 169 |  |  |
| asm/overlay_92_39.s | 1 | 167 |  |  |
| asm/overlay_92_42.s | 1 | 576 |  |  |
| asm/overlay_92_44.s | 1 | 45 |  |  |
| asm/overlay_92_45.s | 1 | 48 |  |  |
| asm/overlay_92_47.s | 1 | 33 |  |  |
| asm/overlay_92_53.s | 1 | 107 |  |  |
| asm/overlay_92_54.s | 1 | 27 |  |  |
| asm/overlay_92_55.s | 1 | 31 |  |  |
| asm/overlay_92_56.s | 1 | 21 |  |  |
| asm/overlay_92_58.s | 1 | 10 |  |  |
| asm/overlay_99_05.s | 1 | 18 |  |  |
| asm/overlay_99_08.s | 1 | 20 |  |  |
| asm/overlay_99_09.s | 1 | 24 |  |  |
| asm/overlay_99_10.s | 1 | 16 |  |  |
| asm/overlay_99_12.s | 1 | 24 |  |  |
| asm/overlay_99_13.s | 1 | 14 |  |  |
| asm/overlay_99_14.s | 1 | 177 |  |  |
| asm/overlay_99_20.s | 1 | 170 |  |  |
| asm/overlay_99_21.s | 1 | 11 |  |  |
| asm/overlay_99_25.s | 1 | 9 |  |  |
| asm/overlay_99_27.s | 1 | 5 |  |  |
| asm/overlay_99_28.s | 1 | 4 |  |  |
| asm/overlay_99_39.s | 1 | 34 |  |  |
| asm/overlay_99_40.s | 1 | 50 |  |  |
| asm/overlay_99_44.s | 1 | 142 |  |  |
| asm/overlay_99_46.s | 1 | 18 |  |  |
| asm/overlay_99_47.s | 1 | 20 |  |  |
| asm/overlay_99_50.s | 1 | 65 |  |  |
| asm/overlay_99_53.s | 1 | 6 |  |  |
| asm/overlay_99_55.s | 1 | 32 |  |  |
| asm/overlay_99_56.s | 1 | 236 |  |  |
| asm/overlay_99_58.s | 1 | 94 |  |  |
| asm/overlay_99_63.s | 1 | 4 |  |  |
| asm/overlay_102_00.s | 1 | 51 |  |  |
| asm/overlay_102_01.s | 1 | 29 |  |  |
| asm/overlay_102_02.s | 1 | 47 |  |  |
| asm/overlay_102_04.s | 1 | 70 |  |  |
| asm/overlay_102_07.s | 1 | 11 |  |  |
| asm/overlay_102_14.s | 1 | 58 |  |  |
| asm/overlay_102_15.s | 1 | 53 |  |  |
| asm/overlay_102_17.s | 1 | 64 |  |  |
| asm/overlay_102_20.s | 1 | 103 |  |  |
| asm/overlay_102_21.s | 1 | 17 |  |  |
| asm/overlay_102_23.s | 1 | 17 |  |  |
| asm/overlay_102_39.s | 1 | 32 |  |  |
| asm/overlay_102_45.s | 1 | 30 |  |  |
| asm/overlay_102_46.s | 1 | 22 |  |  |
| asm/overlay_102_48.s | 1 | 68 |  |  |
| asm/overlay_102_50.s | 1 | 119 |  |  |
| asm/overlay_102_51.s | 1 | 89 |  |  |
| asm/overlay_102_52.s | 1 | 49 |  |  |
| asm/overlay_102_54.s | 1 | 37 |  |  |
| asm/overlay_102_55.s | 1 | 37 |  |  |
| asm/overlay_102_57.s | 1 | 13 |  |  |
| asm/overlay_102_58.s | 1 | 35 |  |  |
| asm/overlay_102_59.s | 1 | 12 |  |  |
| asm/overlay_102_60.s | 1 | 12 |  |  |
| asm/overlay_102_61.s | 1 | 12 |  |  |
| asm/overlay_102_62.s | 1 | 12 |  |  |
| asm/overlay_102_67.s | 1 | 45 |  |  |
| asm/overlay_102_69.s | 1 | 15 |  |  |
| asm/overlay_102_70.s | 1 | 19 |  |  |
| asm/overlay_102_78.s | 1 | 8 |  |  |
| asm/overlay_102_81.s | 1 | 25 |  |  |
| asm/overlay_102_90.s | 1 | 66 |  |  |
| asm/overlay_102_92.s | 1 | 25 |  |  |
| asm/overlay_102_94.s | 1 | 11 |  |  |
| asm/overlay_102_96.s | 1 | 10 |  |  |
| asm/overlay_102_98.s | 1 | 26 |  |  |
| asm/overlay_102_100.s | 1 | 15 |  |  |
| asm/overlay_102_101.s | 1 | 23 |  |  |
| asm/overlay_102_106.s | 1 | 55 |  |  |
| asm/overlay_102_107.s | 1 | 34 |  |  |
| asm/overlay_102_108.s | 1 | 30 |  |  |
| asm/overlay_102_118.s | 1 | 21 |  |  |
| asm/overlay_102_120.s | 1 | 27 |  |  |
| asm/overlay_103_01.s | 1 | 11 |  |  |
| asm/overlay_103_03.s | 1 | 14 |  |  |
| asm/overlay_103_05.s | 1 | 204 |  |  |
| asm/overlay_103_07.s | 1 | 113 |  |  |
| asm/overlay_103_09.s | 1 | 74 |  |  |
| asm/overlay_103_16.s | 1 | 13 |  |  |
| asm/overlay_103_17.s | 1 | 70 |  |  |
| asm/overlay_103_21.s | 1 | 117 |  |  |
| asm/overlay_103_28.s | 1 | 47 |  |  |
| asm/overlay_103_29.s | 1 | 9 |  |  |
| asm/overlay_103_32.s | 1 | 4 |  |  |
| asm/overlay_103_34.s | 1 | 22 |  |  |
| asm/overlay_103_37.s | 1 | 6 |  |  |
| asm/overlay_103_38.s | 1 | 21 |  |  |
| asm/overlay_103_39.s | 1 | 24 |  |  |
| asm/overlay_103_42.s | 1 | 8 |  |  |
| asm/overlay_103_44.s | 1 | 39 |  |  |
| asm/overlay_103_51.s | 1 | 9 |  |  |
| asm/overlay_103_52.s | 1 | 14 |  |  |
| asm/overlay_103_53.s | 1 | 70 |  |  |
| asm/overlay_103_57.s | 1 | 13 |  |  |
| asm/overlay_103_60.s | 1 | 19 |  |  |
| asm/overlay_103_66.s | 1 | 105 |  |  |
| asm/overlay_103_67.s | 1 | 84 |  |  |
| asm/overlay_103_70.s | 1 | 143 |  |  |
| asm/overlay_103_79.s | 1 | 3 |  |  |
| asm/overlay_103_80.s | 1 | 3 |  |  |
| asm/overlay_103_81.s | 1 | 25 |  |  |
| asm/unk_data_020FCBD8.s | 0 | 0 | yes |  |
| asm/unk_data_020FDB44.s | 0 | 0 | yes |  |
| asm/unk_02088288_data.s | 0 | 0 | yes |  |
| asm/overlay_01_sprite_data.s | 0 | 0 | yes |  |
| asm/overlay_01_021F944C_data.s | 0 | 0 | yes |  |
| asm/overlay_10_trainer_ai_data.s | 0 | 0 | yes |  |
| asm/overlay_14_021EAF08_data.s | 0 | 0 | yes |  |
| asm/overlay_14_021F2490_data.s | 0 | 0 | yes |  |
| asm/overlay_40_data.s | 0 | 0 | yes |  |
| asm/overlay_43_data.s | 0 | 0 | yes |  |
| asm/overlay_48_data.s | 0 | 0 | yes |  |
| asm/overlay_49_02258800_data.s | 0 | 0 | yes |  |
| asm/overlay_49_0225A154_data.s | 0 | 0 | yes |  |
| asm/overlay_49_0225CB50_data.s | 0 | 0 | yes |  |
| asm/overlay_59_data.s | 0 | 0 | yes |  |
| asm/overlay_65_data.s | 0 | 0 | yes |  |
| asm/overlay_70_data.s | 0 | 0 | yes |  |
| asm/overlay_72_data.s | 0 | 0 | yes |  |
| asm/overlay_73_data.s | 0 | 0 | yes |  |
| asm/overlay_80_0222BDF4_data.s | 0 | 0 | yes |  |
| asm/overlay_81_data.s | 0 | 0 | yes |  |
| asm/overlay_83_0223DD60_data.s | 0 | 0 | yes |  |
| asm/overlay_83_02243D7C_data.s | 0 | 0 | yes |  |
| asm/overlay_90_data.s | 0 | 0 | yes |  |
| asm/overlay_91_data.s | 0 | 0 | yes |  |
| asm/overlay_92_data.s | 0 | 0 | yes |  |
| asm/overlay_99_data.s | 0 | 0 | yes |  |
| asm/overlay_102_data.s | 0 | 0 | yes |  |
| asm/overlay_103_data.s | 0 | 0 | yes |  |

