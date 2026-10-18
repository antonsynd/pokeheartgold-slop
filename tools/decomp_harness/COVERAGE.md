# Decomp Coverage Ledger

*Generated 2026-10-18T07:03:51Z by `coverage_ledger.py` � do not hand-edit; regenerate after each decomp.*

Tracked functions (files with retained asm): **19131** � matched 18422, pending 676, plus 20 matched-but-blocked inside failed files.

| status | files | functions | insn lines | ~text bytes |
|---|---|---|---|---|
| matched | 1004 | 18422 | 116937 | 260896 |
| blocked | 4 | 33 | 1328 | 2942 |
| pending | 187 | 676 | 146550 | 327568 |
| upstream | 399 | 0 | 0 | 0 |

## Blockers (value-ordered: fix what gates the most)

| id | blocks | gates pending files | description |
|---|---|---|---|
| ext-data-section-split | 0 | 1 | Data-only files exporting multiple EXTERNAL (.public) const arrays: MWCC (all modes — with/without -ipa file, pragma or not; T0.3 experiments 2026-07-02 disproved the earlier mwldarm-reorder theory) emits file-scope external consts SIZE-ASCENDING with a deterministic equal-size scramble, so a retail layout that is not size-ascending cannot come from one TU in source order. objdiff cannot see section order — verify these files ONLY with chiri pkg -- compare. |
| ipa-shared-headers | 0 | 0 | MWCC -ipa file: changing a signature in a shared header cascades codegen changes into every already-matched caller in other compilation units. Affects only files that must ADD or CHANGE declarations in a frozen header — call-only consumers of the exported APIs are NOT gated (proven by patterns 'ipa-blocked-files-can-call-sound-fns-without-cascade' and 'false-ipa-gate-shared-imports'). Diagnostic before blaming IPA for any mismatch: recompile the TU without '-ipa file' and objdiff (pattern ipa-file-flag-effects-and-removal-nonviability). |
| ipa-cse-literal-pool | 1 | 0 | MWCC -ipa file caches repeated literal-pool addresses/large offsets in callee-saved registers across calls where retail reloads them (or vice versa). A codegen-shape problem, not a header problem — split from ipa-shared-headers 2026-07-01, where this file's ubiquitous exports (BeginNormalPaletteFade family, imported by ~84 pending .inc files) badly inflated the gate count. |
| param-copyprop-cmp | 0 | 0 | MWCC copy-propagates parameter copies: 'adds r4, r0, #0; cmp r4, #N' at function entry cannot be produced from pure C (MWCC substitutes back to r0; the shape only arises for saved return values after a bl). Affected functions need the NONMATCHING inline-asm fallback — routine, not a wall (proven: unk_0200B150 re-landed 2026-07-02 via ROADMAP T0.2, full ROM SHA1 OK). Entry-idiom scan (asmscan) finds the remaining sites in pending files: overlay_102 (6), unk_02077678 (4), overlay_96 (3), overlay_48 (2), overlay_112, unk_020517A4, unk_02058034 (1 each). Gated files carry the affected function names in triage_report copyprop_funcs. (unk_02004A44 sub_020058F4 was a false positive -- saved return value after a bl; matched in plain C 2026-10-06.) |
| objdiff-false-positives | 0 | 0 | RESOLVED. objdiff.py had a critical bug: the byte extraction regex did not match MWCC's ARM Thumb objdump format (packed hex like 'b418' vs expected space-separated 'b4 18'). It extracted 0 bytes for every function, so 0==0 always reported MATCH. 11 decomps accepted via objdiff were not actually byte-matching. Fixed; all 11 non-matching decomps reverted to asm. 2 decomps that truly match (unk_0202DB34, battle_arcade_game_board_data) kept. |

## Blocked files (4)

| file | functions | insn lines | data-only | notes |
|---|---|---|---|---|
| asm/overlay_01_021FD41C.s | 24 | 660 |  |  20/24 matched; Camera/3D-effect map-object effect (dependent on overlay_01_021F1348 cluster head via local externs). 20/24 functions ma |
| asm/overlay_104.s | 9 | 668 |  |   |
| asm/unk_02055BF0_data.s | 0 | 0 | yes | ext-data-section-split Data-only: 3 external const fn-ptr arrays (sMapEnterRoutines, sMapExitRoutines, _020FC76C) referenced only by already-ma |
| asm/overlay_12_battle_command.s | 0 | 0 | yes |   |

## Matched files (asm retained) (1004)

