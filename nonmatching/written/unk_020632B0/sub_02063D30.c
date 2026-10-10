typedef unsigned char u8;
typedef signed char s8;
typedef unsigned int u32;
typedef int s32;

u8 *sub_0205F3BC(void *mapObj);
u32 MapObject_GetFacingDirection(void *mapObj);
void MapObject_SetFacingDirection(void *mapObj, s32 dir);
void MapObject_ForceSetHeldMovement(void *mapObj, u32 movement);
u32 sub_0206234C(u32 value, u32 arg1);
u32 sub_02062428(void *mapObj);
void GF_AssertFail(void);

/* the eight words the function copies from the ROM table at 0x020FE0E4 to sp+0 */
extern u8 sTableROM[] __asm__("sub_020FE0E4");

/* the rotate-right-by-30 the asm does to wrap an index to 0..3 (keeping the sign bit) */
static u32 WrapIndex(s32 k)
{
    u32 s = (u32)k >> 31;
    u32 x = ((u32)k << 30) - s;
    return s + ((x >> 30) | (x << 2));
}

/*
 * The asm indexes its stack copy of the table with the signed bytes unk_05 (row, *16) and unk_06 (column, *4)
 * from the state struct, unchecked. To behave the same for any value, the word is read at the address the asm
 * would read: asm_sp + row*16 + col*4, where asm_sp = entry_sp - 0x38 (push {r3-r7, lr}, then 0x20 bytes).
 * asm_sp+0x00..0x1f is the table copy (the ROM words), +0x20..0x2f the caller's r3-r6 that it pushed, +0x30/0x34
 * its r7/lr (same slots in clang's frame), above that the caller's frame; below asm_sp is memory the asm never
 * wrote, which framePadding keeps this C's own locals away from (rows reach 2 KB below asm_sp).
 */
#define FRAME_READ(addr)                                                       \
    ({                                                                         \
        u32 a_ = (addr);                                                       \
        u32 off_ = a_ - asmSp;                                                 \
        u32 w_;                                                                \
        if (off_ < 0x20) {                                                     \
            w_ = *(u32 *)(sTableROM + off_);                                   \
        } else if (off_ < 0x30) {                                              \
            w_ = savedRegs[(off_ - 0x20) / 4];                                 \
        } else {                                                               \
            w_ = *(u32 *)a_;                                                   \
        }                                                                      \
        w_;                                                                    \
    })

u32 sub_02063D30(void *mapObj)
{
    u8 framePadding[0xA80]; /* first local: keeps the C locals below asm_sp - 0xA00 - 0x200 */
    u32 savedRegs[4]; /* the caller's r3-r6 */
    u32 asmSp;
    u32 facing;
    u32 i;
    u8 *st;
    s32 k;

    __asm__ volatile("movs %0, r3" : "=l"(savedRegs[0]) : : "cc");
    __asm__ volatile("movs %0, r4" : "=l"(savedRegs[1]) : : "cc");
    __asm__ volatile("movs %0, r5" : "=l"(savedRegs[2]) : : "cc");
    /* the large frame makes clang's prologue use r6 as scratch, so the caller's r6 is read from the slot the
       prologue pushed it to (push {r4, r6, r7, lr}: just below the saved r7) */
    savedRegs[3] = *(u32 *)((u8 *)__builtin_frame_address(0) - 4);
    asmSp = (u32)__builtin_frame_address(0) + 8 - 0x38;
    (void)framePadding;

    st = sub_0205F3BC(mapObj);

    switch (st[1]) {
    case 0:
        facing = MapObject_GetFacingDirection(mapObj);
        for (i = 0; i < 4; i++) {
            if (facing == FRAME_READ(asmSp + (s32)(s8)st[5] * 16 + i * 4)) {
                break;
            }
        }
        if (i >= 4) {
            GF_AssertFail();
        }
        st[6] = (u8)WrapIndex((s32)i + 1);
        st[4] = (u8)facing;
        st[1] = (u8)(st[1] + 1);
        /* fall through */
    case 1:
        {
            u32 word = FRAME_READ(asmSp + (s32)(s8)st[5] * 16 + (s32)(s8)st[6] * 4);
            u32 movement = sub_0206234C(word, 0);
            MapObject_ForceSetHeldMovement(mapObj, movement);
        }
        st[1] = (u8)(st[1] + 1);
        /* fall through */
    case 2:
        if (sub_02062428(mapObj) == 0) {
            return 1;
        }
        st[1] = (u8)(st[1] + 1);
        /* fall through */
    case 3:
        st[8] = (u8)((s8)st[8] + 1);
        if ((s8)st[8] < 8) {
            return 1;
        }
        st[8] = 0;
        st[7] = (u8)((s8)st[7] + 1);
        if ((s8)st[7] < 4) {
            k = (s32)(s8)st[6] + 1;
            st[6] = (u8)WrapIndex(k);
            st[1] = 1;
            return 1;
        }
        MapObject_SetFacingDirection(mapObj, (s8)st[4]);
        st[1] = (u8)(st[1] + 1);
        st[7] = 0;
        st[0] = 0;
        return 0;
    default:
        return 0;
    }
    return 0;
}
