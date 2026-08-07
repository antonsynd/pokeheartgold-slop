# Decomp Coverage Ledger

*Generated 2026-08-07T20:52:18Z by `coverage_ledger.py` — do not hand-edit; regenerate after each decomp.*

Tracked functions (files with retained asm): **19378** — matched 1684, pending 16773, plus 20 matched-but-blocked inside failed files.

| status | files | functions | insn lines | ~text bytes |
|---|---|---|---|---|
| matched | 97 | 1684 | 46621 | 103460 |
| blocked | 52 | 921 | 29971 | 65922 |
| pending | 168 | 16773 | 827438 | 1853516 |
| upstream | 401 | 0 | 0 | 0 |

## Blockers (value-ordered: fix what gates the most)

| id | blocks | gates pending files | description |
|---|---|---|---|
| param-copyprop-cmp | 0 | 6 | MWCC copy-propagates parameter copies: 'adds r4, r0, #0; cmp r4, #N' at function entry cannot be produced from pure C (MWCC substitutes back to r0; the shape only arises for saved return values after a bl). Affected functions need the NONMATCHING inline-asm fallback — routine, not a wall (proven: unk_0200B150 re-landed 2026-07-02 via ROADMAP T0.2, full ROM SHA1 OK). Entry-idiom scan (asmscan) finds the remaining sites in pending files: overlay_102 (6), unk_02077678 (4), overlay_96 (3), overlay_48 (2), overlay_112, unk_02004A44, unk_020517A4, unk_02058034 (1 each). Gated files carry the affected function names in triage_report copyprop_funcs. |
| ext-data-section-split | 0 | 3 | Data-only files exporting multiple EXTERNAL (.public) const arrays: MWCC (all modes — with/without -ipa file, pragma or not; T0.3 experiments 2026-07-02 disproved the earlier mwldarm-reorder theory) emits file-scope external consts SIZE-ASCENDING with a deterministic equal-size scramble, so a retail layout that is not size-ascending cannot come from one TU in source order. objdiff cannot see section order — verify these files ONLY with chiri pkg -- compare. |
| ipa-shared-headers | 0 | 0 | MWCC -ipa file: changing a signature in a shared header cascades codegen changes into every already-matched caller in other compilation units. Affects only files that must ADD or CHANGE declarations in a frozen header — call-only consumers of the exported APIs are NOT gated (proven by patterns 'ipa-blocked-files-can-call-sound-fns-without-cascade' and 'false-ipa-gate-shared-imports'). Diagnostic before blaming IPA for any mismatch: recompile the TU without '-ipa file' and objdiff (pattern ipa-file-flag-effects-and-removal-nonviability). |
| ipa-cse-literal-pool | 1 | 0 | MWCC -ipa file caches repeated literal-pool addresses/large offsets in callee-saved registers across calls where retail reloads them (or vice versa). A codegen-shape problem, not a header problem — split from ipa-shared-headers 2026-07-01, where this file's ubiquitous exports (BeginNormalPaletteFade family, imported by ~84 pending .inc files) badly inflated the gate count. |
| objdiff-false-positives | 0 | 0 | RESOLVED. objdiff.py had a critical bug: the byte extraction regex did not match MWCC's ARM Thumb objdump format (packed hex like 'b418' vs expected space-separated 'b4 18'). It extracted 0 bytes for every function, so 0==0 always reported MATCH. 11 decomps accepted via objdiff were not actually byte-matching. Fixed; all 11 non-matching decomps reverted to asm. 2 decomps that truly match (unk_0202DB34, battle_arcade_game_board_data) kept. |

## Blocked files (52)

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
| asm/overlay_01_021F3610.s | 24 | 848 |  |   |
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

## Matched files (asm retained) (97)

