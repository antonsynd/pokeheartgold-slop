#include "global.h"

#include "assert.h"
#include "heap.h"
#include "palette.h"
#include "sys_task_api.h"
#include "unk_02014A08.h"

typedef void (*UnkFunc_ov07_02222B30)(void *);
typedef void (*UnkFunc_ov07_02223038)(void *);

typedef struct UnkStruct_ov07_02222B30 {
    SysTask *unk0;
    SysTask *unk4;
    BOOL unk8;
    BOOL unkC;
    UnkFunc_ov07_02222B30 unk10;
    UnkFunc_ov07_02222B30 unk14;
    void *unk18;
} UnkStruct_ov07_02222B30;

typedef struct UnkStruct_ov07_02222BE4 {
    UnkStruct_ov07_02222B30 unk0;
    UnkStruct_02014A08 *unk1C;
    u32 unk20[192];
    u32 unk320[192];
    u32 unk620;
} UnkStruct_ov07_02222BE4;

typedef struct UnkStruct_ov07_02222CCC {
    UnkStruct_ov07_02222B30 unk0;
    UnkStruct_02014AD8 *unk1C;
} UnkStruct_ov07_02222CCC;

typedef struct UnkStruct_ov07_02222E74 {
    BOOL unk0;
    SysTask *unk4;
    int unk8;
    u16 unkC;
    u16 unkE;
    u16 unk10;
    u8 unk12;
    u8 unk13;
    u8 unk14;
    s8 unk15;
    s8 unk16;
    s8 unk17;
    PaletteData *unk18;
} UnkStruct_ov07_02222E74;

typedef struct UnkStruct_ov07_0221FA78 UnkStruct_ov07_0221FA78;

extern UnkFunc_ov07_02223038 ov07_02236520[];
extern void *ov07_0223649C[];

extern fx32 FX_Sqrt(fx32 x);
extern u16 FX_Atan2Idx(fx32 y, fx32 x);
extern void ov07_02222B30(UnkStruct_ov07_02222B30 *a0, void *a1, UnkFunc_ov07_02222B30 a2, UnkFunc_ov07_02222B30 a3);
extern void ov07_02222B70(UnkStruct_ov07_02222B30 *a0);
extern PaletteData *ov07_0221FA78(UnkStruct_ov07_0221FA78 *a0);
extern BOOL ov07_0221BFC0(UnkStruct_ov07_0221FA78 *a0);

void ov07_02222B94(UnkStruct_ov07_02222B30 *a0);
void ov07_02222BA4(UnkStruct_ov07_02222BE4 *a0);
void ov07_02222BC8(void *a0);
void ov07_02222BDC(void *a0);
UnkStruct_ov07_02222BE4 *ov07_02222BE4(u32 a0, u32 a1, enum HeapID heapId);
void ov07_02222C60(UnkStruct_ov07_02222BE4 *a0);
void *ov07_02222C84(const UnkStruct_ov07_02222BE4 *a0);
void ov07_02222C98(UnkStruct_ov07_02222BE4 *a0);
void ov07_02222CAC(void *a0);
void ov07_02222CC0(void *a0);
UnkStruct_ov07_02222CCC *ov07_02222CCC(u8 a0, u8 a1, u16 a2, fx32 a3, s16 a4, u32 a5, u32 a6, u32 a7, enum HeapID heapId);
void ov07_02222D3C(UnkStruct_ov07_02222CCC *a0);
void *ov07_02222D60(const UnkStruct_ov07_02222CCC *a0);
void ov07_02222D74(UnkStruct_ov07_02222CCC *a0);
u32 ov07_02222D88(u16 a0, u16 a1);
u32 ov07_02222D90(int a0);
void ov07_02222DC8(s16 a0, s16 a1, s16 a2, s16 a3, s16 *a4, s16 *a5);
void ov07_02222DE4(s16 a0, s16 a1, s16 a2, s16 a3, fx32 *a4);
void ov07_02222E0C(s16 a0, s16 a1, s16 a2, s16 a3, u16 *a4);
BOOL ov07_02222E48(int *a0, int a1, s32 a2);
void ov07_02222E74(SysTask *a0, void *a1);
BOOL ov07_02222EE8(UnkStruct_ov07_02222E74 *a0);
void ov07_02222EF8(UnkStruct_ov07_02222E74 *a0);
UnkStruct_ov07_02222E74 *ov07_02222F10(PaletteData *a0, enum HeapID heapId, int a2, u16 a3, u16 a4, s8 a5, s8 a6, u8 a7, u8 a8, u16 a9, int a10);
void ov07_02222F7C(u16 *a0, u16 a1);
void ov07_02222FC4(UnkStruct_ov07_0221FA78 *a0);
void ov07_02222FF4(UnkStruct_ov07_0221FA78 *a0);
UnkFunc_ov07_02223038 ov07_02223038(u32 a0);
void *ov07_0222304C(u32 a0);
void ov07_02223060(void *a0);

