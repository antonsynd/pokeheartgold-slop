# Decomp Coverage Ledger

*Generated 2026-10-12T14:12:39Z by `coverage_ledger.py` — do not hand-edit; regenerate after each decomp.*

Tracked functions (files with retained asm): **19292** — matched 15735, pending 3524, plus 20 matched-but-blocked inside failed files.

| status | files | functions | insn lines | ~text bytes |
|---|---|---|---|---|
| matched | 439 | 15735 | 87424 | 195924 |
| blocked | 5 | 33 | 1328 | 2942 |
| pending | 224 | 3524 | 402401 | 899600 |
| upstream | 397 | 0 | 0 | 0 |

## Blockers (value-ordered: fix what gates the most)

| id | blocks | gates pending files | description |
|---|---|---|---|
| ext-data-section-split | 0 | 3 | Data-only files exporting multiple EXTERNAL (.public) const arrays: MWCC (all modes — with/without -ipa file, pragma or not; T0.3 experiments 2026-07-02 disproved the earlier mwldarm-reorder theory) emits file-scope external consts SIZE-ASCENDING with a deterministic equal-size scramble, so a retail layout that is not size-ascending cannot come from one TU in source order. objdiff cannot see section order — verify these files ONLY with chiri pkg -- compare. |
| ipa-shared-headers | 0 | 0 | MWCC -ipa file: changing a signature in a shared header cascades codegen changes into every already-matched caller in other compilation units. Affects only files that must ADD or CHANGE declarations in a frozen header — call-only consumers of the exported APIs are NOT gated (proven by patterns 'ipa-blocked-files-can-call-sound-fns-without-cascade' and 'false-ipa-gate-shared-imports'). Diagnostic before blaming IPA for any mismatch: recompile the TU without '-ipa file' and objdiff (pattern ipa-file-flag-effects-and-removal-nonviability). |
| ipa-cse-literal-pool | 1 | 0 | MWCC -ipa file caches repeated literal-pool addresses/large offsets in callee-saved registers across calls where retail reloads them (or vice versa). A codegen-shape problem, not a header problem — split from ipa-shared-headers 2026-07-01, where this file's ubiquitous exports (BeginNormalPaletteFade family, imported by ~84 pending .inc files) badly inflated the gate count. |
| param-copyprop-cmp | 0 | 0 | MWCC copy-propagates parameter copies: 'adds r4, r0, #0; cmp r4, #N' at function entry cannot be produced from pure C (MWCC substitutes back to r0; the shape only arises for saved return values after a bl). Affected functions need the NONMATCHING inline-asm fallback — routine, not a wall (proven: unk_0200B150 re-landed 2026-07-02 via ROADMAP T0.2, full ROM SHA1 OK). Entry-idiom scan (asmscan) finds the remaining sites in pending files: overlay_102 (6), unk_02077678 (4), overlay_96 (3), overlay_48 (2), overlay_112, unk_020517A4, unk_02058034 (1 each). Gated files carry the affected function names in triage_report copyprop_funcs. (unk_02004A44 sub_020058F4 was a false positive -- saved return value after a bl; matched in plain C 2026-10-06.) |
| objdiff-false-positives | 0 | 0 | RESOLVED. objdiff.py had a critical bug: the byte extraction regex did not match MWCC's ARM Thumb objdump format (packed hex like 'b418' vs expected space-separated 'b4 18'). It extracted 0 bytes for every function, so 0==0 always reported MATCH. 11 decomps accepted via objdiff were not actually byte-matching. Fixed; all 11 non-matching decomps reverted to asm. 2 decomps that truly match (unk_0202DB34, battle_arcade_game_board_data) kept. |

## Blocked files (5)

