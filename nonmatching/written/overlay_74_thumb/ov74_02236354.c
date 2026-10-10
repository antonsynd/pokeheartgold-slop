#include "global.h"

typedef void (*UnkCb_ov74_0223E2FC)(int a0, void *a1, u32 a2, u32 a3);
typedef void (*UnkPrint_ov74_0223E2FC)(const char *fmt, u32 a1, u32 a2, void *a3);

typedef struct UnkStruct_ov74_0223E2FC {
    u8 *work;
    UnkPrint_ov74_0223E2FC print;
} UnkStruct_ov74_0223E2FC;

extern UnkStruct_ov74_0223E2FC ov74_0223E2FC;
extern const char ov74_0223D018[];

extern void ov74_022361B8(int errcode);
extern void ov74_02236168(int state);
extern int ov74_0223648C(void);
extern int ov74_02236258(void);
extern void ov74_022366E8(void *info);
extern int ov74_02236768(void *info);
extern void ov74_022365FC(void);
extern void DC_InvalidateRange(void *ptr, u32 length);

void ov74_02236354(u8 *v0) {
    u32 callerR2, callerR3;
    UnkCb_ov74_0223E2FC cb;
    __asm__ volatile("movs %0, r2" : "=l"(callerR2) : : "cc");
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");

    if (*(u16 *)(v0 + 2) != 0) {
        ov74_022361B8(*(u16 *)(v0 + 2));
        ov74_02236168(9);
        cb = *(UnkCb_ov74_0223E2FC *)(ov74_0223E2FC.work + 0x117C);
        if (cb != NULL) {
            cb(4, (void *)cb, callerR2, callerR3);
        }
        return;
    }

    if (*(int *)(ov74_0223E2FC.work + 0x1150) != 2) {
        if (ov74_0223648C() == 0) {
            ov74_02236168(9);
            cb = *(UnkCb_ov74_0223E2FC *)(ov74_0223E2FC.work + 0x117C);
            if (cb != NULL) {
                cb(4, (void *)cb, callerR2, callerR3);
            }
        }
        return;
    }

    switch (*(u16 *)(v0 + 8)) {
    case 3:
        return;
    case 4:
        break;
    case 5:
        DC_InvalidateRange(ov74_0223E2FC.work + 0xF00, 0xC0);
        if (*(u16 *)(v0 + 0x36) < 8 || *(u32 *)(v0 + 0x3C) != 0x400318) {
            if (ov74_0223E2FC.print != NULL) {
                ov74_0223E2FC.print(ov74_0223D018, *(u32 *)(v0 + 0x3C), 0x400318, (void *)ov74_0223E2FC.print);
            }
            break;
        }
        *(int *)(ov74_0223E2FC.work + 0x116C) = *(u16 *)(v0 + 0x12);
        if (*(u16 *)(ov74_0223E2FC.work + 0x1158) == 2) {
            int i;
            ov74_022366E8(v0 + 0x48);
            for (i = 0; i < 6; i++) {
                (ov74_0223E2FC.work + 0x1170)[i] = (v0 + 0xA)[i];
            }
            {
                u8 *w = ov74_0223E2FC.work;
                int val = *(u16 *)(w + 0x1176) - 15;
                *(u16 *)(w + 0x1176) = val;
                cb = *(UnkCb_ov74_0223E2FC *)(ov74_0223E2FC.work + 0x117C);
                if (cb != NULL) {
                    cb(1, (void *)cb, val, (u32)w);
                }
            }
        }
        if (ov74_02236768(v0 + 0x48) != 0) {
            *(u16 *)(ov74_0223E2FC.work + 0x1158) = 4;
            ov74_022365FC();
            return;
        }
        break;
    }

    if (ov74_02236258() == 0) {
        ov74_02236168(9);
        cb = *(UnkCb_ov74_0223E2FC *)(ov74_0223E2FC.work + 0x117C);
        if (cb != NULL) {
            cb(4, (void *)cb, callerR2, callerR3);
        }
    }
}
