#include "global.h"

#include "heap.h"
#include "screen_fade.h"
#include "sys_task.h"
#include "sys_task_api.h"
#include "system.h"

typedef void (*FadeHBlankFunc)(void *);

typedef struct FadeHBlank {
    void *arg[2];
    FadeHBlankFunc func[2];
    int active[2];
} FadeHBlank;

typedef struct FadeWork {
    int type;
    int steps;
    int framesPerStep;
    int unk_0C;
    int screen;
    int unk_14;
    void *windows;
    FadeHBlank *hblank;
    enum HeapID heapID;
    u16 color;
    int unk_28;
    int unk_2C;
} FadeWork;

typedef struct FadeCtrl {
    int order;
    int mainActive;
    int subActive;
    int mainEnabled;
    int subEnabled;
    FadeWork main;
    FadeWork sub;
    FadeHBlank hblank;
    u8 windows[0xC0];
    u16 active;
    u8 mainFlag;
    u8 subFlag;
    u16 color;
} FadeCtrl;

typedef struct FadeHBlankRegisterTask {
    FadeHBlank *hblank;
    void *arg;
    FadeHBlankFunc func;
    int idx;
} FadeHBlankRegisterTask;

typedef struct FadeHBlankClearTask {
    FadeHBlank *hblank;
    int idx;
} FadeHBlankClearTask;

typedef BOOL (*FadeFunc)(FadeWork *work);

extern FadeCtrl _021D0EF4;
extern const FadeFunc sFadeFuncPtrs[43];

void GXx_SetMasterBrightness_(vu16 *reg, int brightness);
void sub_020131F4(u32 a0, int a1);
void sub_02013424(void *base, u32 a1, u32 idx);
void sub_02013440(void *base, u32 a1, u32 a2, u32 a3, u32 a4);
void sub_02013468(void *base, s32 a1, s32 a2, s32 a3);
void sub_02013488(void *base, s16 a1, s16 a2, s16 a3, s16 a4, u32 a5, u32 a6);

extern BOOL FadeFunc_00(FadeWork *work);
extern BOOL FadeFunc_01(FadeWork *work);
extern BOOL FadeFunc_02(FadeWork *work);
extern BOOL FadeFunc_03(FadeWork *work);
extern BOOL FadeFunc_04(FadeWork *work);
extern BOOL FadeFunc_05(FadeWork *work);
extern BOOL FadeFunc_06(FadeWork *work);
extern BOOL FadeFunc_07(FadeWork *work);
extern BOOL FadeFunc_08(FadeWork *work);
extern BOOL FadeFunc_09(FadeWork *work);
extern BOOL FadeFunc_10(FadeWork *work);
extern BOOL FadeFunc_11(FadeWork *work);
extern BOOL FadeFunc_12(FadeWork *work);
extern BOOL FadeFunc_13(FadeWork *work);
extern BOOL FadeFunc_14(FadeWork *work);
extern BOOL FadeFunc_15(FadeWork *work);
extern BOOL FadeFunc_16(FadeWork *work);
extern BOOL FadeFunc_17(FadeWork *work);
extern BOOL FadeFunc_18(FadeWork *work);
extern BOOL FadeFunc_19(FadeWork *work);
extern BOOL FadeFunc_20(FadeWork *work);
extern BOOL FadeFunc_21(FadeWork *work);
extern BOOL FadeFunc_22(FadeWork *work);
extern BOOL FadeFunc_23(FadeWork *work);
extern BOOL FadeFunc_24(FadeWork *work);
extern BOOL FadeFunc_25(FadeWork *work);
extern BOOL FadeFunc_26(FadeWork *work);
extern BOOL FadeFunc_27(FadeWork *work);
extern BOOL FadeFunc_28(FadeWork *work);
extern BOOL FadeFunc_29(FadeWork *work);
extern BOOL FadeFunc_30(FadeWork *work);
extern BOOL FadeFunc_31(FadeWork *work);
extern BOOL FadeFunc_32(FadeWork *work);
extern BOOL FadeFunc_33(FadeWork *work);
extern BOOL FadeFunc_34(FadeWork *work);
extern BOOL FadeFunc_35(FadeWork *work);
extern BOOL FadeFunc_36(FadeWork *work);
extern BOOL FadeFunc_37(FadeWork *work);
extern BOOL FadeFunc_38(FadeWork *work);
extern BOOL FadeFunc_39(FadeWork *work);
extern BOOL FadeFunc_40(FadeWork *work);
extern BOOL FadeFunc_41(FadeWork *work);
extern BOOL FadeFunc_42(FadeWork *work);


