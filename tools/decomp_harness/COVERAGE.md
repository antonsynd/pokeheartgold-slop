# Decomp Coverage Ledger

*Generated 2026-10-14T03:05:57Z by `coverage_ledger.py` — do not hand-edit; regenerate after each decomp.*

Tracked functions (files with retained asm): **19293** — matched 17656, pending 1604, plus 20 matched-but-blocked inside failed files.

| status | files | functions | insn lines | ~text bytes |
|---|---|---|---|---|
| matched | 597 | 17656 | 87424 | 195924 |
| blocked | 5 | 33 | 1328 | 2942 |
| pending | 249 | 1604 | 256029 | 576246 |
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

## Matched files (asm retained) (597)

| file | functions | insn lines | data-only | notes |
|---|---|---|---|---|
| asm/overlay_96.s | 863 | 0 |  | hgify |
| asm/overlay_07.s | 780 | 0 |  | hgify |
| asm/overlay_45_thumb.s | 535 | 0 |  | hgify |
| asm/overlay_70.s | 481 | 0 |  | hgify |
| asm/overlay_40.s | 474 | 0 |  | hgify |
| asm/overlay_112.s | 473 | 0 |  | hgify |
| asm/overlay_74_thumb.s | 434 | 0 |  | hgify |
| asm/overlay_02_02248728.s | 364 | 14752 |  | retained_asm |
| asm/overlay_85.s | 249 | 0 |  | hgify |
| asm/overlay_08.s | 244 | 0 |  | hgify |
| asm/overlay_102.s | 244 | 0 |  | hgify |
| asm/overlay_91.s | 231 | 0 |  | hgify |
| asm/overlay_73.s | 200 | 0 |  | hgify |
| asm/overlay_80_0222BDF4.s | 197 | 0 |  | hgify |
| asm/overlay_71.s | 195 | 0 |  | hgify |
| asm/overlay_18_021F0918.s | 192 | 0 |  | hgify |
| asm/overlay_14_021E5900.s | 191 | 0 |  | hgify |
| asm/overlay_12_battle_controller_opponent.s | 176 | 0 |  | hgify |
| asm/overlay_81.s | 174 | 0 |  | hgify |
| asm/overlay_15.s | 173 | 0 |  | hgify |
| asm/overlay_49_0225A154.s | 155 | 0 |  | hgify |
| asm/overlay_59.s | 150 | 0 |  | hgify |
| asm/unk_02062108.s | 147 | 0 |  | hgify |
| asm/overlay_43.s | 146 | 0 |  | hgify |
| asm/overlay_72.s | 145 | 0 |  | hgify |
| asm/overlay_90.s | 136 | 0 |  | hgify |
| asm/overlay_99.s | 133 | 0 |  | hgify |
| asm/overlay_48.s | 129 | 0 |  | hgify |
| asm/overlay_57.s | 129 | 0 |  | hgify |
| asm/overlay_01_021F944C.s | 128 | 0 |  | hgify |
| asm/overlay_10_trainer_ai.s | 127 | 0 |  | hgify |
| asm/overlay_13_thumb_2.s | 120 | 0 |  | hgify |
| asm/overlay_14_021F2490.s | 120 | 0 |  | hgify |
| asm/overlay_103.s | 113 | 0 |  | hgify |
| asm/overlay_92.s | 109 | 0 |  | hgify |
| asm/overlay_83_0223DD60.s | 103 | 0 |  | hgify |
| asm/overlay_89.s | 103 | 0 |  | hgify |
| asm/unk_0201010C.s | 100 | 0 |  | hgify |
| asm/unk_02004A44.s | 95 | 1764 |  | harness |
| asm/overlay_65.s | 95 | 0 |  | hgify |
| asm/overlay_39_thumb.s | 94 | 0 |  | hgify |
| asm/overlay_93_thumb_2.s | 94 | 0 |  | hgify |
| asm/overlay_75.s | 91 | 0 |  | hgify |
| asm/unk_020632B0.s | 88 | 0 |  | hgify |
| asm/overlay_01_021EB1E8.s | 87 | 0 |  | hgify |
| asm/overlay_27.s | 86 | 0 |  | hgify |
| asm/overlay_49_022655E0.s | 85 | 0 |  | hgify |
| asm/overlay_87.s | 85 | 0 |  | hgify |
| asm/unk_02088288.s | 84 | 0 |  | hgify |
| asm/overlay_05.s | 84 | 0 |  | hgify |
| asm/overlay_00_thumb.s | 83 | 0 |  | hgify |
| asm/overlay_12_battle_controller.s | 83 | 0 |  | hgify |
| asm/unk_02035900.s | 81 | 0 |  | hgify |
| asm/unk_02061284.s | 81 | 0 |  | hgify |
| asm/overlay_01_021F1AFC.s | 81 | 0 |  | hgify |
| asm/overlay_83_02243D7C.s | 81 | 0 |  | hgify |
| asm/overlay_68.s | 80 | 0 |  | hgify |
| asm/overlay_01_021EFB38.s | 79 | 0 |  | hgify |
| asm/overlay_108.s | 77 | 0 |  | hgify |
| asm/unk_02032844.s | 75 | 2017 |  | harness |
| asm/overlay_14_021EAF08.s | 75 | 0 |  | hgify |
| asm/overlay_106.s | 74 | 0 |  | hgify |
| asm/overlay_86.s | 73 | 0 |  | hgify |
| asm/unk_02030A98.s | 71 | 1383 |  | harness |
| asm/overlay_01_021F72DC.s | 71 | 0 |  | hgify |
| asm/overlay_109.s | 71 | 0 |  | hgify |
| asm/unk_02023694.s | 68 | 1608 |  | harness |
| asm/overlay_49_02258800.s | 68 | 0 |  | hgify |
| asm/overlay_18_021EE35C.s | 67 | 0 |  | hgify |
| asm/overlay_93_thumb_1.s | 67 | 0 |  | hgify |
| asm/overlay_01_021F4704.s | 64 | 0 |  | hgify |
| asm/overlay_82.s | 64 | 0 |  | hgify |
| asm/unk_0205CB48.s | 63 | 0 |  | hgify |
| asm/overlay_14_021F6628.s | 63 | 0 |  | hgify |
| asm/overlay_37.s | 63 | 0 |  | hgify |
| asm/unk_02016EDC.s | 61 | 0 |  | hgify |
| asm/unk_0202B614.s | 61 | 1125 |  | retained_asm |
| asm/unk_0205FD20.s | 61 | 0 |  | hgify |
| asm/overlay_49_0225D6AC.s | 61 | 0 |  | hgify |
| asm/overlay_01_021F1348.s | 60 | 0 |  | hgify |
| asm/overlay_49_0225EEAC.s | 60 | 0 |  | hgify |
| asm/unk_02014DA0.s | 59 | 0 |  | hgify |
| asm/overlay_108_021E8850.s | 59 | 0 |  | hgify |
| asm/overlay_41_02245EA0.s | 58 | 0 |  | hgify |
| asm/overlay_49_0225CB50.s | 58 | 0 |  | hgify |
| asm/unk_02058AEC.s | 57 | 0 |  | hgify |
| asm/unk_02034B0C.s | 56 | 1530 |  | harness |
| asm/overlay_95.s | 56 | 0 |  | hgify |
| asm/overlay_80_0222AEF8.s | 54 | 0 |  | hgify |
| asm/overlay_47.s | 52 | 0 |  | hgify |
| asm/overlay_80_022340E8.s | 52 | 0 |  | hgify |
| asm/unk_02058034.s | 51 | 0 |  | hgify |
| asm/unk_020932E0.s | 51 | 0 |  | hgify |
| asm/unk_02005D10.s | 50 | 1584 |  | harness |
| asm/unk_02056D7C.s | 50 | 0 |  | hgify |
| asm/overlay_28.s | 50 | 0 |  | hgify |
| asm/overlay_88.s | 50 | 0 |  | hgify |
| asm/unk_020658D4.s | 49 | 0 |  | hgify |
| asm/overlay_18_021F6AB0.s | 49 | 0 |  | hgify |
| asm/unk_020689C8.s | 48 | 429 |  | harness |
| asm/overlay_111.s | 48 | 0 |  | hgify |
| asm/overlay_98.s | 47 | 1310 |  | harness |
| asm/unk_02074E5C.s | 46 | 849 |  | retained_asm |
| asm/overlay_01_021EDAFC.s | 46 | 0 |  | hgify |
| asm/overlay_41_02248400.s | 46 | 1253 |  | harness |
| asm/overlay_113.s | 46 | 0 |  | hgify |
| asm/unk_02033AE0.s | 44 | 959 |  | harness |
| asm/overlay_49_022595CC.s | 44 | 0 |  | hgify |
| asm/overlay_31.s | 43 | 0 |  | hgify |
| asm/overlay_49_02267F94.s | 43 | 0 |  | hgify |
| asm/overlay_41_02247828.s | 42 | 0 |  | hgify |
| asm/overlay_41_02249A40.s | 42 | 0 |  | hgify |
| asm/overlay_trainer_card_main.s | 42 | 0 |  | hgify |
| asm/unk_02013534.s | 40 | 1211 |  | retained_asm |
| asm/unk_02015DD8.s | 40 | 0 |  | hgify |
| asm/unk_0202D230.s | 40 | 807 |  | harness |
| asm/overlay_41_02248ED4.s | 40 | 0 |  | hgify |
| asm/overlay_41_0224B21C.s | 40 | 0 |  | hgify |
| asm/overlay_67.s | 40 | 0 |  | hgify |
| asm/frontier_map.s | 40 | 2050 |  | harness |
| asm/render_window.s | 39 | 0 |  | hgify |
| asm/unk_0202FBCC.s | 39 | 1695 |  | harness |
| asm/overlay_02_02245B80.s | 39 | 0 |  | hgify |
| asm/overlay_trainer_card_signature.s | 39 | 0 |  | hgify |
| asm/overlay_83_02246E08.s | 39 | 1339 |  | harness |
| asm/overlay_01_021F8D80.s | 38 | 727 |  | harness |
| asm/overlay_18_021F8AB8.s | 38 | 1357 |  | harness |
| asm/overlay_49_022649F4.s | 38 | 0 |  | hgify |
| asm/overlay_01_021FC66C.s | 37 | 733 |  | harness |
| asm/overlay_01_022053EC.s | 37 | 0 |  | hgify |
| asm/overlay_14_021EE26C.s | 37 | 0 |  | hgify |
| asm/overlay_41_0224A5A4.s | 37 | 0 |  | hgify |
| asm/unk_0208B1AC.s | 36 | 0 |  | hgify |
| asm/overlay_32.s | 36 | 1354 |  | harness |
| asm/overlay_34.s | 36 | 1981 |  | harness |
| asm/unk_02031B0C.s | 35 | 0 |  | hgify |
| asm/overlay_97.s | 35 | 0 |  | hgify |
| asm/overlay_29.s | 34 | 1335 |  | harness |
| asm/overlay_41_02246B34.s | 34 | 0 |  | hgify |
| asm/overlay_120.s | 34 | 0 |  | hgify |
| asm/overlay_01_021FB878.s | 32 | 0 |  | hgify |
| asm/overlay_14_021F0A80.s | 32 | 0 |  | hgify |
| asm/unk_0200FA24.s | 31 | 0 |  | hgify |
| asm/unk_02096C88.s | 31 | 400 |  | retained_asm |
| asm/overlay_01_021F6830.s | 31 | 524 |  | harness |
| asm/overlay_69.s | 31 | 0 |  | hgify |
| asm/unk_0208C3E4.s | 30 | 0 |  | hgify |
| asm/overlay_14_021F58B8.s | 30 | 1558 |  | harness |
| asm/overlay_64.s | 30 | 0 |  | hgify |
| asm/overlay_80_0223AC24.s | 30 | 0 |  | hgify |
| asm/unk_02034354.s | 29 | 0 |  | hgify |
| asm/overlay_01_022001E4.s | 28 | 514 |  | harness |
| asm/overlay_14_021EFDE4.s | 28 | 0 |  | hgify |
| asm/overlay_115.s | 28 | 0 |  | hgify |
| asm/overlay_14_021F4B90.s | 27 | 1474 |  | harness |
| asm/unk_02018000.s | 26 | 379 |  | harness |
| asm/unk_0205A44C.s | 26 | 0 |  | hgify |
| asm/overlay_01_021E90C0.s | 26 | 0 |  | hgify |
| asm/overlay_56.s | 26 | 0 |  | hgify |
| asm/unk_0202C034.s | 25 | 792 |  | harness |
| asm/overlay_80_02231BF8.s | 25 | 0 |  | hgify |
| asm/unk_0206979C.s | 24 | 0 |  | hgify |
| asm/unk_020863F4.s | 24 | 1701 |  | harness |
| asm/overlay_12_022378C0.s | 24 | 0 |  | hgify |
| asm/unk_02054648.s | 23 | 0 |  | hgify |
| asm/overlay_01_021FDA14.s | 23 | 863 |  | harness |
| asm/overlay_18_021F7ED4.s | 23 | 1319 |  | harness |
| asm/overlay_80_022324C4.s | 23 | 0 |  | hgify |
| asm/unk_02066EDC.s | 22 | 784 |  | harness |
| asm/unk_02077678.s | 21 | 217 |  | harness |
| asm/overlay_01_021FC05C.s | 21 | 463 |  | harness |
| asm/overlay_80_02229EE0.s | 21 | 1079 |  | retained_asm |
| asm/unk_0202068C.s | 20 | 404 |  | harness |
| asm/unk_020957B0.s | 20 | 0 |  | hgify |
| asm/frontier.s | 20 | 319 |  | harness |
| asm/overlay_80_0223A00C.s | 20 | 1380 |  | harness |
| asm/overlay_83_022479E4.s | 20 | 335 |  | harness |
| asm/unk_02014A08.s | 19 | 395 |  | harness |
| asm/unk_0202C730.s | 19 | 245 |  | harness |
| asm/unk_020379A0.s | 19 | 341 |  | harness |
| asm/unk_0208F658.s | 19 | 188 |  | harness |
| asm/overlay_80_0222ACA0.s | 19 | 235 |  | harness |
| asm/unk_0203A3B0.s | 18 | 0 |  | hgify |
| asm/unk_020755E8.s | 18 | 0 |  | hgify |
| asm/unk_02087284.s | 18 | 901 |  | harness |
| asm/overlay_01_022031C0.s | 18 | 912 |  | harness |
| asm/overlay_14_021F1808.s | 18 | 0 |  | hgify |
| asm/overlay_46.s | 18 | 0 |  | hgify |
| asm/overlay_80_0222F608.s | 18 | 0 |  | hgify |
| asm/overlay_80_022372D8.s | 18 | 870 |  | retained_asm |
| asm/unk_02012DD8.s | 17 | 0 |  | hgify |
| asm/unk_02085604.s | 17 | 1659 |  | harness |
| asm/unk_02087A78.s | 17 | 425 |  | harness |
| asm/unk_0208F814.s | 17 | 0 |  | hgify |
| asm/overlay_01_021F6CFC.s | 17 | 632 |  | retained_asm |
| asm/overlay_49_02268D94.s | 17 | 0 |  | hgify |
| asm/overlay_80_0222FD08.s | 17 | 0 |  | hgify |
| asm/overlay_80_02235900.s | 17 | 737 |  | harness |
| asm/overlay_80_02236B78.s | 17 | 831 |  | retained_asm |
| asm/overlay_80_02237A70.s | 17 | 0 |  | hgify |
| asm/overlay_93_arm.s | 17 | 854 |  | retained_asm |
| asm/unk_0205AC88.s | 16 | 0 |  | hgify |
| asm/unk_020773AC.s | 16 | 301 |  | harness |
| asm/unk_0208FB64.s | 16 | 245 |  | harness |
| asm/unk_02091880.s | 16 | 516 |  | harness |
| asm/overlay_01_021F3F50.s | 16 | 0 |  | hgify |
| asm/overlay_01_021FB04C.s | 16 | 352 |  | harness |
| asm/overlay_01_021FE200.s | 16 | 391 |  | harness |
| asm/unk_0201956C.s | 15 | 0 |  | hgify |
| asm/unk_0205BFF0.s | 15 | 254 |  | harness |
| asm/unk_02096910.s | 15 | 0 |  | hgify |
| asm/overlay_01_021FD1B8.s | 15 | 255 |  | harness |
| asm/overlay_80_02230B8C.s | 15 | 530 |  | harness |
| asm/model_attributes.s | 14 | 316 |  | retained_asm |
| asm/overlay_01_021FEA0C.s | 14 | 0 |  | hgify |
| asm/overlay_01_021FEEEC.s | 14 | 0 |  | hgify |
| asm/overlay_58.s | 14 | 470 |  | harness |
| asm/frontier_system.s | 14 | 328 |  | harness |
| asm/overlay_80_022310C4.s | 14 | 0 |  | hgify |
| asm/overlay_80_02236450.s | 14 | 0 |  | hgify |
| asm/overlay_80_02238034.s | 14 | 0 |  | hgify |
| asm/unk_02078834.s | 13 | 596 |  | retained_asm |
| asm/overlay_01_021FC4C4.s | 13 | 178 |  | harness |
| asm/overlay_01_021FE590.s | 13 | 211 |  | harness |
| asm/overlay_01_02203A18.s | 13 | 450 |  | retained_asm |
| asm/unk_020210A0.s | 12 | 0 |  | hgify |
| asm/unk_0202DB34.s | 12 | 47 |  | harness |
| asm/unk_0203DB6C.s | 12 | 346 |  | harness |
| asm/unk_02067A60.s | 12 | 363 |  | harness |
| asm/unk_02068FC8.s | 12 | 599 |  | harness |
| asm/unk_0208DE40.s | 12 | 762 |  | harness |
| asm/overlay_01_021FB5D4.s | 12 | 291 |  | harness |
| asm/overlay_01_021FCD2C.s | 12 | 156 |  | harness |
| asm/overlay_01_022051EC.s | 12 | 219 |  | retained_asm |
| asm/overlay_14_021EEF34.s | 12 | 0 |  | hgify |
| asm/unk_0200B150.s | 11 | 238 |  | harness |
| asm/unk_02055244.s | 11 | 189 |  | harness |
| asm/unk_02056680.s | 11 | 724 |  | harness |
| asm/unk_0205BB1C.s | 11 | 551 |  | harness |
| asm/unk_02097024.s | 11 | 198 |  | harness |
| asm/overlay_01_021EAF00.s | 11 | 88 |  | harness |
| asm/overlay_01_021FB4C0.s | 11 | 117 |  | harness |
| asm/overlay_80_02235438.s | 11 | 0 |  | hgify |
| asm/overlay_01_021FF854.s | 10 | 402 |  | retained_asm |
| asm/overlay_01_02200858.s | 10 | 286 |  | harness |
| asm/overlay_01_02203E40.s | 10 | 187 |  | harness |
| asm/overlay_33.s | 10 | 0 |  | hgify |
| asm/overlay_38_thumb.s | 10 | 0 |  | hgify |
| asm/overlay_80_02239960.s | 10 | 168 |  | harness |
| asm/unk_020163E0.s | 9 | 249 |  | harness |
| asm/unk_02020B8C.s | 9 | 0 |  | hgify |
| asm/unk_02069660.s | 9 | 132 |  | harness |
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
| asm/unk_020850F4.s | 8 | 0 |  | hgify |
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
| asm/unk_0202E41C.s | 6 | 60 |  | harness |
| asm/overlay_01_021EA6C4.s | 6 | 104 |  | harness |
| asm/overlay_01_021F3114.s | 6 | 252 |  | harness |
| asm/overlay_12_02265E28.s | 6 | 0 |  | hgify |
| asm/unk_02087E70.s | 5 | 142 |  | harness |
| asm/overlay_01_021FAC44.s | 5 | 97 |  | harness |
| asm/overlay_80_022357B4.s | 5 | 0 |  | hgify |
| asm/overlay_105.s | 5 | 0 |  | hgify |
| asm/unk_02017FAC.s | 4 | 60 |  | harness |
| asm/unk_0201F990.s | 4 | 171 |  | harness |
| asm/unk_020977CC.s | 4 | 195 |  | harness |
| asm/unk_020979A8.s | 4 | 191 |  | harness |
| asm/unk_02097BE0.s | 4 | 144 |  | harness |
| asm/overlay_01_021F3378.s | 4 | 276 |  | harness |
| asm/overlay_49_02262DB8.s | 4 | 0 |  | hgify |
| asm/overlay_80_02239AF8.s | 4 | 107 |  | harness |
| asm/overlay_80_02239BF0.s | 4 | 173 |  | harness |
| asm/overlay_83_02242FE8.s | 4 | 0 |  | hgify |
| asm/overlay_116.s | 4 | 0 |  | hgify |
| asm/unk_0206793C.s | 3 | 117 |  | harness |
| asm/unk_02092B04.s | 3 | 73 |  | harness |
| asm/unk_020961D8.s | 3 | 129 |  | harness |
| asm/unk_02097B78.s | 3 | 43 |  | harness |
| asm/overlay_01_021F4464.s | 3 | 0 |  | hgify |
| asm/overlay_12_0226BEC4.s | 3 | 113 |  | retained_asm |
| asm/overlay_41_0224BE34.s | 3 | 146 |  | harness |
| asm/unk_02025C44.s | 2 | 0 |  | hgify |
| asm/unk_02026DE0.s | 2 | 0 |  | hgify |
| asm/unk_02027010.s | 2 | 72 |  | harness |
| asm/unk_020551B8.s | 2 | 59 |  | harness |
| asm/unk_02078DD8.s | 2 | 34 |  | harness |
| asm/unk_02087FD4.s | 2 | 0 |  | hgify |
| asm/unk_02095DF4.s | 2 | 112 |  | harness |
| asm/overlay_01_021F467C.s | 2 | 56 |  | harness |
| asm/overlay_35.s | 2 | 23 |  | harness |
| asm/overlay_49_02263B74.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1000.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1002.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1004.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1006.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1007.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1009.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1010.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1011.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1013.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1014.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1016.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1017.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1018.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1020.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1022.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1023.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1024.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1025.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1026.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1028.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1029.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1031.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1032.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1033.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1035.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1036.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1038.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1039.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1040.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1041.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1042.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1043.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1044.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1045.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1046.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1047.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1048.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1049.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1050.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1051.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1052.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1053.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1054.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1055.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1057.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1058.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1059.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1060.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1062.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1064.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1065.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1066.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1067.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1069.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1070.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1071.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1072.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1073.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1074.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1076.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1077.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1078.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1079.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1080.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1081.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1082.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1083.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1084.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1085.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1087.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1088.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1090.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1092.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1093.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1094.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1095.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1096.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1097.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1099.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1100.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1101.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1103.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1104.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1105.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1106.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1108.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1109.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1110.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1111.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1112.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1113.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1114.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1115.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1116.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1117.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1118.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1119.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1120.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1121.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1122.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1124.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1125.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1127.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1128.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1129.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1130.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1131.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1132.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1133.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1135.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1136.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1137.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1139.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1140.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1141.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1142.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1143.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1144.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1145.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1146.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1148.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1150.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1152.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1154.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1155.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1156.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1158.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1159.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1160.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1161.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1163.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1167.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1168.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1170.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1171.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1172.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1173.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1175.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1176.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1177.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1178.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1179.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1180.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1181.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1182.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1183.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1184.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1185.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1186.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1187.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1188.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1189.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1190.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1191.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1192.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1194.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1196.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1197.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1198.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1199.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1200.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1202.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1204.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1206.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1208.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1209.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1210.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1211.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1212.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1213.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1214.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1215.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1216.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1217.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1218.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1219.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1220.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1221.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1222.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1223.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1224.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1225.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1227.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1228.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1229.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1230.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1231.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1233.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1234.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1235.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1236.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1237.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1238.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1239.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1240.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1241.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1242.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1243.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1244.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1246.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1247.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1248.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1249.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1251.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1252.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1254.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1255.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1256.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1257.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1258.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1260.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1261.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1263.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1264.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1265.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1267.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1269.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1270.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1271.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1273.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1275.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1276.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1277.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1278.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1279.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1280.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1281.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1283.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1285.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1286.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1287.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1289.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1291.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1292.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1293.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1294.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1295.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1297.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1299.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1300.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1301.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1302.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1304.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1305.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1306.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1307.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1309.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1310.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1311.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1313.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1315.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1316.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1317.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1319.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1320.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1322.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1324.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1325.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1326.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1327.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1328.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1329.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1330.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1331.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1333.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1335.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1336.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1338.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1339.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1341.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1342.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1343.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1344.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1345.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1346.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1347.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1348.s | 1 | 0 |  | hgify |
| asm/overlay_96_p1349.s | 1 | 0 |  | hgify |
| asm/overlay_114.s | 1 | 0 |  | hgify |
| asm/overlay_118.s | 1 | 251 |  | harness |
| asm/unk_data_020FD978.s | 0 | 0 | yes | harness |
| asm/overlay_01_data_02208BFC.s | 0 | 0 | yes | retained_asm |
| asm/battle_arcade_game_board_data.s | 0 | 0 | yes | harness |
| asm/battle_arcade_game_board_data2.s | 0 | 0 | yes | split_tu |

