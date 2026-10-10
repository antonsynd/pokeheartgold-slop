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

/* the two lookup tables the asm copies to its stack: 0x020FE0C4 (by facing) and 0x020FE0D4 (2x2, row stride 8) */
extern u32 sTableFacingROM[4] __asm__("sub_020FE0C4");
extern u32 sTableMoveROM[4] __asm__("sub_020FE0D4");

/*
 * The asm keeps both tables in its 0x20-byte stack frame (table B at sp+0x00, table A at sp+0x10), then saves
 * r4, r5, r6, lr at sp+0x20..0x2c, and the caller's frame starts at sp+0x30 (the entry sp). Neither index is
 * bounded, so an out-of-range index reads that frame. FRAME_WORD(dst, off, ...) reads dst from byte offset `off`
 * of the asm's frame: the tables for the in-range offsets, then the caller's r4, r5, r6 and lr, then memory
 * relative to the entry sp (__builtin_frame_address(0) + 8 in the check's clang -O0 Thumb build). It is a macro
 * so that no helper frame sits between the entry sp and the memory it reads.
 */
#define FRAME_WORD(dst, offset, haveA, haveB)                                                 \
    do {                                                                                      \
        o = (offset);                                                                         \
        if (o < 0x10 && (haveB)) {                                                            \
            dst = sTableMoveROM[o >> 2];                                                      \
        } else if (o - 0x10 < 0x10 && (haveA)) {                                              \
            dst = sTableFacingROM[(o - 0x10) >> 2];                                           \
        } else if (o - 0x20 < 0x10) {                                                         \
            if (o == 0x20) {                                                                  \
                __asm__ volatile("movs %0, r4" : "=l"(dst) : : "cc");                         \
            } else if (o == 0x24) {                                                           \
                __asm__ volatile("movs %0, r5" : "=l"(dst) : : "cc");                         \
            } else if (o == 0x28) {                                                           \
                __asm__ volatile("movs %0, r6" : "=l"(dst) : : "cc");                         \
            } else {                                                                          \
                dst = (u32)__builtin_return_address(0);                                       \
            }                                                                                 \
        } else {                                                                              \
            dst = *(volatile u32 *)((u32)__builtin_frame_address(0) + 8 - 0x30 + o);          \
        }                                                                                     \
    } while (0)

u32 sub_02063B9C(void *mapObj)
{
    u8 *st = sub_0205F3BC(mapObj);
    u32 v;
    u32 o;
    int haveA = 0;

    switch (st[1]) {
    case 0:
        v = MapObject_GetFacingDirection(mapObj);
        st[4] = (u8)v;
        haveA = 1;
        FRAME_WORD(v, 0x10 + (v << 2), haveA, 0);
        st[5] = (u8)v;
        st[1] = (u8)(st[1] + 1);
        /* fall through */
    case 1:
        FRAME_WORD(v, ((s32)(s8)st[5] << 3) + ((s32)(s8)st[6] << 2), haveA, 1);
        v = sub_0206234C(v, 0);
        MapObject_ForceSetHeldMovement(mapObj, v);
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
            st[6] = (u8)(((s8)st[6] + 1) & 1);
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
}