| file | functions | insn lines | data-only | notes |
|---|---|---|---|---|
| asm/overlay_02_02248728.s | 364 | 14752 |  | retained_asm |
| asm/unk_02030A98.s | 71 | 1383 |  | harness |
| asm/unk_0202B614.s | 61 | 1125 |  | retained_asm |
| asm/unk_02005D10.s | 50 | 1584 |  | harness |
| asm/unk_020689C8.s | 48 | 429 |  | harness |
| asm/unk_02074E5C.s | 46 | 849 |  | retained_asm |
| asm/unk_02013534.s | 40 | 1211 |  | retained_asm |
| asm/unk_0202D230.s | 40 | 807 |  | harness |
| asm/unk_0202FBCC.s | 39 | 1695 |  | harness |
| asm/unk_02096C88.s | 31 | 400 |  | retained_asm |
| asm/unk_02018000.s | 26 | 379 |  | harness |
| asm/unk_0202C034.s | 25 | 792 |  | harness |
| asm/unk_02066EDC.s | 22 | 784 |  | harness |
| asm/unk_02077678.s | 21 | 217 |  | harness |
| asm/overlay_01_021FC05C.s | 21 | 463 |  | harness |
| asm/unk_0202068C.s | 20 | 404 |  | harness |
| asm/frontier.s | 20 | 319 |  | harness |
| asm/unk_02014A08.s | 19 | 395 |  | harness |
| asm/unk_0202C730.s | 19 | 245 |  | harness |
| asm/unk_020379A0.s | 19 | 341 |  | harness |
| asm/unk_0208F658.s | 19 | 188 |  | harness |
| asm/overlay_80_0222ACA0.s | 19 | 235 |  | harness |
| asm/unk_02087284.s | 18 | 901 |  | harness |
| asm/unk_02087A78.s | 17 | 425 |  | harness |
| asm/overlay_01_021F6CFC.s | 17 | 632 |  | retained_asm |
| asm/unk_020773AC.s | 16 | 301 |  | harness |
| asm/unk_0208FB64.s | 16 | 245 |  | harness |
| asm/unk_02091880.s | 16 | 516 |  | harness |
| asm/overlay_01_021FB04C.s | 16 | 352 |  | harness |
| asm/overlay_01_021FE200.s | 16 | 391 |  | harness |
| asm/unk_0205BFF0.s | 15 | 254 |  | harness |
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
| asm/unk_0205BB1C.s | 11 | 551 |  | harness |
| asm/unk_02097024.s | 11 | 198 |  | harness |
| asm/overlay_01_021EAF00.s | 11 | 88 |  | harness |
| asm/overlay_01_021FB4C0.s | 11 | 117 |  | harness |
| asm/overlay_01_021FF854.s | 10 | 402 |  | retained_asm |
| asm/overlay_01_02200858.s | 10 | 286 |  | harness |
| asm/overlay_01_02203E40.s | 10 | 187 |  | harness |
| asm/unk_020163E0.s | 9 | 249 |  | harness |
| asm/text_0205B4EC.s | 9 | 220 |  | harness |
| asm/unk_02069660.s | 9 | 132 |  | harness |
| asm/overlay_01_021FF464.s | 9 | 247 |  | retained_asm |
| asm/overlay_01_021FF6B0.s | 9 | 173 |  | harness |
| asm/overlay_01_02200040.s | 9 | 173 |  | harness |
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
| asm/unk_02097BE0.s | 4 | 144 |  | harness |
| asm/overlay_80_02239AF8.s | 4 | 107 |  | harness |
| asm/overlay_80_02239BF0.s | 4 | 173 |  | harness |
| asm/unk_0206793C.s | 3 | 117 |  | harness |
| asm/unk_02092B04.s | 3 | 73 |  | harness |
| asm/unk_020961D8.s | 3 | 129 |  | harness |
| asm/unk_02097B78.s | 3 | 43 |  | harness |
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

## Pending files (168)

