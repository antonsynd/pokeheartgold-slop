#include "global.h"
#include "unk_0200FA24.h"
#include "error_handling.h"
#include "heap.h"
#include "sys_task_api.h"
#include "system.h"
#include <nitro/gx/gx_load.h>

int sub_020131F4(int a0, int a1);
void sub_02013424(void *a0, int a1, int a2);
void sub_02013440(void *a0, int a1, int a2, int a3, int a4);
void sub_02013488(void *a0, int a1, int a2, int a3, int a4);
void sub_02013468(void *a0, int a1, int a2, int a3);
int Main_SetHBlankIntrCB(void (*cb)(void *), void *arg);
void HBlankInterruptDisable(void);
void GXx_SetMasterBrightness_(void *reg, int brightness);

int FadeFunc_00(void *);
int FadeFunc_01(void *);
int FadeFunc_02(void *);
int FadeFunc_03(void *);
int FadeFunc_04(void *);
int FadeFunc_05(void *);
int FadeFunc_06(void *);
int FadeFunc_07(void *);
int FadeFunc_08(void *);
int FadeFunc_09(void *);
int FadeFunc_10(void *);
int FadeFunc_11(void *);
int FadeFunc_12(void *);
int FadeFunc_13(void *);
int FadeFunc_14(void *);
int FadeFunc_15(void *);
int FadeFunc_16(void *);
int FadeFunc_17(void *);
int FadeFunc_18(void *);
int FadeFunc_19(void *);
int FadeFunc_20(void *);
int FadeFunc_21(void *);
int FadeFunc_22(void *);
int FadeFunc_23(void *);
int FadeFunc_24(void *);
int FadeFunc_25(void *);
int FadeFunc_26(void *);
int FadeFunc_27(void *);
int FadeFunc_28(void *);
int FadeFunc_29(void *);
int FadeFunc_30(void *);
int FadeFunc_31(void *);
int FadeFunc_32(void *);
int FadeFunc_33(void *);
int FadeFunc_34(void *);
int FadeFunc_35(void *);
int FadeFunc_36(void *);
int FadeFunc_37(void *);
int FadeFunc_38(void *);
int FadeFunc_39(void *);
int FadeFunc_40(void *);
int FadeFunc_41(void *);
int FadeFunc_42(void *);

typedef int (*FadeFuncPtr)(void *);

static const FadeFuncPtr sFadeFuncPtrs[] = {
    FadeFunc_00, FadeFunc_01, FadeFunc_02, FadeFunc_03, FadeFunc_04,
    FadeFunc_05, FadeFunc_06, FadeFunc_07, FadeFunc_08, FadeFunc_09,
    FadeFunc_10, FadeFunc_11, FadeFunc_12, FadeFunc_13, FadeFunc_14,
    FadeFunc_15, FadeFunc_16, FadeFunc_17, FadeFunc_18, FadeFunc_19,
    FadeFunc_20, FadeFunc_21, FadeFunc_22, FadeFunc_23, FadeFunc_24,
    FadeFunc_25, FadeFunc_26, FadeFunc_27, FadeFunc_28, FadeFunc_29,
    FadeFunc_30, FadeFunc_31, FadeFunc_32, FadeFunc_33, FadeFunc_34,
    FadeFunc_35, FadeFunc_36, FadeFunc_37, FadeFunc_38, FadeFunc_39,
    FadeFunc_40, FadeFunc_41, FadeFunc_42,
};

static u32 _021D0EF4;
static u32 _021D0EF8;
static u32 _021D0EFC[3];
static u32 _021D0F08[12];
static u32 _021D0F38[12];
static u32 _021D0F68[6];
static u32 _021D0F80[45];
static u32 _021D1034[5];