## Pending files (249)

| file | functions | insn lines | data-only | notes |
|---|---|---|---|---|
| asm/overlay_96.s | 184 | 34636 |  |  |
| asm/overlay_40.s | 84 | 16238 |  |  |
| asm/nitrocrypto.s | 67 | 4245 |  |  |
| asm/overlay_74_thumb.s | 61 | 9031 |  |  |
| asm/overlay_112.s | 49 | 6606 |  |  |
| asm/overlay_12_battle_controller_opponent.s | 40 | 10865 |  |  |
| asm/overlay_13_thumb_2.s | 38 | 7735 |  |  |
| asm/overlay_70.s | 38 | 5649 |  |  |
| asm/overlay_07.s | 32 | 5262 |  |  |
| asm/overlay_15.s | 30 | 4403 |  |  |
| asm/unk_0201010C.s | 27 | 1597 |  |  |
| asm/overlay_18_021F0918.s | 25 | 2279 |  |  |
| asm/overlay_14_021E5900.s | 23 | 3231 |  |  |
| asm/overlay_43.s | 23 | 3070 |  |  |
| asm/overlay_81.s | 23 | 3709 |  |  |
| asm/overlay_92.s | 23 | 6950 |  |  |
| asm/overlay_08.s | 22 | 2076 |  |  |
| asm/overlay_57.s | 20 | 2758 |  |  |
| asm/overlay_83_0223DD60.s | 19 | 4876 |  |  |
| asm/overlay_89.s | 17 | 2599 |  |  |
| asm/overlay_90.s | 17 | 2061 |  |  |
| asm/overlay_71.s | 16 | 1562 |  |  |
| asm/overlay_99.s | 16 | 1448 |  |  |
| asm/unk_02088288.s | 13 | 1747 |  |  |
| asm/overlay_59.s | 13 | 1832 |  |  |
| asm/overlay_82.s | 13 | 1368 |  |  |
| asm/overlay_87.s | 12 | 1713 |  |  |
| asm/overlay_102.s | 12 | 1120 |  |  |
| asm/overlay_65.s | 11 | 2114 |  |  |
| asm/overlay_91.s | 11 | 1915 |  |  |
| asm/overlay_108.s | 11 | 1535 |  |  |
| asm/overlay_14_021EAF08.s | 10 | 2863 |  |  |
| asm/overlay_27.s | 10 | 1657 |  |  |
| asm/overlay_73.s | 10 | 1328 |  |  |
| asm/overlay_93_thumb_1.s | 10 | 1834 |  |  |
| asm/unk_02035900.s | 9 | 1375 |  |  |
| asm/unk_020932E0.s | 9 | 1307 |  |  |
| asm/overlay_01_021E90C0.s | 9 | 1546 |  |  |
| asm/overlay_12_022378C0.s | 9 | 3589 |  |  |
| asm/overlay_45_thumb.s | 9 | 747 |  |  |
| asm/overlay_72.s | 9 | 1421 |  |  |
| asm/overlay_75.s | 9 | 1655 |  |  |
| asm/overlay_83_02243D7C.s | 9 | 2350 |  |  |
| asm/overlay_01_021F4704.s | 8 | 1257 |  |  |
| asm/overlay_14_021F2490.s | 8 | 621 |  |  |
| asm/overlay_trainer_card_main.s | 8 | 1701 |  |  |
| asm/overlay_109.s | 8 | 613 |  |  |
| asm/overlay_10_trainer_ai.s | 7 | 1633 |  |  |
| asm/overlay_18_021EE35C.s | 7 | 1069 |  |  |
| asm/overlay_86.s | 7 | 701 |  |  |
| asm/overlay_108_021E8850.s | 7 | 703 |  |  |
| asm/overlay_119.s | 6 | 2588 |  |  |
| asm/unk_0201956C.s | 6 | 447 |  |  |
| asm/unk_020210A0.s | 6 | 297 |  |  |
| asm/unk_0205AC88.s | 6 | 449 |  |  |
| asm/overlay_00_thumb.s | 6 | 684 |  |  |
| asm/overlay_01_021EFB38.s | 6 | 225 |  |  |
| asm/overlay_28.s | 6 | 668 |  |  |
| asm/overlay_49_0225EEAC.s | 6 | 1962 |  |  |
| asm/overlay_69.s | 6 | 1261 |  |  |
| asm/overlay_80_0222BDF4.s | 6 | 582 |  |  |
| asm/overlay_80_022310C4.s | 6 | 966 |  |  |
| asm/overlay_85.s | 6 | 577 |  |  |
| asm/overlay_93_thumb_2.s | 6 | 907 |  |  |
| asm/overlay_95.s | 6 | 767 |  |  |
| asm/overlay_96_p1147.s | 5 | 1000 |  |  |
| asm/unk_02056D7C.s | 5 | 474 |  |  |
| asm/unk_020632B0.s | 5 | 722 |  |  |
| asm/unk_0208B1AC.s | 5 | 399 |  |  |
| asm/unk_0208C3E4.s | 5 | 734 |  |  |
| asm/overlay_01_021EB1E8.s | 5 | 660 |  |  |
| asm/overlay_01_021F72DC.s | 5 | 441 |  |  |
| asm/overlay_41_02245EA0.s | 5 | 274 |  |  |
| asm/overlay_49_022655E0.s | 5 | 1224 |  |  |
| asm/overlay_56.s | 5 | 914 |  |  |
| asm/overlay_64.s | 5 | 1554 |  |  |
| asm/overlay_68.s | 5 | 564 |  |  |
| asm/overlay_103.s | 5 | 397 |  |  |
| asm/overlay_120.s | 5 | 837 |  |  |
| asm/overlay_96_p1102.s | 4 | 813 |  |  |
| asm/overlay_96_p1312.s | 4 | 288 |  |  |
| asm/unk_02014DA0.s | 4 | 58 |  |  |
| asm/unk_02031B0C.s | 4 | 629 |  |  |
| asm/unk_020755E8.s | 4 | 2413 |  |  |
| asm/overlay_14_021F6628.s | 4 | 499 |  |  |
| asm/overlay_18_021F6AB0.s | 4 | 660 |  |  |
| asm/overlay_37.s | 4 | 528 |  |  |
| asm/overlay_47.s | 4 | 740 |  |  |
| asm/overlay_49_0225A154.s | 4 | 957 |  |  |
| asm/overlay_80_0222FD08.s | 4 | 561 |  |  |
| asm/overlay_97.s | 4 | 475 |  |  |
| asm/overlay_96_p1027.s | 3 | 153 |  |  |
| asm/overlay_96_p1037.s | 3 | 118 |  |  |
| asm/overlay_96_p1126.s | 3 | 171 |  |  |
| asm/overlay_96_p1149.s | 3 | 1227 |  |  |
| asm/overlay_96_p1151.s | 3 | 450 |  |  |
| asm/overlay_96_p1174.s | 3 | 177 |  |  |
| asm/overlay_96_p1250.s | 3 | 262 |  |  |
| asm/unk_02012DD8.s | 3 | 244 |  |  |
| asm/unk_02054648.s | 3 | 280 |  |  |
| asm/unk_02058AEC.s | 3 | 1065 |  |  |
| asm/unk_0205CB48.s | 3 | 264 |  |  |
| asm/unk_02062108.s | 3 | 165 |  |  |
| asm/overlay_01_021EDAFC.s | 3 | 263 |  |  |
| asm/overlay_01_021F944C.s | 3 | 281 |  |  |
| asm/overlay_01_022053EC.s | 3 | 325 |  |  |
| asm/overlay_05.s | 3 | 406 |  |  |
| asm/overlay_14_021EEF34.s | 3 | 909 |  |  |
| asm/overlay_14_021F0A80.s | 3 | 380 |  |  |
| asm/overlay_14_021F1808.s | 3 | 268 |  |  |
| asm/overlay_31.s | 3 | 337 |  |  |
| asm/overlay_39_thumb.s | 3 | 536 |  |  |
| asm/overlay_41_02246B34.s | 3 | 412 |  |  |
| asm/overlay_48.s | 3 | 331 |  |  |
| asm/overlay_trainer_card_signature.s | 3 | 254 |  |  |
| asm/overlay_67.s | 3 | 465 |  |  |
| asm/overlay_80_022324C4.s | 3 | 468 |  |  |
| asm/overlay_80_022340E8.s | 3 | 467 |  |  |
| asm/overlay_83_02242FE8.s | 3 | 1133 |  |  |
| asm/overlay_113.s | 3 | 302 |  |  |
| asm/overlay_115.s | 3 | 1583 |  |  |
| asm/overlay_96_p1005.s | 2 | 211 |  |  |
| asm/overlay_96_p1021.s | 2 | 62 |  |  |
| asm/overlay_96_p1056.s | 2 | 187 |  |  |
| asm/overlay_96_p1075.s | 2 | 76 |  |  |
| asm/overlay_96_p1098.s | 2 | 130 |  |  |
| asm/overlay_96_p1107.s | 2 | 263 |  |  |
| asm/overlay_96_p1138.s | 2 | 1102 |  |  |
| asm/overlay_96_p1157.s | 2 | 29 |  |  |
| asm/overlay_96_p1166.s | 2 | 114 |  |  |
| asm/overlay_96_p1259.s | 2 | 1186 |  |  |
| asm/overlay_96_p1274.s | 2 | 499 |  |  |
| asm/overlay_96_p1284.s | 2 | 309 |  |  |
| asm/overlay_96_p1298.s | 2 | 213 |  |  |
| asm/overlay_96_p1332.s | 2 | 364 |  |  |
| asm/unk_0200FA24.s | 2 | 149 |  |  |
| asm/unk_02020B8C.s | 2 | 204 |  |  |
| asm/unk_02025C44.s | 2 | 262 |  |  |
| asm/unk_0203A3B0.s | 2 | 331 |  |  |
| asm/unk_02058034.s | 2 | 58 |  |  |
| asm/unk_0205A44C.s | 2 | 266 |  |  |
| asm/unk_0205FD20.s | 2 | 331 |  |  |
| asm/unk_02061284.s | 2 | 158 |  |  |
| asm/unk_020957B0.s | 2 | 123 |  |  |
| asm/overlay_01_021F1AFC.s | 2 | 255 |  |  |
| asm/overlay_01_021F4464.s | 2 | 99 |  |  |
| asm/overlay_01_021FB878.s | 2 | 307 |  |  |
| asm/overlay_02_02245B80.s | 2 | 161 |  |  |
| asm/overlay_14_021EFDE4.s | 2 | 243 |  |  |
| asm/overlay_33.s | 2 | 90 |  |  |
| asm/overlay_38_thumb.s | 2 | 366 |  |  |
| asm/overlay_46.s | 2 | 607 |  |  |
| asm/overlay_49_022595CC.s | 2 | 475 |  |  |
| asm/overlay_49_02262DB8.s | 2 | 1367 |  |  |
| asm/overlay_80_0223AC24.s | 2 | 514 |  |  |
| asm/overlay_105.s | 2 | 267 |  |  |
| asm/overlay_106.s | 2 | 99 |  |  |
| asm/overlay_111.s | 2 | 221 |  |  |
| asm/overlay_117.s | 2 | 1086 |  |  |
| asm/overlay_96_p1001.s | 1 | 20 |  |  |
| asm/overlay_96_p1003.s | 1 | 409 |  |  |
| asm/overlay_96_p1008.s | 1 | 294 |  |  |
| asm/overlay_96_p1012.s | 1 | 19 |  |  |
| asm/overlay_96_p1015.s | 1 | 39 |  |  |
| asm/overlay_96_p1019.s | 1 | 51 |  |  |
| asm/overlay_96_p1030.s | 1 | 30 |  |  |
| asm/overlay_96_p1034.s | 1 | 90 |  |  |
| asm/overlay_96_p1061.s | 1 | 232 |  |  |
| asm/overlay_96_p1063.s | 1 | 395 |  |  |
| asm/overlay_96_p1068.s | 1 | 200 |  |  |
| asm/overlay_96_p1086.s | 1 | 66 |  |  |
| asm/overlay_96_p1089.s | 1 | 160 |  |  |
| asm/overlay_96_p1091.s | 1 | 46 |  |  |
| asm/overlay_96_p1123.s | 1 | 43 |  |  |
| asm/overlay_96_p1134.s | 1 | 40 |  |  |
| asm/overlay_96_p1153.s | 1 | 89 |  |  |
| asm/overlay_96_p1162.s | 1 | 717 |  |  |
| asm/overlay_96_p1164.s | 1 | 146 |  |  |
| asm/overlay_96_p1165.s | 1 | 45 |  |  |
| asm/overlay_96_p1169.s | 1 | 78 |  |  |
| asm/overlay_96_p1193.s | 1 | 75 |  |  |
| asm/overlay_96_p1195.s | 1 | 21 |  |  |
| asm/overlay_96_p1201.s | 1 | 183 |  |  |
| asm/overlay_96_p1203.s | 1 | 198 |  |  |
| asm/overlay_96_p1205.s | 1 | 346 |  |  |
| asm/overlay_96_p1207.s | 1 | 139 |  |  |
| asm/overlay_96_p1226.s | 1 | 204 |  |  |
| asm/overlay_96_p1232.s | 1 | 29 |  |  |
| asm/overlay_96_p1245.s | 1 | 256 |  |  |
| asm/overlay_96_p1253.s | 1 | 206 |  |  |
| asm/overlay_96_p1262.s | 1 | 28 |  |  |
| asm/overlay_96_p1266.s | 1 | 264 |  |  |
| asm/overlay_96_p1268.s | 1 | 255 |  |  |
| asm/overlay_96_p1272.s | 1 | 156 |  |  |
| asm/overlay_96_p1282.s | 1 | 30 |  |  |
| asm/overlay_96_p1288.s | 1 | 309 |  |  |
| asm/overlay_96_p1290.s | 1 | 43 |  |  |
| asm/overlay_96_p1296.s | 1 | 48 |  |  |
| asm/overlay_96_p1303.s | 1 | 48 |  |  |
| asm/overlay_96_p1308.s | 1 | 54 |  |  |
| asm/overlay_96_p1314.s | 1 | 94 |  |  |
| asm/overlay_96_p1318.s | 1 | 173 |  |  |
| asm/overlay_96_p1321.s | 1 | 43 |  |  |
| asm/overlay_96_p1323.s | 1 | 28 |  |  |
| asm/overlay_96_p1334.s | 1 | 166 |  |  |
| asm/overlay_96_p1337.s | 1 | 11 |  |  |
| asm/overlay_96_p1340.s | 1 | 16 |  |  |
| asm/render_window.s | 1 | 115 |  |  |
| asm/unk_02016EDC.s | 1 | 139 |  |  |
| asm/unk_02034354.s | 1 | 101 |  |  |
| asm/unk_020658D4.s | 1 | 141 |  |  |
| asm/unk_0206979C.s | 1 | 48 |  |  |
| asm/unk_020850F4.s | 1 | 140 |  |  |
| asm/unk_02087FD4.s | 1 | 15 |  |  |
| asm/overlay_01_021EABA8.s | 1 | 98 |  |  |
| asm/overlay_01_021F1348.s | 1 | 11 |  |  |
| asm/overlay_01_021F3F50.s | 1 | 99 |  |  |
| asm/overlay_01_021FE780.s | 1 | 57 |  |  |
| asm/overlay_12_battle_controller.s | 1 | 241 |  |  |
| asm/overlay_12_02265E28.s | 1 | 116 |  |  |
| asm/overlay_14_021EE26C.s | 1 | 355 |  |  |
| asm/overlay_41_02248ED4.s | 1 | 81 |  |  |
| asm/overlay_41_02249A40.s | 1 | 37 |  |  |
| asm/overlay_41_0224A5A4.s | 1 | 34 |  |  |
| asm/overlay_49_02258800.s | 1 | 75 |  |  |
| asm/overlay_49_02261FC0.s | 1 | 1059 |  |  |
| asm/overlay_49_02263B74.s | 1 | 952 |  |  |
| asm/overlay_80_0222F608.s | 1 | 401 |  |  |
| asm/overlay_80_02231BF8.s | 1 | 390 |  |  |
| asm/overlay_80_02237A70.s | 1 | 192 |  |  |
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
| asm/overlay_49_0225D6AC.s | 0 | 0 | yes |  |
| asm/overlay_49_022649F4.s | 0 | 0 | yes |  |
| asm/overlay_49_02267F94.s | 0 | 0 | yes |  |
| asm/overlay_49_02268D94.s | 0 | 0 | yes |  |
| asm/overlay_80_02239D74.s | 0 | 0 | yes |  |
| asm/overlay_88.s | 0 | 0 | yes |  |

