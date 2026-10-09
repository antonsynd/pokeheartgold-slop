#include "global.h"

#include "heap.h"

typedef struct UnkStruct_0201010C_Range {
    u8 unk_00;
    u8 unk_01;
    u16 unk_02;
} UnkStruct_0201010C_Range;

typedef struct UnkStruct_0201010C_Desc {
    u8 filler_00[8];
    u8 unk_08;
    u8 filler_09[2];
    u8 unk_0B;
    u8 unk_0C[8];
    fx32 unk_14;
} UnkStruct_0201010C_Desc;

typedef struct UnkStruct_0201010C_State {
    u8 filler_000[0x4C];
    u8 unk_4C[0x334];
    UnkStruct_0201010C_Desc *unk_380;
    u8 unk_384;
    u8 unk_385;
    u8 unk_386;
    u8 filler_387;
} UnkStruct_0201010C_State;

typedef struct FadeWork {
    int type;
    int steps;
    int framesPerStep;
    int unk_0C;
    int screen;
    UnkStruct_0201010C_State *unk_14;
    void *windows;
    void *hblank;
    enum HeapID heapID;
    u16 color;
    int unk_28;
    int unk_2C;
} FadeWork;

void sub_02010F34(int a0, void *windows, int screen);
void sub_02011068(void *windows, int a1, int screen, int a3);
void sub_020117A0(UnkStruct_0201010C_State *state, UnkStruct_0201010C_Desc *desc, int a2, int framesPerStep, int screen, void *windows);
BOOL sub_020117FC(UnkStruct_0201010C_State *state);
void sub_02012940(u8 *a0, u8 *a1, int a2, int framesPerStep, int screen, void *windows, void *hblank, enum HeapID heapID);
BOOL sub_02012A2C(u8 *a0);

void sub_02012ACC(UnkStruct_0201010C_Range *range, u8 *dst, int a2, int a3);
void sub_02012B1C(FadeWork *work, UnkStruct_0201010C_Desc *desc);
BOOL sub_02012B80(FadeWork *work);
void sub_02012BE8(UnkStruct_0201010C_State *state, UnkStruct_0201010C_Desc *desc, int steps, int framesPerStep, int screen, void *windows, void *hblank, enum HeapID heapID);
BOOL sub_02012C68(UnkStruct_0201010C_State *state, FadeWork *work);
void sub_02012CDC(UnkStruct_0201010C_State *state, UnkStruct_0201010C_Desc *desc, int steps, int framesPerStep, int screen, void *windows, void *hblank, enum HeapID heapID);
BOOL sub_02012D4C(UnkStruct_0201010C_State *state, FadeWork *work);

void sub_02012ACC(UnkStruct_0201010C_Range *range, u8 *dst, int a2, int a3) {
    int start = range->unk_00;
    int end = range->unk_01;
    int target = (end - start) * a2 / a3 + start;
    int i;
    int n;
    int value;

    if (start <= end) {
        i = start;
        n = end;
        value = range->unk_02;
    } else {
        i = end;
        n = start;
        if (range->unk_02 == 0) {
            value = 1;
        } else {
            value = 0;
        }
    }
    for (; i < n; i++) {
        if (i == target) {
            if (value == 0) {
                value = 1;
            } else {
                value = 0;
            }
        }
        dst[i] = value;
    }
}

void sub_02012B1C(FadeWork *work, UnkStruct_0201010C_Desc *desc) {
    work->unk_14 = Heap_Alloc(work->heapID, sizeof(UnkStruct_0201010C_State));
    memset(work->unk_14, 0, sizeof(UnkStruct_0201010C_State));
    if (desc->unk_0B == 0) {
        sub_02012BE8(work->unk_14, desc, work->steps, work->framesPerStep, work->screen, work->windows, work->hblank, work->heapID);
    } else {
        sub_02012CDC(work->unk_14, desc, work->steps, work->framesPerStep, work->screen, work->windows, work->hblank, work->heapID);
    }
    work->unk_0C++;
}

BOOL sub_02012B80(FadeWork *work) {
    UnkStruct_0201010C_State *state = work->unk_14;
    BOOL result = FALSE;
    BOOL done;

    switch (work->unk_0C) {
    case 1:
        if (state->unk_386 == 0) {
            done = sub_02012C68(state, work);
        } else {
            done = sub_02012D4C(state, work);
        }
        if (done == TRUE) {
            sub_02010F34(work->unk_28, work->windows, work->screen);
            work->unk_0C++;
        }
        break;
    case 2:
        Heap_Free(state);
        work->unk_14 = NULL;
        result = TRUE;
        work->unk_0C++;
        break;
    case 3:
        result = TRUE;
        break;
    default:
        GF_AssertFail();
        break;
    }
    return result;
}

void sub_02012BE8(UnkStruct_0201010C_State *state, UnkStruct_0201010C_Desc *desc, int steps, int framesPerStep, int screen, void *windows, void *hblank, enum HeapID heapID) {
    int v = FX_Whole(FX_Mul(steps << FX32_SHIFT, desc->unk_14));

    state->unk_384 = steps - v;
    state->unk_380 = desc;
    state->unk_386 = desc->unk_0B;
    sub_020117A0(state, desc, v, framesPerStep, screen, windows);
    if (desc->unk_08 == 0) {
        sub_02011068(windows, 1, screen, desc->unk_0B);
    } else {
        sub_02011068(windows, 2, screen, desc->unk_0B);
    }
    state->unk_385 = 0;
}

BOOL sub_02012C68(UnkStruct_0201010C_State *state, FadeWork *work) {
    BOOL result = FALSE;

    switch (state->unk_385) {
    case 0:
        if (sub_020117FC(state) == TRUE) {
            state->unk_385++;
            sub_02012940(state->unk_4C, state->unk_380->unk_0C, state->unk_384, work->framesPerStep, work->screen, work->windows, work->hblank, work->heapID);
        }
        break;
    case 1:
        if (sub_02012A2C(state->unk_4C) == TRUE) {
            result = TRUE;
            state->unk_385++;
        }
        break;
    case 2:
        result = TRUE;
        break;
    }
    return result;
}

void sub_02012CDC(UnkStruct_0201010C_State *state, UnkStruct_0201010C_Desc *desc, int steps, int framesPerStep, int screen, void *windows, void *hblank, enum HeapID heapID) {
    int v = FX_Whole(FX_Mul(steps << FX32_SHIFT, desc->unk_14));

    state->unk_384 = v;
    state->unk_380 = desc;
    state->unk_386 = desc->unk_0B;
    sub_02012940(state->unk_4C, state->unk_380->unk_0C, steps - state->unk_384, framesPerStep, screen, windows, hblank, heapID);
    state->unk_385 = 0;
}

BOOL sub_02012D4C(UnkStruct_0201010C_State *state, FadeWork *work) {
    BOOL result = FALSE;

    switch (state->unk_385) {
    case 0:
        if (sub_02012A2C(state->unk_4C) == TRUE) {
            state->unk_385++;
            sub_020117A0(state, state->unk_380, state->unk_384, work->framesPerStep, work->screen, work->windows);
            if (state->unk_380->unk_08 == 0) {
                sub_02011068(work->windows, 1, work->screen, state->unk_380->unk_0B);
            } else {
                sub_02011068(work->windows, 2, work->screen, state->unk_380->unk_0B);
            }
        }
        break;
    case 1:
        if (sub_020117FC(state) == TRUE) {
            result = TRUE;
            state->unk_385++;
        }
        break;
    case 2:
        result = TRUE;
        break;
    }
    return result;
}