void sub_020100C4(void *arg);
void sub_0200FE14(int pattern, void *ptr);
void sub_0200FE78(void *ptr, int a1, int a2, int a3);
void sub_0200FE84(void *dest, int a1, int a2, int a3, int a4, int a5, int a6, u32 a7, u32 a8, int a9, u16 a10);
void sub_0200FEB0(void *arg);
void sub_0200FECC(void *arg);
void sub_0200FEE4(void *arg0, int a1, void *a2, int a3);
void sub_0200FF5C(void *arg0, int a1);
void sub_0200FF88(void *arg0, void *arg1, int a2, int a3, enum HeapID heapID);
void sub_0200FFB4(void *arg0, void *arg1, enum HeapID heapID);
void sub_0200FFD8(SysTask *, void *);
void sub_0200FFF8(SysTask *, void *);
void sub_02010014(void *);
int sub_02010018(void *arg0, int color);
int sub_0201002C(void *arg0);
void sub_02010050(SysTask *, void *);
void sub_02010064(void *arg0);
void sub_02010094(void *arg0);
void HandleEndFade(void *arg0);
int DoFadeUpdateFrame(void *arg0, void *arg1, void *arg2);
void FadeWork_UpdateFrame(void *arg0, void *arg1);
int CallFadeFunc(void *arg0);
void sub_0200FCDC(void);
void SetMasterBrightness(int, int);
void sub_0200FC20(int);
void sub_0200FC60(int, int, int, int, int, int, int);
void sub_0200FBF4(int, int);
void sub_0200FBDC(int);
void sub_0200FB70(void);

void BeginNormalPaletteFade(int pattern, int typeTop, int typeBottom, u16 color, int duration, int framesPer, enum HeapID heapID) {
    int v5;

    if (duration == 0) {
        GF_AssertFail();
    }
    if (framesPer == 0) {
        GF_AssertFail();
    }
    if (*(u16 *)((u8 *)_021D1034 + 0xC) != 0) {
        GF_AssertFail();
    }

    sub_020100C4(&_021D0EF4);
    sub_0200FE14(pattern, &_021D0EF4);
    sub_0200FEB0(&_021D0F68);
    v5 = sub_02010018(&_021D0EF4, color);

    sub_0200FE84(&_021D0F08, typeTop, duration, framesPer, 0, 0, 0, (u32)_021D0F80, (u32)_021D0F68, heapID, v5);
    sub_0200FE84(&_021D0F38, typeBottom, duration, framesPer, 0, 0, 1, (u32)_021D0F80, (u32)_021D0F68, heapID, v5);

    *(u16 *)((u8 *)_021D1034 + 0xC) = 1;
    FadeWork_UpdateFrame(&_021D0EF8, &_021D0F08);
    FadeWork_UpdateFrame(&_021D0EFC, &_021D0F38);

    if (*(u32 *)((u8 *)&_021D0EF4 + 0xC) != 0) {
        sub_02010064((void *)((u8 *)&_021D0EF4 + 0x14));
        *((u8 *)&_021D0EF4 + 0x14E) = 1;
    }

    if (*(u32 *)((u8 *)&_021D0EF4 + 0x10) != 0) {
        sub_02010064((void *)((u8 *)&_021D0EF4 + 0x44));
        *((u8 *)&_021D0EF4 + 0x14F) = 1;
    }
}

void HandleFadeUpdateFrame(void) {
    if (*(u16 *)((u8 *)_021D1034 + 0xC) != 0) {
        if (DoFadeUpdateFrame(&_021D0EF4, (void *)((u8 *)&_021D0EF4 + 0x14), (void *)((u8 *)&_021D0EF4 + 0x44)) == 1) {
            HandleEndFade(&_021D0EF4);
        }
    }
}

BOOL IsPaletteFadeFinished(void) {
    if (*(u16 *)((u8 *)_021D1034 + 0xC) != 0) {
        return FALSE;
    }
    return TRUE;
}

void sub_0200FB70(void) {
    sub_0200FF5C(&_021D0F68, 0);
    sub_0200FF5C(&_021D0F68, 1);

    if (*(u32 *)((u8 *)&_021D0EF4 + 4) != 0) {
        *(u32 *)((u8 *)&_021D0EF4 + 0x20) = 2;
    }

    if (*(u32 *)((u8 *)&_021D0EF4 + 8) != 0) {
        *(u32 *)((u8 *)&_021D0EF4 + 0x50) = 2;
    }

    FadeWork_UpdateFrame(&_021D0EF8, &_021D0F08);
    FadeWork_UpdateFrame(&_021D0EFC, &_021D0F38);

    *(u16 *)((u8 *)_021D1034 + 0xC) = 0;
    *((u8 *)_021D1034 + 0xE) = 0;
    *((u8 *)_021D1034 + 0xF) = 0;

    sub_020100C4(&_021D0EF4);
}

