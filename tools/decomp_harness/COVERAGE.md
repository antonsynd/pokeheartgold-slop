# Decomp Coverage Ledger

*Generated 2026-10-14T14:04:23Z by `coverage_ledger.py` — do not hand-edit; regenerate after each decomp.*

Tracked functions (files with retained asm): **19132** — matched 17785, pending 1314, plus 20 matched-but-blocked inside failed files.

| status | files | functions | insn lines | ~text bytes |
|---|---|---|---|---|
| matched | 609 | 17785 | 87311 | 195662 |
| blocked | 4 | 33 | 1328 | 2942 |
| pending | 247 | 1314 | 205222 | 463236 |
| upstream | 398 | 0 | 0 | 0 |

## Blockers (value-ordered: fix what gates the most)

| id | blocks | gates pending files | description |
|---|---|---|---|
| ext-data-section-split | 0 | 3 | Data-only files exporting multiple EXTERNAL (.public) const arrays: MWCC (all modes — with/without -ipa file, pragma or not; T0.3 experiments 2026-07-02 disproved the earlier mwldarm-reorder theory) emits file-scope external consts SIZE-ASCENDING with a deterministic equal-size scramble, so a retail layout that is not size-ascending cannot come from one TU in source order. objdiff cannot see section order — verify these files ONLY with chiri pkg -- compare. |
| param-copyprop-cmp | 0 | 1 | MWCC copy-propagates parameter copies: 'adds r4, r0, #0; cmp r4, #N' at function entry cannot be produced from pure C (MWCC substitutes back to r0; the shape only arises for saved return values after a bl). Affected functions need the NONMATCHING inline-asm fallback — routine, not a wall (proven: unk_0200B150 re-landed 2026-07-02 via ROADMAP T0.2, full ROM SHA1 OK). Entry-idiom scan (asmscan) finds the remaining sites in pending files: overlay_102 (6), unk_02077678 (4), overlay_96 (3), overlay_48 (2), overlay_112, unk_020517A4, unk_02058034 (1 each). Gated files carry the affected function names in triage_report copyprop_funcs. (unk_02004A44 sub_020058F4 was a false positive -- saved return value after a bl; matched in plain C 2026-10-06.) |
| ipa-shared-headers | 0 | 0 | MWCC -ipa file: changing a signature in a shared header cascades codegen changes into every already-matched caller in other compilation units. Affects only files that must ADD or CHANGE declarations in a frozen header — call-only consumers of the exported APIs are NOT gated (proven by patterns 'ipa-blocked-files-can-call-sound-fns-without-cascade' and 'false-ipa-gate-shared-imports'). Diagnostic before blaming IPA for any mismatch: recompile the TU without '-ipa file' and objdiff (pattern ipa-file-flag-effects-and-removal-nonviability). |
| ipa-cse-literal-pool | 1 | 0 | MWCC -ipa file caches repeated literal-pool addresses/large offsets in callee-saved registers across calls where retail reloads them (or vice versa). A codegen-shape problem, not a header problem — split from ipa-shared-headers 2026-07-01, where this file's ubiquitous exports (BeginNormalPaletteFade family, imported by ~84 pending .inc files) badly inflated the gate count. |
| objdiff-false-positives | 0 | 0 | RESOLVED. objdiff.py had a critical bug: the byte extraction regex did not match MWCC's ARM Thumb objdump format (packed hex like 'b418' vs expected space-separated 'b4 18'). It extracted 0 bytes for every function, so 0==0 always reported MATCH. 11 decomps accepted via objdiff were not actually byte-matching. Fixed; all 11 non-matching decomps reverted to asm. 2 decomps that truly match (unk_0202DB34, battle_arcade_game_board_data) kept. |

## Blocked files (4)

| file | functions | insn lines | data-only | notes |
|---|---|---|---|---|
| asm/overlay_01_021FD41C.s | 24 | 660 |  |  20/24 matched; Camera/3D-effect map-object effect (dependent on overlay_01_021F1348 cluster head via local externs). 20/24 functions ma |
| asm/overlay_104.s | 9 | 668 |  |   |
| asm/unk_02055BF0_data.s | 0 | 0 | yes | ext-data-section-split Data-only: 3 external const fn-ptr arrays (sMapEnterRoutines, sMapExitRoutines, _020FC76C) referenced only by already-ma |
| asm/overlay_12_battle_command.s | 0 | 0 | yes |   |

## Matched files (asm retained) (609)