| file | functions | insn lines | data-only | notes |
|---|---|---|---|---|
| asm/overlay_96.s | 886 | 0 |  | hgify |
| asm/overlay_07.s | 785 | 0 |  | hgify |
| asm/overlay_45_thumb.s | 536 | 0 |  | hgify |
| asm/overlay_40.s | 510 | 0 |  | hgify |
| asm/overlay_70.s | 490 | 0 |  | hgify |
| asm/overlay_112.s | 489 | 0 |  | hgify |
| asm/overlay_74_thumb.s | 446 | 0 |  | hgify |
| asm/overlay_02_02248728.s | 364 | 14752 |  | retained_asm |
| asm/overlay_85.s | 252 | 0 |  | hgify |
| asm/overlay_102.s | 248 | 0 |  | hgify |
| asm/overlay_08.s | 245 | 0 |  | hgify |
| asm/overlay_91.s | 236 | 0 |  | hgify |
| asm/overlay_73.s | 203 | 0 |  | hgify |
| asm/overlay_14_021E5900.s | 202 | 0 |  | hgify |
| asm/overlay_71.s | 202 | 0 |  | hgify |
| asm/overlay_80_0222BDF4.s | 199 | 0 |  | hgify |
| asm/overlay_18_021F0918.s | 196 | 0 |  | hgify |
| asm/overlay_15.s | 188 | 0 |  | hgify |
| asm/overlay_12_battle_controller_opponent.s | 185 | 0 |  | hgify |
| asm/overlay_81.s | 181 | 0 |  | hgify |
| asm/overlay_49_0225A154.s | 158 | 0 |  | hgify |
| asm/overlay_59.s | 158 | 0 |  | hgify |
| asm/overlay_43.s | 152 | 0 |  | hgify |
| asm/unk_02062108.s | 147 | 0 |  | hgify |
| asm/overlay_72.s | 147 | 0 |  | hgify |
| asm/overlay_90.s | 141 | 0 |  | hgify |
| asm/overlay_99.s | 136 | 0 |  | hgify |
| asm/overlay_57.s | 134 | 0 |  | hgify |
| asm/overlay_48.s | 132 | 0 |  | hgify |
| asm/overlay_01_021F944C.s | 128 | 0 |  | hgify |
| asm/overlay_10_trainer_ai.s | 127 | 0 |  | hgify |
| asm/overlay_14_021F2490.s | 121 | 0 |  | hgify |
| asm/overlay_103.s | 115 | 0 |  | hgify |
| asm/overlay_92.s | 113 | 0 |  | hgify |
| asm/overlay_83_0223DD60.s | 112 | 0 |  | hgify |
| asm/overlay_89.s | 108 | 0 |  | hgify |
| asm/unk_0201010C.s | 100 | 0 |  | hgify |
| asm/overlay_65.s | 100 | 0 |  | hgify |
| asm/overlay_75.s | 96 | 0 |  | hgify |
| asm/unk_02004A44.s | 95 | 1764 |  | harness |
| asm/overlay_39_thumb.s | 94 | 0 |  | hgify |
| asm/overlay_93_thumb_2.s | 94 | 0 |  | hgify |
| asm/overlay_87.s | 90 | 0 |  | hgify |
| asm/unk_020632B0.s | 89 | 0 |  | hgify |
| asm/overlay_01_021EB1E8.s | 89 | 0 |  | hgify |
| asm/overlay_49_022655E0.s | 88 | 0 |  | hgify |
| asm/overlay_27.s | 87 | 0 |  | hgify |
| asm/unk_02088288.s | 86 | 0 |  | hgify |
| asm/overlay_83_02243D7C.s | 86 | 0 |  | hgify |
| asm/overlay_00_thumb.s | 85 | 0 |  | hgify |
| asm/overlay_05.s | 85 | 0 |  | hgify |
| asm/unk_02035900.s | 83 | 0 |  | hgify |
| asm/overlay_12_battle_controller.s | 83 | 0 |  | hgify |
| asm/overlay_01_021F1AFC.s | 82 | 0 |  | hgify |
| asm/unk_02061284.s | 81 | 0 |  | hgify |
| asm/overlay_68.s | 81 | 0 |  | hgify |
| asm/overlay_108.s | 81 | 0 |  | hgify |
| asm/overlay_14_021EAF08.s | 80 | 0 |  | hgify |
| asm/overlay_01_021EFB38.s | 79 | 0 |  | hgify |
| asm/unk_02032844.s | 75 | 2017 |  | harness |
| asm/overlay_86.s | 75 | 0 |  | hgify |
| asm/overlay_106.s | 74 | 0 |  | hgify |
| asm/overlay_109.s | 74 | 0 |  | hgify |
| asm/overlay_01_021F72DC.s | 73 | 0 |  | hgify |
| asm/unk_02030A98.s | 71 | 1383 |  | harness |
| asm/overlay_93_thumb_1.s | 71 | 0 |  | hgify |
| asm/overlay_49_02258800.s | 69 | 0 |  | hgify |
| asm/unk_02023694.s | 68 | 1608 |  | harness |
| asm/overlay_18_021EE35C.s | 68 | 0 |  | hgify |
| asm/overlay_82.s | 67 | 0 |  | hgify |
| asm/overlay_01_021F4704.s | 66 | 0 |  | hgify |
| asm/overlay_37.s | 65 | 0 |  | hgify |
| asm/unk_0205CB48.s | 64 | 0 |  | hgify |
| asm/overlay_14_021F6628.s | 64 | 0 |  | hgify |
| asm/overlay_49_0225EEAC.s | 63 | 0 |  | hgify |
| asm/unk_0205FD20.s | 62 | 0 |  | hgify |
| asm/unk_02016EDC.s | 61 | 0 |  | hgify |
| asm/unk_0202B614.s | 61 | 1125 |  | retained_asm |
| asm/overlay_49_0225D6AC.s | 61 | 0 |  | hgify |
| asm/overlay_108_021E8850.s | 61 | 0 |  | hgify |
| asm/overlay_01_021F1348.s | 60 | 0 |  | hgify |
| asm/unk_02014DA0.s | 59 | 0 |  | hgify |
| asm/overlay_41_02245EA0.s | 59 | 0 |  | hgify |
| asm/nitrocrypto.s | 59 | 0 |  | hgify |
| asm/unk_02058AEC.s | 58 | 0 |  | hgify |
| asm/overlay_49_0225CB50.s | 58 | 0 |  | hgify |
| asm/unk_02034B0C.s | 56 | 1530 |  | harness |
| asm/overlay_95.s | 56 | 0 |  | hgify |
| asm/overlay_80_0222AEF8.s | 54 | 0 |  | hgify |
| asm/unk_020932E0.s | 53 | 0 |  | hgify |
| asm/overlay_80_022340E8.s | 53 | 0 |  | hgify |
| asm/unk_02056D7C.s | 52 | 0 |  | hgify |
| asm/overlay_18_021F6AB0.s | 52 | 0 |  | hgify |
| asm/overlay_47.s | 52 | 0 |  | hgify |
| asm/unk_02058034.s | 51 | 0 |  | hgify |
| asm/unk_02005D10.s | 50 | 1584 |  | harness |
| asm/overlay_28.s | 50 | 0 |  | hgify |
| asm/overlay_88.s | 50 | 0 |  | hgify |
| asm/unk_020658D4.s | 49 | 0 |  | hgify |
| asm/overlay_111.s | 49 | 0 |  | hgify |
| asm/unk_020689C8.s | 48 | 429 |  | harness |
| asm/overlay_113.s | 48 | 0 |  | hgify |
| asm/overlay_01_021EDAFC.s | 47 | 0 |  | hgify |
| asm/overlay_98.s | 47 | 1310 |  | harness |
| asm/unk_02074E5C.s | 46 | 849 |  | retained_asm |
| asm/overlay_41_02248400.s | 46 | 1253 |  | harness |
| asm/overlay_49_022595CC.s | 46 | 0 |  | hgify |
| asm/overlay_31.s | 45 | 0 |  | hgify |
| asm/unk_02033AE0.s | 44 | 959 |  | harness |
| asm/overlay_49_02267F94.s | 43 | 0 |  | hgify |
| asm/overlay_trainer_card_main.s | 43 | 0 |  | hgify |
| asm/overlay_41_02247828.s | 42 | 0 |  | hgify |
| asm/overlay_41_02249A40.s | 42 | 0 |  | hgify |
| asm/overlay_67.s | 42 | 0 |  | hgify |
| asm/unk_02013534.s | 40 | 1211 |  | retained_asm |
| asm/unk_02015DD8.s | 40 | 0 |  | hgify |
| asm/unk_0202D230.s | 40 | 807 |  | harness |
| asm/overlay_41_02248ED4.s | 40 | 0 |  | hgify |
| asm/overlay_41_0224B21C.s | 40 | 0 |  | hgify |
| asm/frontier_map.s | 40 | 2050 |  | harness |
| asm/render_window.s | 39 | 0 |  | hgify |
| asm/unk_0202FBCC.s | 39 | 1695 |  | harness |
| asm/overlay_02_02245B80.s | 39 | 0 |  | hgify |
| asm/overlay_trainer_card_signature.s | 39 | 0 |  | hgify |
| asm/overlay_83_02246E08.s | 39 | 1339 |  | harness |
| asm/unk_0208B1AC.s | 38 | 0 |  | hgify |
| asm/overlay_01_021F8D80.s | 38 | 727 |  | harness |
| asm/overlay_18_021F8AB8.s | 38 | 1357 |  | harness |
| asm/overlay_49_022649F4.s | 38 | 0 |  | hgify |
| asm/overlay_01_021FC66C.s | 37 | 733 |  | harness |
| asm/overlay_01_022053EC.s | 37 | 0 |  | hgify |
| asm/overlay_14_021EE26C.s | 37 | 0 |  | hgify |
| asm/overlay_41_0224A5A4.s | 37 | 0 |  | hgify |
| asm/overlay_97.s | 37 | 0 |  | hgify |
| asm/overlay_32.s | 36 | 1354 |  | harness |
| asm/overlay_34.s | 36 | 1981 |  | harness |
| asm/overlay_41_02246B34.s | 36 | 0 |  | hgify |
| asm/overlay_120.s | 36 | 0 |  | hgify |
| asm/unk_02031B0C.s | 35 | 0 |  | hgify |
| asm/overlay_29.s | 34 | 1335 |  | harness |
| asm/overlay_69.s | 34 | 0 |  | hgify |
| asm/unk_0208C3E4.s | 33 | 0 |  | hgify |
| asm/overlay_14_021F0A80.s | 33 | 0 |  | hgify |
| asm/overlay_01_021FB878.s | 32 | 0 |  | hgify |
| asm/overlay_64.s | 32 | 0 |  | hgify |
| asm/unk_0200FA24.s | 31 | 0 |  | hgify |
| asm/unk_02096C88.s | 31 | 400 |  | retained_asm |
| asm/overlay_01_021E90C0.s | 31 | 0 |  | hgify |
| asm/overlay_01_021F6830.s | 31 | 524 |  | harness |
| asm/overlay_14_021EFDE4.s | 30 | 0 |  | hgify |
| asm/overlay_14_021F58B8.s | 30 | 1558 |  | harness |
| asm/overlay_80_0223AC24.s | 30 | 0 |  | hgify |
| asm/unk_02034354.s | 29 | 0 |  | hgify |
| asm/overlay_01_022001E4.s | 28 | 514 |  | harness |
| asm/overlay_12_022378C0.s | 28 | 0 |  | hgify |
| asm/overlay_56.s | 28 | 0 |  | hgify |
| asm/overlay_115.s | 28 | 0 |  | hgify |
| asm/overlay_14_021F4B90.s | 27 | 1474 |  | harness |
| asm/unk_02018000.s | 26 | 379 |  | harness |
| asm/unk_0205A44C.s | 26 | 0 |  | hgify |
| asm/unk_0202C034.s | 25 | 792 |  | harness |
| asm/overlay_80_02231BF8.s | 25 | 0 |  | hgify |
| asm/unk_0206979C.s | 24 | 0 |  | hgify |
| asm/unk_020863F4.s | 24 | 1701 |  | harness |
| asm/overlay_80_022324C4.s | 24 | 0 |  | hgify |
| asm/unk_02054648.s | 23 | 0 |  | hgify |
| asm/overlay_01_021FDA14.s | 23 | 863 |  | harness |
| asm/overlay_18_021F7ED4.s | 23 | 1319 |  | harness |
| asm/unk_02066EDC.s | 22 | 784 |  | harness |
| asm/unk_02077678.s | 21 | 217 |  | harness |
| asm/overlay_01_021FC05C.s | 21 | 463 |  | harness |
| asm/overlay_80_02229EE0.s | 21 | 1079 |  | retained_asm |
| asm/unk_0202068C.s | 20 | 404 |  | harness |
| asm/unk_0205AC88.s | 20 | 0 |  | hgify |
| asm/unk_020755E8.s | 20 | 0 |  | hgify |
| asm/unk_020957B0.s | 20 | 0 |  | hgify |
| asm/frontier.s | 20 | 319 |  | harness |
| asm/overlay_80_0223A00C.s | 20 | 1380 |  | harness |
| asm/overlay_83_022479E4.s | 20 | 335 |  | harness |
| asm/unk_02014A08.s | 19 | 395 |  | harness |
| asm/unk_0202C730.s | 19 | 245 |  | harness |
| asm/unk_020379A0.s | 19 | 341 |  | harness |
| asm/unk_0203A3B0.s | 19 | 0 |  | hgify |
| asm/unk_0208F658.s | 19 | 188 |  | harness |
| asm/overlay_14_021F1808.s | 19 | 0 |  | hgify |
| asm/overlay_80_0222ACA0.s | 19 | 235 |  | harness |
| asm/unk_02012DD8.s | 18 | 0 |  | hgify |
| asm/unk_02087284.s | 18 | 901 |  | harness |
| asm/overlay_01_022031C0.s | 18 | 912 |  | harness |
| asm/overlay_46.s | 18 | 0 |  | hgify |
| asm/overlay_80_0222F608.s | 18 | 0 |  | hgify |
| asm/overlay_80_0222FD08.s | 18 | 0 |  | hgify |
| asm/overlay_80_022310C4.s | 18 | 0 |  | hgify |
| asm/overlay_80_022372D8.s | 18 | 870 |  | retained_asm |
| asm/unk_0201956C.s | 17 | 0 |  | hgify |
| asm/unk_02085604.s | 17 | 1659 |  | harness |
| asm/unk_02087A78.s | 17 | 425 |  | harness |
| asm/unk_0208F814.s | 17 | 0 |  | hgify |
| asm/overlay_01_021F6CFC.s | 17 | 632 |  | retained_asm |
| asm/overlay_49_02268D94.s | 17 | 0 |  | hgify |
| asm/overlay_80_02235900.s | 17 | 737 |  | harness |
| asm/overlay_80_02236B78.s | 17 | 831 |  | retained_asm |
| asm/overlay_80_02237A70.s | 17 | 0 |  | hgify |
| asm/overlay_93_arm.s | 17 | 854 |  | retained_asm |
| asm/unk_020773AC.s | 16 | 301 |  | harness |
| asm/unk_0208FB64.s | 16 | 245 |  | harness |
| asm/unk_02091880.s | 16 | 516 |  | harness |
| asm/overlay_01_021F3F50.s | 16 | 0 |  | hgify |
| asm/overlay_01_021FB04C.s | 16 | 352 |  | harness |
| asm/overlay_01_021FE200.s | 16 | 391 |  | harness |
| asm/unk_0205BFF0.s | 15 | 254 |  | harness |
| asm/unk_02096910.s | 15 | 0 |  | hgify |
| asm/overlay_01_021FD1B8.s | 15 | 255 |  | harness |
| asm/overlay_80_02230B8C.s | 15 | 530 |  | harness |
| asm/overlay_80_02238034.s | 15 | 0 |  | hgify |
| asm/model_attributes.s | 14 | 316 |  | retained_asm |
| asm/overlay_01_021FEA0C.s | 14 | 0 |  | hgify |
| asm/overlay_01_021FEEEC.s | 14 | 0 |  | hgify |
| asm/overlay_58.s | 14 | 470 |  | harness |
| asm/frontier_system.s | 14 | 328 |  | harness |
| asm/overlay_80_02236450.s | 14 | 0 |  | hgify |
| asm/unk_02078834.s | 13 | 596 |  | retained_asm |
| asm/overlay_01_021FC4C4.s | 13 | 178 |  | harness |
| asm/overlay_01_021FE590.s | 13 | 211 |  | harness |
| asm/overlay_01_02203A18.s | 13 | 450 |  | retained_asm |
| asm/overlay_14_021EEF34.s | 13 | 0 |  | hgify |
| asm/unk_020210A0.s | 12 | 0 |  | hgify |
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
| asm/overlay_80_02235438.s | 11 | 0 |  | hgify |
| asm/unk_02020B8C.s | 10 | 0 |  | hgify |
| asm/overlay_01_021FF854.s | 10 | 402 |  | retained_asm |
| asm/overlay_01_02200858.s | 10 | 286 |  | harness |
| asm/overlay_01_02203E40.s | 10 | 187 |  | harness |
| asm/overlay_33.s | 10 | 0 |  | hgify |
| asm/overlay_38_thumb.s | 10 | 0 |  | hgify |
| asm/overlay_80_02239960.s | 10 | 168 |  | harness |
| asm/unk_020163E0.s | 9 | 249 |  | harness |
| asm/unk_02069660.s | 9 | 132 |  | harness |
| asm/unk_020850F4.s | 9 | 0 |  | hgify |
| asm/overlay_01_021EABA8.s | 9 | 0 |  | hgify |
| asm/overlay_01_021FE780.s | 9 | 0 |  | hgify |
| asm/overlay_01_021FEC38.s | 9 | 0 |  | hgify |
| asm/overlay_01_021FED9C.s | 9 | 0 |  | hgify |
| asm/overlay_01_021FF464.s | 9 | 247 |  | retained_asm |
| asm/overlay_01_021FF6B0.s | 9 | 173 |  | harness |
| asm/overlay_01_02200040.s | 9 | 173 |  | harness |
| asm/overlay_01_022006A8.s | 9 | 182 |  | harness |
| asm/overlay_49_02261FC0.s | 9 | 0 |  | hgify |
| asm/unk_0203BA5C.s | 8 | 155 |  | harness |
| asm/unk_020517A4.s | 8 | 185 |  | harness |
| asm/unk_020915B0.s | 8 | 65 |  | harness |
| asm/overlay_01_021FFC0C.s | 8 | 300 |  | retained_asm |
| asm/overlay_80_02235390.s | 8 | 64 |  | harness |
| asm/overlay_80_02235FC8.s | 8 | 524 |  | harness |
| asm/overlay_80_022384D8.s | 8 | 150 |  | harness |
| asm/overlay_80_02239D74.s | 8 | 0 |  | hgify |
| asm/unk_020192D0.s | 7 | 265 |  | harness |
| asm/unk_020318C8.s | 7 | 26 |  | harness |
| asm/overlay_01_021EAFD4.s | 7 | 247 |  | harness |
| asm/overlay_01_021FAD1C.s | 7 | 388 |  | harness |
| asm/overlay_01_021FB368.s | 7 | 159 |  | harness |
| asm/overlay_01_021FCE98.s | 7 | 334 |  | harness |
| asm/overlay_117.s | 7 | 0 |  | hgify |
| asm/unk_0201010C_t24.s | 6 | 170 |  | harness |
| asm/unk_0202E41C.s | 6 | 60 |  | harness |
| asm/overlay_01_021EA6C4.s | 6 | 104 |  | harness |
| asm/overlay_01_021F3114.s | 6 | 252 |  | harness |
| asm/overlay_12_02265E28.s | 6 | 0 |  | hgify |
| asm/overlay_83_02242FE8.s | 6 | 0 |  | hgify |
| asm/overlay_105.s | 6 | 0 |  | hgify |
| asm/overlay_119.s | 6 | 2588 |  | harness |
| asm/unk_02087E70.s | 5 | 142 |  | harness |
| asm/overlay_01_021FAC44.s | 5 | 97 |  | harness |
| asm/overlay_49_02262DB8.s | 5 | 0 |  | hgify |
| asm/overlay_80_022357B4.s | 5 | 0 |  | hgify |
| asm/unk_0201010C_t05.s | 4 | 92 |  | harness |
| asm/unk_02017FAC.s | 4 | 60 |  | harness |
| asm/unk_0201F990.s | 4 | 171 |  | harness |
| asm/unk_020977CC.s | 4 | 195 |  | harness |
| asm/unk_020979A8.s | 4 | 191 |  | harness |
| asm/unk_02097BE0.s | 4 | 144 |  | harness |
| asm/overlay_01_021F3378.s | 4 | 276 |  | harness |
| asm/overlay_80_02239AF8.s | 4 | 107 |  | harness |
| asm/overlay_80_02239BF0.s | 4 | 173 |  | harness |
| asm/overlay_116.s | 4 | 0 |  | hgify |
| asm/unk_0201010C_t29.s | 3 | 64 |  | harness |
| asm/unk_0201010C_t104.s | 3 | 114 |  | harness |
| asm/unk_0206793C.s | 3 | 117 |  | harness |
| asm/unk_02092B04.s | 3 | 73 |  | harness |
| asm/unk_020961D8.s | 3 | 129 |  | harness |
| asm/unk_02097B78.s | 3 | 43 |  | harness |
| asm/overlay_01_021F4464.s | 3 | 0 |  | hgify |
| asm/overlay_12_battle_controller_opponent_s84.s | 3 | 192 |  | harness |
| asm/overlay_41_0224BE34.s | 3 | 146 |  | harness |
| asm/overlay_96_s1036.s | 3 | 153 |  | harness |
| asm/overlay_96_s1046.s | 3 | 118 |  | harness |
| asm/overlay_96_s1185.s | 3 | 177 |  | harness |
| asm/overlay_96_s1261.s | 3 | 262 |  | harness |
| asm/overlay_96_s1326.s | 3 | 88 |  | harness |
| asm/unk_0201010C_t84.s | 2 | 61 |  | harness |
| asm/unk_02025C44.s | 2 | 0 |  | hgify |
| asm/unk_02026DE0.s | 2 | 0 |  | hgify |
| asm/unk_02027010.s | 2 | 72 |  | harness |
| asm/unk_020551B8.s | 2 | 59 |  | harness |
| asm/unk_02078DD8.s | 2 | 34 |  | harness |
| asm/unk_02087FD4.s | 2 | 0 |  | hgify |
| asm/unk_02095DF4.s | 2 | 112 |  | harness |
| asm/overlay_01_021F467C.s | 2 | 56 |  | harness |
| asm/overlay_07_r697.s | 2 | 56 |  | harness |
| asm/overlay_35.s | 2 | 23 |  | harness |
| asm/overlay_70_r301.s | 2 | 143 |  | harness |
| asm/overlay_70_r375.s | 2 | 188 |  | harness |
| asm/overlay_82_r11.s | 2 | 74 |  | harness |
| asm/overlay_87_s57.s | 2 | 124 |  | harness |
| asm/overlay_90_r123.s | 2 | 160 |  | harness |
| asm/overlay_96_s89.s | 2 | 95 |  | harness |
| asm/overlay_96_s143.s | 2 | 82 |  | harness |
| asm/overlay_96_s371.s | 2 | 100 |  | harness |
| asm/overlay_96_s1014.s | 2 | 211 |  | harness |
| asm/overlay_96_s1030.s | 2 | 62 |  | harness |
| asm/overlay_96_s1065.s | 2 | 187 |  | harness |
| asm/overlay_96_s1084.s | 2 | 76 |  | harness |
| asm/overlay_96_s1168.s | 2 | 29 |  | harness |
| asm/overlay_96_s1177.s | 2 | 114 |  | harness |
| asm/overlay_96_s1296.s | 2 | 309 |  | harness |
| asm/overlay_114.s | 2 | 0 |  | hgify |
| asm/unk_0201010C_t27.s | 1 | 18 |  | harness |
| asm/unk_0201010C_t49.s | 1 | 55 |  | harness |
| asm/unk_02012DD8_q06.s | 1 | 20 |  | harness |
| asm/unk_02012DD8_q10.s | 1 | 18 |  | harness |
| asm/unk_02014DA0_p00.s | 1 | 9 |  | harness |
| asm/unk_02014DA0_p03.s | 1 | 14 |  | harness |
| asm/unk_02014DA0_p26.s | 1 | 22 |  | harness |
| asm/unk_02014DA0_p28.s | 1 | 13 |  | harness |
| asm/unk_0201956C_q11.s | 1 | 53 |  | harness |
| asm/unk_02020B8C_q09.s | 1 | 42 |  | harness |
| asm/unk_02025C44_01.s | 1 | 23 |  | harness |
| asm/unk_02034354_x03.s | 1 | 101 |  | harness |
| asm/unk_0203A3B0_r09.s | 1 | 173 |  | harness |
| asm/unk_02054648_p18.s | 1 | 64 |  | harness |
| asm/unk_02056D7C_q29.s | 1 | 60 |  | harness |
| asm/unk_02056D7C_q38.s | 1 | 36 |  | harness |
| asm/unk_02058034_g01.s | 1 | 40 |  | harness |
| asm/unk_02058034_g11.s | 1 | 18 |  | harness |
| asm/unk_0205AC88_q03.s | 1 | 13 |  | harness |
| asm/unk_0205AC88_q16.s | 1 | 16 |  | harness |
| asm/unk_0205CB48_r12.s | 1 | 42 |  | harness |
| asm/unk_0205CB48_r58.s | 1 | 78 |  | harness |
| asm/unk_02061284_s34.s | 1 | 71 |  | harness |
| asm/unk_02061284_s78.s | 1 | 87 |  | harness |
| asm/unk_02062108_p19.s | 1 | 18 |  | harness |
| asm/unk_02062108_p146.s | 1 | 44 |  | harness |
| asm/unk_020632B0_s51.s | 1 | 36 |  | harness |
| asm/unk_0206979C_t14.s | 1 | 48 |  | harness |
| asm/unk_02087FD4_00.s | 1 | 15 |  | harness |
| asm/unk_02088288_q40.s | 1 | 70 |  | harness |
| asm/unk_02088288_q42.s | 1 | 38 |  | harness |
| asm/unk_02088288_q62.s | 1 | 24 |  | harness |
| asm/unk_0208B1AC_r04.s | 1 | 30 |  | harness |
| asm/unk_0208B1AC_r13.s | 1 | 32 |  | harness |
| asm/unk_0208B1AC_r38.s | 1 | 42 |  | harness |
| asm/unk_0208C3E4_r12.s | 1 | 100 |  | harness |
| asm/unk_020932E0_s52.s | 1 | 72 |  | harness |
| asm/unk_020957B0_p02.s | 1 | 44 |  | harness |
| asm/overlay_00_thumb_r72.s | 1 | 36 |  | harness |
| asm/overlay_01_021E90C0_s24.s | 1 | 44 |  | harness |
| asm/overlay_01_021E90C0_s34.s | 1 | 42 |  | harness |
| asm/overlay_01_021EB1E8_r57.s | 1 | 42 |  | harness |
| asm/overlay_01_021EB1E8_r71.s | 1 | 25 |  | harness |
| asm/overlay_01_021EFB38_p00.s | 1 | 18 |  | harness |
| asm/overlay_01_021EFB38_p63.s | 1 | 61 |  | harness |
| asm/overlay_01_021F1348_p59.s | 1 | 11 |  | harness |
| asm/overlay_01_021F1AFC_q46.s | 1 | 42 |  | harness |
| asm/overlay_01_021F4464_e02.s | 1 | 31 |  | harness |
| asm/overlay_01_021F4464_e04.s | 1 | 68 |  | harness |
| asm/overlay_01_021F72DC_q44.s | 1 | 64 |  | harness |
| asm/overlay_01_021F72DC_q60.s | 1 | 40 |  | harness |
| asm/overlay_01_021F944C_p23.s | 1 | 35 |  | harness |
| asm/overlay_01_021F944C_p95.s | 1 | 29 |  | harness |
| asm/overlay_01_021FB878_c20.s | 1 | 27 |  | harness |
| asm/overlay_01_022053EC_p02.s | 1 | 85 |  | harness |
| asm/overlay_05_r40.s | 1 | 93 |  | harness |
| asm/overlay_05_r50.s | 1 | 97 |  | harness |
| asm/overlay_07_r51.s | 1 | 229 |  | harness |
| asm/overlay_07_r69.s | 1 | 45 |  | harness |
| asm/overlay_07_r100.s | 1 | 39 |  | harness |
| asm/overlay_07_r105.s | 1 | 43 |  | harness |
| asm/overlay_07_r133.s | 1 | 36 |  | harness |
| asm/overlay_07_r168.s | 1 | 20 |  | harness |
| asm/overlay_07_r217.s | 1 | 77 |  | harness |
| asm/overlay_07_r495.s | 1 | 174 |  | harness |
| asm/overlay_07_r654.s | 1 | 23 |  | harness |
| asm/overlay_07_r753.s | 1 | 66 |  | harness |
| asm/overlay_07_r792.s | 1 | 41 |  | harness |
| asm/overlay_08_q112.s | 1 | 32 |  | harness |
| asm/overlay_08_q157.s | 1 | 148 |  | harness |
| asm/overlay_08_q174.s | 1 | 208 |  | harness |
| asm/overlay_08_q204.s | 1 | 65 |  | harness |
| asm/overlay_08_q212.s | 1 | 56 |  | harness |
| asm/overlay_08_q220.s | 1 | 33 |  | harness |
| asm/overlay_12_battle_controller_opponent_s86.s | 1 | 109 |  | harness |
| asm/overlay_12_battle_controller_opponent_s91.s | 1 | 31 |  | harness |
| asm/overlay_12_battle_controller_opponent_s113.s | 1 | 33 |  | harness |
| asm/overlay_12_battle_controller_opponent_s117.s | 1 | 36 |  | harness |
| asm/overlay_12_battle_controller_opponent_s167.s | 1 | 162 |  | harness |
| asm/overlay_12_battle_controller_opponent_s175.s | 1 | 56 |  | harness |
| asm/overlay_12_02265E28_r00.s | 1 | 116 |  | harness |
| asm/overlay_14_021E5900_s88.s | 1 | 21 |  | harness |
| asm/overlay_14_021E5900_s186.s | 1 | 32 |  | harness |
| asm/overlay_14_021E5900_s200.s | 1 | 51 |  | harness |
| asm/overlay_14_021E5900_s207.s | 1 | 37 |  | harness |
| asm/overlay_14_021F0A80_q09.s | 1 | 34 |  | harness |
| asm/overlay_14_021F1808_r04.s | 1 | 29 |  | harness |
| asm/overlay_14_021F2490_q06.s | 1 | 19 |  | harness |
| asm/overlay_14_021F2490_q60.s | 1 | 31 |  | harness |
| asm/overlay_14_021F2490_q69.s | 1 | 54 |  | harness |
| asm/overlay_14_021F2490_q115.s | 1 | 57 |  | harness |
| asm/overlay_15_s31.s | 1 | 32 |  | harness |
| asm/overlay_15_s48.s | 1 | 44 |  | harness |
| asm/overlay_15_s61.s | 1 | 55 |  | harness |
| asm/overlay_15_s97.s | 1 | 80 |  | harness |
| asm/overlay_15_s119.s | 1 | 43 |  | harness |
| asm/overlay_18_021EE35C_r04.s | 1 | 86 |  | harness |
| asm/overlay_18_021EE35C_r57.s | 1 | 79 |  | harness |
| asm/overlay_18_021F0918_r43.s | 1 | 32 |  | harness |
| asm/overlay_18_021F0918_r49.s | 1 | 31 |  | harness |
| asm/overlay_18_021F0918_r53.s | 1 | 84 |  | harness |
| asm/overlay_18_021F0918_r71.s | 1 | 38 |  | harness |
| asm/overlay_18_021F0918_r83.s | 1 | 12 |  | harness |
| asm/overlay_18_021F0918_r133.s | 1 | 37 |  | harness |
| asm/overlay_18_021F0918_r145.s | 1 | 36 |  | harness |
| asm/overlay_18_021F0918_r192.s | 1 | 14 |  | harness |
| asm/overlay_27_q18.s | 1 | 45 |  | harness |
| asm/overlay_27_q32.s | 1 | 47 |  | harness |
| asm/overlay_27_q41.s | 1 | 42 |  | harness |
| asm/overlay_27_q57.s | 1 | 45 |  | harness |
| asm/overlay_28_l04.s | 1 | 63 |  | harness |
| asm/overlay_31_r07.s | 1 | 71 |  | harness |
| asm/overlay_33_l00.s | 1 | 56 |  | harness |
| asm/overlay_37_q01.s | 1 | 113 |  | harness |
| asm/overlay_37_q24.s | 1 | 40 |  | harness |
| asm/overlay_39_thumb_o61.s | 1 | 183 |  | harness |
| asm/overlay_40_s29.s | 1 | 241 |  | harness |
| asm/overlay_40_s70.s | 1 | 16 |  | harness |
| asm/overlay_40_s73.s | 1 | 68 |  | harness |
| asm/overlay_40_s77.s | 1 | 33 |  | harness |
| asm/overlay_40_s277.s | 1 | 74 |  | harness |
| asm/overlay_40_s280.s | 1 | 32 |  | harness |
| asm/overlay_40_s282.s | 1 | 38 |  | harness |
| asm/overlay_40_s285.s | 1 | 69 |  | harness |
| asm/overlay_40_s340.s | 1 | 55 |  | harness |
| asm/overlay_40_s354.s | 1 | 97 |  | harness |
| asm/overlay_40_s383.s | 1 | 199 |  | harness |
| asm/overlay_40_s398.s | 1 | 129 |  | harness |
| asm/overlay_40_s406.s | 1 | 168 |  | harness |
| asm/overlay_40_s416.s | 1 | 62 |  | harness |
| asm/overlay_40_s503.s | 1 | 145 |  | harness |
| asm/overlay_40_s514.s | 1 | 83 |  | harness |
| asm/overlay_40_s525.s | 1 | 124 |  | harness |
| asm/overlay_40_s538.s | 1 | 80 |  | harness |
| asm/overlay_41_02245EA0_q39.s | 1 | 35 |  | harness |
| asm/overlay_41_02245EA0_q48.s | 1 | 14 |  | harness |
| asm/overlay_41_02245EA0_q50.s | 1 | 32 |  | harness |
| asm/overlay_41_02246B34_r06.s | 1 | 47 |  | harness |
| asm/overlay_41_02249A40_h07.s | 1 | 37 |  | harness |
| asm/overlay_43_r00.s | 1 | 88 |  | harness |
| asm/overlay_43_r29.s | 1 | 30 |  | harness |
| asm/overlay_43_r39.s | 1 | 80 |  | harness |
| asm/overlay_43_r56.s | 1 | 22 |  | harness |
| asm/overlay_43_r76.s | 1 | 22 |  | harness |
| asm/overlay_43_r86.s | 1 | 36 |  | harness |
| asm/overlay_43_r121.s | 1 | 27 |  | harness |
| asm/overlay_43_r132.s | 1 | 62 |  | harness |
| asm/overlay_43_r154.s | 1 | 22 |  | harness |
| asm/overlay_45_thumb_r142.s | 1 | 181 |  | harness |
| asm/overlay_45_thumb_r364.s | 1 | 66 |  | harness |
| asm/overlay_45_thumb_r495.s | 1 | 180 |  | harness |
| asm/overlay_45_thumb_r527.s | 1 | 68 |  | harness |
| asm/overlay_45_thumb_r542.s | 1 | 67 |  | harness |
| asm/overlay_47_i08.s | 1 | 101 |  | harness |
| asm/overlay_47_i22.s | 1 | 196 |  | harness |
| asm/overlay_47_i54.s | 1 | 17 |  | harness |
| asm/overlay_49_02263B74.s | 1 | 0 |  | hgify |
| asm/overlay_trainer_card_main_r03.s | 1 | 87 |  | harness |
| asm/overlay_trainer_card_main_r23.s | 1 | 41 |  | harness |
| asm/overlay_trainer_card_signature_n01.s | 1 | 43 |  | harness |
| asm/overlay_trainer_card_signature_n39.s | 1 | 89 |  | harness |
| asm/overlay_57_s16.s | 1 | 59 |  | harness |
| asm/overlay_57_s26.s | 1 | 35 |  | harness |
| asm/overlay_57_s53.s | 1 | 116 |  | harness |
| asm/overlay_57_s61.s | 1 | 69 |  | harness |
| asm/overlay_57_s66.s | 1 | 204 |  | harness |
| asm/overlay_57_s89.s | 1 | 167 |  | harness |
| asm/overlay_57_s128.s | 1 | 46 |  | harness |
| asm/overlay_59_r70.s | 1 | 14 |  | harness |
| asm/overlay_59_r107.s | 1 | 87 |  | harness |
| asm/overlay_59_r162.s | 1 | 41 |  | harness |
| asm/overlay_65_s05.s | 1 | 165 |  | harness |
| asm/overlay_65_s08.s | 1 | 163 |  | harness |
| asm/overlay_65_s18.s | 1 | 52 |  | harness |
| asm/overlay_65_s63.s | 1 | 118 |  | harness |
| asm/overlay_65_s71.s | 1 | 143 |  | harness |
| asm/overlay_67_q03.s | 1 | 80 |  | harness |
| asm/overlay_68_q59.s | 1 | 41 |  | harness |
| asm/overlay_68_q77.s | 1 | 56 |  | harness |
| asm/overlay_69_r07.s | 1 | 37 |  | harness |
| asm/overlay_70_r26.s | 1 | 36 |  | harness |
| asm/overlay_70_r285.s | 1 | 74 |  | harness |
| asm/overlay_70_r304.s | 1 | 80 |  | harness |
| asm/overlay_70_r338.s | 1 | 173 |  | harness |
| asm/overlay_70_r353.s | 1 | 46 |  | harness |
| asm/overlay_70_r395.s | 1 | 198 |  | harness |
| asm/overlay_70_r441.s | 1 | 49 |  | harness |
| asm/overlay_70_r473.s | 1 | 21 |  | harness |
| asm/overlay_71_r34.s | 1 | 5 |  | harness |
| asm/overlay_71_r35.s | 1 | 23 |  | harness |
| asm/overlay_71_r36.s | 1 | 17 |  | harness |
| asm/overlay_71_r67.s | 1 | 86 |  | harness |
| asm/overlay_71_r86.s | 1 | 73 |  | harness |
| asm/overlay_71_r198.s | 1 | 86 |  | harness |
| asm/overlay_72_s35.s | 1 | 21 |  | harness |
| asm/overlay_72_s126.s | 1 | 17 |  | harness |
| asm/overlay_73_r118.s | 1 | 21 |  | harness |
| asm/overlay_73_r209.s | 1 | 157 |  | harness |
| asm/overlay_74_thumb_s202.s | 1 | 37 |  | harness |
| asm/overlay_74_thumb_s214.s | 1 | 47 |  | harness |
| asm/overlay_74_thumb_s443.s | 1 | 15 |  | harness |
| asm/overlay_74_thumb_s470.s | 1 | 23 |  | harness |
| asm/overlay_74_thumb_s478.s | 1 | 15 |  | harness |
| asm/overlay_74_thumb_s480.s | 1 | 7 |  | harness |
| asm/nitrocrypto_63.s | 1 | 7 |  | harness |
| asm/overlay_75_r32.s | 1 | 207 |  | harness |
| asm/overlay_80_0222BDF4_q45.s | 1 | 39 |  | harness |
| asm/overlay_80_0222BDF4_q56.s | 1 | 42 |  | harness |
| asm/overlay_80_0222BDF4_q161.s | 1 | 129 |  | harness |
| asm/overlay_80_0222FD08_q00.s | 1 | 200 |  | harness |
| asm/overlay_80_0222FD08_q15.s | 1 | 139 |  | harness |
| asm/overlay_80_0222FD08_q20.s | 1 | 30 |  | harness |
| asm/overlay_80_022324C4_q25.s | 1 | 30 |  | harness |
| asm/overlay_80_022340E8_q18.s | 1 | 95 |  | harness |
| asm/overlay_80_02237A70_p04.s | 1 | 192 |  | harness |
| asm/overlay_81_r07.s | 1 | 42 |  | harness |
| asm/overlay_81_r31.s | 1 | 29 |  | harness |
| asm/overlay_81_r38.s | 1 | 78 |  | harness |
| asm/overlay_81_r65.s | 1 | 40 |  | harness |
| asm/overlay_81_r128.s | 1 | 51 |  | harness |
| asm/overlay_82_r02.s | 1 | 28 |  | harness |
| asm/overlay_82_r09.s | 1 | 221 |  | harness |
| asm/overlay_82_r22.s | 1 | 44 |  | harness |
| asm/overlay_82_r31.s | 1 | 90 |  | harness |
| asm/overlay_82_r38.s | 1 | 82 |  | harness |
| asm/overlay_82_r63.s | 1 | 38 |  | harness |
| asm/overlay_82_r74.s | 1 | 38 |  | harness |
| asm/overlay_83_0223DD60_r32.s | 1 | 81 |  | harness |
| asm/overlay_86_q01.s | 1 | 41 |  | harness |
| asm/overlay_86_q03.s | 1 | 47 |  | harness |
| asm/overlay_86_q47.s | 1 | 19 |  | harness |
| asm/overlay_86_q60.s | 1 | 42 |  | harness |
| asm/overlay_89_q20.s | 1 | 59 |  | harness |
| asm/overlay_89_q50.s | 1 | 99 |  | harness |
| asm/overlay_89_q54.s | 1 | 149 |  | harness |
| asm/overlay_89_q64.s | 1 | 50 |  | harness |
| asm/overlay_89_q84.s | 1 | 99 |  | harness |
| asm/overlay_89_q105.s | 1 | 99 |  | harness |
| asm/overlay_90_r84.s | 1 | 62 |  | harness |
| asm/overlay_90_r97.s | 1 | 31 |  | harness |
| asm/overlay_90_r111.s | 1 | 62 |  | harness |
| asm/overlay_90_r115.s | 1 | 180 |  | harness |
| asm/overlay_90_r133.s | 1 | 99 |  | harness |
| asm/overlay_90_r135.s | 1 | 44 |  | harness |
| asm/overlay_91_r152.s | 1 | 69 |  | harness |
| asm/overlay_91_r157.s | 1 | 231 |  | harness |
| asm/overlay_91_r174.s | 1 | 31 |  | harness |
| asm/overlay_91_r175.s | 1 | 34 |  | harness |
| asm/overlay_92_q24.s | 1 | 66 |  | harness |
| asm/overlay_92_q38.s | 1 | 35 |  | harness |
| asm/overlay_92_q47.s | 1 | 46 |  | harness |
| asm/overlay_92_q52.s | 1 | 42 |  | harness |
| asm/overlay_92_q91.s | 1 | 207 |  | harness |
| asm/overlay_93_thumb_1_s19.s | 1 | 85 |  | harness |
| asm/overlay_93_thumb_1_s34.s | 1 | 184 |  | harness |
| asm/overlay_93_thumb_1_s36.s | 1 | 95 |  | harness |
| asm/overlay_93_thumb_2_p00.s | 1 | 67 |  | harness |
| asm/overlay_93_thumb_2_p12.s | 1 | 224 |  | harness |
| asm/overlay_93_thumb_2_p25.s | 1 | 67 |  | harness |
| asm/overlay_95_n21.s | 1 | 20 |  | harness |
| asm/overlay_95_n44.s | 1 | 109 |  | harness |
| asm/overlay_95_n52.s | 1 | 39 |  | harness |
| asm/overlay_96_s09.s | 1 | 75 |  | harness |
| asm/overlay_96_s11.s | 1 | 89 |  | harness |
| asm/overlay_96_s14.s | 1 | 40 |  | harness |
| asm/overlay_96_s39.s | 1 | 48 |  | harness |
| asm/overlay_96_s72.s | 1 | 24 |  | harness |
| asm/overlay_96_s125.s | 1 | 58 |  | harness |
| asm/overlay_96_s148.s | 1 | 42 |  | harness |
| asm/overlay_96_s193.s | 1 | 44 |  | harness |
| asm/overlay_96_s212.s | 1 | 4 |  | harness |
| asm/overlay_96_s222.s | 1 | 20 |  | harness |
| asm/overlay_96_s278.s | 1 | 62 |  | harness |
| asm/overlay_96_s387.s | 1 | 58 |  | harness |
| asm/overlay_96_s451.s | 1 | 40 |  | harness |
| asm/overlay_96_s479.s | 1 | 78 |  | harness |
| asm/overlay_96_s568.s | 1 | 67 |  | harness |
| asm/overlay_96_s581.s | 1 | 38 |  | harness |
| asm/overlay_96_s596.s | 1 | 59 |  | harness |
| asm/overlay_96_s598.s | 1 | 52 |  | harness |
| asm/overlay_96_s603.s | 1 | 58 |  | harness |
| asm/overlay_96_s621.s | 1 | 40 |  | harness |
| asm/overlay_96_s678.s | 1 | 31 |  | harness |
| asm/overlay_96_s686.s | 1 | 29 |  | harness |
| asm/overlay_96_s713.s | 1 | 33 |  | harness |
| asm/overlay_96_s715.s | 1 | 17 |  | harness |
| asm/overlay_96_s719.s | 1 | 31 |  | harness |
| asm/overlay_96_s729.s | 1 | 44 |  | harness |
| asm/overlay_96_s762.s | 1 | 34 |  | harness |
| asm/overlay_96_s771.s | 1 | 74 |  | harness |
| asm/overlay_96_s904.s | 1 | 69 |  | harness |
| asm/overlay_96_s926.s | 1 | 26 |  | harness |
| asm/overlay_96_s1000.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1001.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1002.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1003.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1004.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1005.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1006.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1007.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1008.s | 1 | 36 |  | harness |
| asm/overlay_96_s1009.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1010.s | 1 | 20 |  | harness |
| asm/overlay_96_s1011.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1013.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1015.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1016.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1017.s | 1 | 294 |  | harness |
| asm/overlay_96_s1018.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1019.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1020.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1021.s | 1 | 19 |  | harness |
| asm/overlay_96_s1022.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1023.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1024.s | 1 | 39 |  | harness |
| asm/overlay_96_s1025.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1026.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1027.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1029.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1031.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1032.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1033.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1034.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1035.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1037.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1038.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1039.s | 1 | 30 |  | harness |
| asm/overlay_96_s1040.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1041.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1042.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1043.s | 1 | 90 |  | harness |
| asm/overlay_96_s1044.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1045.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1047.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1048.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1049.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1050.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1051.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1052.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1053.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1054.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1055.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1056.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1057.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1058.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1059.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1060.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1061.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1062.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1063.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1064.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1066.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1067.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1068.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1069.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1070.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1071.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1073.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1074.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1075.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1076.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1077.s | 1 | 200 |  | harness |
| asm/overlay_96_s1078.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1079.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1080.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1081.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1082.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1083.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1085.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1086.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1087.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1088.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1089.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1090.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1091.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1092.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1093.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1094.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1095.s | 1 | 66 |  | harness |
| asm/overlay_96_s1096.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1097.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1099.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1100.s | 1 | 46 |  | harness |
| asm/overlay_96_s1101.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1102.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1103.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1104.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1105.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1106.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1108.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1109.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1110.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1112.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1114.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1115.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1116.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1117.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1119.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1120.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1121.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1122.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1123.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1124.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1125.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1126.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1127.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1128.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1129.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1130.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1131.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1132.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1133.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1134.s | 1 | 43 |  | harness |
| asm/overlay_96_s1135.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1136.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1138.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1139.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1140.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1141.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1142.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1143.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1144.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1145.s | 1 | 40 |  | harness |
| asm/overlay_96_s1146.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1147.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1148.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1150.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1151.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1152.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1153.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1154.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1155.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1156.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1157.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1159.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1161.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1163.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1164.s | 1 | 89 |  | harness |
| asm/overlay_96_s1165.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1166.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1167.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1169.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1170.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1171.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1172.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1174.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1175.s | 1 | 146 |  | harness |
| asm/overlay_96_s1176.s | 1 | 45 |  | harness |
| asm/overlay_96_s1178.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1179.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1180.s | 1 | 78 |  | harness |
| asm/overlay_96_s1181.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1182.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1183.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1184.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1186.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1187.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1188.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1189.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1190.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1191.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1192.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1193.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1194.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1195.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1196.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1197.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1198.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1199.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1200.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1201.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1202.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1203.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1205.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1206.s | 1 | 21 |  | harness |
| asm/overlay_96_s1207.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1208.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1209.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1210.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1211.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1212.s | 1 | 183 |  | harness |
| asm/overlay_96_s1213.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1214.s | 1 | 198 |  | harness |
| asm/overlay_96_s1215.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1217.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1219.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1220.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1221.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1222.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1223.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1224.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1225.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1226.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1227.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1228.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1229.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1230.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1231.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1232.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1233.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1234.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1235.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1236.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1237.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1238.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1239.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1240.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1241.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1242.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1243.s | 1 | 29 |  | harness |
| asm/overlay_96_s1244.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1245.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1246.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1247.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1248.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1249.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1250.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1251.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1252.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1253.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1254.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1255.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1256.s | 1 | 256 |  | harness |
| asm/overlay_96_s1257.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1258.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1259.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1260.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1262.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1263.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1264.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1265.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1266.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1267.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1268.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1269.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1271.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1272.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1273.s | 1 | 28 |  | harness |
| asm/overlay_96_s1274.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1275.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1276.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1277.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1278.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1280.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1281.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1282.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1284.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1285.s | 1 | 266 |  | harness |
| asm/overlay_96_s1286.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1287.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1288.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1289.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1290.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1291.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1292.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1293.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1294.s | 1 | 30 |  | harness |
| asm/overlay_96_s1295.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1297.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1298.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1299.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1300.s | 1 | 309 |  | harness |
| asm/overlay_96_s1301.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1302.s | 1 | 43 |  | harness |
| asm/overlay_96_s1303.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1304.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1305.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1306.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1307.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1308.s | 1 | 48 |  | harness |
| asm/overlay_96_s1309.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1310.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1311.s | 1 | 24 |  | harness |
| asm/overlay_96_s1312.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1313.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1314.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1315.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1316.s | 1 | 48 |  | harness |
| asm/overlay_96_s1317.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1318.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1319.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1320.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1321.s | 1 | 54 |  | harness |
| asm/overlay_96_s1322.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1323.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1324.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1325.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1327.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1329.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1330.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1331.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1332.s | 1 | 173 |  | harness |
| asm/overlay_96_s1333.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1334.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1335.s | 1 | 43 |  | harness |
| asm/overlay_96_s1336.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1338.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1339.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1340.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1341.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1342.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1343.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1344.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1345.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1347.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1348.s | 1 | 166 |  | harness |
| asm/overlay_96_s1349.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1350.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1351.s | 1 | 11 |  | harness |
| asm/overlay_96_s1352.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1353.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1354.s | 1 | 16 |  | harness |
| asm/overlay_96_s1355.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1356.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1357.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1358.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1359.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1360.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1361.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1362.s | 1 | 0 |  | hgify |
| asm/overlay_96_s1363.s | 1 | 0 |  | hgify |
| asm/overlay_97_q24.s | 1 | 48 |  | harness |
| asm/overlay_99_r09.s | 1 | 35 |  | harness |
| asm/overlay_99_r64.s | 1 | 21 |  | harness |
| asm/overlay_99_r97.s | 1 | 50 |  | harness |
| asm/overlay_99_r134.s | 1 | 25 |  | harness |
| asm/overlay_102_r20.s | 1 | 15 |  | harness |
| asm/overlay_102_r28.s | 1 | 15 |  | harness |
| asm/overlay_102_r46.s | 1 | 44 |  | harness |
| asm/overlay_102_r92.s | 1 | 40 |  | harness |
| asm/overlay_103_q18.s | 1 | 70 |  | harness |
| asm/overlay_103_q72.s | 1 | 13 |  | harness |
| asm/overlay_106_p20.s | 1 | 31 |  | harness |
| asm/overlay_106_p22.s | 1 | 68 |  | harness |
| asm/overlay_108_q38.s | 1 | 80 |  | harness |
| asm/overlay_108_021E8850_q18.s | 1 | 38 |  | harness |
| asm/overlay_108_021E8850_q32.s | 1 | 57 |  | harness |
| asm/overlay_109_r19.s | 1 | 41 |  | harness |
| asm/overlay_109_r31.s | 1 | 39 |  | harness |
| asm/overlay_109_r57.s | 1 | 41 |  | harness |
| asm/overlay_109_r67.s | 1 | 43 |  | harness |
| asm/overlay_112_r05.s | 1 | 44 |  | harness |
| asm/overlay_112_r10.s | 1 | 36 |  | harness |
| asm/overlay_112_r33.s | 1 | 11 |  | harness |
| asm/overlay_112_r55.s | 1 | 73 |  | harness |
| asm/overlay_112_r58.s | 1 | 24 |  | harness |
| asm/overlay_112_r257.s | 1 | 40 |  | harness |
| asm/overlay_112_r269.s | 1 | 29 |  | harness |
| asm/overlay_112_r295.s | 1 | 33 |  | harness |
| asm/overlay_112_r427.s | 1 | 36 |  | harness |
| asm/overlay_112_r429.s | 1 | 34 |  | harness |
| asm/overlay_112_r444.s | 1 | 30 |  | harness |
| asm/overlay_112_r447.s | 1 | 52 |  | harness |
| asm/overlay_112_r459.s | 1 | 20 |  | harness |
| asm/overlay_113_r07.s | 1 | 27 |  | harness |
| asm/overlay_116_s01.s | 1 | 155 |  | harness |
| asm/overlay_118.s | 1 | 251 |  | harness |
| asm/unk_data_020FD978.s | 0 | 0 | yes | harness |
| asm/unk_data_020FDB44.s | 0 | 0 | yes | harness |
| asm/overlay_01_sprite_data.s | 0 | 0 | yes | harness |
| asm/overlay_01_data_02208BFC.s | 0 | 0 | yes | retained_asm |
| asm/overlay_49_0225CB50_edata.s | 0 | 0 | yes | harness |
| asm/battle_arcade_game_board_data.s | 0 | 0 | yes | harness |
| asm/battle_arcade_game_board_data2.s | 0 | 0 | yes | split_tu |