static void sub_02010014(void *unused);
static BOOL CallFadeFunc(FadeWork *work);
static void FadeWork_UpdateFrame(int *active, FadeWork *work);
static BOOL DoFadeUpdateFrame(FadeCtrl *ctrl, FadeWork *main, FadeWork *sub);
static void HandleEndFade(FadeCtrl *ctrl);
static void sub_0200FE14(int mode, FadeCtrl *ctrl);
static void sub_0200FE78(FadeCtrl *ctrl, int order, int mainEnabled, int subEnabled);
static void sub_0200FE84(FadeWork *work, int type, int steps, int framesPerStep, int unk_0C, int unk_14, int screen, void *windows, FadeHBlank *hblank, enum HeapID heapID, u16 color);
static void sub_0200FEB0(FadeHBlank *hblank);
static void sub_0200FECC(void *arg);
static void sub_0200FEE4(FadeHBlank *hblank, void *arg, FadeHBlankFunc func, int idx);
static void sub_0200FF5C(FadeHBlank *hblank, int idx);
static void sub_0200FFD8(SysTask *task, void *data);
static void sub_0200FFF8(SysTask *task, void *data);
static u16 sub_02010018(FadeCtrl *ctrl, u16 color);
static u16 sub_0201002C(FadeCtrl *ctrl);
static void sub_02010050(SysTask *task, void *data);
static void sub_02010064(FadeWork *work);
static void sub_02010094(FadeWork *work);
static void sub_020100C4(FadeCtrl *ctrl);
void SetMasterBrightness(PMLCDTarget screen, int brightness);

void BeginNormalPaletteFade(enum FadeMode mode, enum FadeType typeMain, enum FadeType typeSub, u16 color, int steps, int framesPerStep, enum HeapID heapID) {
    GF_ASSERT(steps != 0);
    GF_ASSERT(framesPerStep != 0);
    GF_ASSERT(_021D0EF4.active == 0);
    sub_020100C4(&_021D0EF4);
    sub_0200FE14(mode, &_021D0EF4);
    sub_0200FEB0(&_021D0EF4.hblank);
    color = sub_02010018(&_021D0EF4, color);
    sub_0200FE84(&_021D0EF4.main, typeMain, steps, framesPerStep, 0, 0, 0, _021D0EF4.windows, &_021D0EF4.hblank, heapID, color);
    sub_0200FE84(&_021D0EF4.sub, typeSub, steps, framesPerStep, 0, 0, 1, _021D0EF4.windows, &_021D0EF4.hblank, heapID, color);
    _021D0EF4.active = 1;
    FadeWork_UpdateFrame(&_021D0EF4.mainActive, &_021D0EF4.main);
    FadeWork_UpdateFrame(&_021D0EF4.subActive, &_021D0EF4.sub);
    if (_021D0EF4.mainEnabled != 0) {
        sub_02010064(&_021D0EF4.main);
        _021D0EF4.mainFlag = 1;
    }
    if (_021D0EF4.subEnabled != 0) {
        sub_02010064(&_021D0EF4.sub);
        _021D0EF4.subFlag = 1;
    }
}

void HandleFadeUpdateFrame(void) {
    FadeCtrl *ctrl = &_021D0EF4;

    if (_021D0EF4.active != 0) {
        if (DoFadeUpdateFrame(ctrl, &ctrl->main, &ctrl->sub) == TRUE) {
            HandleEndFade(ctrl);
        }
    }
}

BOOL IsPaletteFadeFinished(void) {
    if (_021D0EF4.active == 0) {
        return TRUE;
    }
    return FALSE;
}

void sub_0200FB70(void) {
    sub_0200FF5C(&_021D0EF4.hblank, 0);
    sub_0200FF5C(&_021D0EF4.hblank, 1);
    if (_021D0EF4.mainActive != 0) {
        _021D0EF4.main.unk_0C = 2;
    }
    if (_021D0EF4.subActive != 0) {
        _021D0EF4.sub.unk_0C = 2;
    }
    FadeWork_UpdateFrame(&_021D0EF4.mainActive, &_021D0EF4.main);
    FadeWork_UpdateFrame(&_021D0EF4.subActive, &_021D0EF4.sub);
    _021D0EF4.active = 0;
    _021D0EF4.mainFlag = 0;
    _021D0EF4.subFlag = 0;
    sub_020100C4(&_021D0EF4);
}

void ResetVisibleHardwareWindows(PMLCDTarget screen) {
    sub_020131F4(0, screen);
}

void SetMasterBrightnessNeutral(PMLCDTarget screen) {
    SetMasterBrightness(screen, 0);
}

void sub_0200FBF4(PMLCDTarget screen, u16 color) {
    int brightness;

    if (color == 0xFFFF) {
        color = _021D0EF4.color;
    }
    if (color == 0x7FFF) {
        brightness = 16;
    } else {
        brightness = -16;
    }
    SetMasterBrightness(screen, brightness);
}

