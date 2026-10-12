# Decomp Coverage Ledger

*Generated 2026-10-12T18:25:46Z by `coverage_ledger.py` — do not hand-edit; regenerate after each decomp.*

Tracked functions (files with retained asm): **19292** — matched 16385, pending 2874, plus 20 matched-but-blocked inside failed files.

| status | files | functions | insn lines | ~text bytes |
|---|---|---|---|---|
| matched | 499 | 16385 | 87424 | 195924 |
| blocked | 5 | 33 | 1328 | 2942 |
| pending | 243 | 2874 | 362051 | 810554 |
| upstream | 397 | 0 | 0 | 0 |

## Blockers (value-ordered: fix what gates the most)

| id | blocks | gates pending files | description |
|---|---|---|---|
| ext-data-section-split | 0 | 3 | Data-only files exporting multiple EXTERNAL (.public) const arrays: MWCC (all modes — with/without -ipa file, pragma or not; T0.3 experiments 2026-07-02 disproved the earlier mwldarm-reorder theory) emits file-scope external consts SIZE-ASCENDING with a deterministic equal-size scramble, so a retail layout that is not size-ascending cannot come from one TU in source order. objdiff cannot see section order — verify these files ONLY with chiri pkg -- compare. |
| param-copyprop-cmp | 0 | 1 | MWCC copy-propagates parameter copies: 'adds r4, r0, #0; cmp r4, #N' at function entry cannot be produced from pure C (MWCC substitutes back to r0; the shape only arises for saved return values after a bl). Affected functions need the NONMATCHING inline-asm fallback — routine, not a wall (proven: unk_0200B150 re-landed 2026-07-02 via ROADMAP T0.2, full ROM SHA1 OK). Entry-idiom scan (asmscan) finds the remaining sites in pending files: overlay_102 (6), unk_02077678 (4), overlay_96 (3), overlay_48 (2), overlay_112, unk_020517A4, unk_02058034 (1 each). Gated files carry the affected function names in triage_report copyprop_funcs. (unk_02004A44 sub_020058F4 was a false positive -- saved return value after a bl; matched in plain C 2026-10-06.) |
| ipa-shared-headers | 0 | 0 | MWCC -ipa file: changing a signature in a shared header cascades codegen changes into every already-matched caller in other compilation units. Affects only files that must ADD or CHANGE declarations in a frozen header — call-only consumers of the exported APIs are NOT gated (proven by patterns 'ipa-blocked-files-can-call-sound-fns-without-cascade' and 'false-ipa-gate-shared-imports'). Diagnostic before blaming IPA for any mismatch: recompile the TU without '-ipa file' and objdiff (pattern ipa-file-flag-effects-and-removal-nonviability). |
| ipa-cse-literal-pool | 1 | 0 | MWCC -ipa file caches repeated literal-pool addresses/large offsets in callee-saved registers across calls where retail reloads them (or vice versa). A codegen-shape problem, not a header problem — split from ipa-shared-headers 2026-07-01, where this file's ubiquitous exports (BeginNormalPaletteFade family, imported by ~84 pending .inc files) badly inflated the gate count. |
| objdiff-false-positives | 0 | 0 | RESOLVED. objdiff.py had a critical bug: the byte extraction regex did not match MWCC's ARM Thumb objdump format (packed hex like 'b418' vs expected space-separated 'b4 18'). It extracted 0 bytes for every function, so 0==0 always reported MATCH. 11 decomps accepted via objdiff were not actually byte-matching. Fixed; all 11 non-matching decomps reverted to asm. 2 decomps that truly match (unk_0202DB34, battle_arcade_game_board_data) kept. |

## Blocked files (5)

