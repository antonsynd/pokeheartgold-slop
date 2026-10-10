#include "global.h"

extern void GF_AssertFail(void);
extern void ov01_021F55F4(s32 reset0, s32 reset1, s32 kept0, s32 kept1, void *landDataMan);
extern BOOL ov01_021F4728(s32 a, s32 b, s32 width); // same line
extern BOOL ov01_021F4704(s32 a, s32 b, s32 width); // same column
extern void ov01_021F54AC(s32 first, s32 second, u8 firstQuadrant, u8 secondQuadrant, u32 direction, void *landDataMan);

typedef struct UnkStruct_ov01_021F562C {
    u8 unk00[0xAD];
    u8 quadrant;     // 0xAD
    u8 unkAE[0x16];
    s32 width;       // 0xC4
    s32 height;      // 0xC8
} UnkStruct_ov01_021F562C;

void ov01_021F562C(s32 idx, u32 direction, UnkStruct_ov01_021F562C *mgr) {
    u32 callerR4, callerR5;
    s32 first, second;
    u32 q1, q2;
    __asm__ volatile("movs %0, r4" : "=l"(callerR4) : : "cc");
    __asm__ volatile("movs %0, r5" : "=l"(callerR5) : : "cc");
    first = (s32)callerR5;
    second = (s32)callerR4;

    switch (direction) {
    case 4:
        ov01_021F55F4(2, 3, 0, 1, mgr);
        if (mgr->quadrant == 2) {
            first = idx - mgr->width;
            q1 = 1;
            second = first - 1;
            q2 = 0;
            if (first < 0) {
                first = -1;
                second = -1;
            } else if (second < 0 || !ov01_021F4728(first, second, mgr->width)) {
                second = -1;
            }
        } else if (mgr->quadrant == 3) {
            first = idx - mgr->width;
            q1 = 0;
            second = first + 1;
            q2 = 1;
            if (first < 0) {
                first = -1;
                second = -1;
            } else if (!ov01_021F4728(first, second, mgr->width)) {
                second = -1;
            }
        } else {
            GF_AssertFail();
        }
        ov01_021F54AC(first, second, (u8)q1, (u8)q2, direction, mgr);
        return;
    case 3:
        ov01_021F55F4(1, 3, 0, 2, mgr);
        if (mgr->quadrant == 1) {
            first = idx - 1;
            second = idx - mgr->width - 1;
            q1 = 2;
            q2 = 0;
            if (first < 0 || !ov01_021F4728(first, idx, mgr->width)) {
                first = -1;
                second = -1;
            }
            if (second < 0 || !ov01_021F4704(first, second, mgr->width)) {
                second = -1;
            }
        } else if (mgr->quadrant == 3) {
            first = idx - 1;
            second = idx + mgr->width - 1;
            q1 = 0;
            q2 = 2;
            if (first < 0 || !ov01_021F4728(first, idx, mgr->width)) {
                first = -1;
                second = -1;
            }
            if (mgr->height * mgr->width <= second || !ov01_021F4704(first, second, mgr->width)) {
                second = -1;
            }
        } else {
            GF_AssertFail();
        }
        ov01_021F54AC(first, second, (u8)q1, (u8)q2, direction, mgr);
        return;
    case 1:
        ov01_021F55F4(0, 2, 1, 3, mgr);
        if (mgr->quadrant == 0) {
            first = idx + 1;
            second = idx - mgr->width + 1;
            q1 = 3;
            q2 = 1;
            if (mgr->height * mgr->width <= first || !ov01_021F4728(first, idx, mgr->width)) {
                first = -1;
                second = -1;
            }
            if (mgr->height * mgr->width <= second || !ov01_021F4704(first, second, mgr->width)) {
                second = -1;
            }
        } else if (mgr->quadrant == 2) {
            first = idx + 1;
            second = idx + mgr->width + 1;
            q1 = 1;
            q2 = 3;
            if (mgr->height * mgr->width <= first || !ov01_021F4728(first, idx, mgr->width)) {
                first = -1;
                second = -1;
            }
            if (second < 0 || !ov01_021F4704(first, second, mgr->width)) {
                second = -1;
            }
        }
        ov01_021F54AC(first, second, (u8)q1, (u8)q2, direction, mgr);
        return;
    case 2:
        ov01_021F55F4(0, 1, 2, 3, mgr);
        if (mgr->quadrant == 0) {
            q1 = 3;
            q2 = 2;
            first = idx + mgr->width;
            second = first - 1;
            if (mgr->height * mgr->width <= first) {
                first = -1;
                second = -1;
            } else if (!ov01_021F4728(first, second, mgr->width)) {
                second = -1;
            }
        } else if (mgr->quadrant == 1) {
            q1 = 2;
            q2 = 3;
            first = idx + mgr->width;
            second = first + 1;
            if (mgr->height * mgr->width <= first) {
                first = -1;
                second = -1;
            } else if (mgr->height * mgr->width <= second || !ov01_021F4728(first, second, mgr->width)) {
                second = -1;
            }
        } else {
            GF_AssertFail();
        }
        ov01_021F54AC(first, second, (u8)q1, (u8)q2, direction, mgr);
        return;
    default:
        GF_AssertFail();
        return;
    }
}