void ov07_02222B94(UnkStruct_ov07_02222B30 *a0) {
    GF_ASSERT(a0);
    a0->unk8 = FALSE;
}

void ov07_02222BA4(UnkStruct_ov07_02222BE4 *a0) {
    const void *buffer = sub_02014A60(a0->unk1C);

    sub_02014AA0();
    sub_02014AB0(buffer, (void *)a0->unk620, sizeof(u32), 1);
}

void ov07_02222BC8(void *a0) {
    UnkStruct_ov07_02222BE4 *v0 = a0;

    sub_02014A8C(v0->unk1C);
    ov07_02222BA4(v0);
}

void ov07_02222BDC(void *a0) {
    UnkStruct_ov07_02222BE4 *v0 = a0;

    ov07_02222BA4(v0);
}

void ov07_02222C60(UnkStruct_ov07_02222BE4 *a0) {
    GF_ASSERT(a0);

    ov07_02222B70(&a0->unk0);

    if (a0->unk1C != NULL) {
        sub_02014A38(a0->unk1C);
    }

    Heap_Free(a0);
}

void *ov07_02222C84(const UnkStruct_ov07_02222BE4 *a0) {
    GF_ASSERT(a0);
    return sub_02014A4C(a0->unk1C);
}

void ov07_02222C98(UnkStruct_ov07_02222BE4 *a0) {
    GF_ASSERT(a0);
    ov07_02222B94(&a0->unk0);
}

void ov07_02222CAC(void *a0) {
    UnkStruct_ov07_02222CCC *v0 = a0;

    sub_02014C08(v0->unk1C);
    sub_02014C40(v0->unk1C);
}

void ov07_02222CC0(void *a0) {
    UnkStruct_ov07_02222CCC *v0 = a0;

    sub_02014C40(v0->unk1C);
}

UnkStruct_ov07_02222CCC *ov07_02222CCC(u8 a0, u8 a1, u16 a2, fx32 a3, s16 a4, u32 a5, u32 a6, u32 a7, enum HeapID heapId) {
    UnkStruct_ov07_02222CCC *v0 = Heap_Alloc(heapId, sizeof(UnkStruct_ov07_02222CCC));
    u32 v1;

    GF_ASSERT(v0);

    memset(v0, 0, sizeof(UnkStruct_ov07_02222CCC));

    v1 = ov07_02222D90(a5);
    v0->unk1C = sub_02014AD8(heapId);

    sub_02014B08(v0->unk1C, a0, a1, a2, a3, a4, (void *)v1, a7, a6);
    ov07_02222B30(&v0->unk0, v0, ov07_02222CAC, ov07_02222CC0);

    return v0;
}

void ov07_02222D3C(UnkStruct_ov07_02222CCC *a0) {
    GF_ASSERT(a0);

    ov07_02222B70(&a0->unk0);

    if (a0->unk1C) {
        sub_02014BD8(a0->unk1C);
    }

    Heap_Free(a0);
}

void *ov07_02222D60(const UnkStruct_ov07_02222CCC *a0) {
    GF_ASSERT(a0);
    return sub_02014BF8(a0->unk1C);
}

void ov07_02222D74(UnkStruct_ov07_02222CCC *a0) {
    GF_ASSERT(a0);
    ov07_02222B94(&a0->unk0);
}

u32 ov07_02222D88(u16 a0, u16 a1) {
    return (a1 << 16) | a0;
}

u32 ov07_02222D90(int a0) {
    switch (a0) {
    case 0:
        return 0x04000010;
    case 1:
        return 0x04000014;
    case 2:
        return 0x04000018;
    case 3:
        return 0x0400001C;
    }

    return a0;
}

void ov07_02222DC8(s16 a0, s16 a1, s16 a2, s16 a3, s16 *a4, s16 *a5) {
    *a4 = (a0 + a2) / 2;
    *a5 = (a1 + a3) / 2;
}

void ov07_02222DE4(s16 a0, s16 a1, s16 a2, s16 a3, fx32 *a4) {
    s16 v0 = a0 - a2;
    s16 v1 = -(a1 - a3);

    *a4 = FX_Sqrt((v1 * v1 + v0 * v0) * FX32_ONE);
}

void ov07_02222E0C(s16 a0, s16 a1, s16 a2, s16 a3, u16 *a4) {
    s16 v0 = a0 - a2;
    s16 v1 = -(a1 - a3);

    *a4 = FX_Atan2Idx(v1 * FX32_ONE, v0 * FX32_ONE);

    if (*a4 > 0 && v1 < 0) {
        *a4 = (*a4 - 0x7FFF) * 0xFFFF;
    }
}

BOOL ov07_02222E48(int *a0, int a1, s32 a2) {
    if (a2 < 0) {
        if (*a0 + a2 > a1) {
            *a0 += a2;
            return FALSE;
        } else {
            *a0 = a1;
            return TRUE;
        }
    } else {
        if (*a0 + a2 < a1) {
            *a0 += a2;
            return FALSE;
        } else {
            *a0 = a1;
            return TRUE;
        }
    }

    return TRUE;
}

