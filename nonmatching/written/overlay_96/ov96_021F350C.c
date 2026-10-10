#include "global.h"
#include "math_util.h"

typedef struct UnkStruct_ov96_021F350C_Rec {
    s32 unk_00;
    u16 unk_04;
    u16 unk_06;
} UnkStruct_ov96_021F350C_Rec;

void ov96_021EAF78(void *obj, u32 a1, u32 a2, s32 *out40, s32 *out3C, s32 *out38);
s32 ov96_021F38FC(s32 a, s32 b);
void ov96_021EB06C(void *obj, u32 a1, u32 a2, s32 *out1, s32 *out2);
void ov96_021F333C(u32 a, UnkStruct_ov96_021F350C_Rec *buf);
BOOL ov96_021F3B04(u16 a, u16 b, s16 *outB, s16 *outA);
void ov96_021F380C(u32 count, u8 **list);
void ov96_021F3888(u8 *p, u32 count, UnkStruct_ov96_021F350C_Rec *buf, u8 *ent, u8 **list);
u8 ov96_021F3B38(u32 count, u8 **objs, u8 **out);
void ov96_021EB0A4(void *obj, u32 a1, u32 a2, s32 *out1, s32 *out2);

void ov96_021F350C(u8 *param0, u32 param1, u32 param2) {
    // Saved registers of the original's frame (push {r3-r7, lr}); the pick index below is not bounds checked.
    u32 entrySaved[6];
    register u32 *savedPtr __asm__("r0") = entrySaved;
    __asm__ volatile("str r3, [r0]\n\tstr r4, [r0, #4]\n\tstr r5, [r0, #8]\n\tstr r6, [r0, #12]" : : "l"(savedPtr) : "memory");
    entrySaved[4] = *(u32 *)__builtin_frame_address(0);
    entrySaved[5] = *((u32 *)__builtin_frame_address(0) + 1);
    u32 *entrySp = (u32 *)((u8 *)__builtin_frame_address(0) + 8);

    u8 *ent;
    u8 *cur;
    u32 *coords;
    s32 *coordsS;
    s32 l28, l2C, l30, l34, l38, l3C, l40, l44, l48;
    s16 pos[2] __attribute__((aligned(4)));
    UnkStruct_ov96_021F350C_Rec buf[4];
    u8 *slots[50]; // 0..24: picked objects, 25..49: all cells
    u8 *listA[9];
    u8 *listB[16];
    int cntA, cntB;
    int i;
    int x, y, dx, dy;
    s32 posA, posB;
    u8 n;
    u8 pick;
    u8 *sel;
    u8 *target;
    s32 v;

    ent = param0 + (param1 << 5);
    if (**(u32 **)(ent + 0x10) == 0) {
        return;
    }
    if (*(u32 *)(ent + 0x18) == 0) {
        GF_AssertFail();
        return;
    }
    v = *(s32 *)(param0 + 0x4b4 + param0[0x4e8] * 4);
    if (v < 3) {
        if ((s32)LCRandom() % 100 < 0x1e) {
            *(s32 *)(param0 + 0x4b4 + param0[0x4e8] * 4) += 1;
            return;
        }
    }
    cur = param0;
    for (i = 0; i < 12; i++) {
        s32 r;
        if (**(u32 **)(cur + 0x10) != 0) {
            coords = (u32 *)((u32) * (u32 **)(cur + 0xc) & ~3u);
            ov96_021EAF78(*(void **)(cur + 0x1c), coords[0], coords[1], &l40, &l3C, &l38);
            r = ov96_021F38FC(l40 / 4096, l3C / 4096);
        } else {
            r = -1;
        }
        *(s32 *)cur = r;
        cur += 0x20;
    }
    coordsS = *(s32 **)(ent + 0xc);
    ov96_021EB06C(*(void **)(ent + 0x1c), coordsS[0] / 4096, coordsS[1] / 4096, &l48, &l44);
    *(s32 *)ent = ov96_021F38FC(l48, l44);
    ov96_021F333C(param2, buf);
    cur = param0;
    for (i = 0; i < 4; i++) {
        if (buf[i].unk_00 > 0) {
            *(s32 *)(cur + 0x4a0) = ov96_021F38FC(buf[i].unk_04, buf[i].unk_06);
        } else {
            *(s32 *)(cur + 0x4a0) = -1;
        }
        cur += 4;
    }
    if (ov96_021F3B04((u16)l48, (u16)l44, &pos[1], &pos[0]) == 0) {
        GF_AssertFail();
    }
    cntA = 0;
    cntB = 0;
    posB = pos[1];
    posA = pos[0];
    cur = param0;
    for (i = 0; i < 0x19; i++) {
        u8 *cell = param0 + 0x180 + i * 0x20;
        *(s32 *)(cur + 0x19c) = i;
        *(s32 *)(cur + 0x180) = i % 5 - 2 + posB;
        *(s32 *)(cur + 0x184) = i / 5 - 2 + posA;
        x = *(s32 *)(cur + 0x180);
        y = *(s32 *)(cur + 0x184);
        if (x >= 0 && y >= 0 && x < 7 && y < 5) {
            *(s32 *)(cur + 0x190) = 1;
        } else {
            *(s32 *)(cur + 0x190) = 0;
        }
        dx = *(s32 *)(cur + 0x180) - posB;
        dy = *(s32 *)(cur + 0x184) - posA;
        slots[25 + i] = cell;
        if (dx >= -1 && dx <= 1 && dy >= -1 && dy <= 1) {
            listA[cntA++] = cell;
        } else {
            listB[cntB++] = cell;
        }
        cur += 0x20;
    }
    if (cntA != 9) {
        GF_AssertFail();
    }
    if (cntB != 0x10) {
        GF_AssertFail();
    }
    ov96_021F380C(9, listA);
    *(s32 *)(listA[4] + 8) = l48;
    *(s32 *)(listA[4] + 0xc) = l44;
    ov96_021F3888(param0, 9, buf, ent, listA);
    n = ov96_021F3B38(9, listA, slots);
    if (*(s32 *)(slots[0] + 0x18) >= 3) {
        pick = (u8)((s32)LCRandom() % n);
        if (pick < 50) {
            sel = slots[pick];
        } else if (pick < 56) {
            sel = (u8 *)entrySaved[pick - 50];
        } else {
            sel = (u8 *)entrySp[pick - 56];
        }
        ov96_021EB0A4(*(void **)(ent + 0x1c), *(u32 *)(sel + 8), *(u32 *)(sel + 0xc), &l34, &l30);
        target = *(u8 **)(ent + 0x18);
        *(s32 *)target = l34 << 12;
        target = *(u8 **)(ent + 0x18);
        *(s32 *)(target + 4) = l30 << 12;
        target = *(u8 **)(ent + 0x18);
        *(s32 *)(target + 8) = 0;
        return;
    }
    ov96_021F380C(0x10, listB);
    ov96_021F3888(param0, 0x19, buf, ent, &slots[25]);
    n = ov96_021F3B38(0x19, &slots[25], slots);
    pick = (u8)((s32)LCRandom() % n);
    if (pick < 50) {
        sel = slots[pick];
    } else if (pick < 56) {
        sel = (u8 *)entrySaved[pick - 50];
    } else {
        sel = (u8 *)entrySp[pick - 56];
    }
    ov96_021EB0A4(*(void **)(ent + 0x1c), *(u32 *)(sel + 8), *(u32 *)(sel + 0xc), &l2C, &l28);
    target = *(u8 **)(ent + 0x18);
    *(s32 *)target = l2C << 12;
    target = *(u8 **)(ent + 0x18);
    *(s32 *)(target + 4) = l28 << 12;
    target = *(u8 **)(ent + 0x18);
    *(s32 *)(target + 8) = 0;
}