void sub_0200FBDC(int a0) {
    sub_020131F4(0, a0);
}

void SetMasterBrightnessNeutral(u32 screen) {
    SetMasterBrightness(screen, 0);
}

void sub_0200FBF4(int screen, int color) {
    int brightness;

    if (color == 0xFFFF) {
        color = *(u16 *)((u8 *)_021D1034 + 0x10);
    }

    if (color == 0x7FFF) {
        brightness = 0x10;
    } else {
        brightness = ~0xF;
    }

    SetMasterBrightness(screen, brightness);
}

void sub_0200FC20(int color) {
    int v5;

    if (color == 0xFFFF) {
        color = *(u16 *)((u8 *)_021D1034 + 0x10);
    }

    if (color == 0x7FFF) {
        v5 = 0x10;
    } else {
        v5 = ~0xF;
    }

    SetMasterBrightness(0, v5);
    SetMasterBrightness(1, v5);

    *(u16 *)((u8 *)_021D1034 + 0x10) = color;
}

void sub_0200FC60(int a0, int a1, int a2, int a3, int a4, int a5, int a6) {
    int sp0x18[2];
    int sp0x1c[2];

    sp0x18[0] = a0;
    sp0x18[1] = a1;

    if (((u16 *)sp0x18)[2] == 0xFFFF) {
        ((u16 *)sp0x18)[2] = *(u16 *)((u8 *)_021D1034 + 0x10);
    }

    if (a0 == 0) {
        GX_LoadBGPltt(sp0x1c, 0, 2);
    } else {
        GXS_LoadBGPltt(sp0x1c, 0, 2);
    }

    sub_02013424(_021D0F80, 1, a0);
    sub_02013440(_021D0F80, 0x3F, 0, 0, a0);
    sub_02013488(_021D0F80, 0, 0, 0, a0);
    sub_02013468(_021D0F80, 0x20, 0, a0);
}

void sub_0200FCDC(void) {
    int sp0x8[2];

    GX_LoadBGPltt(sp0x8, 0, 2);
    GXS_LoadBGPltt(sp0x8, 0, 2);
}

void SetMasterBrightness(int screen, int brightness) {
    if (screen == 0) {
        GXx_SetMasterBrightness_((void *)0x0400006C, brightness);
    } else {
        GXx_SetMasterBrightness_((void *)0x0400106C, brightness);
    }
}

void HandleEndFade(void *arg0) {
    *(u16 *)((u8 *)arg0 + 0x14C) = 0;
    *(u16 *)((u8 *)arg0 + 0x150) = sub_0201002C(arg0);

    if (*(u32 *)((u8 *)arg0 + 0xC) != 0) {
        sub_02010094((void *)((u8 *)arg0 + 0x14));
        if (*(u32 *)((u8 *)arg0 + 0x3C) == 0) {
            *((u8 *)_021D1034 + 0xE) = 0;
        }
    }

    if (*(u32 *)((u8 *)arg0 + 0x10) != 0) {
        sub_02010094((void *)((u8 *)arg0 + 0x44));
        if (*(u32 *)((u8 *)arg0 + 0x3C) == 0) {
            *((u8 *)_021D1034 + 0xF) = 0;
        }
    }

    sub_020100C4(arg0);
}

int DoFadeUpdateFrame(void *arg0, void *arg1, void *arg2) {
    switch (*(u32 *)arg0) {
    case 0:
        FadeWork_UpdateFrame((void *)((u8 *)arg0 + 4), arg1);
        FadeWork_UpdateFrame((void *)((u8 *)arg0 + 8), arg2);
        break;
    case 1:
        if (*(u32 *)((u8 *)arg0 + 4) != 0) {
            FadeWork_UpdateFrame((void *)((u8 *)arg0 + 4), arg1);
        } else {
            FadeWork_UpdateFrame((void *)((u8 *)arg0 + 8), arg2);
        }
        break;
    case 2:
        if (*(u32 *)((u8 *)arg0 + 8) != 0) {
            FadeWork_UpdateFrame((void *)((u8 *)arg0 + 8), arg2);
        } else {
            FadeWork_UpdateFrame((void *)((u8 *)arg0 + 4), arg1);
        }
        break;
    }

    if (*(u32 *)((u8 *)arg0 + 4) == 0 && *(u32 *)((u8 *)arg0 + 8) == 0) {
        return 1;
    }
    return 0;
}

