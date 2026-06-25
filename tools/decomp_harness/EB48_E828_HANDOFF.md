# ov02_0224EB48 / ov02_0224E828 — decode handoff (big single-float, siblings)

**Status:** fully decoded, not yet written. File at 342/364 (HEAD f488dbdb8).
EB48 = 0x304 (772B), E828 = 0x320 (800B). SIBLINGS — same callee profile
(_fadd/_ffix/_fflt/_fsub, GetMetatileBehavior, sub_020548C0, ov02_0224EF6C,
sub_02054774). Match EB48, then E828 should clone with small deltas.

**Signature (8 args, 4 stack):** the shared form used by E828/EB48/EE4C and
already forward-declared:
`WIP_LOCAL int ov02_0224EB48(void *a0/*fieldSystem r4*/, int a1, int a2 /*r5*/, int a3 /*direction, switched*/, fx32 a4 /*sp+0x80, r6*/, u16 *a5 /*sp+0x84*/, u16 *a6 /*sp+0x88*/, int a7 /*sp+0x8c*/)`.

**Float idiom = E35C's (PROVEN):** `int v=(coord<<4)+8; if(v>0) f=(f32)(v<<12)+0.5f; else f=(f32)(v<<12)-0.5f; ... (s32)f`. Used ~6x.

## Prologue (both groups)
- `*a5 = a1; *a6 = a2;` (strh r1 to sp[0x84]'s target, strh r5 to sp[0x88]'s).
  Actually: `ldr r0,[sp,0x84]; ... strh a1,[that]` and `strh a2,[sp+0x88 target]`.
- Copies rodata `ov02_02253A4C` (3 bytes? ldmia then strb [r3,#1],[r3,#2]) into a
  local at sp+0x64 (a small struct: byte0 = sub_02054774 outSelector, bytes 1/2 =
  two signed offsets read via ldrsb). sp+0x64 is the `&outSelector`/offset-struct.
- `switch (a3)` capped at 3: cases 0,1 -> GROUP A (EB8E); cases 2,3 -> GROUP B (ED3A).

## GROUP A (cases 0/1) — EB8E
- `off = (a3==0) ? localStruct[1] : localStruct[2]` (ldrsb [r3, 1 or 2]).
- `r5 = (s16)(a2 + off)`.
- `beh = GetMetatileBehavior(fieldSystem, a1, r5); something = sub_020548C0(fieldSystem, a1, r5);`
- float-round r5 and a1 (E35C idiom) -> ffix -> ix,iz
- `h = sub_02054774(fieldSystem, a4, ix, iz, &localStruct/*sp+0x64*/)`
- guard: `if (!ov02_0224EF6C(beh, something, localStruct.byte0x1c) || localStruct[0]!=1 || h!=a4) return 0;`
  (note: reads sp+0x70 byte 0x1c = a4-area? actually `add r0,sp,#0x70; ldrb [r0,#0x1c]` = sp+0x8c = a7. So a7 is the 3rd arg to EF6C.)
- then loop `for (i=0;i<2;i++)` over localStruct offset bytes [sp+0x65 + i] (ldrsb):
  - `coord2 = (s16)(a1 - off_i)`; GetMetatileBehavior/sub_020548C0/float-round/sub_02054774/EF6C
  - if all-pass and h2==a4: `*a5 = a1 - i_counter(sp+0x48); *a6 = a2; return 1;`
- fallthrough -> return 0.

## GROUP B (cases 2/3) — ED3A
- `base = (a3==2) ? (s16)(a1-2) : (s16)(a1+1)` -> sp+0xc.
- `a7val = a7 (sp+0x8c byte 0x1c via sp+0x70)`; precompute `(r5<<4)+8` and its <<12.
- loop `for (i=0;i<2;i++)` over `r7 = base + i`:
  - `c=(s16)r7`; GetMetatileBehavior(fieldSystem,c,r5)/sub_020548C0/EF6C(beh,sub,a7val)
  - if EF6C: float-round (r5<<4+8 precomputed, and c) -> ffix -> sub_02054774(fieldSystem,a4,iz2,ix2,&local)
    if local[0]==1 && h==a4: counter sp+0x44 ++ (as u8).
- after loop: `if (counter == 2) { *a5 = base; *a6 = r5; return 1; }` else return 0.

## Why deferred / the hard part
~26 distinct sp-relative locals (sp[4..0x60] + the 0x64 struct + the 0x80+ stack
args). The float idiom and call sequence are mechanical, but getting MWCC to place
all ~26 locals at the EXACT sp offsets is a SafariDecoration-scale stack-coloring
grind (SafariDecoration had ~10 locals and took 3 firings to reach a 2-byte tie).
Expect multiple rounds. The two groups share helpers; declare locals to mirror the
asm slot order (reverse-decl). Verify: jump-table function -> nm-equal + raw-byte
diff (objdiff false SIZE on the $d table); trailing .balign pad expected.

Rodata: `ov02_02253A4C` (the small offset struct) needs an extern.
508D8 (double-float, 392B, TaskManager state machine, _dadd/_ddiv/_dfix/_dflt/_dfltu/_dmul)
is a separate target — double-float idiom untested, register-pair.