| file | functions | insn lines | data-only | notes |
|---|---|---|---|---|
| asm/overlay_96.s | 880 | 0 |  | hgify |
| asm/overlay_07.s | 782 | 0 |  | hgify |
| asm/overlay_45_thumb.s | 535 | 0 |  | hgify |
| asm/overlay_40.s | 491 | 0 |  | hgify |
| asm/overlay_70.s | 489 | 0 |  | hgify |
| asm/overlay_112.s | 481 | 0 |  | hgify |
| asm/overlay_74_thumb.s | 442 | 0 |  | hgify |
| asm/overlay_02_02248728.s | 364 | 14752 |  | retained_asm |
| asm/overlay_85.s | 251 | 0 |  | hgify |
| asm/overlay_102.s | 247 | 0 |  | hgify |
| asm/overlay_08.s | 245 | 0 |  | hgify |
| asm/overlay_91.s | 235 | 0 |  | hgify |
| asm/overlay_73.s | 202 | 0 |  | hgify |
| asm/overlay_71.s | 200 | 0 |  | hgify |
| asm/overlay_80_0222BDF4.s | 199 | 0 |  | hgify |
| asm/overlay_14_021E5900.s | 196 | 0 |  | hgify |
| asm/overlay_18_021F0918.s | 193 | 0 |  | hgify |
| asm/overlay_12_battle_controller_opponent.s | 184 | 0 |  | hgify |
| asm/overlay_15.s | 182 | 0 |  | hgify |
| asm/overlay_81.s | 176 | 0 |  | hgify |
| asm/overlay_49_0225A154.s | 157 | 0 |  | hgify |
| asm/overlay_59.s | 154 | 0 |  | hgify |
| asm/overlay_43.s | 150 | 0 |  | hgify |
| asm/unk_02062108.s | 147 | 0 |  | hgify |
| asm/overlay_72.s | 145 | 0 |  | hgify |
| asm/overlay_90.s | 139 | 0 |  | hgify |
| asm/overlay_99.s | 135 | 0 |  | hgify |
| asm/overlay_57.s | 133 | 0 |  | hgify |
| asm/overlay_48.s | 129 | 0 |  | hgify |
| asm/overlay_01_021F944C.s | 128 | 0 |  | hgify |
| asm/overlay_10_trainer_ai.s | 127 | 0 |  | hgify |
| asm/overlay_14_021F2490.s | 121 | 0 |  | hgify |
| asm/overlay_103.s | 115 | 0 |  | hgify |
| asm/overlay_92.s | 113 | 0 |  | hgify |
| asm/overlay_83_0223DD60.s | 111 | 0 |  | hgify |
| asm/overlay_89.s | 108 | 0 |  | hgify |
| asm/unk_0201010C.s | 100 | 0 |  | hgify |
| asm/overlay_65.s | 96 | 0 |  | hgify |
| asm/unk_02004A44.s | 95 | 1764 |  | harness |
| asm/overlay_39_thumb.s | 94 | 0 |  | hgify |
| asm/overlay_93_thumb_2.s | 94 | 0 |  | hgify |
| asm/overlay_75.s | 93 | 0 |  | hgify |
| asm/unk_020632B0.s | 88 | 0 |  | hgify |
| asm/overlay_01_021EB1E8.s | 88 | 0 |  | hgify |
| asm/overlay_49_022655E0.s | 88 | 0 |  | hgify |
| asm/overlay_27.s | 87 | 0 |  | hgify |
| asm/overlay_87.s | 87 | 0 |  | hgify |
| asm/unk_02088288.s | 86 | 0 |  | hgify |
| asm/overlay_83_02243D7C.s | 85 | 0 |  | hgify |
| asm/overlay_00_thumb.s | 84 | 0 |  | hgify |
| asm/overlay_05.s | 84 | 0 |  | hgify |
| asm/overlay_12_battle_controller.s | 83 | 0 |  | hgify |
| asm/unk_02035900.s | 82 | 0 |  | hgify |
| asm/overlay_01_021F1AFC.s | 82 | 0 |  | hgify |
| asm/unk_02061284.s | 81 | 0 |  | hgify |
| asm/overlay_68.s | 81 | 0 |  | hgify |
| asm/overlay_108.s | 81 | 0 |  | hgify |
| asm/overlay_01_021EFB38.s | 79 | 0 |  | hgify |
| asm/overlay_14_021EAF08.s | 78 | 0 |  | hgify |
| asm/unk_02032844.s | 75 | 2017 |  | harness |
| asm/overlay_86.s | 75 | 0 |  | hgify |
| asm/overlay_106.s | 74 | 0 |  | hgify |
| asm/overlay_01_021F72DC.s | 73 | 0 |  | hgify |
| asm/overlay_109.s | 73 | 0 |  | hgify |
| asm/unk_02030A98.s | 71 | 1383 |  | harness |
| asm/overlay_49_02258800.s | 69 | 0 |  | hgify |
| asm/overlay_93_thumb_1.s | 69 | 0 |  | hgify |
| asm/unk_02023694.s | 68 | 1608 |  | harness |
| asm/overlay_18_021EE35C.s | 67 | 0 |  | hgify |
| asm/overlay_01_021F4704.s | 65 | 0 |  | hgify |
| asm/overlay_37.s | 65 | 0 |  | hgify |
| asm/overlay_14_021F6628.s | 64 | 0 |  | hgify |
| asm/overlay_82.s | 64 | 0 |  | hgify |
| asm/unk_0205CB48.s | 63 | 0 |  | hgify |
| asm/unk_0205FD20.s | 62 | 0 |  | hgify |
| asm/overlay_49_0225EEAC.s | 62 | 0 |  | hgify |
| asm/unk_02016EDC.s | 61 | 0 |  | hgify |
| asm/unk_0202B614.s | 61 | 1125 |  | retained_asm |
| asm/overlay_49_0225D6AC.s | 61 | 0 |  | hgify |
| asm/overlay_108_021E8850.s | 61 | 0 |  | hgify |
| asm/overlay_01_021F1348.s | 60 | 0 |  | hgify |
| asm/unk_02014DA0.s | 59 | 0 |  | hgify |
| asm/overlay_41_02245EA0.s | 59 | 0 |  | hgify |
| asm/overlay_49_0225CB50.s | 58 | 0 |  | hgify |
| asm/unk_02058AEC.s | 57 | 0 |  | hgify |
| asm/unk_02034B0C.s | 56 | 1530 |  | harness |
| asm/overlay_95.s | 56 | 0 |  | hgify |
| asm/overlay_80_0222AEF8.s | 54 | 0 |  | hgify |
| asm/overlay_80_022340E8.s | 53 | 0 |  | hgify |
| asm/unk_02056D7C.s | 52 | 0 |  | hgify |
| asm/overlay_18_021F6AB0.s | 52 | 0 |  | hgify |
| asm/overlay_47.s | 52 | 0 |  | hgify |
| asm/unk_02058034.s | 51 | 0 |  | hgify |
| asm/unk_020932E0.s | 51 | 0 |  | hgify |
| asm/unk_02005D10.s | 50 | 1584 |  | harness |
| asm/overlay_28.s | 50 | 0 |  | hgify |
| asm/overlay_88.s | 50 | 0 |  | hgify |
| asm/unk_020658D4.s | 49 | 0 |  | hgify |
| asm/overlay_111.s | 49 | 0 |  | hgify |
| asm/unk_020689C8.s | 48 | 429 |  | harness |
| asm/overlay_01_021EDAFC.s | 47 | 0 |  | hgify |
| asm/overlay_98.s | 47 | 1310 |  | harness |
| asm/overlay_113.s | 47 | 0 |  | hgify |
| asm/unk_02074E5C.s | 46 | 849 |  | retained_asm |
| asm/overlay_41_02248400.s | 46 | 1253 |  | harness |
| asm/overlay_49_022595CC.s | 45 | 0 |  | hgify |
| asm/unk_02033AE0.s | 44 | 959 |  | harness |
| asm/overlay_31.s | 44 | 0 |  | hgify |
| asm/overlay_49_02267F94.s | 43 | 0 |  | hgify |
| asm/overlay_41_02247828.s | 42 | 0 |  | hgify |
| asm/overlay_41_02249A40.s | 42 | 0 |  | hgify |
| asm/overlay_trainer_card_main.s | 42 | 0 |  | hgify |
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
| asm/overlay_01_021F8D80.s | 38 | 727 |  | harness |
| asm/overlay_18_021F8AB8.s | 38 | 1357 |  | harness |
| asm/overlay_49_022649F4.s | 38 | 0 |  | hgify |
| asm/overlay_01_021FC66C.s | 37 | 733 |  | harness |
| asm/overlay_01_022053EC.s | 37 | 0 |  | hgify |
| asm/overlay_14_021EE26C.s | 37 | 0 |  | hgify |
| asm/overlay_41_0224A5A4.s | 37 | 0 |  | hgify |
| asm/overlay_97.s | 37 | 0 |  | hgify |
| asm/unk_0208B1AC.s | 36 | 0 |  | hgify |
| asm/overlay_32.s | 36 | 1354 |  | harness |
| asm/overlay_34.s | 36 | 1981 |  | harness |
| asm/unk_02031B0C.s | 35 | 0 |  | hgify |
| asm/overlay_41_02246B34.s | 35 | 0 |  | hgify |
| asm/overlay_120.s | 35 | 0 |  | hgify |
| asm/overlay_29.s | 34 | 1335 |  | harness |
| asm/overlay_14_021F0A80.s | 33 | 0 |  | hgify |
| asm/unk_0208C3E4.s | 32 | 0 |  | hgify |
| asm/overlay_01_021FB878.s | 32 | 0 |  | hgify |
| asm/overlay_64.s | 32 | 0 |  | hgify |
| asm/overlay_69.s | 32 | 0 |  | hgify |
| asm/unk_0200FA24.s | 31 | 0 |  | hgify |
| asm/unk_02096C88.s | 31 | 400 |  | retained_asm |
| asm/overlay_01_021F6830.s | 31 | 524 |  | harness |
| asm/overlay_14_021F58B8.s | 30 | 1558 |  | harness |
| asm/overlay_80_0223AC24.s | 30 | 0 |  | hgify |
| asm/unk_02034354.s | 29 | 0 |  | hgify |
| asm/overlay_01_021E90C0.s | 29 | 0 |  | hgify |
| asm/overlay_01_022001E4.s | 28 | 514 |  | harness |
| asm/overlay_14_021EFDE4.s | 28 | 0 |  | hgify |
| asm/overlay_115.s | 28 | 0 |  | hgify |
| asm/overlay_12_022378C0.s | 27 | 0 |  | hgify |
| asm/overlay_14_021F4B90.s | 27 | 1474 |  | harness |
| asm/overlay_56.s | 27 | 0 |  | hgify |
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
| asm/unk_020957B0.s | 20 | 0 |  | hgify |
| asm/frontier.s | 20 | 319 |  | harness |
| asm/overlay_80_0223A00C.s | 20 | 1380 |  | harness |
| asm/overlay_83_022479E4.s | 20 | 335 |  | harness |
| asm/unk_02014A08.s | 19 | 395 |  | harness |
| asm/unk_0202C730.s | 19 | 245 |  | harness |
| asm/unk_020379A0.s | 19 | 341 |  | harness |
| asm/unk_020755E8.s | 19 | 0 |  | hgify |
| asm/unk_0208F658.s | 19 | 188 |  | harness |
| asm/overlay_80_0222ACA0.s | 19 | 235 |  | harness |
| asm/unk_02012DD8.s | 18 | 0 |  | hgify |
| asm/unk_0203A3B0.s | 18 | 0 |  | hgify |
| asm/unk_02087284.s | 18 | 901 |  | harness |
| asm/overlay_01_022031C0.s | 18 | 912 |  | harness |
| asm/overlay_14_021F1808.s | 18 | 0 |  | hgify |
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
| asm/overlay_105.s | 6 | 0 |  | hgify |
| asm/unk_02087E70.s | 5 | 142 |  | harness |
| asm/overlay_01_021FAC44.s | 5 | 97 |  | harness |
| asm/overlay_49_02262DB8.s | 5 | 0 |  | hgify |
| asm/overlay_80_022357B4.s | 5 | 0 |  | hgify |
| asm/unk_02017FAC.s | 4 | 60 |  | harness |
| asm/unk_0201F990.s | 4 | 171 |  | harness |
| asm/unk_020977CC.s | 4 | 195 |  | harness |
| asm/unk_020979A8.s | 4 | 191 |  | harness |
| asm/unk_02097BE0.s | 4 | 144 |  | harness |
| asm/overlay_01_021F3378.s | 4 | 276 |  | harness |
| asm/overlay_80_02239AF8.s | 4 | 107 |  | harness |
| asm/overlay_80_02239BF0.s | 4 | 173 |  | harness |
| asm/overlay_83_02242FE8.s | 4 | 0 |  | hgify |
| asm/overlay_116.s | 4 | 0 |  | hgify |
| asm/unk_0206793C.s | 3 | 117 |  | harness |
| asm/unk_02092B04.s | 3 | 73 |  | harness |
| asm/unk_020961D8.s | 3 | 129 |  | harness |
| asm/unk_02097B78.s | 3 | 43 |  | harness |
| asm/overlay_01_021F4464.s | 3 | 0 |  | hgify |
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
| asm/overlay_96_q1000.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1001.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1002.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1003.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1004.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1005.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1006.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1008.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1010.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1012.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1014.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1015.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1017.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1018.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1019.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1021.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1022.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1024.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1025.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1026.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1028.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1030.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1031.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1032.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1033.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1034.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1036.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1037.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1039.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1040.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1041.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1043.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1044.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1046.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1047.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1048.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1049.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1050.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1051.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1052.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1053.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1054.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1055.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1056.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1057.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1058.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1059.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1060.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1061.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1062.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1063.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1065.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1066.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1067.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1068.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1069.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1070.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1072.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1073.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1074.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1075.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1077.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1078.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1079.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1080.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1081.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1082.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1084.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1085.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1086.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1087.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1088.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1089.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1090.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1091.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1092.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1093.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1095.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1096.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1098.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1100.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1101.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1102.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1103.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1104.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1105.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1107.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1108.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1109.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1111.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1113.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1114.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1115.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1116.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1118.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1119.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1120.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1121.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1122.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1123.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1124.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1125.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1126.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1127.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1128.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1129.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1130.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1131.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1132.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1134.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1135.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1137.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1138.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1139.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1140.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1141.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1142.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1143.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1145.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1146.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1147.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1149.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1150.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1151.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1152.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1153.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1154.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1155.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1156.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1158.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1160.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1162.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1164.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1165.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1166.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1168.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1169.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1170.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1171.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1173.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1177.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1178.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1180.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1181.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1182.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1183.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1185.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1186.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1187.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1188.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1189.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1190.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1191.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1192.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1193.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1194.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1195.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1196.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1197.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1198.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1199.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1200.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1201.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1202.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1204.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1206.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1207.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1208.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1209.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1210.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1212.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1214.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1216.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1218.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1219.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1220.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1221.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1222.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1223.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1224.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1225.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1226.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1227.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1228.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1229.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1230.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1231.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1232.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1233.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1234.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1235.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1236.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1237.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1238.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1239.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1240.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1241.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1243.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1244.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1245.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1246.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1247.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1248.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1249.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1250.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1251.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1252.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1253.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1254.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1256.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1257.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1258.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1259.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1261.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1262.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1263.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1264.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1265.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1266.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1267.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1268.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1270.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1271.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1273.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1274.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1275.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1277.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1279.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1280.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1281.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1283.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1285.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1286.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1287.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1288.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1289.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1290.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1291.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1292.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1294.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1296.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1297.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1298.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1300.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1302.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1303.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1304.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1305.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1306.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1308.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1309.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1311.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1312.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1313.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1314.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1316.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1317.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1318.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1319.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1321.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1322.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1323.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1324.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1326.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1328.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1329.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1330.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1332.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1333.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1335.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1337.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1338.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1339.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1340.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1341.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1342.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1343.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1344.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1346.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1348.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1349.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1351.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1352.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1354.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1355.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1356.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1357.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1358.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1359.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1360.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1361.s | 1 | 0 |  | hgify |
| asm/overlay_96_q1362.s | 1 | 0 |  | hgify |
| asm/overlay_114.s | 1 | 0 |  | hgify |
| asm/overlay_118.s | 1 | 251 |  | harness |
| asm/unk_data_020FD978.s | 0 | 0 | yes | harness |
| asm/overlay_01_data_02208BFC.s | 0 | 0 | yes | retained_asm |
| asm/battle_arcade_game_board_data.s | 0 | 0 | yes | harness |
| asm/battle_arcade_game_board_data2.s | 0 | 0 | yes | split_tu |