| file | functions | insn lines | data-only | notes |
|---|---|---|---|---|
| asm/overlay_01_021FD41C.s | 24 | 660 |  |  20/24 matched; Camera/3D-effect map-object effect (dependent on overlay_01_021F1348 cluster head via local externs). 20/24 functions ma |
| asm/overlay_104.s | 9 | 668 |  |   |
| asm/unk_02055BF0_data.s | 0 | 0 | yes | ext-data-section-split Data-only: 3 external const fn-ptr arrays (sMapEnterRoutines, sMapExitRoutines, _020FC76C) referenced only by already-ma |
| asm/middleware.s | 0 | 0 | yes |  Data-only: 7 NUL-terminated SDK middleware version strings in a custom .version section (single ordered section, each .b |
| asm/overlay_12_battle_command.s | 0 | 0 | yes |   |

## Matched files (asm retained) (499)

| file | functions | insn lines | data-only | notes |
|---|---|---|---|---|
| asm/overlay_96.s | 779 | 0 |  | hgify |
| asm/overlay_07.s | 766 | 0 |  | hgify |
| asm/overlay_45_thumb.s | 529 | 0 |  | hgify |
| asm/overlay_40.s | 436 | 0 |  | hgify |
| asm/overlay_112.s | 424 | 0 |  | hgify |
| asm/overlay_70.s | 419 | 0 |  | hgify |
| asm/overlay_74_thumb.s | 399 | 0 |  | hgify |
| asm/overlay_02_02248728.s | 364 | 14752 |  | retained_asm |
| asm/overlay_08.s | 238 | 0 |  | hgify |
| asm/overlay_85.s | 232 | 0 |  | hgify |
| asm/overlay_91.s | 229 | 0 |  | hgify |
| asm/overlay_102.s | 225 | 0 |  | hgify |
| asm/overlay_80_0222BDF4.s | 191 | 0 |  | hgify |
| asm/overlay_14_021E5900.s | 173 | 0 |  | hgify |
| asm/overlay_71.s | 173 | 0 |  | hgify |
| asm/overlay_73.s | 173 | 0 |  | hgify |
| asm/overlay_18_021F0918.s | 165 | 0 |  | hgify |
| asm/overlay_49_0225A154.s | 153 | 0 |  | hgify |
| asm/overlay_12_battle_controller_opponent.s | 152 | 0 |  | hgify |
| asm/overlay_81.s | 152 | 0 |  | hgify |
| asm/overlay_15.s | 151 | 0 |  | hgify |
| asm/unk_02062108.s | 146 | 0 |  | hgify |
| asm/overlay_72.s | 129 | 0 |  | hgify |
| asm/overlay_10_trainer_ai.s | 127 | 0 |  | hgify |
| asm/overlay_90.s | 127 | 0 |  | hgify |
| asm/overlay_43.s | 126 | 0 |  | hgify |
| asm/overlay_01_021F944C.s | 125 | 0 |  | hgify |
| asm/overlay_48.s | 125 | 0 |  | hgify |
| asm/overlay_59.s | 119 | 0 |  | hgify |
| asm/overlay_99.s | 115 | 0 |  | hgify |
| asm/overlay_14_021F2490.s | 113 | 0 |  | hgify |
| asm/overlay_57.s | 111 | 0 |  | hgify |
| asm/overlay_103.s | 104 | 0 |  | hgify |
| asm/overlay_92.s | 103 | 0 |  | hgify |
| asm/unk_0201010C.s | 100 | 0 |  | hgify |
| asm/unk_02004A44.s | 95 | 1764 |  | harness |
| asm/overlay_13_thumb_2.s | 95 | 0 |  | hgify |
| asm/overlay_89.s | 89 | 0 |  | hgify |
| asm/overlay_93_thumb_2.s | 89 | 0 |  | hgify |
| asm/overlay_39_thumb.s | 88 | 0 |  | hgify |
| asm/overlay_83_0223DD60.s | 88 | 0 |  | hgify |
| asm/unk_020632B0.s | 85 | 0 |  | hgify |
| asm/overlay_65.s | 84 | 0 |  | hgify |
| asm/overlay_05.s | 83 | 0 |  | hgify |
| asm/overlay_12_battle_controller.s | 82 | 0 |  | hgify |
| asm/overlay_01_021EB1E8.s | 81 | 0 |  | hgify |
| asm/unk_02061284.s | 80 | 0 |  | hgify |
| asm/overlay_00_thumb.s | 80 | 0 |  | hgify |
| asm/overlay_49_022655E0.s | 80 | 0 |  | hgify |
| asm/overlay_01_021F1AFC.s | 78 | 0 |  | hgify |
| asm/overlay_87.s | 77 | 0 |  | hgify |
| asm/overlay_01_021EFB38.s | 76 | 0 |  | hgify |
| asm/overlay_75.s | 76 | 0 |  | hgify |
| asm/unk_02032844.s | 75 | 2017 |  | harness |
| asm/overlay_68.s | 73 | 0 |  | hgify |
| asm/unk_02030A98.s | 71 | 1383 |  | harness |
| asm/overlay_27.s | 71 | 0 |  | hgify |
| asm/overlay_83_02243D7C.s | 71 | 0 |  | hgify |
| asm/unk_02088288.s | 70 | 0 |  | hgify |
| asm/unk_02023694.s | 68 | 1608 |  | harness |
| asm/overlay_14_021EAF08.s | 68 | 0 |  | hgify |
| asm/overlay_49_02258800.s | 68 | 0 |  | hgify |
| asm/overlay_106.s | 68 | 0 |  | hgify |
| asm/overlay_108.s | 68 | 0 |  | hgify |
| asm/overlay_01_021F72DC.s | 66 | 0 |  | hgify |
| asm/overlay_109.s | 64 | 0 |  | hgify |
| asm/unk_02035900.s | 63 | 0 |  | hgify |
| asm/overlay_86.s | 62 | 0 |  | hgify |
| asm/unk_0202B614.s | 61 | 1125 |  | retained_asm |
| asm/overlay_37.s | 61 | 0 |  | hgify |
| asm/overlay_93_thumb_1.s | 61 | 0 |  | hgify |
| asm/unk_02016EDC.s | 60 | 0 |  | hgify |
| asm/overlay_18_021EE35C.s | 60 | 0 |  | hgify |
| asm/overlay_49_0225D6AC.s | 60 | 0 |  | hgify |
| asm/overlay_49_0225EEAC.s | 60 | 0 |  | hgify |
| asm/overlay_01_021F1348.s | 58 | 0 |  | hgify |
| asm/overlay_49_0225CB50.s | 58 | 0 |  | hgify |
| asm/overlay_82.s | 58 | 0 |  | hgify |
| asm/unk_02014DA0.s | 57 | 0 |  | hgify |
| asm/unk_0205FD20.s | 57 | 0 |  | hgify |
| asm/overlay_41_02245EA0.s | 57 | 0 |  | hgify |
| asm/unk_02034B0C.s | 56 | 1530 |  | harness |
| asm/overlay_14_021F6628.s | 56 | 0 |  | hgify |
| asm/overlay_108_021E8850.s | 56 | 0 |  | hgify |
| asm/unk_0205CB48.s | 55 | 0 |  | hgify |
| asm/overlay_01_021F4704.s | 55 | 0 |  | hgify |
| asm/overlay_95.s | 55 | 0 |  | hgify |
| asm/overlay_80_0222AEF8.s | 54 | 0 |  | hgify |
| asm/unk_02058AEC.s | 53 | 0 |  | hgify |
| asm/unk_02058034.s | 51 | 0 |  | hgify |
| asm/overlay_47.s | 51 | 0 |  | hgify |
| asm/unk_02005D10.s | 50 | 1584 |  | harness |
| asm/overlay_80_022340E8.s | 50 | 0 |  | hgify |
| asm/unk_020689C8.s | 48 | 429 |  | harness |
| asm/unk_020658D4.s | 47 | 0 |  | hgify |
| asm/overlay_88.s | 47 | 0 |  | hgify |
| asm/overlay_98.s | 47 | 1310 |  | harness |
| asm/unk_02074E5C.s | 46 | 849 |  | retained_asm |
| asm/overlay_41_02248400.s | 46 | 1253 |  | harness |
| asm/overlay_18_021F6AB0.s | 45 | 0 |  | hgify |
| asm/unk_02033AE0.s | 44 | 959 |  | harness |
| asm/overlay_28.s | 44 | 0 |  | hgify |
| asm/overlay_49_022595CC.s | 44 | 0 |  | hgify |
| asm/overlay_01_021EDAFC.s | 43 | 0 |  | hgify |
| asm/overlay_49_02267F94.s | 43 | 0 |  | hgify |
| asm/overlay_111.s | 43 | 0 |  | hgify |
| asm/overlay_41_02249A40.s | 42 | 0 |  | hgify |
| asm/unk_02056D7C.s | 41 | 0 |  | hgify |
| asm/overlay_41_02247828.s | 41 | 0 |  | hgify |
| asm/unk_02013534.s | 40 | 1211 |  | retained_asm |
| asm/unk_0202D230.s | 40 | 807 |  | harness |
| asm/frontier_map.s | 40 | 2050 |  | harness |
| asm/overlay_113.s | 40 | 0 |  | hgify |
| asm/unk_0202FBCC.s | 39 | 1695 |  | harness |
| asm/overlay_83_02246E08.s | 39 | 1339 |  | harness |
| asm/render_window.s | 38 | 0 |  | hgify |
| asm/unk_020932E0.s | 38 | 0 |  | hgify |
| asm/overlay_01_021F8D80.s | 38 | 727 |  | harness |
| asm/overlay_18_021F8AB8.s | 38 | 1357 |  | harness |
| asm/overlay_31.s | 38 | 0 |  | hgify |
| asm/overlay_41_0224B21C.s | 38 | 0 |  | hgify |
| asm/overlay_49_022649F4.s | 38 | 0 |  | hgify |
| asm/unk_02015DD8.s | 37 | 0 |  | hgify |
| asm/overlay_01_021FC66C.s | 37 | 733 |  | harness |
| asm/overlay_41_02248ED4.s | 37 | 0 |  | hgify |
| asm/overlay_trainer_card_signature.s | 37 | 0 |  | hgify |
| asm/overlay_02_02245B80.s | 36 | 0 |  | hgify |
| asm/overlay_32.s | 36 | 1354 |  | harness |
| asm/overlay_34.s | 36 | 1981 |  | harness |
| asm/overlay_41_0224A5A4.s | 36 | 0 |  | hgify |
| asm/overlay_14_021EE26C.s | 35 | 0 |  | hgify |
| asm/overlay_trainer_card_main.s | 35 | 0 |  | hgify |
| asm/overlay_01_022053EC.s | 34 | 0 |  | hgify |
| asm/overlay_29.s | 34 | 1335 |  | harness |
| asm/overlay_41_02246B34.s | 33 | 0 |  | hgify |
| asm/overlay_120.s | 33 | 0 |  | hgify |
| asm/overlay_01_021FB878.s | 32 | 0 |  | hgify |
| asm/overlay_67.s | 32 | 0 |  | hgify |
| asm/unk_0200FA24.s | 31 | 0 |  | hgify |
| asm/unk_0208B1AC.s | 31 | 0 |  | hgify |
| asm/unk_02096C88.s | 31 | 400 |  | retained_asm |
| asm/overlay_01_021F6830.s | 31 | 524 |  | harness |
| asm/overlay_14_021F0A80.s | 30 | 0 |  | hgify |
| asm/overlay_14_021F58B8.s | 30 | 1558 |  | harness |
| asm/overlay_80_0223AC24.s | 30 | 0 |  | hgify |
| asm/unk_02034354.s | 29 | 0 |  | hgify |
| asm/overlay_64.s | 29 | 0 |  | hgify |
| asm/overlay_97.s | 29 | 0 |  | hgify |
| asm/overlay_01_022001E4.s | 28 | 514 |  | harness |
| asm/overlay_69.s | 28 | 0 |  | hgify |
| asm/overlay_14_021F4B90.s | 27 | 1474 |  | harness |
| asm/unk_02018000.s | 26 | 379 |  | harness |
| asm/overlay_14_021EFDE4.s | 26 | 0 |  | hgify |
| asm/unk_0202C034.s | 25 | 792 |  | harness |
| asm/unk_0208C3E4.s | 25 | 0 |  | hgify |
| asm/overlay_01_021E90C0.s | 25 | 0 |  | hgify |
| asm/overlay_80_02231BF8.s | 25 | 0 |  | hgify |
| asm/overlay_115.s | 25 | 0 |  | hgify |
| asm/unk_0205A44C.s | 24 | 0 |  | hgify |
| asm/unk_0206979C.s | 24 | 0 |  | hgify |
| asm/unk_020863F4.s | 24 | 1701 |  | harness |
| asm/overlay_01_021FDA14.s | 23 | 863 |  | harness |
| asm/overlay_12_022378C0.s | 23 | 0 |  | hgify |
| asm/overlay_18_021F7ED4.s | 23 | 1319 |  | harness |
| asm/unk_02066EDC.s | 22 | 784 |  | harness |
| asm/overlay_56.s | 22 | 0 |  | hgify |
| asm/unk_02054648.s | 21 | 0 |  | hgify |
| asm/unk_02077678.s | 21 | 217 |  | harness |
| asm/overlay_01_021FC05C.s | 21 | 463 |  | harness |
| asm/overlay_80_02229EE0.s | 21 | 1079 |  | retained_asm |
| asm/overlay_80_022324C4.s | 21 | 0 |  | hgify |
| asm/unk_0202068C.s | 20 | 404 |  | harness |
| asm/frontier.s | 20 | 319 |  | harness |
| asm/overlay_80_0223A00C.s | 20 | 1380 |  | harness |
| asm/overlay_83_022479E4.s | 20 | 335 |  | harness |
| asm/unk_02014A08.s | 19 | 395 |  | harness |
| asm/unk_0202C730.s | 19 | 245 |  | harness |
| asm/unk_020379A0.s | 19 | 341 |  | harness |
| asm/unk_0208F658.s | 19 | 188 |  | harness |
| asm/overlay_80_0222ACA0.s | 19 | 235 |  | harness |
| asm/unk_0203A3B0.s | 18 | 0 |  | hgify |
| asm/unk_02087284.s | 18 | 901 |  | harness |
| asm/overlay_01_022031C0.s | 18 | 912 |  | harness |
| asm/overlay_80_0222F608.s | 18 | 0 |  | hgify |
| asm/overlay_80_022372D8.s | 18 | 870 |  | retained_asm |
| asm/unk_02085604.s | 17 | 1659 |  | harness |
| asm/unk_02087A78.s | 17 | 425 |  | harness |
| asm/unk_0208F814.s | 17 | 0 |  | hgify |
| asm/unk_020957B0.s | 17 | 0 |  | hgify |
| asm/overlay_01_021F6CFC.s | 17 | 632 |  | retained_asm |
| asm/overlay_46.s | 17 | 0 |  | hgify |
| asm/overlay_80_0222FD08.s | 17 | 0 |  | hgify |
| asm/overlay_80_02235900.s | 17 | 737 |  | harness |
| asm/overlay_80_02236B78.s | 17 | 831 |  | retained_asm |
| asm/overlay_93_arm.s | 17 | 854 |  | retained_asm |
| asm/unk_020755E8.s | 16 | 0 |  | hgify |
| asm/unk_020773AC.s | 16 | 301 |  | harness |
| asm/unk_0208FB64.s | 16 | 245 |  | harness |
| asm/unk_02091880.s | 16 | 516 |  | harness |
| asm/overlay_01_021F3F50.s | 16 | 0 |  | hgify |
| asm/overlay_01_021FB04C.s | 16 | 352 |  | harness |
| asm/overlay_01_021FE200.s | 16 | 391 |  | harness |
| asm/overlay_49_02268D94.s | 16 | 0 |  | hgify |
| asm/overlay_80_02237A70.s | 16 | 0 |  | hgify |
| asm/unk_0205BFF0.s | 15 | 254 |  | harness |
| asm/unk_02096910.s | 15 | 0 |  | hgify |
| asm/overlay_01_021FD1B8.s | 15 | 255 |  | harness |
| asm/overlay_80_02230B8C.s | 15 | 530 |  | harness |
| asm/model_attributes.s | 14 | 316 |  | retained_asm |
| asm/overlay_01_021FEA0C.s | 14 | 0 |  | hgify |
| asm/overlay_01_021FEEEC.s | 14 | 0 |  | hgify |
| asm/overlay_58.s | 14 | 470 |  | harness |
| asm/frontier_system.s | 14 | 328 |  | harness |
| asm/overlay_80_02238034.s | 14 | 0 |  | hgify |
| asm/unk_02031B0C.s | 13 | 0 |  | hgify |
| asm/unk_02078834.s | 13 | 596 |  | retained_asm |
| asm/overlay_01_021FC4C4.s | 13 | 178 |  | harness |
| asm/overlay_01_021FE590.s | 13 | 211 |  | harness |
| asm/overlay_01_02203A18.s | 13 | 450 |  | retained_asm |
| asm/overlay_14_021F1808.s | 13 | 0 |  | hgify |
| asm/overlay_80_02236450.s | 13 | 0 |  | hgify |
| asm/unk_0202DB34.s | 12 | 47 |  | harness |
| asm/unk_0203DB6C.s | 12 | 346 |  | harness |
| asm/unk_02067A60.s | 12 | 363 |  | harness |
| asm/unk_02068FC8.s | 12 | 599 |  | harness |
| asm/unk_0208DE40.s | 12 | 762 |  | harness |
| asm/overlay_01_021FB5D4.s | 12 | 291 |  | harness |
| asm/overlay_01_021FCD2C.s | 12 | 156 |  | harness |
| asm/overlay_01_022051EC.s | 12 | 219 |  | retained_asm |
| asm/unk_0200B150.s | 11 | 238 |  | harness |
| asm/unk_020210A0.s | 11 | 0 |  | hgify |
| asm/unk_02055244.s | 11 | 189 |  | harness |
| asm/unk_02056680.s | 11 | 724 |  | harness |
| asm/unk_0205BB1C.s | 11 | 551 |  | harness |
| asm/unk_02097024.s | 11 | 198 |  | harness |
| asm/overlay_01_021EAF00.s | 11 | 88 |  | harness |
| asm/overlay_01_021FB4C0.s | 11 | 117 |  | harness |
| asm/overlay_01_021FF854.s | 10 | 402 |  | retained_asm |
| asm/overlay_01_02200858.s | 10 | 286 |  | harness |
| asm/overlay_01_02203E40.s | 10 | 187 |  | harness |
| asm/overlay_14_021EEF34.s | 10 | 0 |  | hgify |
| asm/overlay_80_02235438.s | 10 | 0 |  | hgify |
| asm/overlay_80_02239960.s | 10 | 168 |  | harness |
| asm/unk_020163E0.s | 9 | 249 |  | harness |
| asm/unk_02020B8C.s | 9 | 0 |  | hgify |
| asm/unk_02069660.s | 9 | 132 |  | harness |
| asm/overlay_01_021FE780.s | 9 | 0 |  | hgify |
| asm/overlay_01_021FEC38.s | 9 | 0 |  | hgify |
| asm/overlay_01_021FED9C.s | 9 | 0 |  | hgify |
| asm/overlay_01_021FF464.s | 9 | 247 |  | retained_asm |
| asm/overlay_01_021FF6B0.s | 9 | 173 |  | harness |
| asm/overlay_01_02200040.s | 9 | 173 |  | harness |
| asm/overlay_01_022006A8.s | 9 | 182 |  | harness |
| asm/overlay_33.s | 9 | 0 |  | hgify |
| asm/unk_0203BA5C.s | 8 | 155 |  | harness |
| asm/unk_020517A4.s | 8 | 185 |  | harness |
| asm/unk_020915B0.s | 8 | 65 |  | harness |
| asm/overlay_01_021EABA8.s | 8 | 0 |  | hgify |
| asm/overlay_01_021FFC0C.s | 8 | 300 |  | retained_asm |
| asm/overlay_38_thumb.s | 8 | 0 |  | hgify |
| asm/overlay_49_02261FC0.s | 8 | 0 |  | hgify |
| asm/overlay_80_02235390.s | 8 | 64 |  | harness |
| asm/overlay_80_02235FC8.s | 8 | 524 |  | harness |
| asm/overlay_80_022384D8.s | 8 | 150 |  | harness |
| asm/overlay_80_02239D74.s | 8 | 0 |  | hgify |
| asm/unk_020192D0.s | 7 | 265 |  | harness |
| asm/unk_020318C8.s | 7 | 26 |  | harness |
| asm/unk_020850F4.s | 7 | 0 |  | hgify |
| asm/overlay_01_021EAFD4.s | 7 | 247 |  | harness |
| asm/overlay_01_021FAD1C.s | 7 | 388 |  | harness |
| asm/overlay_01_021FB368.s | 7 | 159 |  | harness |
| asm/overlay_01_021FCE98.s | 7 | 334 |  | harness |
| asm/overlay_117.s | 7 | 0 |  | hgify |
| asm/unk_0202E41C.s | 6 | 60 |  | harness |
| asm/overlay_01_021EA6C4.s | 6 | 104 |  | harness |
| asm/overlay_01_021F3114.s | 6 | 252 |  | harness |
| asm/overlay_12_02265E28.s | 6 | 0 |  | hgify |
| asm/overlay_80_022310C4.s | 6 | 0 |  | hgify |
| asm/unk_02087E70.s | 5 | 142 |  | harness |
| asm/overlay_01_021FAC44.s | 5 | 97 |  | harness |
| asm/overlay_80_022357B4.s | 5 | 0 |  | hgify |
| asm/unk_02012DD8.s | 4 | 0 |  | hgify |
| asm/unk_02017FAC.s | 4 | 60 |  | harness |
| asm/unk_0201956C.s | 4 | 0 |  | hgify |
| asm/unk_0201F990.s | 4 | 171 |  | harness |
| asm/unk_0205AC88.s | 4 | 0 |  | hgify |
| asm/unk_020977CC.s | 4 | 195 |  | harness |
| asm/unk_020979A8.s | 4 | 191 |  | harness |
| asm/unk_02097BE0.s | 4 | 144 |  | harness |
| asm/overlay_01_021F3378.s | 4 | 276 |  | harness |
| asm/overlay_49_02262DB8.s | 4 | 0 |  | hgify |
| asm/overlay_80_02239AF8.s | 4 | 107 |  | harness |
| asm/overlay_80_02239BF0.s | 4 | 173 |  | harness |
| asm/overlay_116.s | 4 | 0 |  | hgify |
| asm/unk_0206793C.s | 3 | 117 |  | harness |
| asm/unk_02092B04.s | 3 | 73 |  | harness |
| asm/unk_020961D8.s | 3 | 129 |  | harness |
| asm/unk_02097B78.s | 3 | 43 |  | harness |
| asm/overlay_01_021F4464.s | 3 | 0 |  | hgify |
| asm/overlay_12_0226BEC4.s | 3 | 113 |  | retained_asm |
| asm/overlay_41_0224BE34.s | 3 | 146 |  | harness |
| asm/overlay_105.s | 3 | 0 |  | hgify |
| asm/unk_02025C44.s | 2 | 0 |  | hgify |
| asm/unk_02026DE0.s | 2 | 0 |  | hgify |
| asm/unk_02027010.s | 2 | 72 |  | harness |
| asm/unk_020551B8.s | 2 | 59 |  | harness |
| asm/unk_02078DD8.s | 2 | 34 |  | harness |
| asm/unk_02087FD4.s | 2 | 0 |  | hgify |
| asm/unk_02095DF4.s | 2 | 112 |  | harness |
| asm/overlay_01_021F467C.s | 2 | 56 |  | harness |
| asm/overlay_35.s | 2 | 23 |  | harness |
| asm/overlay_83_02242FE8.s | 2 | 0 |  | hgify |
| asm/overlay_49_02263B74.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1000.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1001.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1003.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1004.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1006.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1007.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1008.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1010.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1011.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1013.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1014.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1016.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1017.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1018.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1019.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1021.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1022.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1023.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1024.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1025.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1026.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1027.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1029.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1031.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1033.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1034.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1035.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1036.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1037.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1038.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1039.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1041.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1043.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1044.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1045.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1046.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1048.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1050.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1052.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1054.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1056.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1057.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1058.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1060.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1061.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1062.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1063.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1065.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1069.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1070.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1072.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1073.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1074.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1075.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1077.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1078.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1080.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1081.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1082.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1084.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1085.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1086.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1087.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1089.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1090.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1091.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1092.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1093.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1094.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1096.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1098.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1100.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1101.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1103.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1105.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1106.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1107.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1108.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1109.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1110.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1112.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1113.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1114.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1115.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1116.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1117.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1118.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1119.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1120.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1121.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1122.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1124.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1125.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1126.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1127.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1128.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1130.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1131.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1132.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1133.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1134.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1135.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1136.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1137.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1138.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1139.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1140.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1141.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1143.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1145.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1147.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1148.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1150.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1152.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1153.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1155.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1157.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1158.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1159.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1161.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1163.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1164.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1165.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1167.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1168.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1169.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1170.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1171.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1172.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1173.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1175.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1177.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1178.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1179.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1181.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1183.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1185.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1186.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1188.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1190.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1191.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1192.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1193.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1195.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1196.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1197.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1198.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1200.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1201.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1202.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1204.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1206.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1207.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1208.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1210.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1211.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1213.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1215.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1216.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1217.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1218.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1219.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1220.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1221.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1222.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1224.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1226.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1227.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1229.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1230.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1232.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1233.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1234.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1235.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1236.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1237.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1238.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1239.s | 1 | 0 |  | hgify |
| asm/overlay_96_h1240.s | 1 | 0 |  | hgify |
| asm/overlay_114.s | 1 | 0 |  | hgify |
| asm/overlay_118.s | 1 | 251 |  | harness |
| asm/unk_data_020FD978.s | 0 | 0 | yes | harness |
| asm/overlay_01_data_02208BFC.s | 0 | 0 | yes | retained_asm |
| asm/battle_arcade_game_board_data.s | 0 | 0 | yes | harness |
| asm/battle_arcade_game_board_data2.s | 0 | 0 | yes | split_tu |
| asm/overlay_96_h1111.s | 0 | 0 | yes | hgify |

## Pending files (243)

| file | functions | insn lines | data-only | notes |
|---|---|---|---|---|
| asm/overlay_96.s | 360 | 49688 |  |  |
| asm/overlay_40.s | 122 | 20583 |  |  |
| asm/overlay_70.s | 100 | 10831 |  |  |
| asm/overlay_112.s | 98 | 10246 |  |  |
| asm/overlay_74_thumb.s | 96 | 12214 |  |  |
| asm/nitrocrypto.s | 67 | 4245 |  |  |
| asm/overlay_12_battle_controller_opponent.s | 64 | 12868 |  |  |
| asm/overlay_13_thumb_2.s | 63 | 9602 |  |  |
| asm/overlay_15.s | 52 | 6349 |  |  |
| asm/overlay_18_021F0918.s | 52 | 4425 |  |  |
| asm/overlay_07.s | 46 | 6378 |  |  |
| asm/overlay_81.s | 45 | 5001 |  |  |
| asm/overlay_59.s | 44 | 4444 |  |  |
| asm/overlay_43.s | 43 | 5023 |  |  |
| asm/overlay_14_021E5900.s | 41 | 5002 |  |  |
| asm/overlay_57.s | 38 | 4460 |  |  |
| asm/overlay_71.s | 38 | 3747 |  |  |
| asm/overlay_73.s | 37 | 3770 |  |  |
| asm/overlay_83_0223DD60.s | 34 | 6073 |  |  |
| asm/overlay_99.s | 34 | 2936 |  |  |
| asm/overlay_89.s | 31 | 3937 |  |  |
| asm/overlay_102.s | 31 | 2264 |  |  |
| asm/overlay_92.s | 29 | 7795 |  |  |
| asm/overlay_08.s | 28 | 2785 |  |  |
| asm/unk_0201010C.s | 27 | 1597 |  |  |
| asm/unk_02035900.s | 27 | 2443 |  |  |
| asm/unk_02088288.s | 27 | 3015 |  |  |
| asm/unk_02031B0C.s | 26 | 1115 |  |  |
| asm/overlay_90.s | 26 | 2838 |  |  |
| asm/overlay_27.s | 25 | 3279 |  |  |
| asm/overlay_72.s | 25 | 2825 |  |  |
| asm/overlay_75.s | 24 | 3094 |  |  |
| asm/overlay_85.s | 23 | 2214 |  |  |
| asm/unk_020932E0.s | 22 | 2747 |  |  |
| asm/overlay_65.s | 22 | 3046 |  |  |
| asm/overlay_87.s | 20 | 2385 |  |  |
| asm/overlay_108.s | 20 | 2397 |  |  |
| asm/overlay_82.s | 19 | 1940 |  |  |
| asm/overlay_83_02243D7C.s | 19 | 3334 |  |  |
| asm/unk_0205AC88.s | 18 | 695 |  |  |
| asm/overlay_86.s | 18 | 1574 |  |  |
| asm/unk_0201956C.s | 17 | 740 |  |  |
| asm/overlay_01_021F4704.s | 17 | 1962 |  |  |
| asm/overlay_14_021EAF08.s | 17 | 3460 |  |  |
| asm/unk_02012DD8.s | 16 | 776 |  |  |
| asm/overlay_93_thumb_1.s | 16 | 2407 |  |  |
| asm/overlay_14_021F2490.s | 15 | 1019 |  |  |
| asm/overlay_45_thumb.s | 15 | 1248 |  |  |
| asm/overlay_trainer_card_main.s | 15 | 2445 |  |  |
| asm/overlay_109.s | 15 | 1452 |  |  |
| asm/unk_02056D7C.s | 14 | 1072 |  |  |
| asm/overlay_18_021EE35C.s | 14 | 1595 |  |  |
| asm/overlay_80_022310C4.s | 14 | 1180 |  |  |
| asm/overlay_103.s | 14 | 1072 |  |  |
| asm/overlay_91.s | 13 | 2164 |  |  |
| asm/overlay_28.s | 12 | 1097 |  |  |
| asm/overlay_68.s | 12 | 1288 |  |  |
| asm/overlay_80_0222BDF4.s | 12 | 963 |  |  |
| asm/unk_0205CB48.s | 11 | 832 |  |  |
| asm/overlay_01_021EB1E8.s | 11 | 1280 |  |  |
| asm/overlay_14_021F6628.s | 11 | 917 |  |  |
| asm/overlay_67.s | 11 | 1323 |  |  |
| asm/overlay_93_thumb_2.s | 11 | 1418 |  |  |
| asm/unk_0208B1AC.s | 10 | 838 |  |  |
| asm/unk_0208C3E4.s | 10 | 1073 |  |  |
| asm/overlay_01_021E90C0.s | 10 | 1669 |  |  |
| asm/overlay_01_021F72DC.s | 10 | 686 |  |  |
| asm/overlay_12_022378C0.s | 10 | 3665 |  |  |
| asm/overlay_49_022655E0.s | 10 | 1859 |  |  |
| asm/overlay_97.s | 10 | 1034 |  |  |
| asm/overlay_108_021E8850.s | 10 | 1116 |  |  |
| asm/overlay_96_h1051.s | 9 | 2366 |  |  |
| asm/overlay_00_thumb.s | 9 | 921 |  |  |
| asm/overlay_01_021EFB38.s | 9 | 434 |  |  |
| asm/overlay_39_thumb.s | 9 | 1105 |  |  |
| asm/overlay_56.s | 9 | 1314 |  |  |
| asm/overlay_69.s | 9 | 1483 |  |  |
| asm/overlay_113.s | 9 | 903 |  |  |
| asm/unk_020632B0.s | 8 | 976 |  |  |
| asm/overlay_14_021F1808.s | 8 | 786 |  |  |
| asm/overlay_18_021F6AB0.s | 8 | 1051 |  |  |
| asm/overlay_31.s | 8 | 805 |  |  |
| asm/overlay_106.s | 8 | 612 |  |  |
| asm/unk_020210A0.s | 7 | 329 |  |  |
| asm/unk_02058AEC.s | 7 | 1465 |  |  |
| asm/overlay_10_trainer_ai.s | 7 | 1633 |  |  |
| asm/overlay_48.s | 7 | 715 |  |  |
| asm/overlay_95.s | 7 | 882 |  |  |
| asm/overlay_111.s | 7 | 460 |  |  |
| asm/overlay_96_h1102.s | 6 | 1044 |  |  |
| asm/overlay_119.s | 6 | 2588 |  |  |
| asm/unk_02014DA0.s | 6 | 152 |  |  |
| asm/unk_0205FD20.s | 6 | 683 |  |  |
| asm/unk_020755E8.s | 6 | 2668 |  |  |
| asm/overlay_01_021EDAFC.s | 6 | 608 |  |  |
| asm/overlay_01_021F944C.s | 6 | 424 |  |  |
| asm/overlay_01_022053EC.s | 6 | 492 |  |  |
| asm/overlay_37.s | 6 | 796 |  |  |
| asm/overlay_41_02245EA0.s | 6 | 338 |  |  |
| asm/overlay_49_0225A154.s | 6 | 1125 |  |  |
| asm/overlay_49_0225EEAC.s | 6 | 1962 |  |  |
| asm/overlay_64.s | 6 | 1731 |  |  |
| asm/overlay_115.s | 6 | 1628 |  |  |
| asm/overlay_120.s | 6 | 912 |  |  |
| asm/overlay_96_h1012.s | 5 | 886 |  |  |
| asm/unk_02054648.s | 5 | 346 |  |  |
| asm/unk_020957B0.s | 5 | 260 |  |  |
| asm/overlay_01_021F1AFC.s | 5 | 391 |  |  |
| asm/overlay_02_02245B80.s | 5 | 514 |  |  |
| asm/overlay_14_021EEF34.s | 5 | 1144 |  |  |
| asm/overlay_14_021F0A80.s | 5 | 573 |  |  |
| asm/overlay_47.s | 5 | 804 |  |  |
| asm/overlay_trainer_card_signature.s | 5 | 437 |  |  |
| asm/overlay_80_022324C4.s | 5 | 602 |  |  |
| asm/overlay_80_022340E8.s | 5 | 522 |  |  |
| asm/overlay_83_02242FE8.s | 5 | 1359 |  |  |
| asm/overlay_96_h1005.s | 4 | 346 |  |  |
| asm/overlay_96_h1009.s | 4 | 383 |  |  |
| asm/overlay_96_h1015.s | 4 | 415 |  |  |
| asm/overlay_96_h1032.s | 4 | 263 |  |  |
| asm/overlay_96_h1166.s | 4 | 773 |  |  |
| asm/overlay_96_h1203.s | 4 | 288 |  |  |
| asm/unk_0205A44C.s | 4 | 376 |  |  |
| asm/unk_02062108.s | 4 | 172 |  |  |
| asm/overlay_05.s | 4 | 540 |  |  |
| asm/overlay_14_021EFDE4.s | 4 | 400 |  |  |
| asm/overlay_38_thumb.s | 4 | 556 |  |  |
| asm/overlay_41_02246B34.s | 4 | 474 |  |  |
| asm/overlay_41_02248ED4.s | 4 | 428 |  |  |
| asm/overlay_80_0222FD08.s | 4 | 561 |  |  |
| asm/overlay_105.s | 4 | 445 |  |  |
| asm/overlay_96_h1040.s | 3 | 270 |  |  |
| asm/overlay_96_h1053.s | 3 | 450 |  |  |
| asm/overlay_96_h1076.s | 3 | 177 |  |  |
| asm/overlay_96_h1146.s | 3 | 262 |  |  |
| asm/overlay_96_h1154.s | 3 | 1327 |  |  |
| asm/unk_02015DD8.s | 3 | 160 |  |  |
| asm/unk_02061284.s | 3 | 240 |  |  |
| asm/unk_020658D4.s | 3 | 332 |  |  |
| asm/overlay_01_021F1348.s | 3 | 76 |  |  |
| asm/overlay_14_021EE26C.s | 3 | 533 |  |  |
| asm/overlay_33.s | 3 | 202 |  |  |
| asm/overlay_46.s | 3 | 687 |  |  |
| asm/overlay_88.s | 3 | 383 |  |  |
| asm/overlay_96_h1020.s | 2 | 157 |  |  |
| asm/overlay_96_h1042.s | 2 | 1102 |  |  |
| asm/overlay_96_h1059.s | 2 | 29 |  |  |
| asm/overlay_96_h1068.s | 2 | 114 |  |  |
| asm/overlay_96_h1144.s | 2 | 145 |  |  |
| asm/overlay_96_h1149.s | 2 | 337 |  |  |
| asm/overlay_96_h1176.s | 2 | 309 |  |  |
| asm/overlay_96_h1187.s | 2 | 152 |  |  |
| asm/overlay_96_h1189.s | 2 | 213 |  |  |
| asm/overlay_96_h1223.s | 2 | 364 |  |  |
| asm/render_window.s | 2 | 209 |  |  |
| asm/unk_0200FA24.s | 2 | 149 |  |  |
| asm/unk_02016EDC.s | 2 | 215 |  |  |
| asm/unk_02020B8C.s | 2 | 204 |  |  |
| asm/unk_02025C44.s | 2 | 262 |  |  |
| asm/unk_0203A3B0.s | 2 | 331 |  |  |
| asm/unk_02058034.s | 2 | 58 |  |  |
| asm/unk_020850F4.s | 2 | 289 |  |  |
| asm/overlay_01_021EABA8.s | 2 | 191 |  |  |
| asm/overlay_01_021F4464.s | 2 | 99 |  |  |
| asm/overlay_01_021FB878.s | 2 | 307 |  |  |
| asm/overlay_12_battle_controller.s | 2 | 412 |  |  |
| asm/overlay_41_0224A5A4.s | 2 | 153 |  |  |
| asm/overlay_41_0224B21C.s | 2 | 109 |  |  |
| asm/overlay_49_022595CC.s | 2 | 475 |  |  |
| asm/overlay_49_02261FC0.s | 2 | 1154 |  |  |
| asm/overlay_49_02262DB8.s | 2 | 1367 |  |  |
| asm/overlay_80_02237A70.s | 2 | 226 |  |  |
| asm/overlay_80_0223AC24.s | 2 | 514 |  |  |
| asm/overlay_117.s | 2 | 1086 |  |  |
| asm/overlay_96_h1002.s | 1 | 66 |  |  |
| asm/overlay_96_h1028.s | 1 | 83 |  |  |
| asm/overlay_96_h1030.s | 1 | 43 |  |  |
| asm/overlay_96_h1047.s | 1 | 57 |  |  |
| asm/overlay_96_h1049.s | 1 | 152 |  |  |
| asm/overlay_96_h1055.s | 1 | 89 |  |  |
| asm/overlay_96_h1064.s | 1 | 717 |  |  |
| asm/overlay_96_h1066.s | 1 | 146 |  |  |
| asm/overlay_96_h1067.s | 1 | 45 |  |  |
| asm/overlay_96_h1071.s | 1 | 78 |  |  |
| asm/overlay_96_h1079.s | 1 | 57 |  |  |
| asm/overlay_96_h1083.s | 1 | 71 |  |  |
| asm/overlay_96_h1088.s | 1 | 96 |  |  |
| asm/overlay_96_h1095.s | 1 | 75 |  |  |
| asm/overlay_96_h1097.s | 1 | 21 |  |  |
| asm/overlay_96_h1099.s | 1 | 92 |  |  |
| asm/overlay_96_h1104.s | 1 | 139 |  |  |
| asm/overlay_96_h1123.s | 1 | 204 |  |  |
| asm/overlay_96_h1129.s | 1 | 29 |  |  |
| asm/overlay_96_h1142.s | 1 | 256 |  |  |
| asm/overlay_96_h1151.s | 1 | 161 |  |  |
| asm/overlay_96_h1156.s | 1 | 28 |  |  |
| asm/overlay_96_h1160.s | 1 | 264 |  |  |
| asm/overlay_96_h1162.s | 1 | 255 |  |  |
| asm/overlay_96_h1174.s | 1 | 30 |  |  |
| asm/overlay_96_h1180.s | 1 | 309 |  |  |
| asm/overlay_96_h1182.s | 1 | 43 |  |  |
| asm/overlay_96_h1184.s | 1 | 56 |  |  |
| asm/overlay_96_h1194.s | 1 | 48 |  |  |
| asm/overlay_96_h1199.s | 1 | 54 |  |  |
| asm/overlay_96_h1205.s | 1 | 94 |  |  |
| asm/overlay_96_h1209.s | 1 | 173 |  |  |
| asm/overlay_96_h1212.s | 1 | 43 |  |  |
| asm/overlay_96_h1214.s | 1 | 28 |  |  |
| asm/overlay_96_h1225.s | 1 | 166 |  |  |
| asm/overlay_96_h1228.s | 1 | 11 |  |  |
| asm/overlay_96_h1231.s | 1 | 16 |  |  |
| asm/unk_02034354.s | 1 | 101 |  |  |
| asm/unk_0206979C.s | 1 | 48 |  |  |
| asm/unk_02087FD4.s | 1 | 15 |  |  |
| asm/overlay_01_021F3F50.s | 1 | 99 |  |  |
| asm/overlay_01_021FE780.s | 1 | 57 |  |  |
| asm/overlay_12_02265E28.s | 1 | 116 |  |  |
| asm/overlay_41_02247828.s | 1 | 83 |  |  |
| asm/overlay_41_02249A40.s | 1 | 37 |  |  |
| asm/overlay_49_02258800.s | 1 | 75 |  |  |
| asm/overlay_49_0225D6AC.s | 1 | 29 |  |  |
| asm/overlay_49_02263B74.s | 1 | 952 |  |  |
| asm/overlay_49_02268D94.s | 1 | 158 |  |  |
| asm/overlay_80_0222F608.s | 1 | 401 |  |  |
| asm/overlay_80_02231BF8.s | 1 | 390 |  |  |
| asm/overlay_80_02235438.s | 1 | 108 |  |  |
| asm/overlay_80_02236450.s | 1 | 128 |  |  |
| asm/overlay_80_02238034.s | 1 | 209 |  |  |
| asm/overlay_114.s | 1 | 261 |  |  |
| asm/overlay_116.s | 1 | 155 |  |  |
| asm/unk_data_020FCBD8.s | 0 | 0 | yes |  |
| asm/unk_data_020FDB44.s | 0 | 0 | yes |  |
| asm/overlay_01_sprite_data.s | 0 | 0 | yes |  |
| asm/unk_0208F814.s | 0 | 0 | yes |  |
| asm/unk_02096910.s | 0 | 0 | yes |  |
| asm/overlay_01_021FEA0C.s | 0 | 0 | yes |  |
| asm/overlay_01_021FEC38.s | 0 | 0 | yes |  |
| asm/overlay_01_021FED9C.s | 0 | 0 | yes |  |
| asm/overlay_01_021FEEEC.s | 0 | 0 | yes |  |
| asm/overlay_49_0225CB50.s | 0 | 0 | yes |  |
| asm/overlay_49_022649F4.s | 0 | 0 | yes |  |
| asm/overlay_49_02267F94.s | 0 | 0 | yes |  |
| asm/overlay_80_02239D74.s | 0 | 0 | yes |  |

