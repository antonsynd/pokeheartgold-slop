# Decomp Coverage Ledger

*Generated 2026-06-14T23:13:24Z by `coverage_ledger.py` — do not hand-edit; regenerate after each decomp.*

Tracked functions (files with retained asm): **20167** — matched 275, pending 19798, plus 50 matched-but-blocked inside failed files.

| status | files | functions | insn lines | ~text bytes |
|---|---|---|---|---|
| matched | 8 | 275 | 9968 | 22024 |
| blocked | 3 | 94 | 2672 | 6214 |
| pending | 292 | 19798 | 941586 | 2102280 |
| upstream | 368 | 0 | 0 | 0 |

## Blockers (value-ordered: fix what gates the most)

| id | blocks | gates pending files | description |
|---|---|---|---|
| ipa-shared-headers | 2 | 122 | MWCC -ipa file: changing a signature in a shared header cascades codegen changes into every already-matched caller in other compilation units. Files sharing many declarations (sound.h family) must be decompiled together or after a coordinated header fix. |
| param-copyprop-cmp | 1 | 37 | MWCC copy-propagates parameter copies: 'adds r4, r0, #0; cmp r4, #N' at function entry cannot be produced from pure C (MWCC substitutes back to r0). Affected functions need the NONMATCHING inline-asm fallback. |
| staged-rodata-and-prototype-fixes | 0 | 0 | src/unk_0201010C.c static const arrays are in the wrong .rodata order (all 127 functions byte-match but ROM SHA1 fails), and 5 files have staged prototype-conflict fixes in the working tree. Until committed together with a passing SHA1, full-ROM compare cannot be used to verify new decomps — use objdiff.py --summary instead. |
| sound02004A44-dup-decl | 0 | 0 | include/sound_02004A44.h declares GF_GetVolumeBySeqNo TWICE with conflicting signatures: line 51 'u16 GF_GetVolumeBySeqNo();' (stale empty-parens, wrong return type) and line 75 'u8 GF_GetVolumeBySeqNo(u16 seqNo);' (current, matches the real definition in src/unk_02004A44.c:848). Under -W error MWCC aborts on the redeclaration in EVERY TU that includes the header (e.g. src/alph_puzzle.c), so 'make main' / full-ROM compare cannot complete and new decomps can only be verified with objdiff.py --summary. Regression introduced when unk_02004A44.c was decompiled (added line 75) without removing the stale line 51. Tension: src/overlay_44_0222CDAC.c:3019 calls GF_GetVolumeBySeqNo() argument-less, relying on the empty-parens form; naively deleting line 51 makes that call a too-few-args error and changing it would alter overlay_44 codegen. |

## Blocked files (3)

| file | functions | insn lines | data-only | notes |
|---|---|---|---|---|
| asm/unk_02005D10.s | 50 | 1636 |  | ipa-shared-headers 40/50 matched; IPA header dependency: changing return types (void→BOOL) in shared headers breaks already-matched unk_02004A44.c. 40/50  |
| asm/unk_0200FA24.s | 33 | 787 |  | ipa-shared-headers IPA-blocked: header signature conflicts, IPA CSE caching, loop codegen. C file exists at src/unk_0200FA24.c but cannot b |
| asm/unk_0200B150.s | 11 | 249 |  | param-copyprop-cmp 10/11 matched; 10/11 functions matched. OamManager_Create has 1-byte mismatch: target asm uses 'cmp r4, #4' but MWCC generates 'cmp r0, |

## Matched files (asm retained) (8)

| file | functions | insn lines | data-only | notes |
|---|---|---|---|---|
| asm/unk_0201010C.s | 127 | 5295 |  | harness |
| asm/unk_02004A44.s | 95 | 1862 |  | harness |
| asm/render_window.s | 40 | 2650 |  | harness |
| asm/unk_020318C8.s | 7 | 33 |  | retained_asm |
| asm/unk_02026DE0.s | 2 | 41 |  | harness |
| asm/unk_020551B8.s | 2 | 61 |  | retained_asm |
| asm/overlay_35.s | 2 | 26 |  | harness |
| asm/battle_arcade_game_board_data.s | 0 | 0 | yes | harness |