| file | functions | insn lines | data-only | notes |
|---|---|---|---|---|
| asm/overlay_01_021FD41C.s | 24 | 660 |  |  20/24 matched; Camera/3D-effect map-object effect (dependent on overlay_01_021F1348 cluster head via local externs). 20/24 functions ma |
| asm/overlay_104.s | 9 | 668 |  |   |
| asm/unk_02055BF0_data.s | 0 | 0 | yes | ext-data-section-split Data-only: 3 external const fn-ptr arrays (sMapEnterRoutines, sMapExitRoutines, _020FC76C) referenced only by already-ma |
| asm/middleware.s | 0 | 0 | yes |  Data-only: 7 NUL-terminated SDK middleware version strings in a custom .version section (single ordered section, each .b |
| asm/overlay_12_battle_command.s | 0 | 0 | yes |   |

## Matched files (asm retained) (439)

| file | functions | insn lines | data-only | notes |
|---|---|---|---|---|
| asm/overlay_07.s | 741 | 0 |  | hgify |
| asm/overlay_96.s | 738 | 0 |  | hgify |
| asm/overlay_45_thumb.s | 522 | 0 |  | hgify |
| asm/overlay_40.s | 426 | 0 |  | hgify |
| asm/overlay_112.s | 407 | 0 |  | hgify |
| asm/overlay_70.s | 387 | 0 |  | hgify |
| asm/overlay_74_thumb.s | 375 | 0 |  | hgify |
| asm/overlay_02_02248728.s | 364 | 14752 |  | retained_asm |
| asm/overlay_08.s | 226 | 0 |  | hgify |
| asm/overlay_91.s | 226 | 0 |  | hgify |
| asm/overlay_85.s | 224 | 0 |  | hgify |
| asm/overlay_102.s | 215 | 0 |  | hgify |
| asm/overlay_80_0222BDF4.s | 190 | 0 |  | hgify |
| asm/overlay_71.s | 167 | 0 |  | hgify |
| asm/overlay_73.s | 164 | 0 |  | hgify |
| asm/overlay_14_021E5900.s | 162 | 0 |  | hgify |
| asm/overlay_49_0225A154.s | 152 | 0 |  | hgify |
| asm/overlay_81.s | 147 | 0 |  | hgify |
| asm/unk_02062108.s | 146 | 0 |  | hgify |
| asm/overlay_12_battle_controller_opponent.s | 146 | 0 |  | hgify |
| asm/overlay_18_021F0918.s | 140 | 0 |  | hgify |
| asm/overlay_15.s | 136 | 0 |  | hgify |
| asm/overlay_10_trainer_ai.s | 127 | 0 |  | hgify |
| asm/overlay_01_021F944C.s | 125 | 0 |  | hgify |
| asm/overlay_72.s | 121 | 0 |  | hgify |
| asm/overlay_48.s | 120 | 0 |  | hgify |
| asm/overlay_90.s | 118 | 0 |  | hgify |
| asm/overlay_43.s | 115 | 0 |  | hgify |
| asm/overlay_59.s | 110 | 0 |  | hgify |
| asm/overlay_57.s | 108 | 0 |  | hgify |
| asm/overlay_99.s | 104 | 0 |  | hgify |
| asm/unk_0201010C.s | 100 | 0 |  | hgify |
| asm/overlay_14_021F2490.s | 100 | 0 |  | hgify |
| asm/overlay_92.s | 100 | 0 |  | hgify |
| asm/overlay_103.s | 97 | 0 |  | hgify |
| asm/unk_02004A44.s | 95 | 1764 |  | harness |
| asm/overlay_13_thumb_2.s | 89 | 0 |  | hgify |
| asm/overlay_93_thumb_2.s | 88 | 0 |  | hgify |
| asm/unk_020632B0.s | 85 | 0 |  | hgify |
| asm/overlay_39_thumb.s | 84 | 0 |  | hgify |
| asm/overlay_83_0223DD60.s | 84 | 0 |  | hgify |
| asm/overlay_89.s | 84 | 0 |  | hgify |
| asm/overlay_12_battle_controller.s | 82 | 0 |  | hgify |
| asm/unk_02061284.s | 80 | 0 |  | hgify |
| asm/overlay_05.s | 79 | 0 |  | hgify |
| asm/overlay_00_thumb.s | 78 | 0 |  | hgify |
| asm/overlay_01_021EB1E8.s | 78 | 0 |  | hgify |
| asm/overlay_65.s | 78 | 0 |  | hgify |
| asm/overlay_01_021F1AFC.s | 77 | 0 |  | hgify |
| asm/overlay_49_022655E0.s | 76 | 0 |  | hgify |
| asm/overlay_87.s | 76 | 0 |  | hgify |
| asm/unk_02032844.s | 75 | 2017 |  | harness |
| asm/unk_02030A98.s | 71 | 1383 |  | harness |
| asm/overlay_01_021EFB38.s | 71 | 0 |  | hgify |
| asm/overlay_75.s | 71 | 0 |  | hgify |
| asm/overlay_83_02243D7C.s | 70 | 0 |  | hgify |
| asm/unk_02023694.s | 68 | 1608 |  | harness |
| asm/overlay_49_02258800.s | 68 | 0 |  | hgify |
| asm/unk_02088288.s | 66 | 0 |  | hgify |
| asm/overlay_14_021EAF08.s | 66 | 0 |  | hgify |
| asm/overlay_27.s | 66 | 0 |  | hgify |
| asm/overlay_68.s | 65 | 0 |  | hgify |
| asm/overlay_106.s | 64 | 0 |  | hgify |
| asm/overlay_108.s | 64 | 0 |  | hgify |
| asm/unk_0202B614.s | 61 | 1125 |  | retained_asm |
| asm/overlay_86.s | 61 | 0 |  | hgify |
| asm/overlay_109.s | 61 | 0 |  | hgify |
| asm/unk_02016EDC.s | 60 | 0 |  | hgify |
| asm/overlay_49_0225EEAC.s | 60 | 0 |  | hgify |
| asm/unk_02035900.s | 59 | 0 |  | hgify |
| asm/overlay_37.s | 59 | 0 |  | hgify |
| asm/overlay_93_thumb_1.s | 59 | 0 |  | hgify |
| asm/overlay_18_021EE35C.s | 58 | 0 |  | hgify |
| asm/overlay_49_0225D6AC.s | 58 | 0 |  | hgify |
| asm/overlay_01_021F1348.s | 57 | 0 |  | hgify |
| asm/overlay_49_0225CB50.s | 57 | 0 |  | hgify |
| asm/unk_02014DA0.s | 56 | 0 |  | hgify |
| asm/unk_02034B0C.s | 56 | 1530 |  | harness |
| asm/overlay_01_021F72DC.s | 56 | 0 |  | hgify |
| asm/overlay_41_02245EA0.s | 55 | 0 |  | hgify |
| asm/overlay_82.s | 55 | 0 |  | hgify |
| asm/unk_0205CB48.s | 54 | 0 |  | hgify |
| asm/unk_0205FD20.s | 54 | 0 |  | hgify |
| asm/overlay_80_0222AEF8.s | 54 | 0 |  | hgify |
| asm/unk_02058AEC.s | 52 | 0 |  | hgify |
| asm/overlay_108_021E8850.s | 52 | 0 |  | hgify |
| asm/overlay_47.s | 51 | 0 |  | hgify |
| asm/overlay_95.s | 51 | 0 |  | hgify |
| asm/unk_02005D10.s | 50 | 1584 |  | harness |
| asm/unk_02058034.s | 50 | 0 |  | hgify |
| asm/overlay_01_021F4704.s | 49 | 0 |  | hgify |
| asm/overlay_80_022340E8.s | 49 | 0 |  | hgify |
| asm/unk_020689C8.s | 48 | 429 |  | harness |
| asm/overlay_14_021F6628.s | 47 | 0 |  | hgify |
| asm/overlay_88.s | 47 | 0 |  | hgify |
| asm/overlay_98.s | 47 | 1310 |  | harness |
| asm/unk_020658D4.s | 46 | 0 |  | hgify |
| asm/unk_02074E5C.s | 46 | 849 |  | retained_asm |
| asm/overlay_41_02248400.s | 46 | 1253 |  | harness |
| asm/overlay_18_021F6AB0.s | 45 | 0 |  | hgify |
| asm/unk_02033AE0.s | 44 | 959 |  | harness |
| asm/overlay_01_021EDAFC.s | 43 | 0 |  | hgify |
| asm/overlay_28.s | 42 | 0 |  | hgify |
| asm/overlay_49_022595CC.s | 42 | 0 |  | hgify |
| asm/unk_02056D7C.s | 41 | 0 |  | hgify |
| asm/overlay_49_02267F94.s | 41 | 0 |  | hgify |
| asm/overlay_111.s | 41 | 0 |  | hgify |
| asm/unk_02013534.s | 40 | 1211 |  | retained_asm |
| asm/unk_0202D230.s | 40 | 807 |  | harness |
| asm/overlay_41_02249A40.s | 40 | 0 |  | hgify |
| asm/frontier_map.s | 40 | 2050 |  | harness |
| asm/unk_0202FBCC.s | 39 | 1695 |  | harness |
| asm/overlay_41_02247828.s | 39 | 0 |  | hgify |
| asm/overlay_83_02246E08.s | 39 | 1339 |  | harness |
| asm/overlay_113.s | 39 | 0 |  | hgify |
| asm/overlay_01_021F8D80.s | 38 | 727 |  | harness |
| asm/overlay_18_021F8AB8.s | 38 | 1357 |  | harness |
| asm/overlay_49_022649F4.s | 38 | 0 |  | hgify |
| asm/render_window.s | 37 | 0 |  | hgify |
| asm/unk_02015DD8.s | 37 | 0 |  | hgify |
| asm/overlay_01_021FC66C.s | 37 | 733 |  | harness |
| asm/overlay_31.s | 36 | 0 |  | hgify |
| asm/overlay_32.s | 36 | 1354 |  | harness |
| asm/overlay_34.s | 36 | 1981 |  | harness |
| asm/overlay_41_02248ED4.s | 36 | 0 |  | hgify |
| asm/overlay_41_0224A5A4.s | 36 | 0 |  | hgify |
| asm/overlay_41_0224B21C.s | 36 | 0 |  | hgify |
| asm/overlay_trainer_card_signature.s | 36 | 0 |  | hgify |
| asm/overlay_02_02245B80.s | 34 | 0 |  | hgify |
| asm/overlay_29.s | 34 | 1335 |  | harness |
| asm/overlay_14_021EE26C.s | 33 | 0 |  | hgify |
| asm/overlay_41_02246B34.s | 33 | 0 |  | hgify |
| asm/overlay_120.s | 33 | 0 |  | hgify |
| asm/unk_020932E0.s | 32 | 0 |  | hgify |
| asm/overlay_01_021FB878.s | 32 | 0 |  | hgify |
| asm/overlay_01_022053EC.s | 32 | 0 |  | hgify |
| asm/overlay_67.s | 32 | 0 |  | hgify |
| asm/unk_02096C88.s | 31 | 400 |  | retained_asm |
| asm/overlay_01_021F6830.s | 31 | 524 |  | harness |
| asm/overlay_trainer_card_main.s | 31 | 0 |  | hgify |
| asm/overlay_14_021F58B8.s | 30 | 1558 |  | harness |
| asm/overlay_80_0223AC24.s | 30 | 0 |  | hgify |
| asm/unk_02034354.s | 29 | 0 |  | hgify |
| asm/unk_0208B1AC.s | 29 | 0 |  | hgify |
| asm/overlay_01_022001E4.s | 28 | 514 |  | harness |
| asm/overlay_64.s | 28 | 0 |  | hgify |
| asm/overlay_14_021F4B90.s | 27 | 1474 |  | harness |
| asm/unk_02018000.s | 26 | 379 |  | harness |
| asm/overlay_14_021F0A80.s | 26 | 0 |  | hgify |
| asm/unk_0200FA24.s | 25 | 0 |  | hgify |
| asm/unk_0202C034.s | 25 | 792 |  | harness |
| asm/overlay_80_02231BF8.s | 25 | 0 |  | hgify |
| asm/overlay_115.s | 25 | 0 |  | hgify |
| asm/unk_0206979C.s | 24 | 0 |  | hgify |
| asm/unk_020863F4.s | 24 | 1701 |  | harness |
| asm/overlay_14_021EFDE4.s | 24 | 0 |  | hgify |
| asm/overlay_69.s | 24 | 0 |  | hgify |
| asm/overlay_97.s | 24 | 0 |  | hgify |
| asm/unk_0205A44C.s | 23 | 0 |  | hgify |
| asm/overlay_01_021FDA14.s | 23 | 863 |  | harness |
| asm/overlay_18_021F7ED4.s | 23 | 1319 |  | harness |
| asm/unk_02066EDC.s | 22 | 784 |  | harness |
| asm/overlay_01_021E90C0.s | 22 | 0 |  | hgify |
| asm/overlay_12_022378C0.s | 22 | 0 |  | hgify |
| asm/unk_02077678.s | 21 | 217 |  | harness |
| asm/unk_0208C3E4.s | 21 | 0 |  | hgify |
| asm/overlay_01_021FC05C.s | 21 | 463 |  | harness |
| asm/overlay_56.s | 21 | 0 |  | hgify |
| asm/overlay_80_02229EE0.s | 21 | 1079 |  | retained_asm |
| asm/overlay_80_022324C4.s | 21 | 0 |  | hgify |
| asm/unk_0202068C.s | 20 | 404 |  | harness |
| asm/frontier.s | 20 | 319 |  | harness |
| asm/overlay_80_0223A00C.s | 20 | 1380 |  | harness |
| asm/overlay_83_022479E4.s | 20 | 335 |  | harness |
| asm/unk_02014A08.s | 19 | 395 |  | harness |
| asm/unk_0202C730.s | 19 | 245 |  | harness |
| asm/unk_020379A0.s | 19 | 341 |  | harness |
| asm/unk_02054648.s | 19 | 0 |  | hgify |
| asm/unk_0208F658.s | 19 | 188 |  | harness |
| asm/overlay_80_0222ACA0.s | 19 | 235 |  | harness |
| asm/unk_02087284.s | 18 | 901 |  | harness |
| asm/overlay_01_022031C0.s | 18 | 912 |  | harness |
| asm/overlay_80_0222F608.s | 18 | 0 |  | hgify |
| asm/overlay_80_022372D8.s | 18 | 870 |  | retained_asm |
| asm/unk_0203A3B0.s | 17 | 0 |  | hgify |
| asm/unk_02085604.s | 17 | 1659 |  | harness |
| asm/unk_02087A78.s | 17 | 425 |  | harness |
| asm/overlay_01_021F6CFC.s | 17 | 632 |  | retained_asm |
| asm/overlay_80_0222FD08.s | 17 | 0 |  | hgify |
| asm/overlay_80_02235900.s | 17 | 737 |  | harness |
| asm/overlay_80_02236B78.s | 17 | 831 |  | retained_asm |
| asm/overlay_93_arm.s | 17 | 854 |  | retained_asm |
| asm/unk_020773AC.s | 16 | 301 |  | harness |
| asm/unk_0208F814.s | 16 | 0 |  | hgify |
| asm/unk_0208FB64.s | 16 | 245 |  | harness |
| asm/unk_02091880.s | 16 | 516 |  | harness |
| asm/overlay_01_021F3F50.s | 16 | 0 |  | hgify |
| asm/overlay_01_021FB04C.s | 16 | 352 |  | harness |
| asm/overlay_01_021FE200.s | 16 | 391 |  | harness |
| asm/overlay_46.s | 16 | 0 |  | hgify |
| asm/overlay_80_02237A70.s | 16 | 0 |  | hgify |
| asm/unk_0205BFF0.s | 15 | 254 |  | harness |
| asm/unk_02096910.s | 15 | 0 |  | hgify |
| asm/overlay_01_021FD1B8.s | 15 | 255 |  | harness |
| asm/overlay_80_02230B8C.s | 15 | 530 |  | harness |
| asm/unk_020755E8.s | 14 | 0 |  | hgify |
| asm/unk_020957B0.s | 14 | 0 |  | hgify |
| asm/model_attributes.s | 14 | 316 |  | retained_asm |
| asm/overlay_49_02268D94.s | 14 | 0 |  | hgify |
| asm/overlay_58.s | 14 | 470 |  | harness |
| asm/frontier_system.s | 14 | 328 |  | harness |
| asm/overlay_80_02238034.s | 14 | 0 |  | hgify |
| asm/unk_02078834.s | 13 | 596 |  | retained_asm |
| asm/overlay_01_021FC4C4.s | 13 | 178 |  | harness |
| asm/overlay_01_021FE590.s | 13 | 211 |  | harness |
| asm/overlay_01_02203A18.s | 13 | 450 |  | retained_asm |
| asm/overlay_80_02236450.s | 13 | 0 |  | hgify |
| asm/unk_0202DB34.s | 12 | 47 |  | harness |
| asm/unk_0203DB6C.s | 12 | 346 |  | harness |
| asm/unk_02067A60.s | 12 | 363 |  | harness |
| asm/unk_02068FC8.s | 12 | 599 |  | harness |
| asm/unk_0208DE40.s | 12 | 762 |  | harness |
| asm/overlay_01_021FB5D4.s | 12 | 291 |  | harness |
| asm/overlay_01_021FCD2C.s | 12 | 156 |  | harness |
| asm/overlay_01_021FEA0C.s | 12 | 0 |  | hgify |
| asm/overlay_01_021FEEEC.s | 12 | 0 |  | hgify |
| asm/overlay_01_022051EC.s | 12 | 219 |  | retained_asm |
| asm/unk_0200B150.s | 11 | 238 |  | harness |
| asm/unk_02031B0C.s | 11 | 0 |  | hgify |
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
| asm/overlay_14_021F1808.s | 10 | 0 |  | hgify |
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
| asm/unk_020210A0.s | 4 | 0 |  | hgify |
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
| asm/overlay_01_021F4464.s | 2 | 0 |  | hgify |
| asm/overlay_01_021F467C.s | 2 | 56 |  | harness |
| asm/overlay_35.s | 2 | 23 |  | harness |
| asm/overlay_83_02242FE8.s | 2 | 0 |  | hgify |
| asm/overlay_49_02263B74.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1000.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1001.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1003.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1004.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1005.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1006.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1008.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1009.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1011.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1013.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1015.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1016.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1017.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1018.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1020.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1021.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1022.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1023.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1024.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1026.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1028.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1030.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1031.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1033.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1035.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1036.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1037.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1038.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1039.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1040.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1042.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1043.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1044.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1045.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1046.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1047.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1048.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1049.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1051.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1052.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1054.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1055.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1056.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1057.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1058.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1060.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1061.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1062.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1063.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1064.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1065.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1066.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1067.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1068.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1069.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1070.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1071.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1073.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1075.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1077.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1078.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1080.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1082.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1083.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1085.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1087.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1088.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1089.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1091.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1092.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1093.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1095.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1097.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1098.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1099.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1101.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1103.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1105.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1107.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1109.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1110.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1112.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1114.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1115.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1116.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1117.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1119.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1120.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1121.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1122.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1124.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1125.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1127.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1129.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1130.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1131.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1133.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1134.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1136.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1137.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1138.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1139.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1140.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1141.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1142.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1143.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1145.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1147.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1148.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1150.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1151.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1153.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1154.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1155.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1156.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1157.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1158.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1159.s | 1 | 0 |  | hgify |
| asm/overlay_96_c1160.s | 1 | 0 |  | hgify |
| asm/overlay_114.s | 1 | 0 |  | hgify |
| asm/overlay_118.s | 1 | 251 |  | harness |
| asm/unk_data_020FD978.s | 0 | 0 | yes | harness |
| asm/overlay_01_data_02208BFC.s | 0 | 0 | yes | retained_asm |
| asm/battle_arcade_game_board_data.s | 0 | 0 | yes | harness |
| asm/battle_arcade_game_board_data2.s | 0 | 0 | yes | split_tu |
| asm/overlay_96_c1041.s | 0 | 0 | yes | hgify |

## Pending files (224)

| file | functions | insn lines | data-only | notes |
|---|---|---|---|---|
| asm/overlay_96.s | 502 | 63400 |  |  |
| asm/overlay_40.s | 132 | 21157 |  |  |
| asm/overlay_70.s | 132 | 12949 |  |  |
| asm/overlay_74_thumb.s | 120 | 13644 |  |  |
| asm/overlay_112.s | 115 | 11308 |  |  |
| asm/overlay_18_021F0918.s | 77 | 6032 |  |  |
| asm/overlay_07.s | 71 | 8745 |  |  |
| asm/overlay_12_battle_controller_opponent.s | 70 | 13252 |  |  |
| asm/overlay_13_thumb_2.s | 69 | 9950 |  |  |
| asm/nitrocrypto.s | 67 | 4245 |  |  |
| asm/overlay_15.s | 67 | 7907 |  |  |
| asm/overlay_43.s | 54 | 5739 |  |  |
| asm/overlay_59.s | 53 | 4969 |  |  |
| asm/overlay_14_021E5900.s | 52 | 5649 |  |  |
| asm/overlay_81.s | 50 | 5309 |  |  |
| asm/overlay_73.s | 46 | 4174 |  |  |
| asm/overlay_99.s | 45 | 3583 |  |  |
| asm/overlay_71.s | 44 | 4177 |  |  |
| asm/overlay_57.s | 41 | 4641 |  |  |
| asm/overlay_102.s | 41 | 2863 |  |  |
| asm/overlay_08.s | 40 | 3526 |  |  |
| asm/overlay_83_0223DD60.s | 38 | 6371 |  |  |
| asm/overlay_89.s | 36 | 4266 |  |  |
| asm/overlay_90.s | 35 | 3313 |  |  |
| asm/overlay_72.s | 33 | 3175 |  |  |
| asm/overlay_92.s | 32 | 7956 |  |  |
| asm/unk_02035900.s | 31 | 2677 |  |  |
| asm/unk_02088288.s | 31 | 3320 |  |  |
| asm/overlay_85.s | 31 | 2638 |  |  |
| asm/overlay_27.s | 30 | 3566 |  |  |
| asm/overlay_75.s | 29 | 3390 |  |  |
| asm/unk_02031B0C.s | 28 | 1229 |  |  |
| asm/unk_020932E0.s | 28 | 3083 |  |  |
| asm/overlay_14_021F2490.s | 28 | 1795 |  |  |
| asm/overlay_65.s | 28 | 3404 |  |  |
| asm/unk_0201010C.s | 27 | 1597 |  |  |
| asm/overlay_108.s | 24 | 2700 |  |  |
| asm/overlay_01_021F4704.s | 23 | 2300 |  |  |
| asm/overlay_45_thumb.s | 22 | 1572 |  |  |
| asm/overlay_82.s | 22 | 2119 |  |  |
| asm/overlay_87.s | 21 | 2460 |  |  |
| asm/overlay_103.s | 21 | 1454 |  |  |
| asm/overlay_01_021F72DC.s | 20 | 1272 |  |  |
| asm/overlay_14_021F6628.s | 20 | 1426 |  |  |
| asm/overlay_68.s | 20 | 1815 |  |  |
| asm/overlay_83_02243D7C.s | 20 | 3397 |  |  |
| asm/overlay_14_021EAF08.s | 19 | 3551 |  |  |
| asm/overlay_trainer_card_main.s | 19 | 2631 |  |  |
| asm/overlay_86.s | 19 | 1606 |  |  |
| asm/unk_0205AC88.s | 18 | 695 |  |  |
| asm/overlay_93_thumb_1.s | 18 | 2526 |  |  |
| asm/overlay_109.s | 18 | 1585 |  |  |
| asm/unk_0201956C.s | 17 | 740 |  |  |
| asm/unk_02012DD8.s | 16 | 776 |  |  |
| asm/overlay_18_021EE35C.s | 16 | 1700 |  |  |
| asm/overlay_91.s | 16 | 2341 |  |  |
| asm/overlay_97.s | 15 | 1339 |  |  |
| asm/unk_020210A0.s | 14 | 513 |  |  |
| asm/unk_02056D7C.s | 14 | 1072 |  |  |
| asm/unk_0208C3E4.s | 14 | 1301 |  |  |
| asm/overlay_01_021EB1E8.s | 14 | 1486 |  |  |
| asm/overlay_01_021EFB38.s | 14 | 748 |  |  |
| asm/overlay_28.s | 14 | 1247 |  |  |
| asm/overlay_49_022655E0.s | 14 | 2105 |  |  |
| asm/overlay_80_022310C4.s | 14 | 1180 |  |  |
| asm/overlay_108_021E8850.s | 14 | 1355 |  |  |
| asm/overlay_01_021E90C0.s | 13 | 1852 |  |  |
| asm/overlay_39_thumb.s | 13 | 1296 |  |  |
| asm/overlay_69.s | 13 | 1740 |  |  |
| asm/overlay_80_0222BDF4.s | 13 | 1007 |  |  |
| asm/unk_0205CB48.s | 12 | 884 |  |  |
| asm/unk_0208B1AC.s | 12 | 977 |  |  |
| asm/overlay_48.s | 12 | 953 |  |  |
| asm/overlay_93_thumb_2.s | 12 | 1759 |  |  |
| asm/overlay_106.s | 12 | 711 |  |  |
| asm/overlay_00_thumb.s | 11 | 1044 |  |  |
| asm/overlay_12_022378C0.s | 11 | 3716 |  |  |
| asm/overlay_14_021F1808.s | 11 | 1011 |  |  |
| asm/overlay_67.s | 11 | 1323 |  |  |
| asm/overlay_95.s | 11 | 1110 |  |  |
| asm/overlay_31.s | 10 | 946 |  |  |
| asm/overlay_56.s | 10 | 1374 |  |  |
| asm/overlay_113.s | 10 | 955 |  |  |
| asm/unk_0205FD20.s | 9 | 931 |  |  |
| asm/overlay_14_021F0A80.s | 9 | 809 |  |  |
| asm/overlay_111.s | 9 | 592 |  |  |
| asm/unk_0200FA24.s | 8 | 315 |  |  |
| asm/unk_02058AEC.s | 8 | 1514 |  |  |
| asm/unk_020632B0.s | 8 | 976 |  |  |
| asm/unk_020755E8.s | 8 | 2782 |  |  |
| asm/unk_020957B0.s | 8 | 449 |  |  |
| asm/overlay_01_022053EC.s | 8 | 635 |  |  |
| asm/overlay_05.s | 8 | 747 |  |  |
| asm/overlay_18_021F6AB0.s | 8 | 1051 |  |  |
| asm/overlay_37.s | 8 | 836 |  |  |
| asm/overlay_41_02245EA0.s | 8 | 399 |  |  |
| asm/unk_02014DA0.s | 7 | 243 |  |  |
| asm/unk_02054648.s | 7 | 447 |  |  |
| asm/overlay_02_02245B80.s | 7 | 616 |  |  |
| asm/overlay_10_trainer_ai.s | 7 | 1633 |  |  |
| asm/overlay_49_0225A154.s | 7 | 1176 |  |  |
| asm/overlay_64.s | 7 | 1806 |  |  |
| asm/overlay_96_c1032.s | 6 | 1044 |  |  |
| asm/overlay_119.s | 6 | 2588 |  |  |
| asm/overlay_01_021EDAFC.s | 6 | 608 |  |  |
| asm/overlay_01_021F1AFC.s | 6 | 470 |  |  |
| asm/overlay_01_021F944C.s | 6 | 424 |  |  |
| asm/overlay_14_021EFDE4.s | 6 | 516 |  |  |
| asm/overlay_49_0225EEAC.s | 6 | 1962 |  |  |
| asm/overlay_trainer_card_signature.s | 6 | 452 |  |  |
| asm/overlay_80_022340E8.s | 6 | 600 |  |  |
| asm/overlay_115.s | 6 | 1628 |  |  |
| asm/overlay_120.s | 6 | 912 |  |  |
| asm/overlay_96_c1094.s | 5 | 821 |  |  |
| asm/unk_0205A44C.s | 5 | 426 |  |  |
| asm/overlay_14_021EE26C.s | 5 | 654 |  |  |
| asm/overlay_14_021EEF34.s | 5 | 1144 |  |  |
| asm/overlay_41_02248ED4.s | 5 | 483 |  |  |
| asm/overlay_47.s | 5 | 804 |  |  |
| asm/overlay_80_022324C4.s | 5 | 602 |  |  |
| asm/overlay_83_02242FE8.s | 5 | 1359 |  |  |
| asm/overlay_96_c1126.s | 4 | 288 |  |  |
| asm/unk_02062108.s | 4 | 172 |  |  |
| asm/unk_020658D4.s | 4 | 413 |  |  |
| asm/overlay_01_021F1348.s | 4 | 137 |  |  |
| asm/overlay_38_thumb.s | 4 | 556 |  |  |
| asm/overlay_41_02246B34.s | 4 | 474 |  |  |
| asm/overlay_41_0224B21C.s | 4 | 272 |  |  |
| asm/overlay_46.s | 4 | 748 |  |  |
| asm/overlay_49_022595CC.s | 4 | 626 |  |  |
| asm/overlay_80_0222FD08.s | 4 | 561 |  |  |
| asm/overlay_105.s | 4 | 445 |  |  |
| asm/overlay_96_c1007.s | 3 | 177 |  |  |
| asm/overlay_96_c1076.s | 3 | 262 |  |  |
| asm/overlay_96_c1084.s | 3 | 1327 |  |  |
| asm/overlay_96_c1090.s | 3 | 590 |  |  |
| asm/overlay_96_c1106.s | 3 | 438 |  |  |
| asm/overlay_96_c1135.s | 3 | 128 |  |  |
| asm/render_window.s | 3 | 278 |  |  |
| asm/unk_02015DD8.s | 3 | 160 |  |  |
| asm/unk_0203A3B0.s | 3 | 347 |  |  |
| asm/unk_02058034.s | 3 | 119 |  |  |
| asm/unk_02061284.s | 3 | 240 |  |  |
| asm/overlay_01_021F4464.s | 3 | 132 |  |  |
| asm/overlay_33.s | 3 | 202 |  |  |
| asm/overlay_41_02247828.s | 3 | 226 |  |  |
| asm/overlay_41_02249A40.s | 3 | 176 |  |  |
| asm/overlay_49_0225D6AC.s | 3 | 327 |  |  |
| asm/overlay_49_02268D94.s | 3 | 217 |  |  |
| asm/overlay_88.s | 3 | 383 |  |  |
| asm/overlay_96_c1025.s | 2 | 122 |  |  |
| asm/overlay_96_c1074.s | 2 | 145 |  |  |
| asm/overlay_96_c1079.s | 2 | 337 |  |  |
| asm/overlay_96_c1100.s | 2 | 88 |  |  |
| asm/overlay_96_c1102.s | 2 | 309 |  |  |
| asm/overlay_96_c1111.s | 2 | 152 |  |  |
| asm/overlay_96_c1113.s | 2 | 213 |  |  |
| asm/overlay_96_c1123.s | 2 | 117 |  |  |
| asm/overlay_96_c1144.s | 2 | 364 |  |  |
| asm/unk_02016EDC.s | 2 | 215 |  |  |
| asm/unk_02020B8C.s | 2 | 204 |  |  |
| asm/unk_02025C44.s | 2 | 262 |  |  |
| asm/unk_020850F4.s | 2 | 289 |  |  |
| asm/overlay_01_021EABA8.s | 2 | 191 |  |  |
| asm/overlay_01_021FB878.s | 2 | 307 |  |  |
| asm/overlay_01_021FEA0C.s | 2 | 107 |  |  |
| asm/overlay_01_021FEEEC.s | 2 | 109 |  |  |
| asm/overlay_12_battle_controller.s | 2 | 412 |  |  |
| asm/overlay_41_0224A5A4.s | 2 | 153 |  |  |
| asm/overlay_49_02261FC0.s | 2 | 1154 |  |  |
| asm/overlay_49_02262DB8.s | 2 | 1367 |  |  |
| asm/overlay_49_02267F94.s | 2 | 56 |  |  |
| asm/overlay_80_02237A70.s | 2 | 226 |  |  |
| asm/overlay_80_0223AC24.s | 2 | 514 |  |  |
| asm/overlay_117.s | 2 | 1086 |  |  |
| asm/overlay_96_c1002.s | 1 | 78 |  |  |
| asm/overlay_96_c1010.s | 1 | 57 |  |  |
| asm/overlay_96_c1012.s | 1 | 69 |  |  |
| asm/overlay_96_c1014.s | 1 | 71 |  |  |
| asm/overlay_96_c1019.s | 1 | 96 |  |  |
| asm/overlay_96_c1027.s | 1 | 21 |  |  |
| asm/overlay_96_c1029.s | 1 | 92 |  |  |
| asm/overlay_96_c1034.s | 1 | 139 |  |  |
| asm/overlay_96_c1050.s | 1 | 47 |  |  |
| asm/overlay_96_c1053.s | 1 | 204 |  |  |
| asm/overlay_96_c1059.s | 1 | 29 |  |  |
| asm/overlay_96_c1072.s | 1 | 256 |  |  |
| asm/overlay_96_c1081.s | 1 | 161 |  |  |
| asm/overlay_96_c1086.s | 1 | 28 |  |  |
| asm/overlay_96_c1096.s | 1 | 69 |  |  |
| asm/overlay_96_c1104.s | 1 | 61 |  |  |
| asm/overlay_96_c1108.s | 1 | 56 |  |  |
| asm/overlay_96_c1118.s | 1 | 48 |  |  |
| asm/overlay_96_c1128.s | 1 | 94 |  |  |
| asm/overlay_96_c1132.s | 1 | 173 |  |  |
| asm/overlay_96_c1146.s | 1 | 166 |  |  |
| asm/overlay_96_c1149.s | 1 | 11 |  |  |
| asm/overlay_96_c1152.s | 1 | 16 |  |  |
| asm/overlay_96_c1161.s | 1 | 78 |  |  |
| asm/unk_02034354.s | 1 | 101 |  |  |
| asm/unk_0206979C.s | 1 | 48 |  |  |
| asm/unk_02087FD4.s | 1 | 15 |  |  |
| asm/unk_0208F814.s | 1 | 106 |  |  |
| asm/overlay_01_021F3F50.s | 1 | 99 |  |  |
| asm/overlay_01_021FE780.s | 1 | 57 |  |  |
| asm/overlay_12_02265E28.s | 1 | 116 |  |  |
| asm/overlay_49_02258800.s | 1 | 75 |  |  |
| asm/overlay_49_0225CB50.s | 1 | 17 |  |  |
| asm/overlay_49_02263B74.s | 1 | 952 |  |  |
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
| asm/unk_02096910.s | 0 | 0 | yes |  |
| asm/overlay_01_021FEC38.s | 0 | 0 | yes |  |
| asm/overlay_01_021FED9C.s | 0 | 0 | yes |  |
| asm/overlay_49_022649F4.s | 0 | 0 | yes |  |
| asm/overlay_80_02239D74.s | 0 | 0 | yes |  |

