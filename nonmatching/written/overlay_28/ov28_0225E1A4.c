#include "global.h"

typedef void (*UnkFn_ov28_0225E1A4)(void *item, void *self, u32 offset, u32 r3);

extern UnkFn_ov28_0225E1A4 ov28_0225EAAC[];

int abs(int x);
void ov28_0225DD58(void *ctx);
void ov28_0225DEB0(void *ctx);
void ov28_0225E0F4(void *ctx);
void ov28_0225E060(void *ctx);
void ov28_0225DFBC(void *ctx);
void ov28_0225DF14(void *ctx);

typedef struct UnkStruct_ov28_0225E1A4_Item {
    u32 a;
    u32 b;
    u32 c;
} UnkStruct_ov28_0225E1A4_Item;

void ov28_0225E1A4(u8 *ctx) {
    UnkStruct_ov28_0225E1A4_Item *items = (UnkStruct_ov28_0225E1A4_Item *)(ctx + 0x21c);
    s16 *flags = (s16 *)(ctx + 0x24c);
    s16 dx;
    s16 dy;
    u32 i;
    u32 a;
    u32 b;
    int diff;
    u32 r3AfterCall;
    UnkFn_ov28_0225E1A4 fn;

    ov28_0225DD58(ctx);
    if (*(s32 *)(ctx + 0x20c) == 0) {
        ov28_0225DEB0(ctx);
        *(s32 *)(ctx + 0x210) = 0;
    } else {
        dx = abs(*(s16 *)(ctx + 0x208));
        dy = abs(*(s16 *)(ctx + 0x20a));
        if (dx <= 8 && dy <= 8) {
            ov28_0225E0F4(ctx);
            *(s32 *)(ctx + 0x210) = 4;
        } else if (dx <= 0xc && dy <= 0xc) {
            ov28_0225E060(ctx);
            *(s32 *)(ctx + 0x210) = 3;
        } else if (dx <= 0x11 && dy <= 0x11) {
            ov28_0225DFBC(ctx);
            *(s32 *)(ctx + 0x210) = 2;
        } else {
            ov28_0225DF14(ctx);
            *(s32 *)(ctx + 0x210) = 1;
        }
    }

    if (((*(u16 *)flags >> 15) & 1) == 0) {
        for (i = 0; i < 4; i++) {
            items[i].a = items[i].b;
            items[i].c = items[i].b;
        }
        *(u16 *)flags = *(u16 *)flags | 0x8000;
        *(u16 *)flags = (*(u16 *)flags & 0x8000) | 1;
        return;
    }

    for (i = 0; i < 4; i++) {
        items[i].b = items[i].b % 360;
        items[i].a = items[i].a % 360;
        a = items[i].a;
        b = items[i].b;
        diff = abs((int)(b - a));
        __asm__ volatile("movs %0, r3" : "=l"(r3AfterCall) : : "cc");
        if (diff >= 0xb4) {
            if (b > a) {
                items[i].a = items[i].a + 0x168;
            } else if (b < a) {
                items[i].b = items[i].b + 0x168;
            }
        }
        fn = ov28_0225EAAC[*(s32 *)(ctx + 0x210)];
        fn(&items[i], (void *)fn, *(u32 *)(ctx + 0x210) << 2, r3AfterCall);
    }
}