void FadeWork_UpdateFrame(void *arg0, void *arg1) {
    if (*(u32 *)arg0 != 0) {
        if (CallFadeFunc(arg1) == 1) {
            *(u32 *)arg0 = 0;
        }
    }
}

int CallFadeFunc(void *arg0) {
    int idx = *(u32 *)arg0;
    return sFadeFuncPtrs[idx](arg0);
}

void sub_0200FE14(int pattern, void *ptr) {
    switch (pattern) {
    case 0:
        sub_0200FE78(ptr, 0, 1, 1);
        break;
    case 1:
        sub_0200FE78(ptr, 1, 1, 1);
        break;
    case 2:
        sub_0200FE78(ptr, 2, 1, 1);
        break;
    case 3:
        sub_0200FE78(ptr, 1, 1, 0);
        break;
    case 4:
        sub_0200FE78(ptr, 2, 0, 1);
        break;
    }
}

void sub_0200FE78(void *ptr, int a1, int a2, int a3) {
    ((u32 *)ptr)[0] = a1;
    ((u32 *)ptr)[1] = a2;
    ((u32 *)ptr)[2] = a3;
    ((u32 *)ptr)[3] = a2;
    ((u32 *)ptr)[4] = a3;
}

void sub_0200FE84(void *dest, int a1, int a2, int a3, int a4, int a5, int a6, u32 a7, u32 a8, int a9, u16 a10) {
    ((u32 *)dest)[0] = a1;
    ((u32 *)dest)[1] = a2;
    ((u32 *)dest)[2] = a3;
    ((u32 *)dest)[3] = a4;
    ((u32 *)dest)[5] = a5;
    ((u32 *)dest)[4] = a6;
    ((u32 *)dest)[6] = a7;
    ((u32 *)dest)[7] = a8;
    ((u32 *)dest)[8] = a9;
    ((u16 *)dest)[18] = a10;
}

void sub_0200FEB0(void *arg) {
    u32 *ptr = (u32 *)arg;
    int i;

    for (i = 0; i < 2; i++) {
        ptr[0] = 0;
        ptr[2] = (u32)sub_02010014;
        ptr[4] = 0;
        ptr = (u32 *)((u8 *)ptr + 4);
    }
}

void sub_0200FECC(void *arg) {
    u32 *ptr = (u32 *)arg;
    int i;

    for (i = 0; i < 2; i++) {
        ((void (*)(u32))ptr[2])(ptr[0]);
        ptr = (u32 *)((u8 *)ptr + 4);
    }
}

void sub_0200FEE4(void *arg0, int a1, void *a2, int a3) {
    u32 *r5 = (u32 *)arg0;
    int r4 = a3 << 2;
    u32 *sp8 = (u32 *)((u8 *)arg0 + 0x10);
    int sp4 = 1;

    if (*(u32 *)((u8 *)sp8 + r4) != 0) {
        GF_AssertFail();
    }

    if (*(u32 *)((u8 *)arg0 + 8 + r4) == 0) {
        GF_AssertFail();
    }

    if (*(u32 *)((u8 *)arg0 + 0x10) == 0 && *(u32 *)((u8 *)arg0 + 0x14) == 0) {
        sp4 = (u8)Main_SetHBlankIntrCB((void (*)(void *))sub_0200FECC, arg0);
    }

    if (sp4 != 1) {
        GF_AssertFail();
    }

    *(u32 *)((u8 *)arg0 + r4) = a1;
    if (a2 != NULL) {
        *(u32 *)((u8 *)arg0 + 8 + r4) = (u32)a2;
    } else {
        *(u32 *)((u8 *)arg0 + 8 + r4) = (u32)sub_02010014;
    }

    *(u32 *)((u8 *)sp8 + r4) = 1;
}