void sub_0200FC20(u16 color) {
    int brightness;

    if (color == 0xFFFF) {
        color = _021D0EF4.color;
    }
    if (color == 0x7FFF) {
        brightness = 16;
    } else {
        brightness = -16;
    }
    SetMasterBrightness(PM_LCD_TOP, brightness);
    SetMasterBrightness(PM_LCD_BOTTOM, brightness);
    _021D0EF4.color = color;
}

void sub_0200FC60(PMLCDTarget screen, u16 color) {
    if (color == 0xFFFF) {
        color = _021D0EF4.color;
    }
    if (screen == PM_LCD_TOP) {
        GX_LoadBGPltt(&color, 0, 2);
    } else {
        GXS_LoadBGPltt(&color, 0, 2);
    }
    sub_02013424(_021D0EF4.windows, 1, screen);
    sub_02013440(_021D0EF4.windows, 0x3F, 0, 0, screen);
    sub_02013488(_021D0EF4.windows, 0, 0, 0, 0, 0, screen);
    sub_02013468(_021D0EF4.windows, 0x20, 0, screen);
}

void sub_0200FCDC(u16 color) {
    GX_LoadBGPltt(&color, 0, 2);
    GXS_LoadBGPltt(&color, 0, 2);
}

void SetMasterBrightness(PMLCDTarget screen, int brightness) {
    if (screen == PM_LCD_TOP) {
        GXx_SetMasterBrightness_(&reg_GX_MASTER_BRIGHT, brightness);
    } else {
        GXx_SetMasterBrightness_(&reg_GXS_DB_MASTER_BRIGHT, brightness);
    }
}

static void HandleEndFade(FadeCtrl *ctrl) {
    ctrl->active = 0;
    ctrl->color = sub_0201002C(ctrl);
    if (ctrl->mainEnabled != 0) {
        sub_02010094(&ctrl->main);
        if (ctrl->main.unk_28 == 0) {
            _021D0EF4.mainFlag = 0;
        }
    }
    if (ctrl->subEnabled != 0) {
        sub_02010094(&ctrl->sub);
        if (ctrl->main.unk_28 == 0) {
            _021D0EF4.subFlag = 0;
        }
    }
    sub_020100C4(ctrl);
}

static BOOL DoFadeUpdateFrame(FadeCtrl *ctrl, FadeWork *main, FadeWork *sub) {
    switch (ctrl->order) {
    case 0:
        FadeWork_UpdateFrame(&ctrl->mainActive, main);
        FadeWork_UpdateFrame(&ctrl->subActive, sub);
        break;
    case 1:
        if (ctrl->mainActive != 0) {
            FadeWork_UpdateFrame(&ctrl->mainActive, main);
        } else {
            FadeWork_UpdateFrame(&ctrl->subActive, sub);
        }
        break;
    case 2:
        if (ctrl->subActive != 0) {
            FadeWork_UpdateFrame(&ctrl->subActive, sub);
        } else {
            FadeWork_UpdateFrame(&ctrl->mainActive, main);
        }
        break;
    }
    if (ctrl->mainActive == 0 && ctrl->subActive == 0) {
        return TRUE;
    }
    return FALSE;
}

static void FadeWork_UpdateFrame(int *active, FadeWork *work) {
    if (*active != 0) {
        if (CallFadeFunc(work) == TRUE) {
            *active = 0;
        }
    }
}

static BOOL CallFadeFunc(FadeWork *work) {
    return sFadeFuncPtrs[work->type](work);
}

static void sub_0200FE14(int mode, FadeCtrl *ctrl) {
    switch (mode) {
    case 0:
        sub_0200FE78(ctrl, 0, 1, 1);
        break;
    case 1:
        sub_0200FE78(ctrl, 1, 1, 1);
        break;
    case 2:
        sub_0200FE78(ctrl, 2, 1, 1);
        break;
    case 3:
        sub_0200FE78(ctrl, 1, 1, 0);
        break;
    case 4:
        sub_0200FE78(ctrl, 2, 0, 1);
        break;
    }
}

static void sub_0200FE78(FadeCtrl *ctrl, int order, int mainEnabled, int subEnabled) {
    ctrl->order = order;
    ctrl->mainActive = mainEnabled;
    ctrl->subActive = subEnabled;
    ctrl->mainEnabled = mainEnabled;
    ctrl->subEnabled = subEnabled;
}

static void sub_0200FE84(FadeWork *work, int type, int steps, int framesPerStep, int unk_0C, int unk_14, int screen, void *windows, FadeHBlank *hblank, enum HeapID heapID, u16 color) {
    work->type = type;
    work->steps = steps;
    work->framesPerStep = framesPerStep;
    work->unk_0C = unk_0C;
    work->unk_14 = unk_14;
    work->screen = screen;
    work->windows = windows;
    work->hblank = hblank;
    work->heapID = heapID;
    work->color = color;
}

