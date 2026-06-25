# SafariDecoration_CreateArgs — handoff (4 bytes off, coloring tie)

**Best next target.** Exported builder (declared in frozen include/overlay_02.h,
called by launch_application.c:551). 340B / 0x154. No float, no jump table.
File at 341/364 (HEAD 6e902e75f). NNS/validator classes already cracked.

The C below COMPILES and is **only 4 bytes short** (src 0x150 vs asm 0x154)
after the `s16 buf` fix. The remaining diff is pure **register coloring**:
- asm keeps `stateFlag` in **r6** and `z` in **r7**, pushes {r4,r5,r6,r7,lr}.
- my version put `stateFlag` in r7 and SPILLED `z` to sp+0x10, forcing an extra
  callee-saved (pushes {r3,r4,r5,r6,r7,lr}, sub sp #0x30 vs asm #0x2c).
The 4-byte shortfall = the extra spill/reload vs keeping z in r7.

## Working C (drop into the file before ov02_0224E698, address order)
```c
SafariDecorationArgs *SafariDecoration_CreateArgs(FieldSystem *fieldSystem, enum HeapID heapID) {
    SafariDecorationArgs *args = Heap_AllocAtEnd(heapID, sizeof(SafariDecorationArgs));
    int facing;
    int x;
    int z;
    VecFx32 pos;
    fx32 height;
    u8 outSelector;
    s16 buf[2];      // MUST be s16 -> read-back is ldrsh (Thumb ldrsh = mov #off + ldrsh [b,off])
    u8 stateFlag;

    MI_CpuFill8(args, 0, sizeof(SafariDecorationArgs));
    args->saveData = FieldSystem_GetSaveData(fieldSystem);
    args->unk04 = (BOOL *)((u8 *)fieldSystem + 0x10c);   // 0x43<<2; asm derives 0x111 = 0x10c+5
    args->unk20 = (u8 *)fieldSystem + 0x111;
    stateFlag = PlayerAvatar_GetState(*(PlayerAvatar **)((u8 *)fieldSystem + 0x40)) == 2;
    args->unk18 = stateFlag;
    facing = (u8)PlayerAvatar_GetFacingDirection(*(PlayerAvatar **)((u8 *)fieldSystem + 0x40));
    x = (s16)PlayerAvatar_GetXCoord(*(PlayerAvatar **)((u8 *)fieldSystem + 0x40));
    z = (s16)PlayerAvatar_GetZCoord(*(PlayerAvatar **)((u8 *)fieldSystem + 0x40));
    PlayerAvatar_CopyPositionVector(*(PlayerAvatar **)((u8 *)fieldSystem + 0x40), &pos);
    args->unk19 = ov02_0224E31C(x, z);
    height = sub_02054774(fieldSystem, pos.y, pos.x, pos.z, &outSelector);
    if (outSelector != 1) {
        return args;
    }
    args->unk1A = height >> 0xc;
    args->deltaX = x + GetDeltaXByFacingDirection(facing);
    args->deltaY = z + GetDeltaYByFacingDirection(facing);
    args->unk08 = 1;
    if (ov02_0224E828(fieldSystem, x, z, facing, height, (u16 *)&buf[1], (u16 *)&buf[0], stateFlag) != 0) {
        args->unk0D = (s16)buf[1];
        args->unk0F = (s16)buf[0];
        args->unk0C = 1;
    }
    if (ov02_0224EB48(fieldSystem, x, z, facing, height, (u16 *)&buf[1], (u16 *)&buf[0], stateFlag) != 0) {
        args->unk11 = (s16)buf[1];
        args->unk13 = (s16)buf[0];
        args->unk10 = 1;
    }
    if (ov02_0224EE4C(fieldSystem, x, z, facing, height, (u16 *)&buf[1], (u16 *)&buf[0], stateFlag) != 0) {
        args->unk15 = (s16)buf[1];
        args->unk17 = (s16)buf[0];
        args->unk14 = 1;
    }
    return args;
}
```

## Decls needed (re-add)
- near line 158-160: `extern fx32 sub_02054774(FieldSystem *, fx32, fx32, fx32, u8 *);`
  and `WIP_LOCAL int ov02_0224E828(void *,int,int,int,fx32,u16*,u16*,int);`,
  `WIP_LOCAL int ov02_0224EB48(...same...);` (EE4C already at line 160).

## The coloring fix to try next
Goal: `stateFlag`→r6, `z`→r7, NO r3 push. Levers to try:
1. Declare `stateFlag` and `z` in different order (reverse-decl-order affects
   callee-saved assignment as well as stack slots).
2. The extra live value forcing r3 — find it from the src disasm (likely
   `height` or `facing` held in a reg the asm spills). asm SPILLS facing@sp+0x10,
   x@sp+0x14, height@sp+0x24 (reuses pos.y slot), keeps only z(r7)+stateFlag(r6).
3. Possibly compute stateFlag's `==2` differently, or move its use earlier.

asm stack: facing@0x10, x@0x14, outSelector@0x18, buf@0x1a, pos@0x20 (y@0x24
reused by height after sub_02054774). z in r7, stateFlag in r6.

Verify: no jump table, so objdiff/opcode diff is authoritative once nm sizes match.