## Pending files (187)

| file | functions | insn lines | data-only | notes |
|---|---|---|---|---|
| asm/overlay_96.s | 116 | 28067 |  |  |
| asm/overlay_74_thumb.s | 42 | 6770 |  |  |
| asm/overlay_40.s | 30 | 6612 |  |  |
| asm/overlay_12_battle_controller_opponent.s | 22 | 8774 |  |  |
| asm/overlay_112.s | 20 | 3907 |  |  |
| asm/overlay_70.s | 17 | 3009 |  |  |
| asm/overlay_08.s | 15 | 1341 |  |  |
| asm/overlay_07.s | 14 | 3616 |  |  |
| asm/overlay_92.s | 14 | 5774 |  |  |
| asm/overlay_18_021F0918.s | 13 | 1468 |  |  |
| asm/overlay_81.s | 11 | 2218 |  |  |
| asm/overlay_15.s | 10 | 1397 |  |  |
| asm/overlay_83_0223DD60.s | 9 | 3215 |  |  |
| asm/overlay_99.s | 9 | 694 |  |  |
| asm/unk_02088288.s | 8 | 1234 |  |  |
| asm/overlay_14_021E5900.s | 8 | 1019 |  |  |
| asm/overlay_43.s | 8 | 1617 |  |  |
| asm/overlay_57.s | 8 | 1100 |  |  |
| asm/unk_0201010C.s | 7 | 1023 |  |  |
| asm/unk_02035900.s | 7 | 1039 |  |  |
| asm/overlay_10_trainer_ai.s | 7 | 1633 |  |  |
| asm/nitrocrypto.s | 7 | 1294 |  |  |
| asm/unk_020210A0.s | 6 | 297 |  |  |
| asm/unk_020932E0.s | 6 | 820 |  |  |
| asm/overlay_01_021F4704.s | 6 | 1106 |  |  |
| asm/overlay_89.s | 6 | 1204 |  |  |
| asm/overlay_108.s | 6 | 801 |  |  |
| asm/overlay_96_s1158.s | 5 | 1000 |  |  |
| asm/overlay_12_022378C0.s | 5 | 2784 |  |  |
| asm/overlay_14_021EAF08.s | 5 | 1741 |  |  |
| asm/overlay_27.s | 5 | 1251 |  |  |
| asm/overlay_28.s | 5 | 605 |  |  |
| asm/overlay_trainer_card_main.s | 5 | 1240 |  |  |
| asm/overlay_72.s | 5 | 1005 |  |  |
| asm/overlay_73.s | 5 | 633 |  |  |
| asm/overlay_87.s | 5 | 639 |  |  |
| asm/unk_02031B0C.s | 4 | 629 |  |  |
| asm/overlay_01_021EFB38.s | 4 | 146 |  |  |
| asm/overlay_18_021EE35C.s | 4 | 638 |  |  |
| asm/overlay_83_02243D7C.s | 4 | 1515 |  |  |
| asm/overlay_90.s | 4 | 822 |  |  |
| asm/overlay_102.s | 4 | 436 |  |  |
| asm/overlay_96_s1137.s | 3 | 171 |  |  |
| asm/overlay_96_s1160.s | 3 | 1227 |  |  |
| asm/overlay_96_s1162.s | 3 | 450 |  |  |
| asm/unk_0201956C.s | 3 | 259 |  |  |
| asm/unk_020632B0.s | 3 | 429 |  |  |
| asm/overlay_00_thumb.s | 3 | 314 |  |  |
| asm/overlay_14_021F2490.s | 3 | 296 |  |  |
| asm/overlay_14_021F6628.s | 3 | 444 |  |  |
| asm/overlay_45_thumb.s | 3 | 98 |  |  |
| asm/overlay_49_0225EEAC.s | 3 | 1237 |  |  |
| asm/overlay_56.s | 3 | 578 |  |  |
| asm/overlay_64.s | 3 | 1079 |  |  |
| asm/overlay_71.s | 3 | 241 |  |  |
| asm/overlay_75.s | 3 | 514 |  |  |
| asm/overlay_85.s | 3 | 278 |  |  |
| asm/overlay_93_thumb_1.s | 3 | 590 |  |  |
| asm/overlay_93_thumb_2.s | 3 | 549 |  |  |
| asm/overlay_95.s | 3 | 599 |  |  |
| asm/overlay_108_021E8850.s | 3 | 174 |  |  |
| asm/overlay_115.s | 3 | 1583 |  |  |
| asm/overlay_120.s | 3 | 496 |  |  |
| asm/overlay_96_s1107.s | 2 | 130 |  |  |
| asm/overlay_96_s1113.s | 2 | 338 |  |  |
| asm/overlay_96_s1118.s | 2 | 263 |  |  |
| asm/overlay_96_s1149.s | 2 | 1102 |  |  |
| asm/overlay_96_s1270.s | 2 | 1186 |  |  |
| asm/overlay_96_s1346.s | 2 | 364 |  |  |
| asm/unk_0200FA24.s | 2 | 149 |  |  |
| asm/unk_02054648.s | 2 | 216 |  |  |
| asm/unk_02058AEC.s | 2 | 947 |  |  |
| asm/unk_0205A44C.s | 2 | 266 |  |  |
| asm/unk_020755E8.s | 2 | 1950 |  |  |
| asm/overlay_01_021E90C0.s | 2 | 262 |  |  |
| asm/overlay_01_021EDAFC.s | 2 | 156 |  |  |
| asm/overlay_01_022053EC.s | 2 | 240 |  |  |
| asm/overlay_02_02245B80.s | 2 | 161 |  |  |
| asm/overlay_14_021EEF34.s | 2 | 653 |  |  |
| asm/overlay_38_thumb.s | 2 | 366 |  |  |
| asm/overlay_39_thumb.s | 2 | 353 |  |  |
| asm/overlay_46.s | 2 | 607 |  |  |
| asm/overlay_49_022655E0.s | 2 | 565 |  |  |
| asm/overlay_59.s | 2 | 418 |  |  |
| asm/overlay_68.s | 2 | 396 |  |  |
| asm/overlay_69.s | 2 | 797 |  |  |
| asm/overlay_80_022310C4.s | 2 | 379 |  |  |
| asm/overlay_80_0223AC24.s | 2 | 514 |  |  |
| asm/overlay_91.s | 2 | 570 |  |  |
| asm/overlay_117.s | 2 | 1086 |  |  |
| asm/overlay_96_s1012.s | 1 | 409 |  |  |
| asm/overlay_96_s1028.s | 1 | 51 |  |  |
| asm/overlay_96_s1072.s | 1 | 395 |  |  |
| asm/overlay_96_s1098.s | 1 | 160 |  |  |
| asm/overlay_96_s1111.s | 1 | 273 |  |  |
| asm/overlay_96_s1173.s | 1 | 717 |  |  |
| asm/overlay_96_s1204.s | 1 | 75 |  |  |
| asm/overlay_96_s1216.s | 1 | 346 |  |  |
| asm/overlay_96_s1218.s | 1 | 139 |  |  |
| asm/overlay_96_s1279.s | 1 | 255 |  |  |
| asm/overlay_96_s1283.s | 1 | 156 |  |  |
| asm/overlay_96_s1328.s | 1 | 94 |  |  |
| asm/overlay_96_s1337.s | 1 | 28 |  |  |
| asm/render_window.s | 1 | 115 |  |  |
| asm/unk_02016EDC.s | 1 | 139 |  |  |
| asm/unk_02025C44.s | 1 | 239 |  |  |
| asm/unk_02056D7C.s | 1 | 89 |  |  |
| asm/unk_0205FD20.s | 1 | 117 |  |  |
| asm/unk_02062108.s | 1 | 103 |  |  |
| asm/unk_020658D4.s | 1 | 141 |  |  |
| asm/unk_0208C3E4.s | 1 | 348 |  |  |
| asm/unk_020957B0.s | 1 | 79 |  |  |
| asm/overlay_01_021EABA8.s | 1 | 98 |  |  |
| asm/overlay_01_021EB1E8.s | 1 | 98 |  |  |
| asm/overlay_01_021F3F50.s | 1 | 99 |  |  |
| asm/overlay_01_021F72DC.s | 1 | 213 |  |  |
| asm/overlay_01_021F944C.s | 1 | 217 |  |  |
| asm/overlay_01_021FB878.s | 1 | 280 |  |  |
| asm/overlay_01_021FE780.s | 1 | 57 |  |  |
| asm/overlay_12_battle_controller.s | 1 | 241 |  |  |
| asm/overlay_14_021EE26C.s | 1 | 355 |  |  |
| asm/overlay_14_021F0A80.s | 1 | 102 |  |  |
| asm/overlay_14_021F1808.s | 1 | 92 |  |  |
| asm/overlay_18_021F6AB0.s | 1 | 18 |  |  |
| asm/overlay_33.s | 1 | 34 |  |  |
| asm/overlay_41_02245EA0.s | 1 | 126 |  |  |
| asm/overlay_41_02248ED4.s | 1 | 81 |  |  |
| asm/overlay_41_0224A5A4.s | 1 | 34 |  |  |
| asm/overlay_47.s | 1 | 426 |  |  |
| asm/overlay_49_0225A154.s | 1 | 318 |  |  |
| asm/overlay_49_02261FC0.s | 1 | 1059 |  |  |
| asm/overlay_49_02262DB8.s | 1 | 1178 |  |  |
| asm/overlay_49_02263B74.s | 1 | 952 |  |  |
| asm/overlay_trainer_card_signature.s | 1 | 122 |  |  |
| asm/overlay_65.s | 1 | 320 |  |  |
| asm/overlay_80_0222BDF4.s | 1 | 147 |  |  |
| asm/overlay_80_0222F608.s | 1 | 401 |  |  |
| asm/overlay_80_02231BF8.s | 1 | 390 |  |  |
| asm/overlay_80_022324C4.s | 1 | 363 |  |  |
| asm/overlay_80_022340E8.s | 1 | 284 |  |  |
| asm/overlay_82.s | 1 | 169 |  |  |
| asm/overlay_83_02242FE8.s | 1 | 880 |  |  |
| asm/overlay_86.s | 1 | 238 |  |  |
| asm/overlay_97.s | 1 | 150 |  |  |
| asm/overlay_103.s | 1 | 34 |  |  |
| asm/overlay_105.s | 1 | 144 |  |  |
| asm/overlay_109.s | 1 | 71 |  |  |
| asm/overlay_111.s | 1 | 118 |  |  |
| asm/unk_data_020FCBD8.s | 0 | 0 | yes |  |
| asm/unk_02014DA0.s | 0 | 0 | yes |  |
| asm/unk_02034354.s | 0 | 0 | yes |  |
| asm/unk_0203A3B0.s | 0 | 0 | yes |  |
| asm/unk_02058034.s | 0 | 0 | yes |  |
| asm/unk_0205CB48.s | 0 | 0 | yes |  |
| asm/unk_02061284.s | 0 | 0 | yes |  |
| asm/unk_0206979C.s | 0 | 0 | yes |  |
| asm/unk_020850F4.s | 0 | 0 | yes |  |
| asm/unk_02087FD4.s | 0 | 0 | yes |  |
| asm/unk_0208B1AC.s | 0 | 0 | yes |  |
| asm/unk_0208F814.s | 0 | 0 | yes |  |
| asm/unk_02096910.s | 0 | 0 | yes |  |
| asm/overlay_01_021F1348.s | 0 | 0 | yes |  |
| asm/overlay_01_021F1AFC.s | 0 | 0 | yes |  |
| asm/overlay_01_021FEA0C.s | 0 | 0 | yes |  |
| asm/overlay_01_021FEC38.s | 0 | 0 | yes |  |
| asm/overlay_01_021FED9C.s | 0 | 0 | yes |  |
| asm/overlay_01_021FEEEC.s | 0 | 0 | yes |  |
| asm/overlay_05.s | 0 | 0 | yes |  |
| asm/overlay_12_02265E28.s | 0 | 0 | yes |  |
| asm/overlay_31.s | 0 | 0 | yes |  |
| asm/overlay_37.s | 0 | 0 | yes |  |
| asm/overlay_41_02249A40.s | 0 | 0 | yes |  |
| asm/overlay_48.s | 0 | 0 | yes |  |
| asm/overlay_49_02258800.s | 0 | 0 | yes |  |
| asm/overlay_49_0225D6AC.s | 0 | 0 | yes |  |
| asm/overlay_49_022649F4.s | 0 | 0 | yes |  |
| asm/overlay_49_02267F94.s | 0 | 0 | yes |  |
| asm/overlay_49_02268D94.s | 0 | 0 | yes |  |
| asm/overlay_67.s | 0 | 0 | yes |  |
| asm/overlay_80_0222FD08.s | 0 | 0 | yes |  |
| asm/overlay_80_02237A70.s | 0 | 0 | yes |  |
| asm/overlay_80_02238034.s | 0 | 0 | yes |  |
| asm/overlay_80_02239D74.s | 0 | 0 | yes |  |
| asm/overlay_88.s | 0 | 0 | yes |  |
| asm/overlay_106.s | 0 | 0 | yes |  |
| asm/overlay_113.s | 0 | 0 | yes |  |
| asm/overlay_116.s | 0 | 0 | yes |  |