static void sub_0200FEB0(FadeHBlank *hblank) {
    int i;

    for (i = 0; i < 2; i++) {
        hblank->arg[i] = NULL;
        hblank->func[i] = sub_02010014;
        hblank->active[i] = 0;
    }
}

static void sub_0200FECC(void *arg) {
    FadeHBlank *hblank = arg;

    hblank->func[0](hblank->arg[0]);
    hblank->func[1](hblank->arg[1]);
}

static void sub_0200FEE4(FadeHBlank *hblank, void *arg, FadeHBlankFunc func, int idx) {
    u8 ok = TRUE;

    GF_ASSERT(hblank->active[idx] == 0);
    GF_ASSERT(hblank->func[idx] != NULL);
    if (hblank->active[0] == 0 && hblank->active[1] == 0) {
        ok = Main_SetHBlankIntrCB(sub_0200FECC, hblank);
    }
    GF_ASSERT(ok == TRUE);
    hblank->arg[idx] = arg;
    if (func != NULL) {
        hblank->func[idx] = func;
    } else {
        hblank->func[idx] = sub_02010014;
    }
    hblank->active[idx] = 1;
}

static void sub_0200FF5C(FadeHBlank *hblank, int idx) {
    hblank->active[idx] = 0;
    if (hblank->active[0] == 0 && hblank->active[1] == 0) {
        HBlankInterruptDisable();
    }
    hblank->func[idx] = sub_02010014;
    hblank->arg[idx] = NULL;
}

void sub_0200FF88(FadeHBlank *hblank, void *arg, FadeHBlankFunc func, int idx, enum HeapID heapID) {
    FadeHBlankRegisterTask *data = Heap_AllocAtEnd(heapID, sizeof(FadeHBlankRegisterTask));

    data->hblank = hblank;
    data->arg = arg;
    data->func = func;
    data->idx = idx;
    SysTask_CreateOnVWaitQueue(sub_0200FFD8, data, 0x400);
}

void sub_0200FFB4(FadeHBlank *hblank, int idx, enum HeapID heapID) {
    FadeHBlankClearTask *data = Heap_AllocAtEnd(heapID, sizeof(FadeHBlankClearTask));

    data->hblank = hblank;
    data->idx = idx;
    SysTask_CreateOnVWaitQueue(sub_0200FFF8, data, 0x400);
}

static void sub_0200FFD8(SysTask *task, void *data) {
    FadeHBlankRegisterTask *args = data;

    sub_0200FEE4(args->hblank, args->arg, args->func, args->idx);
    SysTask_Destroy(task);
    Heap_Free(data);
}

static void sub_0200FFF8(SysTask *task, void *data) {
    FadeHBlankClearTask *args = data;

    sub_0200FF5C(args->hblank, args->idx);
    SysTask_Destroy(task);
    Heap_Free(data);
}

static void sub_02010014(void *unused) {
}

static u16 sub_02010018(FadeCtrl *ctrl, u16 color) {
    if (color == 0xFFFF) {
        color = ctrl->color;
    }
    return color;
}

static u16 sub_0201002C(FadeCtrl *ctrl) {
    FadeWork *work;

    if (ctrl->mainEnabled == 1) {
        work = &ctrl->main;
    } else {
        work = &ctrl->sub;
    }
    if (work->unk_28 == 1) {
        return work->color;
    }
    return ctrl->color;
}

static void sub_02010050(SysTask *task, void *data) {
    FadeWork *work = data;

    SetMasterBrightness(work->screen, 0);
    SysTask_Destroy(task);
}

static void sub_02010064(FadeWork *work) {
    if (work->unk_28 == 0 && (work->color == 0x7FFF || work->color == 0) && work->unk_2C == 0) {
        SysTask_CreateOnVWaitQueue(sub_02010050, work, 0x400);
    }
}

static void sub_02010094(FadeWork *work) {
    if (work->unk_28 == 1 && (work->color == 0x7FFF || work->color == 0) && work->unk_2C == 0) {
        sub_0200FBF4(work->screen, work->color);
        ResetVisibleHardwareWindows(work->screen);
    }
}

static void sub_020100C4(FadeCtrl *ctrl) {
    u8 *p;
    int i;

    p = (u8 *)ctrl;
    for (i = 0x14; i != 0; i--) {
        *p++ = 0;
    }
    memset(&ctrl->main, 0, sizeof(FadeWork));
    memset(&ctrl->sub, 0, sizeof(FadeWork));
    p = (u8 *)&ctrl->hblank;
    for (i = 0x18; i != 0; i--) {
        *p++ = 0;
    }
    memset(ctrl->windows, 0, sizeof(ctrl->windows));
}