| file | functions | insn lines | data-only | notes |
|---|---|---|---|---|
| asm/overlay_96.s | 1435 | 95260 |  |  |
| asm/overlay_07.s | 812 | 44378 |  |  |
| asm/overlay_40.s | 558 | 44492 |  |  |
| asm/overlay_45_thumb.s | 544 | 12631 |  |  |
| asm/overlay_112.s | 522 | 23933 |  |  |
| asm/overlay_70.s | 519 | 23556 |  |  |
| asm/overlay_74_thumb.s | 495 | 24729 |  |  |
| asm/overlay_08.s | 266 | 15738 |  |  |
| asm/overlay_102.s | 256 | 8718 |  |  |
| asm/overlay_85.s | 255 | 8468 |  |  |
| asm/overlay_91.s | 242 | 9776 |  |  |
| asm/overlay_18_021F0918.s | 217 | 10810 |  |  |
| asm/overlay_12_battle_controller_opponent.s | 216 | 16947 |  |  |
| asm/overlay_14_021E5900.s | 214 | 9741 |  |  |
| asm/overlay_71.s | 211 | 9115 |  |  |
| asm/overlay_73.s | 210 | 8287 |  |  |
| asm/overlay_15.s | 203 | 12648 |  |  |
| asm/overlay_80_0222BDF4.s | 203 | 6189 |  |  |
| asm/overlay_81.s | 197 | 9583 |  |  |
| asm/unk_02037C94.s | 176 | 4077 |  |  |
| asm/overlay_43.s | 169 | 8806 |  |  |
| asm/overlay_59.s | 163 | 8111 |  |  |
| asm/overlay_49_0225A154.s | 159 | 4667 |  |  |
| asm/overlay_13_thumb_2.s | 158 | 11775 |  |  |
| asm/overlay_72.s | 154 | 6279 |  |  |
| asm/overlay_90.s | 153 | 6492 |  |  |
| asm/unk_02062108.s | 150 | 1925 |  |  |
| asm/overlay_57.s | 149 | 7522 |  |  |
| asm/overlay_99.s | 149 | 6712 |  |  |
| asm/overlay_10_trainer_ai.s | 134 | 8562 |  |  |
| asm/overlay_48.s | 132 | 4687 |  |  |
| asm/overlay_92.s | 132 | 12807 |  |  |
| asm/overlay_01_021F944C.s | 131 | 2582 |  |  |
| asm/overlay_14_021F2490.s | 128 | 4353 |  |  |
| asm/unk_0201010C.s | 127 | 5168 |  |  |
| asm/overlay_83_0223DD60.s | 122 | 8890 |  |  |
| asm/overlay_89.s | 120 | 7456 |  |  |
| asm/overlay_103.s | 118 | 3747 |  |  |
| asm/overlay_65.s | 106 | 6857 |  |  |
| asm/overlay_75.s | 100 | 5223 |  |  |
| asm/overlay_93_thumb_2.s | 100 | 5287 |  |  |
| asm/unk_02088288.s | 97 | 5166 |  |  |
| asm/overlay_39_thumb.s | 97 | 3842 |  |  |
| asm/overlay_87.s | 97 | 4577 |  |  |
| asm/overlay_27.s | 96 | 5299 |  |  |
| asm/unk_02004A44.s | 95 | 1764 |  |  |
| asm/unk_020632B0.s | 93 | 2449 |  |  |
| asm/overlay_01_021EB1E8.s | 92 | 4616 |  |  |
| asm/unk_02035900.s | 90 | 3629 |  |  |
| asm/overlay_49_022655E0.s | 90 | 4663 |  |  |
| asm/overlay_83_02243D7C.s | 90 | 5353 |  |  |
| asm/overlay_00_thumb.s | 89 | 3729 |  |  |
| asm/overlay_04.s | 89 | 6015 |  |  |
| asm/overlay_108.s | 88 | 5292 |  |  |
| asm/overlay_05.s | 87 | 5413 |  |  |
| asm/overlay_01_021EFB38.s | 85 | 2703 |  |  |
| asm/overlay_14_021EAF08.s | 85 | 5384 |  |  |
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
| asm/unk_02032844.s | 75 | 2017 |  |  |
| asm/overlay_18_021EE35C.s | 74 | 4160 |  |  |
| asm/overlay_01_021F4704.s | 72 | 3868 |  |  |
| asm/overlay_49_02258800.s | 69 | 1551 |  |  |
| asm/unk_02023694.s | 68 | 1608 |  |  |
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
| asm/overlay_49_0225CB50.s | 58 | 1297 |  |  |
| asm/unk_02034B0C.s | 56 | 1530 |  |  |
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
| asm/overlay_98.s | 47 | 1310 |  |  |
| asm/overlay_31.s | 46 | 2733 |  |  |
| asm/overlay_41_02248400.s | 46 | 1253 |  |  |
| asm/overlay_49_022595CC.s | 46 | 1265 |  |  |
| asm/unk_02033AE0.s | 44 | 959 |  |  |
| asm/overlay_41_02249A40.s | 43 | 1303 |  |  |
| asm/overlay_49_02267F94.s | 43 | 1554 |  |  |
| asm/overlay_67.s | 43 | 2250 |  |  |
| asm/overlay_41_02247828.s | 42 | 1331 |  |  |
| asm/overlay_trainer_card_signature.s | 42 | 2238 |  |  |
| asm/unk_0208B1AC.s | 41 | 2005 |  |  |
| asm/overlay_41_02248ED4.s | 41 | 1292 |  |  |
| asm/render_window.s | 40 | 2610 |  |  |
| asm/overlay_01_021E8744.s | 40 | 1091 |  |  |
| asm/overlay_01_022053EC.s | 40 | 1592 |  |  |
| asm/overlay_41_0224B21C.s | 40 | 1348 |  |  |
| asm/frontier_map.s | 40 | 2050 |  |  |
| asm/overlay_83_02246E08.s | 39 | 1339 |  |  |
| asm/overlay_97.s | 39 | 2560 |  |  |
| asm/overlay_120.s | 39 | 1994 |  |  |
| asm/overlay_14_021EE26C.s | 38 | 1321 |  |  |
| asm/overlay_18_021F8AB8.s | 38 | 1357 |  |  |
| asm/overlay_41_0224A5A4.s | 38 | 1417 |  |  |
| asm/overlay_49_022649F4.s | 38 | 1266 |  |  |
| asm/overlay_41_02246B34.s | 37 | 1412 |  |  |
| asm/overlay_69.s | 37 | 3237 |  |  |
| asm/overlay_32.s | 36 | 1354 |  |  |
| asm/overlay_34.s | 36 | 1981 |  |  |
| asm/unk_0208C3E4.s | 35 | 2926 |  |  |
| asm/overlay_01_021E90C0.s | 35 | 2433 |  |  |
| asm/overlay_14_021F0A80.s | 35 | 1435 |  |  |
| asm/overlay_64.s | 35 | 2388 |  |  |
| asm/overlay_29.s | 34 | 1335 |  |  |
| asm/overlay_12_022378C0.s | 33 | 4670 |  |  |
| asm/overlay_01_021F6830.s | 31 | 524 |  |  |
| asm/overlay_56.s | 31 | 1964 |  |  |
| asm/overlay_115.s | 31 | 2138 |  |  |
| asm/overlay_14_021EFDE4.s | 30 | 1356 |  |  |
| asm/overlay_14_021F58B8.s | 30 | 1558 |  |  |
| asm/overlay_14_021F4B90.s | 27 | 1474 |  |  |
| asm/overlay_80_02231BF8.s | 26 | 905 |  |  |
| asm/overlay_80_022324C4.s | 26 | 1946 |  |  |
| asm/unk_020863F4.s | 24 | 1701 |  |  |
| asm/overlay_01_021FDA14.s | 23 | 863 |  |  |
| asm/overlay_18_021F7ED4.s | 23 | 1319 |  |  |
| asm/unk_020755E8.s | 22 | 3237 |  |  |
| asm/overlay_14_021F1808.s | 21 | 1375 |  |  |
| asm/overlay_80_0222FD08.s | 21 | 1614 |  |  |
| asm/overlay_46.s | 20 | 1476 |  |  |
| asm/overlay_80_0223A00C.s | 20 | 1380 |  |  |
| asm/overlay_83_022479E4.s | 20 | 335 |  |  |
| asm/overlay_01_022031C0.s | 18 | 912 |  |  |
| asm/unk_02085604.s | 17 | 1659 |  |  |
| asm/overlay_49_02268D94.s | 17 | 940 |  |  |
| asm/overlay_93_arm.s | 17 | 854 |  |  |
| asm/unk_02096910.s | 15 | 400 |  |  |
| asm/overlay_14_021EEF34.s | 15 | 1538 |  |  |
| asm/unk_02056680.s | 11 | 724 |  |  |
| asm/overlay_49_02261FC0.s | 10 | 1432 |  |  |
| asm/overlay_117.s | 9 | 1192 |  |  |
| asm/overlay_83_02242FE8.s | 7 | 1412 |  |  |
| asm/overlay_49_02262DB8.s | 6 | 1405 |  |  |
| asm/overlay_119.s | 6 | 2588 |  |  |
| asm/overlay_41_0224BE34.s | 3 | 146 |  |  |
| asm/overlay_49_02263B74.s | 2 | 1450 |  |  |
| asm/unk_data_020FCBD8.s | 0 | 0 | yes |  |
| asm/unk_data_020FDB44.s | 0 | 0 | yes |  |
| asm/overlay_01_sprite_data.s | 0 | 0 | yes |  |

