#include "global.h"

void ov96_021F6524(u8 *a, int b, u32 c, u32 d) {
    u8 idxC = c;
    u8 idxD = d;
    s32 *arr = (s32 *)(a + 0xe00);
    s32 *pLo;
    s32 *pHi;
    u8 loIdx;
    u8 hiIdx;
    u8 *rowBase;
    s32 *row;
    s32 loVal;
    s32 hiVal;
    s32 n;
    s32 diff;
    s32 i;

    if (arr[idxC] > arr[idxD]) {
        pLo = &arr[idxD];
        pHi = &arr[idxC];
        loIdx = idxD;
        hiIdx = idxC;
    } else {
        pLo = &arr[idxC];
        pHi = &arr[idxD];
        loIdx = idxC;
        hiIdx = idxD;
    }
    rowBase = a + b * 0x200;
    row = (s32 *)(rowBase + 0x800);
    for (i = 0; i < 0x80; i++) {
        row[i] = 0;
    }
    loVal = *(s32 *)(a + loIdx * 0x200 + *pLo * 4 + 0x200);
    hiVal = *(s32 *)(a + hiIdx * 0x200 + *pHi * 4 + 0x200);
    n = *pHi - *pLo;
    diff = hiVal - loVal;
    for (i = 0; i < n - 1; i++) {
        *(s32 *)(rowBase + (*pLo + i) * 4 + 0x804) = loVal + (i + 1) * diff / n;
    }
}