## Pending files (292)

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
| asm/overlay_89.s | 120 | 7586 |  |  |
| asm/overlay_103.s | 118 | 3868 |  |  |
| asm/overlay_65.s | 106 | 6973 |  |  |
| asm/overlay_75.s | 100 | 5341 |  |  |
| asm/overlay_93_thumb_2.s | 100 | 5393 |  |  |
| asm/unk_02088288.s | 97 | 5266 |  |  |
| asm/overlay_39_thumb.s | 97 | 3958 |  |  |
| asm/overlay_87.s | 97 | 4678 |  |  |
| asm/overlay_27.s | 96 | 5396 |  |  |
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
| asm/unk_020689C8.s | 48 | 477 |  |  |
| asm/overlay_98.s | 47 | 1357 |  |  |
| asm/unk_02074E5C.s | 46 | 895 |  |  |
| asm/overlay_31.s | 46 | 2785 |  |  |
| asm/unk_02033AE0.s | 44 | 1006 |  |  |
| asm/overlay_67.s | 43 | 2296 |  |  |
| asm/overlay_trainer_card_signature.s | 42 | 2280 |  |  |
| asm/unk_0208B1AC.s | 41 | 2046 |  |  |
| asm/overlay_01_021E6880.s | 41 | 2599 |  |  |
| asm/overlay_02_02245B80.s | 41 | 1678 |  |  |
| asm/unk_02013534.s | 40 | 1251 |  |  |
| asm/unk_02015DD8.s | 40 | 719 |  |  |
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
| asm/unk_02018000.s | 26 | 405 |  |  |
| asm/unk_02054648.s | 26 | 972 |  |  |
| asm/overlay_80_02231BF8.s | 26 | 932 |  |  |
| asm/overlay_80_022324C4.s | 26 | 1973 |  |  |
| asm/unk_0202C034.s | 25 | 819 |  |  |
| asm/unk_0206979C.s | 25 | 282 |  |  |
| asm/unk_020863F4.s | 24 | 1725 |  |  |
| asm/overlay_01_021F3610.s | 24 | 872 |  |  |
| asm/overlay_01_021FD41C.s | 24 | 685 |  |  |
| asm/overlay_01_021FDA14.s | 23 | 886 |  |  |
| asm/unk_0205AC88.s | 22 | 831 |  |  |
| asm/unk_02066EDC.s | 22 | 807 |  |  |
| asm/unk_020755E8.s | 22 | 3262 |  |  |
| asm/unk_020957B0.s | 22 | 750 |  |  |
| asm/unk_0201956C.s | 21 | 778 |  |  |
| asm/unk_02077678.s | 21 | 238 |  |  |
| asm/overlay_01_021FC05C.s | 21 | 485 |  |  |
| asm/overlay_12_0226ADE0.s | 21 | 1290 |  |  |
| asm/overlay_80_02229EE0.s | 21 | 1101 |  |  |
| asm/overlay_80_0222FD08.s | 21 | 1636 |  |  |
| asm/unk_02012DD8.s | 20 | 889 |  |  |
| asm/unk_0202068C.s | 20 | 425 |  |  |
| asm/unk_0203A3B0.s | 20 | 713 |  |  |
| asm/frontier.s | 20 | 340 |  |  |
| asm/overlay_46.s | 20 | 1498 |  |  |
| asm/overlay_80_022310C4.s | 20 | 1240 |  |  |
| asm/overlay_80_0223A00C.s | 20 | 1401 |  |  |
| asm/unk_02014A08.s | 19 | 414 |  |  |
| asm/unk_0202C730.s | 19 | 264 |  |  |
| asm/unk_020379A0.s | 19 | 360 |  |  |
| asm/unk_0208F658.s | 19 | 207 |  |  |
| asm/overlay_80_0222ACA0.s | 19 | 255 |  |  |
| asm/overlay_80_0222F608.s | 19 | 751 |  |  |
| asm/unk_020210A0.s | 18 | 597 |  |  |
| asm/unk_02087284.s | 18 | 919 |  |  |
| asm/overlay_01_022031C0.s | 18 | 932 |  |  |
| asm/overlay_80_022372D8.s | 18 | 889 |  |  |
| asm/overlay_80_02237A70.s | 18 | 642 |  |  |
| asm/unk_02085604.s | 17 | 1676 |  |  |
| asm/unk_02087A78.s | 17 | 442 |  |  |
| asm/unk_0208F814.s | 17 | 387 |  |  |
| asm/overlay_01_021F3F50.s | 17 | 566 |  |  |
| asm/overlay_01_021F6CFC.s | 17 | 650 |  |  |
| asm/overlay_80_02235900.s | 17 | 755 |  |  |
| asm/overlay_80_02236B78.s | 17 | 852 |  |  |
| asm/overlay_93_arm.s | 17 | 871 |  |  |
| asm/unk_020773AC.s | 16 | 317 |  |  |
| asm/unk_0208FB64.s | 16 | 261 |  |  |
| asm/unk_02091880.s | 16 | 532 |  |  |
| asm/overlay_01_021FB04C.s | 16 | 368 |  |  |
| asm/overlay_01_021FE200.s | 16 | 410 |  |  |
| asm/unk_0205BFF0.s | 15 | 284 |  |  |
| asm/unk_02096910.s | 15 | 415 |  |  |
| asm/overlay_01_021FD1B8.s | 15 | 270 |  |  |
| asm/overlay_80_02230B8C.s | 15 | 546 |  |  |
| asm/overlay_80_02238034.s | 15 | 521 |  |  |
| asm/overlay_01_021EA8E0.s | 14 | 330 |  |  |
| asm/overlay_01_021FEA0C.s | 14 | 250 |  |  |
| asm/overlay_01_021FEEEC.s | 14 | 609 |  |  |
| asm/overlay_58.s | 14 | 486 |  |  |
| asm/frontier_system.s | 14 | 342 |  |  |
| asm/overlay_80_02236450.s | 14 | 829 |  |  |
| asm/unk_02078834.s | 13 | 611 |  |  |
| asm/overlay_01_021F3D38.s | 13 | 247 |  |  |
| asm/overlay_01_021FC4C4.s | 13 | 191 |  |  |
| asm/overlay_01_021FE590.s | 13 | 224 |  |  |
| asm/overlay_01_02203A18.s | 13 | 464 |  |  |
| asm/unk_0202DB34.s | 12 | 59 |  |  |
| asm/unk_0203DB6C.s | 12 | 361 |  |  |
| asm/unk_02067A60.s | 12 | 376 |  |  |
| asm/unk_02068FC8.s | 12 | 611 |  |  |
| asm/unk_0208DE40.s | 12 | 774 |  |  |
| asm/overlay_01_021E7FDC.s | 12 | 860 |  |  |
| asm/overlay_01_021FB5D4.s | 12 | 304 |  |  |
| asm/overlay_01_021FCD2C.s | 12 | 168 |  |  |
| asm/overlay_01_022051EC.s | 12 | 231 |  |  |
| asm/overlay_33.s | 12 | 563 |  |  |
| asm/overlay_38_thumb.s | 12 | 696 |  |  |
| asm/unk_02020B8C.s | 11 | 606 |  |  |
| asm/unk_02055244.s | 11 | 200 |  |  |
| asm/unk_02056680.s | 11 | 738 |  |  |
| asm/unk_0205BB1C.s | 11 | 562 |  |  |
| asm/unk_02097024.s | 11 | 209 |  |  |
| asm/overlay_01_021EAF00.s | 11 | 99 |  |  |
| asm/overlay_01_021FB4C0.s | 11 | 128 |  |  |
| asm/overlay_80_02235438.s | 11 | 361 |  |  |
| asm/overlay_01_021EABA8.s | 10 | 396 |  |  |
| asm/overlay_01_021FE780.s | 10 | 295 |  |  |
| asm/overlay_01_021FF854.s | 10 | 412 |  |  |
| asm/overlay_01_02200858.s | 10 | 297 |  |  |
| asm/overlay_01_02203E40.s | 10 | 197 |  |  |
| asm/overlay_80_02239960.s | 10 | 178 |  |  |
| asm/unk_020163E0.s | 9 | 259 |  |  |
| asm/text_0205B4EC.s | 9 | 229 |  |  |
| asm/unk_02069660.s | 9 | 141 |  |  |
| asm/unk_020850F4.s | 9 | 539 |  |  |
| asm/overlay_01_021FEC38.s | 9 | 158 |  |  |
| asm/overlay_01_021FED9C.s | 9 | 149 |  |  |
| asm/overlay_01_021FF464.s | 9 | 256 |  |  |
| asm/overlay_01_021FF6B0.s | 9 | 182 |  |  |
| asm/overlay_01_02200040.s | 9 | 182 |  |  |
| asm/overlay_01_022006A8.s | 9 | 191 |  |  |
| asm/overlay_104.s | 9 | 677 |  |  |
| asm/overlay_117.s | 9 | 1203 |  |  |
| asm/unk_0203BA5C.s | 8 | 163 |  |  |
| asm/unk_020517A4.s | 8 | 193 |  |  |
| asm/unk_020915B0.s | 8 | 73 |  |  |
| asm/overlay_01_021FFC0C.s | 8 | 308 |  |  |
| asm/overlay_80_02235390.s | 8 | 72 |  |  |
| asm/overlay_80_02235FC8.s | 8 | 534 |  |  |
| asm/overlay_80_022384D8.s | 8 | 160 |  |  |
| asm/overlay_80_02239D74.s | 8 | 288 |  |  |
| asm/unk_020192D0.s | 7 | 273 |  |  |
| asm/overlay_01_021EAFD4.s | 7 | 254 |  |  |
| asm/overlay_01_021FAD1C.s | 7 | 395 |  |  |
| asm/overlay_01_021FB368.s | 7 | 166 |  |  |
| asm/overlay_01_021FCE98.s | 7 | 342 |  |  |
| asm/overlay_12_02265E28.s | 7 | 219 |  |  |
| asm/overlay_105.s | 7 | 537 |  |  |
| asm/unk_0202E41C.s | 6 | 66 |  |  |
| asm/overlay_01_021EA6C4.s | 6 | 110 |  |  |
| asm/overlay_01_021F3114.s | 6 | 259 |  |  |
| asm/overlay_119.s | 6 | 2600 |  |  |
| asm/unk_02087E70.s | 5 | 148 |  |  |
| asm/overlay_01_021F4464.s | 5 | 239 |  |  |
| asm/overlay_01_021FAC44.s | 5 | 102 |  |  |
| asm/overlay_80_022357B4.s | 5 | 156 |  |  |
| asm/overlay_116.s | 5 | 375 |  |  |
| asm/unk_02017FAC.s | 4 | 64 |  |  |
| asm/unk_0201F990.s | 4 | 175 |  |  |
| asm/unk_02025C44.s | 4 | 280 |  |  |
| asm/unk_020977CC.s | 4 | 201 |  |  |
| asm/unk_020979A8.s | 4 | 197 |  |  |
| asm/unk_02097BE0.s | 4 | 150 |  |  |
| asm/overlay_01_021F3378.s | 4 | 281 |  |  |
| asm/overlay_80_02239AF8.s | 4 | 111 |  |  |
| asm/overlay_80_02239BF0.s | 4 | 179 |  |  |
| asm/unk_0206793C.s | 3 | 121 |  |  |
| asm/unk_02087FD4.s | 3 | 62 |  |  |
| asm/unk_02092B04.s | 3 | 76 |  |  |
| asm/unk_020961D8.s | 3 | 133 |  |  |
| asm/unk_02097B78.s | 3 | 46 |  |  |
| asm/unk_02027010.s | 2 | 74 |  |  |
| asm/unk_02078DD8.s | 2 | 36 |  |  |
| asm/unk_02095DF4.s | 2 | 115 |  |  |
| asm/overlay_01_021F467C.s | 2 | 58 |  |  |
| asm/overlay_114.s | 2 | 542 |  |  |
| asm/overlay_118.s | 1 | 253 |  |  |
| asm/unk_02055BF0_data.s | 0 | 0 | yes |  |
| asm/unk_data_020FCBD8.s | 0 | 0 | yes |  |
| asm/unk_data_020FD978.s | 0 | 0 | yes |  |
| asm/unk_data_020FDB44.s | 0 | 0 | yes |  |
| asm/middleware.s | 0 | 0 | yes |  |
| asm/overlay_01_sprite_data.s | 0 | 0 | yes |  |
| asm/overlay_01_data_02208BFC.s | 0 | 0 | yes |  |
| asm/overlay_12_battle_command.s | 0 | 0 | yes |  |
| asm/overlay_44.s | 0 | 0 | yes |  |