void sub_0200FF5C(void *arg0, int a1) {
    int r4 = a1 << 2;

    *(u32 *)((u8 *)arg0 + r4 + 0x10) = 0;

    if (*(u32 *)((u8 *)arg0 + 0x10) == 0 && *(u32 *)((u8 *)arg0 + 0x14) == 0) {
        HBlankInterruptDisable();
    }

    *(u32 *)((u8 *)arg0 + r4 + 8) = (u32)sub_02010014;
    *(u32 *)((u8 *)arg0 + r4) = 0;
}

void sub_0200FF88(void *arg0, void *arg1, int a2, int a3, enum HeapID heapID) {
    void **r0 = (void **)Heap_AllocAtEnd(heapID, 0x10);

    r0[0] = arg0;
    r0[1] = arg1;
    ((u32 *)r0)[2] = (u32)a2;
    r0[3] = (void *)a3;
    SysTask_CreateOnVWaitQueue(sub_0200FFD8, r0, 0x400);
}

void sub_0200FFB4(void *arg0, void *arg1, enum HeapID heapID) {
    void **r0 = (void **)Heap_AllocAtEnd(heapID, 8);

    r0[0] = arg0;
    r0[1] = arg1;
    SysTask_CreateOnVWaitQueue(sub_0200FFF8, r0, 0x400);
}

void sub_0200FFD8(SysTask *task, void *arg1) {
    u32 *r4 = (u32 *)arg1;

    sub_0200FEE4((void *)r4[0], r4[1], (void *)r4[2], r4[3]);
    SysTask_Destroy(task);
    Heap_Free(arg1);
}

void sub_0200FFF8(SysTask *task, void *arg1) {
    u32 *r4 = (u32 *)arg1;

    sub_0200FF5C((void *)r4[0], r4[1]);
    SysTask_Destroy(task);
    Heap_Free(arg1);
}

void sub_02010014(void *arg) {
}

int sub_02010018(void *arg0, int color) {
    if (color == 0xFFFF) {
        return *(u16 *)((u8 *)arg0 + 0x150);
    }
    return color;
}

int sub_0201002C(void *arg0) {
    u8 *r2;

    if (*(u32 *)((u8 *)arg0 + 0xC) == 1) {
        r2 = (u8 *)arg0 + 0x14;
    } else {
        r2 = (u8 *)arg0 + 0x44;
    }

    if (*(u32 *)(r2 + 0x28) == 1) {
        return *(u16 *)(r2 + 0x24);
    }
    return *(u16 *)((u8 *)arg0 + 0x150);
}

void sub_02010050(SysTask *task, void *arg1) {
    SetMasterBrightness(((u32 *)arg1)[4], 0);
    SysTask_Destroy(task);
}

void sub_02010064(void *arg0) {
    u16 val;

    if (*(u32 *)((u8 *)arg0 + 0x28) != 0) {
        return;
    }

    val = *(u16 *)((u8 *)arg0 + 0x24);
    if (val == 0x7FFF || val == 0) {
        if (*(u32 *)((u8 *)arg0 + 0x2C) == 0) {
            SysTask_CreateOnVWaitQueue(sub_02010050, arg0, 0x400);
        }
    }
}

void sub_02010094(void *arg0) {
    u16 val;

    if (*(u32 *)((u8 *)arg0 + 0x28) != 1) {
        return;
    }

    val = *(u16 *)((u8 *)arg0 + 0x24);
    if (val == 0x7FFF || val == 0) {
        if (*(u32 *)((u8 *)arg0 + 0x2C) == 0) {
            sub_0200FBF4(((u32 *)arg0)[4], val);
            sub_0200FBDC(((u32 *)arg0)[4]);
        }
    }
}

void sub_020100C4(void *arg) {
    u8 *r4 = (u8 *)arg;
    u8 *r2;
    int n;

    r2 = r4;
    n = 0x14;
    while (n != 0) {
        *r2 = 0;
        r2++;
        n--;
    }

    memset(r4 + 0x14, 0, 0x30);
    memset(r4 + 0x44, 0, 0x30);

    r2 = r4 + 0x74;
    n = 0x18;
    while (n != 0) {
        *r2 = 0;
        r2++;
        n--;
    }

    memset(r4 + 0x8C, 0, 0xC0);
}