## Pending files (247)

| file | functions | insn lines | data-only | notes |
|---|---|---|---|---|
| asm/overlay_96.s | 159 | 31249 |  |  |
| asm/nitrocrypto.s | 67 | 4245 |  |  |
| asm/overlay_40.s | 67 | 12753 |  |  |
| asm/overlay_74_thumb.s | 53 | 7887 |  |  |
| asm/overlay_112.s | 41 | 5381 |  |  |
| asm/overlay_12_battle_controller_opponent.s | 32 | 9662 |  |  |
| asm/overlay_07.s | 30 | 4795 |  |  |
| asm/overlay_70.s | 30 | 4278 |  |  |
| asm/unk_0201010C.s | 27 | 1597 |  |  |
| asm/overlay_18_021F0918.s | 24 | 2081 |  |  |
| asm/overlay_08.s | 21 | 1883 |  |  |
| asm/overlay_15.s | 21 | 2550 |  |  |
| asm/overlay_81.s | 21 | 3395 |  |  |
| asm/overlay_43.s | 19 | 2261 |  |  |
| asm/overlay_92.s | 19 | 6170 |  |  |
| asm/overlay_14_021E5900.s | 18 | 2220 |  |  |
| asm/overlay_57.s | 16 | 2057 |  |  |
| asm/overlay_90.s | 14 | 1725 |  |  |
| asm/overlay_99.s | 14 | 971 |  |  |
| asm/overlay_82.s | 13 | 1368 |  |  |
| asm/overlay_89.s | 12 | 1759 |  |  |
| asm/unk_02088288.s | 11 | 1366 |  |  |
| asm/overlay_71.s | 11 | 719 |  |  |
| asm/overlay_83_0223DD60.s | 11 | 3433 |  |  |
| asm/overlay_65.s | 10 | 1869 |  |  |
| asm/overlay_87.s | 10 | 1323 |  |  |
| asm/unk_020932E0.s | 9 | 1307 |  |  |
| asm/overlay_27.s | 9 | 1430 |  |  |
| asm/overlay_45_thumb.s | 9 | 747 |  |  |
| asm/overlay_59.s | 9 | 1070 |  |  |
| asm/overlay_72.s | 9 | 1421 |  |  |
| asm/overlay_102.s | 9 | 654 |  |  |
| asm/unk_02035900.s | 8 | 1165 |  |  |
| asm/overlay_trainer_card_main.s | 8 | 1701 |  |  |
| asm/overlay_73.s | 8 | 956 |  |  |
| asm/overlay_93_thumb_1.s | 8 | 1493 |  |  |
| asm/overlay_01_021F4704.s | 7 | 1197 |  |  |
| asm/overlay_10_trainer_ai.s | 7 | 1633 |  |  |
| asm/overlay_14_021EAF08.s | 7 | 2308 |  |  |
| asm/overlay_14_021F2490.s | 7 | 457 |  |  |
| asm/overlay_18_021EE35C.s | 7 | 1069 |  |  |
| asm/overlay_75.s | 7 | 1272 |  |  |
| asm/overlay_91.s | 7 | 1065 |  |  |
| asm/overlay_108.s | 7 | 881 |  |  |
| asm/overlay_119.s | 6 | 2588 |  |  |
| asm/unk_020210A0.s | 6 | 297 |  |  |
| asm/overlay_01_021E90C0.s | 6 | 908 |  |  |
| asm/overlay_01_021EFB38.s | 6 | 225 |  |  |
| asm/overlay_12_022378C0.s | 6 | 2921 |  |  |
| asm/overlay_28.s | 6 | 668 |  |  |
| asm/overlay_93_thumb_2.s | 6 | 907 |  |  |
| asm/overlay_95.s | 6 | 767 |  |  |
| asm/overlay_109.s | 6 | 326 |  |  |
| asm/overlay_96_q1157.s | 5 | 1000 |  |  |
| asm/unk_020632B0.s | 5 | 722 |  |  |
| asm/unk_0208B1AC.s | 5 | 399 |  |  |
| asm/overlay_00_thumb.s | 5 | 488 |  |  |
| asm/overlay_69.s | 5 | 1097 |  |  |
| asm/overlay_83_02243D7C.s | 5 | 1661 |  |  |
| asm/overlay_86.s | 5 | 387 |  |  |
| asm/overlay_108_021E8850.s | 5 | 269 |  |  |
| asm/unk_02014DA0.s | 4 | 58 |  |  |
| asm/unk_0201956C.s | 4 | 312 |  |  |
| asm/unk_02031B0C.s | 4 | 629 |  |  |
| asm/overlay_01_021EB1E8.s | 4 | 436 |  |  |
| asm/overlay_41_02245EA0.s | 4 | 207 |  |  |
| asm/overlay_47.s | 4 | 740 |  |  |
| asm/overlay_49_0225EEAC.s | 4 | 1508 |  |  |
| asm/overlay_56.s | 4 | 698 |  |  |
| asm/overlay_68.s | 4 | 493 |  |  |
| asm/overlay_80_0222BDF4.s | 4 | 357 |  |  |
| asm/overlay_85.s | 4 | 414 |  |  |
| asm/overlay_120.s | 4 | 780 |  |  |
| asm/overlay_96_q1035.s | 3 | 153 |  |  |
| asm/overlay_96_q1045.s | 3 | 118 |  |  |
| asm/overlay_96_q1136.s | 3 | 171 |  |  |
| asm/overlay_96_q1159.s | 3 | 1227 |  |  |
| asm/overlay_96_q1161.s | 3 | 450 |  |  |
| asm/overlay_96_q1184.s | 3 | 177 |  |  |
| asm/overlay_96_q1260.s | 3 | 262 |  |  |
| asm/overlay_96_q1325.s | 3 | 88 |  |  |
| asm/unk_02054648.s | 3 | 280 |  |  |
| asm/unk_02056D7C.s | 3 | 185 |  |  |
| asm/unk_02058AEC.s | 3 | 1065 |  |  |
| asm/unk_0205CB48.s | 3 | 264 |  |  |
| asm/unk_02062108.s | 3 | 165 |  |  |
| asm/unk_020755E8.s | 3 | 2224 |  |  |
| asm/unk_0208C3E4.s | 3 | 578 |  |  |
| asm/overlay_01_021F72DC.s | 3 | 317 |  |  |
| asm/overlay_01_021F944C.s | 3 | 281 |  |  |
| asm/overlay_01_022053EC.s | 3 | 325 |  |  |
| asm/overlay_05.s | 3 | 406 |  |  |
| asm/overlay_14_021F1808.s | 3 | 268 |  |  |
| asm/overlay_14_021F6628.s | 3 | 444 |  |  |
| asm/overlay_39_thumb.s | 3 | 536 |  |  |
| asm/overlay_48.s | 3 | 331 |  |  |
| asm/overlay_trainer_card_signature.s | 3 | 254 |  |  |
| asm/overlay_64.s | 3 | 1079 |  |  |
| asm/overlay_80_0222FD08.s | 3 | 369 |  |  |
| asm/overlay_83_02242FE8.s | 3 | 1133 |  |  |
| asm/overlay_103.s | 3 | 117 |  |  |
| asm/overlay_115.s | 3 | 1583 |  |  |
| asm/overlay_96_q1013.s | 2 | 211 |  |  |
| asm/overlay_96_q1029.s | 2 | 62 |  |  |
| asm/overlay_96_q1064.s | 2 | 187 |  |  |
| asm/overlay_96_q1083.s | 2 | 76 |  |  |
| asm/overlay_96_q1106.s | 2 | 130 |  |  |
| asm/overlay_96_q1112.s | 2 | 338 |  |  |
| asm/overlay_96_q1117.s | 2 | 263 |  |  |
| asm/overlay_96_q1148.s | 2 | 1102 |  |  |
| asm/overlay_96_q1167.s | 2 | 29 |  |  |
| asm/overlay_96_q1176.s | 2 | 114 |  |  |
| asm/overlay_96_q1269.s | 2 | 1186 |  |  |
| asm/overlay_96_q1295.s | 2 | 309 |  |  |
| asm/overlay_96_q1345.s | 2 | 364 |  |  |
| asm/unk_0200FA24.s | 2 | 149 |  |  |
| asm/unk_02012DD8.s | 2 | 38 |  |  |
| asm/unk_02025C44.s | 2 | 262 |  |  |
| asm/unk_0203A3B0.s | 2 | 331 |  |  |
| asm/unk_02058034.s | 2 | 58 |  |  |
| asm/unk_0205A44C.s | 2 | 266 |  |  |
| asm/unk_0205AC88.s | 2 | 29 |  |  |
| asm/unk_02061284.s | 2 | 158 |  |  |
| asm/unk_020957B0.s | 2 | 123 |  |  |
| asm/overlay_01_021EDAFC.s | 2 | 156 |  |  |
| asm/overlay_01_021F4464.s | 2 | 99 |  |  |
| asm/overlay_01_021FB878.s | 2 | 307 |  |  |
| asm/overlay_02_02245B80.s | 2 | 161 |  |  |
| asm/overlay_14_021EEF34.s | 2 | 653 |  |  |
| asm/overlay_14_021EFDE4.s | 2 | 243 |  |  |
| asm/overlay_14_021F0A80.s | 2 | 136 |  |  |
| asm/overlay_31.s | 2 | 178 |  |  |
| asm/overlay_33.s | 2 | 90 |  |  |
| asm/overlay_37.s | 2 | 153 |  |  |
| asm/overlay_38_thumb.s | 2 | 366 |  |  |
| asm/overlay_41_02246B34.s | 2 | 166 |  |  |
| asm/overlay_46.s | 2 | 607 |  |  |
| asm/overlay_49_0225A154.s | 2 | 631 |  |  |
| asm/overlay_49_022655E0.s | 2 | 565 |  |  |
| asm/overlay_80_022310C4.s | 2 | 379 |  |  |
| asm/overlay_80_022324C4.s | 2 | 393 |  |  |
| asm/overlay_80_022340E8.s | 2 | 379 |  |  |
| asm/overlay_80_0223AC24.s | 2 | 514 |  |  |
| asm/overlay_97.s | 2 | 198 |  |  |
| asm/overlay_106.s | 2 | 99 |  |  |
| asm/overlay_113.s | 2 | 111 |  |  |
| asm/overlay_117.s | 2 | 1086 |  |  |
| asm/overlay_96_q1007.s | 1 | 36 |  |  |
| asm/overlay_96_q1009.s | 1 | 20 |  |  |
| asm/overlay_96_q1011.s | 1 | 409 |  |  |
| asm/overlay_96_q1016.s | 1 | 294 |  |  |
| asm/overlay_96_q1020.s | 1 | 19 |  |  |
| asm/overlay_96_q1023.s | 1 | 39 |  |  |
| asm/overlay_96_q1027.s | 1 | 51 |  |  |
| asm/overlay_96_q1038.s | 1 | 30 |  |  |
| asm/overlay_96_q1042.s | 1 | 90 |  |  |
| asm/overlay_96_q1071.s | 1 | 395 |  |  |
| asm/overlay_96_q1076.s | 1 | 200 |  |  |
| asm/overlay_96_q1094.s | 1 | 66 |  |  |
| asm/overlay_96_q1097.s | 1 | 160 |  |  |
| asm/overlay_96_q1099.s | 1 | 46 |  |  |
| asm/overlay_96_q1110.s | 1 | 273 |  |  |
| asm/overlay_96_q1133.s | 1 | 43 |  |  |
| asm/overlay_96_q1144.s | 1 | 40 |  |  |
| asm/overlay_96_q1163.s | 1 | 89 |  |  |
| asm/overlay_96_q1172.s | 1 | 717 |  |  |
| asm/overlay_96_q1174.s | 1 | 146 |  |  |
| asm/overlay_96_q1175.s | 1 | 45 |  |  |
| asm/overlay_96_q1179.s | 1 | 78 |  |  |
| asm/overlay_96_q1203.s | 1 | 75 |  |  |
| asm/overlay_96_q1205.s | 1 | 21 |  |  |
| asm/overlay_96_q1211.s | 1 | 183 |  |  |
| asm/overlay_96_q1213.s | 1 | 198 |  |  |
| asm/overlay_96_q1215.s | 1 | 346 |  |  |
| asm/overlay_96_q1217.s | 1 | 139 |  |  |
| asm/overlay_96_q1242.s | 1 | 29 |  |  |
| asm/overlay_96_q1255.s | 1 | 256 |  |  |
| asm/overlay_96_q1272.s | 1 | 28 |  |  |
| asm/overlay_96_q1276.s | 1 | 264 |  |  |
| asm/overlay_96_q1278.s | 1 | 255 |  |  |
| asm/overlay_96_q1282.s | 1 | 156 |  |  |
| asm/overlay_96_q1284.s | 1 | 266 |  |  |
| asm/overlay_96_q1293.s | 1 | 30 |  |  |
| asm/overlay_96_q1299.s | 1 | 309 |  |  |
| asm/overlay_96_q1301.s | 1 | 43 |  |  |
| asm/overlay_96_q1307.s | 1 | 48 |  |  |
| asm/overlay_96_q1310.s | 1 | 24 |  |  |
| asm/overlay_96_q1315.s | 1 | 48 |  |  |
| asm/overlay_96_q1320.s | 1 | 54 |  |  |
| asm/overlay_96_q1327.s | 1 | 94 |  |  |
| asm/overlay_96_q1331.s | 1 | 173 |  |  |
| asm/overlay_96_q1334.s | 1 | 43 |  |  |
| asm/overlay_96_q1336.s | 1 | 28 |  |  |
| asm/overlay_96_q1347.s | 1 | 166 |  |  |
| asm/overlay_96_q1350.s | 1 | 11 |  |  |
| asm/overlay_96_q1353.s | 1 | 16 |  |  |
| asm/render_window.s | 1 | 115 |  |  |
| asm/unk_02016EDC.s | 1 | 139 |  |  |
| asm/unk_02020B8C.s | 1 | 42 |  |  |
| asm/unk_02034354.s | 1 | 101 |  |  |
| asm/unk_0205FD20.s | 1 | 117 |  |  |
| asm/unk_020658D4.s | 1 | 141 |  |  |
| asm/unk_0206979C.s | 1 | 48 |  |  |
| asm/unk_020850F4.s | 1 | 140 |  |  |
| asm/unk_02087FD4.s | 1 | 15 |  |  |
| asm/overlay_01_021EABA8.s | 1 | 98 |  |  |
| asm/overlay_01_021F1348.s | 1 | 11 |  |  |
| asm/overlay_01_021F1AFC.s | 1 | 42 |  |  |
| asm/overlay_01_021F3F50.s | 1 | 99 |  |  |
| asm/overlay_01_021FE780.s | 1 | 57 |  |  |
| asm/overlay_12_battle_controller.s | 1 | 241 |  |  |
| asm/overlay_12_02265E28.s | 1 | 116 |  |  |
| asm/overlay_14_021EE26C.s | 1 | 355 |  |  |
| asm/overlay_18_021F6AB0.s | 1 | 18 |  |  |
| asm/overlay_41_02248ED4.s | 1 | 81 |  |  |
| asm/overlay_41_02249A40.s | 1 | 37 |  |  |
| asm/overlay_41_0224A5A4.s | 1 | 34 |  |  |
| asm/overlay_49_022595CC.s | 1 | 266 |  |  |
| asm/overlay_49_02261FC0.s | 1 | 1059 |  |  |
| asm/overlay_49_02262DB8.s | 1 | 1178 |  |  |
| asm/overlay_49_02263B74.s | 1 | 952 |  |  |
| asm/overlay_67.s | 1 | 80 |  |  |
| asm/overlay_80_0222F608.s | 1 | 401 |  |  |
| asm/overlay_80_02231BF8.s | 1 | 390 |  |  |
| asm/overlay_80_02237A70.s | 1 | 192 |  |  |
| asm/overlay_105.s | 1 | 144 |  |  |
| asm/overlay_111.s | 1 | 118 |  |  |
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
| asm/overlay_49_02258800.s | 0 | 0 | yes |  |
| asm/overlay_49_0225CB50.s | 0 | 0 | yes |  |
| asm/overlay_49_0225D6AC.s | 0 | 0 | yes |  |
| asm/overlay_49_022649F4.s | 0 | 0 | yes |  |
| asm/overlay_49_02267F94.s | 0 | 0 | yes |  |
| asm/overlay_49_02268D94.s | 0 | 0 | yes |  |
| asm/overlay_80_02238034.s | 0 | 0 | yes |  |
| asm/overlay_80_02239D74.s | 0 | 0 | yes |  |
| asm/overlay_88.s | 0 | 0 | yes |  |

