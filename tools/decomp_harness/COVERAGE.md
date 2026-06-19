# Decomp Coverage Ledger

*Generated 2026-06-19T08:10:28Z by `coverage_ledger.py` — do not hand-edit; regenerate after each decomp.*

Tracked functions (files with retained asm): **20121** — matched 652, pending 19096, plus 50 matched-but-blocked inside failed files.

| status | files | functions | insn lines | ~text bytes |
|---|---|---|---|---|
| matched | 64 | 652 | 13910 | 30580 |
| blocked | 28 | 373 | 11283 | 24904 |
| pending | 205 | 19096 | 927715 | 2072008 |
| upstream | 374 | 0 | 0 | 0 |

## Blockers (value-ordered: fix what gates the most)

| id | blocks | gates pending files | description |
|---|---|---|---|
| ipa-shared-headers | 2 | 115 | MWCC -ipa file: changing a signature in a shared header cascades codegen changes into every already-matched caller in other compilation units. Files sharing many declarations (sound.h family) must be decompiled together or after a coordinated header fix. |
| param-copyprop-cmp | 1 | 37 | MWCC copy-propagates parameter copies: 'adds r4, r0, #0; cmp r4, #N' at function entry cannot be produced from pure C (MWCC substitutes back to r0). Affected functions need the NONMATCHING inline-asm fallback. |
| objdiff-false-positives | 0 | 0 | RESOLVED. objdiff.py had a critical bug: the byte extraction regex did not match MWCC's ARM Thumb objdump format (packed hex like 'b418' vs expected space-separated 'b4 18'). It extracted 0 bytes for every function, so 0==0 always reported MATCH. 11 decomps accepted via objdiff were not actually byte-matching. Fixed in this session; all 11 non-matching decomps reverted to asm. 2 decomps that truly match (unk_0202DB34, battle_arcade_game_board_data) kept. |
| ext-data-section-split | 1 | 0 | Data-only files exporting multiple EXTERNAL (.public) const arrays: MWCC -ipa file emits each top-level const as its own .rodata section, and mwldarm orders/aligns them differently than the asm's single packed .rodata, so the linked overlay/module SHA1 fails even though objdiff --summary (per-section) reports a match. Symbols referenced by other TUs must stay non-static, so they cannot be pooled into one section via `static`. |

## Blocked files (28)

