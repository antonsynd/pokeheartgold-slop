#include "global.h"

void GF_AssertFail(void);
BOOL ov01_021F4728(int a, int b, int c);

u8 ov01_021F635C(int idx, int tileData, u8 *mgr) {
    int a4 = *(int *)(mgr + 0xa4);
    int c4;
    u8 v;
    if (a4 == idx) {
        return mgr[0xac];
    }
    if (idx == -1) {
        GF_AssertFail();
    }
    v = mgr[0xac];
    switch (v) {
    case 0:
        a4 = *(int *)(mgr + 0xa4);
        c4 = *(int *)(mgr + 0xc4);
        if (c4 == idx - a4) {
            return (u8)(v + 2);
        }
        if (idx - a4 == 1 && ov01_021F4728(a4, idx, c4)) {
            return (u8)(mgr[0xac] + 1);
        }
        a4 = *(int *)(mgr + 0xa4);
        c4 = *(int *)(mgr + 0xc4);
        if (c4 + 1 == idx - a4 && !ov01_021F4728(a4, idx, c4)) {
            return (u8)(mgr[0xac] + 3);
        }
        return 4;
    case 1:
        a4 = *(int *)(mgr + 0xa4);
        c4 = *(int *)(mgr + 0xc4);
        if (c4 == idx - a4) {
            return (u8)(v + 2);
        }
        if (a4 - idx == 1 && ov01_021F4728(a4, idx, c4)) {
            return (u8)(mgr[0xac] - 1);
        }
        a4 = *(int *)(mgr + 0xa4);
        c4 = *(int *)(mgr + 0xc4);
        if (c4 - 1 == idx - a4 && !ov01_021F4728(a4, idx, c4)) {
            return (u8)(mgr[0xac] + 1);
        }
        return 4;
    case 2:
        a4 = *(int *)(mgr + 0xa4);
        c4 = *(int *)(mgr + 0xc4);
        if (c4 == a4 - idx) {
            return (u8)(v - 2);
        }
        if (c4 - 1 == a4 - idx && !ov01_021F4728(a4, idx, c4)) {
            return (u8)(mgr[0xac] - 1);
        }
        a4 = *(int *)(mgr + 0xa4);
        if (idx - a4 == 1) {
            c4 = *(int *)(mgr + 0xc4);
            if (ov01_021F4728(a4, idx, c4)) {
                return (u8)(mgr[0xac] + 1);
            }
        }
        return 4;
    case 3:
        a4 = *(int *)(mgr + 0xa4);
        c4 = *(int *)(mgr + 0xc4);
        if (c4 == a4 - idx) {
            return (u8)(v - 2);
        }
        if (c4 + 1 == a4 - idx && !ov01_021F4728(a4, idx, c4)) {
            return (u8)(mgr[0xac] - 3);
        }
        a4 = *(int *)(mgr + 0xa4);
        if (a4 - idx == 1) {
            c4 = *(int *)(mgr + 0xc4);
            if (ov01_021F4728(a4, idx, c4)) {
                return (u8)(mgr[0xac] - 1);
            }
        }
        return 4;
    default:
        return 4;
    }
}