void ov07_02222E74(SysTask *a0, void *a1) {
    UnkStruct_ov07_02222E74 *v0 = a1;

    if (v0->unk0 == FALSE) {
        return;
    }

    if (++v0->unk17 >= v0->unk16) {
        v0->unk17 = 0;
        PaletteData_BlendPalette(v0->unk18, v0->unk8, v0->unkC, v0->unkE, v0->unk14, v0->unk10);

        if (v0->unk14 == v0->unk13) {
            v0->unk0 = FALSE;
        } else {
            s8 v1 = v0->unk14 + v0->unk15;

            if (v0->unk15 > 0) {
                if (v1 > v0->unk13) {
                    v0->unk14 = v0->unk13;
                } else {
                    v0->unk14 += v0->unk15;
                }
            } else {
                if (v1 < v0->unk13) {
                    v0->unk14 = v0->unk13;
                } else {
                    v0->unk14 += v0->unk15;
                }
            }
        }
    }
}

BOOL ov07_02222EE8(UnkStruct_ov07_02222E74 *a0) {
    GF_ASSERT(a0 != NULL);
    return a0->unk0;
}

void ov07_02222EF8(UnkStruct_ov07_02222E74 *a0) {
    GF_ASSERT(a0 != NULL);

    SysTask_Destroy(a0->unk4);
    Heap_Free(a0);
}

UnkStruct_ov07_02222E74 *ov07_02222F10(PaletteData *a0, enum HeapID heapId, int a2, u16 a3, u16 a4, s8 a5, s8 a6, u8 a7, u8 a8, u16 a9, int a10) {
    UnkStruct_ov07_02222E74 *v0 = Heap_Alloc(heapId, sizeof(UnkStruct_ov07_02222E74));
    GF_ASSERT(v0 != NULL);

    v0->unk18 = a0;
    v0->unk8 = a2;
    v0->unkC = a3;
    v0->unkE = a4;
    v0->unk10 = a9;
    v0->unk12 = a7;
    v0->unk13 = a8;
    v0->unk14 = a7;
    v0->unk16 = a5;
    v0->unk17 = a5;

    if (v0->unk12 < v0->unk13) {
        v0->unk15 = a6;
    } else {
        v0->unk15 = -a6;
    }

    v0->unk0 = TRUE;
    v0->unk4 = SysTask_CreateOnMainQueue(ov07_02222E74, v0, a10);

    return v0;
}

void ov07_02222F7C(u16 *a0, u16 a1) {
    int i;

    for (i = 0; i < a1; i++) {
        u16 v0 = *a0;
        u32 v1 = (((v0 >> 10) & 0x1F) * 29 + (v0 & 0x1F) * 76 + ((v0 >> 5) & 0x1F) * 151) >> 8;

        *a0 = (u16)((v1 << 10) | (v1 << 5) | v1);
        a0++;
    }
}

void ov07_02222FC4(UnkStruct_ov07_0221FA78 *a0) {
    PaletteData *v0 = ov07_0221FA78(a0);
    u16 *v1 = PaletteData_GetFadedBuf(v0, 0);

    if (ov07_0221BFC0(a0) == TRUE) {
        ov07_02222F7C(v1, 48);
    } else {
        ov07_02222F7C(v1, 128);
    }
}

void ov07_02222FF4(UnkStruct_ov07_0221FA78 *a0) {
    PaletteData *v0 = ov07_0221FA78(a0);

    if (ov07_0221BFC0(a0) == TRUE) {
        PaletteData_CopyPalette(v0, 0, 0, 0, 0, 0x60);
    } else {
        PaletteData_CopyPalette(v0, 0, 0, 0, 0, 0x100);
    }
}

UnkFunc_ov07_02223038 ov07_02223038(u32 a0) {
    if (a0 >= 84) {
        return NULL;
    }

    return ov07_02236520[a0];
}

void *ov07_0222304C(u32 a0) {
    if (a0 >= 33) {
        return NULL;
    }

    return ov07_0223649C[a0];
}

void ov07_02223060(void *a0) {
    return;
}

UnkStruct_ov07_02222BE4 *ov07_02222BE4(u32 a0, u32 a1, enum HeapID heapId) {
    UnkStruct_ov07_02222BE4 *v0 = Heap_Alloc(heapId, sizeof(UnkStruct_ov07_02222BE4));
    memset(v0, 0, sizeof(UnkStruct_ov07_02222BE4));

    GF_ASSERT(v0);
    v0->unk1C = sub_02014A08(heapId, v0->unk20, v0->unk320);

    GF_ASSERT(v0->unk1C);
    v0->unk620 = a0;

    MI_CpuFill32(v0->unk20, a1, sizeof(u32) * 192);
    MI_CpuFill32(v0->unk320, a1, sizeof(u32) * 192);

    ov07_02222B30(&v0->unk0, v0, ov07_02222BC8, ov07_02222BDC);

    return v0;
}