| file | functions | insn lines | data-only | notes |
|---|---|---|---|---|
| asm/unk_02005D10.s | 50 | 1636 |  | ipa-shared-headers 40/50 matched; IPA header dependency: changing return types (void→BOOL) in shared headers breaks already-matched unk_02004A44.c. 40/50  |
| asm/unk_02015DD8.s | 40 | 719 |  |  Tractable but large (40 fns NNS G2D sprite manager + GE-register renderer). Fully decoded in attempts_log (struct layout |
| asm/unk_0200FA24.s | 33 | 787 |  | ipa-shared-headers IPA-blocked: header signature conflicts, IPA CSE caching, loop codegen. C file exists at src/unk_0200FA24.c but cannot b |
| asm/unk_0206979C.s | 25 | 282 |  | regalloc-reg-number-swap 24/25 NEAR-MISS. NNS_G3d anim/render wrapper; all fns match except sub_020698E8, which has a maxFrame/0-const r3<->r4 re |
| asm/unk_020957B0.s | 22 | 750 |  |  22 fns / 750 insns, NO header/caller/sibling (all types inferred). Byte-packed command structs + stack-arg (sp+0x20 sign |
| asm/unk_0201956C.s | 21 | 778 |  |   |
| asm/unk_020210A0.s | 18 | 597 |  |  Intricate touchpad auto-sampling driver (overlay_33-class). Fully decoded (struct TouchpadState 0x5C, all 18 fns) but de |
| asm/overlay_01_021F3F50.s | 17 | 566 |  |  16/17 functions byte-match. Only ov01_021F4048 mismatches (+12 bytes) — pure MWCC global register allocation: asm keeps  |
| asm/overlay_80_02238034.s | 15 | 521 |  |  14/15 functions byte-match (MultiplayerCheck via switch-form). Holdouts: ov80_022383C0 needs LICM to sink entry=ctx+0x33 |
| asm/overlay_01_021FEA0C.s | 14 | 250 |  |  11/14 match; 3 MWCC reg-alloc/addressing holdouts (VecFx32 base-ptr zeroing in EAB0/EB8C, callee-reg-count in EBC0). WIP |
| asm/overlay_33.s | 12 | 563 |  |  11/12 functions byte-match (WIP src/overlay_33.c kept, main.lsf left on asm). Touchscreen selection-menu overlay: work s |
| asm/overlay_38_thumb.s | 12 | 696 |  |  Outlier: ~700 insns GTS/DWC Wi-Fi crypto+parser (LCG cipher, SHA1, hex codec, 2 state machines). Fully decoded in attemp |
| asm/unk_0200B150.s | 11 | 249 |  | param-copyprop-cmp 10/11 matched; 10/11 functions matched. OamManager_Create has 1-byte mismatch: target asm uses 'cmp r4, #4' but MWCC generates 'cmp r0, |
| asm/unk_02020B8C.s | 11 | 606 |  |  2D/3D overworld geometry FX math. 9/11 byte-match (WIP src/unk_02020B8C.c kept, main.lsf reverted to asm so build stays  |
| asm/overlay_01_021EABA8.s | 10 | 396 |  |  WIP 7/10 functions + rodata + bss matched (see attempts_log). Camera preset/transition overlay. Holdouts: ov01_021EAEE0  |
| asm/overlay_01_021FE780.s | 10 | 295 |  |  9/10 byte-match. Only ov01_021FE970 differs: identical instructions+size, param0 in r5 vs r6 (reg-alloc cascade). No ext |
| asm/overlay_01_021FEC38.s | 9 | 158 |  |  8/9 byte-match (near-clone of 021FED9C). Only ov01_021FED14 cb1 differs -- same MWCC scheduling holdout as 021FED9C ov01 |
| asm/overlay_01_021FED9C.s | 9 | 149 |  |  8/9 byte-match (all inferred cluster signatures correct). Only ov01_021FEE64 cb1 differs: MWCC scheduling/reg-alloc (dat |
| asm/overlay_80_02239D74.s | 8 | 288 |  | regalloc-loop-ptr-swap Frontier graphics-loader (8 fns). 7/8 match byte-for-byte; ov80_02239DD0 screen-copy loop has an irreducible r4/r5 swap  |
| asm/overlay_12_02265E28.s | 7 | 219 |  |  Battle-sprite resource loader. rodata (ManagedSpriteTemplate[2]+u16[24]x2+u16[24][3]) MATCHES exactly; 5/7 fns bl-only ( |
| asm/overlay_01_021F4464.s | 5 | 239 |  |  VRAM display-capture (DISPCAPCNT) setup. 3/5 fns match (ov01_021F4464/44B4/4584 bl-only; mode field unk00 MUST be int fo |
| asm/overlay_80_022357B4.s | 5 | 156 |  | regalloc-loop-ptr-swap Frontier overlay_80; 2/5 match clean (ov80_02235898, ov80_022358B0) + C4(bl-reloc). Blockers: ov80_022357B4 copy loop ne |
| asm/unk_02025C44.s | 4 | 280 |  | regalloc-pointer-spill G2D module; 3/4 match (GF_InitG2dRenderer, GF_SetG2dRendererSurface, sub_02025C54). sub_02025C98 (NNSG2dRndCellCullingFu |
| asm/unk_02087FD4.s | 3 | 62 |  | large-reloc-data-file ~4032-byte relocation-heavy rodata (field-move-response trees, ~27 nested tables chained via .word pointers) + 3 trivial |
| asm/unk_02026DE0.s | 2 | 41 |  |  sub_02026E18 matches; sub_02026DE0 not reproducible under MWCC -O4,p. asm keeps a late-materialized stack buffer (dead b |
| asm/unk_02055BF0_data.s | 0 | 0 | yes | ext-data-section-split Data-only: 3 external const fn-ptr arrays (sMapEnterRoutines, sMapExitRoutines, _020FC76C) referenced only by already-ma |
| asm/middleware.s | 0 | 0 | yes |  Data-only: 7 NUL-terminated SDK middleware version strings in a custom .version section (single ordered section, each .b |
| asm/battle_arcade_game_board_data.s | 0 | 0 | yes | ext-data-section-split MWCC splits external const into per-symbol .rodata sections; reordered at link -> OVY_84 SHA1 fail. Stays asm. |

## Matched files (asm retained) (64)

| file | functions | insn lines | data-only | notes |
|---|---|---|---|---|
| asm/unk_020689C8.s | 48 | 477 |  | harness |
| asm/unk_02018000.s | 26 | 405 |  | harness |
| asm/unk_02077678.s | 21 | 238 |  | harness |
| asm/unk_0202068C.s | 20 | 425 |  | harness |
| asm/frontier.s | 20 | 340 |  | harness |
| asm/unk_02014A08.s | 19 | 414 |  | harness |
| asm/unk_0202C730.s | 19 | 264 |  | harness |
| asm/unk_020379A0.s | 19 | 360 |  | harness |
| asm/unk_0208F658.s | 19 | 207 |  | harness |
| asm/overlay_80_0222ACA0.s | 19 | 255 |  | harness |
| asm/unk_02091880.s | 16 | 532 |  | retained_asm |
| asm/overlay_01_021FB04C.s | 16 | 368 |  | harness |
| asm/overlay_01_021FE200.s | 16 | 410 |  | harness |
| asm/unk_0205BFF0.s | 15 | 284 |  | harness |
| asm/overlay_01_021EA8E0.s | 14 | 330 |  | harness |
| asm/frontier_system.s | 14 | 342 |  | harness |
| asm/overlay_01_021F3D38.s | 13 | 247 |  | harness |
| asm/overlay_01_021FC4C4.s | 13 | 191 |  | harness |
| asm/unk_0202DB34.s | 12 | 59 |  | harness |
| asm/unk_0203DB6C.s | 12 | 361 |  | harness |
| asm/unk_02068FC8.s | 12 | 611 |  | harness |
| asm/overlay_01_021FB5D4.s | 12 | 304 |  | harness |
| asm/overlay_01_021FCD2C.s | 12 | 168 |  | harness |
| asm/unk_02055244.s | 11 | 200 |  | harness |
| asm/unk_0205BB1C.s | 11 | 562 |  | harness |
| asm/unk_02097024.s | 11 | 209 |  | harness |
| asm/overlay_01_021EAF00.s | 11 | 99 |  | harness |
| asm/overlay_01_021FB4C0.s | 11 | 128 |  | harness |
| asm/overlay_01_02200858.s | 10 | 297 |  | harness |
| asm/overlay_01_02203E40.s | 10 | 197 |  | harness |
| asm/unk_020163E0.s | 9 | 259 |  | harness |
| asm/text_0205B4EC.s | 9 | 229 |  | harness |
| asm/unk_02069660.s | 9 | 141 |  | harness |
| asm/unk_0203BA5C.s | 8 | 163 |  | harness |
| asm/unk_020517A4.s | 8 | 193 |  | harness |
| asm/unk_020915B0.s | 8 | 73 |  | harness |
| asm/overlay_80_02235390.s | 8 | 72 |  | harness |
| asm/overlay_80_022384D8.s | 8 | 160 |  | harness |
| asm/unk_020192D0.s | 7 | 273 |  | harness |
| asm/unk_020318C8.s | 7 | 33 |  | harness |
| asm/overlay_01_021EAFD4.s | 7 | 254 |  | harness |
| asm/overlay_01_021FAD1C.s | 7 | 395 |  | harness |
| asm/overlay_01_021FB368.s | 7 | 166 |  | harness |
| asm/unk_0202E41C.s | 6 | 66 |  | harness |
| asm/overlay_01_021EA6C4.s | 6 | 110 |  | harness |
| asm/overlay_01_021F3114.s | 6 | 259 |  | harness |
| asm/overlay_01_021FAC44.s | 5 | 102 |  | harness |
| asm/unk_02017FAC.s | 4 | 64 |  | harness |
| asm/unk_0201F990.s | 4 | 175 |  | harness |
| asm/unk_02097BE0.s | 4 | 150 |  | harness |
| asm/overlay_80_02239AF8.s | 4 | 111 |  | harness |
| asm/overlay_80_02239BF0.s | 4 | 179 |  | harness |
| asm/unk_0206793C.s | 3 | 121 |  | harness |
| asm/unk_02092B04.s | 3 | 76 |  | harness |
| asm/unk_020961D8.s | 3 | 133 |  | harness |
| asm/unk_02097B78.s | 3 | 46 |  | harness |
| asm/unk_02027010.s | 2 | 74 |  | harness |
| asm/unk_020551B8.s | 2 | 61 |  | harness |
| asm/unk_02078DD8.s | 2 | 36 |  | harness |
| asm/unk_02095DF4.s | 2 | 115 |  | harness |
| asm/overlay_01_021F467C.s | 2 | 58 |  | harness |
| asm/overlay_35.s | 2 | 26 |  | harness |
| asm/overlay_118.s | 1 | 253 |  | harness |
| asm/unk_data_020FD978.s | 0 | 0 | yes | harness |

## Pending files (205)

| file | functions | insn lines | data-only | notes |
|---|---|---|---|---|
| asm/overlay_96.s | 1435 | 96768 |  |  |
| asm/overlay_07.s | 812 | 45299 |  |  |
| asm/overlay_14.s | 690 | 32630 |  |  |
| asm/overlay_49.s | 665 | 29963 |  |  |
| asm/overlay_40.s | 558 | 45126 |  |  |
| asm/overlay_45_thumb.s | 544 | 13194 |  |  |
| asm/overlay_112.s | 522 | 24489 |  |  |
| asm/overlay_70.s | 519 | 24115 |  |  |
| asm/overlay_74_thumb.s | 495 | 25277 |  |  |
| asm/overlay_18.s | 405 | 20315 |  |  |
| asm/overlay_02_02248728.s | 364 | 15149 |  |  |
| asm/overlay_41.s | 353 | 11242 |  |  |
| asm/overlay_83.s | 278 | 17635 |  |  |
| asm/overlay_08.s | 266 | 16030 |  |  |
| asm/overlay_102.s | 256 | 8991 |  |  |
| asm/overlay_85.s | 255 | 8728 |  |  |
| asm/overlay_91.s | 242 | 10025 |  |  |
| asm/overlay_12_battle_controller_opponent.s | 216 | 17196 |  |  |
| asm/overlay_71.s | 211 | 9340 |  |  |
| asm/overlay_73.s | 210 | 8513 |  |  |
| asm/overlay_15.s | 203 | 12861 |  |  |
| asm/overlay_80_0222BDF4.s | 203 | 6401 |  |  |
| asm/overlay_81.s | 197 | 9792 |  |  |
| asm/overlay_42.s | 183 | 5012 |  |  |
| asm/overlay_03.s | 179 | 9192 |  |  |
| asm/unk_02037C94.s | 176 | 4257 |  |  |
| asm/overlay_43.s | 169 | 8982 |  |  |
| asm/overlay_59.s | 163 | 8288 |  |  |
| asm/overlay_13_thumb_2.s | 158 | 11951 |  |  |
| asm/overlay_72.s | 154 | 6452 |  |  |
| asm/overlay_90.s | 153 | 6655 |  |  |
| asm/unk_02062108.s | 150 | 2075 |  |  |
| asm/overlay_57.s | 149 | 7680 |  |  |
| asm/overlay_99.s | 149 | 6865 |  |  |
| asm/overlay_10_trainer_ai.s | 134 | 8701 |  |  |
| asm/overlay_48.s | 132 | 4823 |  |  |
| asm/overlay_92.s | 132 | 12953 |  |  |
| asm/overlay_01_021F944C.s | 131 | 2710 |  |  |
| asm/unk_0201010C.s | 127 | 5295 |  |  |
| asm/overlay_89.s | 120 | 7586 |  |  |
| asm/overlay_103.s | 118 | 3868 |  |  |
| asm/overlay_65.s | 106 | 6973 |  |  |
| asm/overlay_75.s | 100 | 5341 |  |  |
| asm/overlay_93_thumb_2.s | 100 | 5393 |  |  |
| asm/unk_02088288.s | 97 | 5266 |  |  |
| asm/overlay_39_thumb.s | 97 | 3958 |  |  |
| asm/overlay_87.s | 97 | 4678 |  |  |
| asm/overlay_27.s | 96 | 5396 |  |  |
| asm/unk_02004A44.s | 95 | 1862 |  |  |
| asm/unk_020632B0.s | 93 | 2548 |  |  |
| asm/overlay_01_021EB1E8.s | 92 | 4722 |  |  |
| asm/unk_02035900.s | 90 | 3720 |  |  |
| asm/overlay_00_thumb.s | 89 | 3827 |  |  |
| asm/overlay_04.s | 89 | 6115 |  |  |
| asm/overlay_108.s | 88 | 5384 |  |  |
| asm/overlay_05.s | 87 | 5504 |  |  |
| asm/overlay_01_021EFB38.s | 85 | 2790 |  |  |
| asm/overlay_68.s | 85 | 3899 |  |  |
| asm/unk_02061284.s | 84 | 1652 |  |  |
| asm/overlay_12_battle_controller.s | 84 | 4697 |  |  |
| asm/overlay_01_021F1AFC.s | 83 | 2426 |  |  |
| asm/overlay_86.s | 80 | 4215 |  |  |
| asm/overlay_109.s | 79 | 3615 |  |  |
| asm/overlay_82.s | 77 | 3726 |  |  |
| asm/overlay_93_thumb_1.s | 77 | 4630 |  |  |
| asm/overlay_01_021F72DC.s | 76 | 2946 |  |  |
| asm/overlay_106.s | 76 | 2317 |  |  |
| asm/unk_02032844.s | 75 | 2095 |  |  |
| asm/overlay_01_021F4704.s | 72 | 3949 |  |  |
| asm/unk_02030A98.s | 71 | 1460 |  |  |
| asm/unk_02023694.s | 68 | 1676 |  |  |
| asm/overlay_37.s | 67 | 3634 |  |  |
| asm/nitrocrypto.s | 67 | 4312 |  |  |
| asm/unk_0205CB48.s | 66 | 2328 |  |  |
| asm/overlay_108_021E8850.s | 66 | 3475 |  |  |
| asm/unk_02014DA0.s | 63 | 1253 |  |  |
| asm/unk_0205FD20.s | 63 | 2336 |  |  |
| asm/unk_02016EDC.s | 62 | 1996 |  |  |
| asm/overlay_95.s | 62 | 3105 |  |  |
| asm/unk_0202B614.s | 61 | 1186 |  |  |
| asm/overlay_01_021F1348.s | 61 | 892 |  |  |
| asm/unk_02058AEC.s | 60 | 2787 |  |  |
| asm/unk_020932E0.s | 60 | 4174 |  |  |
| asm/unk_02034B0C.s | 56 | 1587 |  |  |
| asm/overlay_28.s | 56 | 2475 |  |  |
| asm/overlay_47.s | 56 | 2490 |  |  |
| asm/unk_02056D7C.s | 55 | 2210 |  |  |
| asm/overlay_80_022340E8.s | 55 | 2132 |  |  |
| asm/overlay_80_0222AEF8.s | 54 | 1787 |  |  |
| asm/unk_02058034.s | 53 | 1160 |  |  |
| asm/overlay_01_02204004.s | 51 | 1007 |  |  |
| asm/unk_020658D4.s | 50 | 1399 |  |  |
| asm/overlay_trainer_card_main.s | 50 | 3906 |  |  |
| asm/overlay_88.s | 50 | 1971 |  |  |
| asm/overlay_111.s | 50 | 2092 |  |  |
| asm/overlay_01_021EDAFC.s | 49 | 2485 |  |  |
| asm/overlay_113.s | 49 | 2085 |  |  |
| asm/overlay_98.s | 47 | 1357 |  |  |
| asm/unk_02074E5C.s | 46 | 895 |  |  |
| asm/overlay_31.s | 46 | 2785 |  |  |
| asm/unk_02033AE0.s | 44 | 1006 |  |  |
| asm/overlay_67.s | 43 | 2296 |  |  |
| asm/overlay_trainer_card_signature.s | 42 | 2280 |  |  |
| asm/unk_0208B1AC.s | 41 | 2046 |  |  |
| asm/overlay_01_021E6880.s | 41 | 2599 |  |  |
| asm/overlay_02_02245B80.s | 41 | 1678 |  |  |
| asm/render_window.s | 40 | 2650 |  |  |
| asm/unk_02013534.s | 40 | 1251 |  |  |
| asm/unk_0202D230.s | 40 | 850 |  |  |
| asm/overlay_01_021E8744.s | 40 | 1131 |  |  |
| asm/overlay_01_022053EC.s | 40 | 1640 |  |  |
| asm/frontier_map.s | 40 | 2090 |  |  |
| asm/unk_0202FBCC.s | 39 | 1739 |  |  |
| asm/unk_02031B0C.s | 39 | 1340 |  |  |
| asm/overlay_97.s | 39 | 2601 |  |  |
| asm/overlay_120.s | 39 | 2037 |  |  |
| asm/overlay_01_021E5900.s | 38 | 1464 |  |  |
| asm/overlay_01_021F8D80.s | 38 | 767 |  |  |
| asm/overlay_01_021FC66C.s | 37 | 770 |  |  |
| asm/overlay_69.s | 37 | 3276 |  |  |
| asm/overlay_32.s | 36 | 1392 |  |  |
| asm/overlay_34.s | 36 | 2019 |  |  |
| asm/unk_0208C3E4.s | 35 | 2965 |  |  |
| asm/overlay_01_021E90C0.s | 35 | 2478 |  |  |
| asm/overlay_64.s | 35 | 2426 |  |  |
| asm/overlay_01_021FB878.s | 34 | 911 |  |  |
| asm/overlay_29.s | 34 | 1370 |  |  |
| asm/overlay_12_022378C0.s | 33 | 4709 |  |  |
| asm/overlay_80_0223AC24.s | 32 | 1194 |  |  |
| asm/unk_02096C88.s | 31 | 431 |  |  |
| asm/overlay_01_021F6830.s | 31 | 556 |  |  |
| asm/overlay_56.s | 31 | 1997 |  |  |
| asm/overlay_115.s | 31 | 2171 |  |  |
| asm/unk_02034354.s | 30 | 921 |  |  |
| asm/unk_0205A44C.s | 28 | 895 |  |  |
| asm/overlay_01_022001E4.s | 28 | 542 |  |  |
| asm/unk_02054648.s | 26 | 972 |  |  |
| asm/overlay_80_02231BF8.s | 26 | 932 |  |  |
| asm/overlay_80_022324C4.s | 26 | 1973 |  |  |
| asm/unk_0202C034.s | 25 | 819 |  |  |
| asm/unk_020863F4.s | 24 | 1725 |  |  |
| asm/overlay_01_021F3610.s | 24 | 872 |  |  |
| asm/overlay_01_021FD41C.s | 24 | 685 |  |  |
| asm/overlay_01_021FDA14.s | 23 | 886 |  |  |
| asm/unk_0205AC88.s | 22 | 831 |  |  |
| asm/unk_02066EDC.s | 22 | 807 |  |  |
| asm/unk_020755E8.s | 22 | 3262 |  |  |
| asm/overlay_01_021FC05C.s | 21 | 485 |  |  |
| asm/overlay_12_0226ADE0.s | 21 | 1290 |  |  |
| asm/overlay_80_02229EE0.s | 21 | 1101 |  |  |
| asm/overlay_80_0222FD08.s | 21 | 1636 |  |  |
| asm/unk_02012DD8.s | 20 | 889 |  |  |
| asm/unk_0203A3B0.s | 20 | 713 |  |  |
| asm/overlay_46.s | 20 | 1498 |  |  |
| asm/overlay_80_022310C4.s | 20 | 1240 |  |  |
| asm/overlay_80_0223A00C.s | 20 | 1401 |  |  |
| asm/overlay_80_0222F608.s | 19 | 751 |  |  |
| asm/unk_02087284.s | 18 | 919 |  |  |
| asm/overlay_01_022031C0.s | 18 | 932 |  |  |
| asm/overlay_80_022372D8.s | 18 | 889 |  |  |
| asm/overlay_80_02237A70.s | 18 | 642 |  |  |
| asm/unk_02085604.s | 17 | 1676 |  |  |
| asm/unk_02087A78.s | 17 | 442 |  |  |
| asm/unk_0208F814.s | 17 | 387 |  |  |
| asm/overlay_01_021F6CFC.s | 17 | 650 |  |  |
| asm/overlay_80_02235900.s | 17 | 755 |  |  |
| asm/overlay_80_02236B78.s | 17 | 852 |  |  |
| asm/overlay_93_arm.s | 17 | 871 |  |  |
| asm/unk_020773AC.s | 16 | 317 |  |  |
| asm/unk_0208FB64.s | 16 | 261 |  |  |
| asm/unk_02096910.s | 15 | 415 |  |  |
| asm/overlay_80_02230B8C.s | 15 | 546 |  |  |
| asm/overlay_01_021FEEEC.s | 14 | 609 |  |  |
| asm/overlay_58.s | 14 | 486 |  |  |
| asm/overlay_80_02236450.s | 14 | 829 |  |  |
| asm/unk_02078834.s | 13 | 611 |  |  |
| asm/overlay_01_021FE590.s | 13 | 224 |  |  |
| asm/overlay_01_02203A18.s | 13 | 464 |  |  |
| asm/unk_02067A60.s | 12 | 376 |  |  |
| asm/unk_0208DE40.s | 12 | 774 |  |  |
| asm/overlay_01_021E7FDC.s | 12 | 860 |  |  |
| asm/overlay_01_022051EC.s | 12 | 231 |  |  |
| asm/unk_02056680.s | 11 | 738 |  |  |
| asm/overlay_80_02235438.s | 11 | 361 |  |  |
| asm/overlay_01_021FF854.s | 10 | 412 |  |  |
| asm/unk_020850F4.s | 9 | 539 |  |  |
| asm/overlay_01_021FF464.s | 9 | 256 |  |  |
| asm/overlay_01_021FF6B0.s | 9 | 182 |  |  |
| asm/overlay_01_02200040.s | 9 | 182 |  |  |
| asm/overlay_104.s | 9 | 677 |  |  |
| asm/overlay_117.s | 9 | 1203 |  |  |
| asm/overlay_01_021FFC0C.s | 8 | 308 |  |  |
| asm/overlay_80_02235FC8.s | 8 | 534 |  |  |
| asm/overlay_01_021FCE98.s | 7 | 342 |  |  |
| asm/overlay_105.s | 7 | 537 |  |  |
| asm/overlay_119.s | 6 | 2600 |  |  |
| asm/unk_02087E70.s | 5 | 148 |  |  |
| asm/overlay_116.s | 5 | 375 |  |  |
| asm/overlay_114.s | 2 | 542 |  |  |
| asm/unk_data_020FCBD8.s | 0 | 0 | yes |  |
| asm/unk_data_020FDB44.s | 0 | 0 | yes |  |
| asm/overlay_01_sprite_data.s | 0 | 0 | yes |  |
| asm/overlay_01_data_02208BFC.s | 0 | 0 | yes |  |
| asm/overlay_12_battle_command.s | 0 | 0 | yes |  |
| asm/overlay_44.s | 0 | 0 | yes |  |

