#include "global.h"

#include "assert.h"
#include "filesystem.h"
#include "heap.h"
#include "player_data.h"
#include "sprite.h"
#include "sprite_transfer.h"
#include "sys_task_api.h"
#include "unk_02005D10.h"
#include "unk_02034354.h"
#include "unk_02035900.h"
#include "unk_02037C94.h"
#include "unk_0200A090.h"
#include "vram_transfer_manager.h"

typedef struct UnkStruct_ov90_02258800_C {
    u8 unk0[4];
    u8 unk4[4];
    u8 unk8[0x14];
    u32 unk1C;
    PlayerProfile *unk20[4];
} UnkStruct_ov90_02258800_C;

typedef struct UnkStruct_ov90_02258800 {
    SaveData *unk0;
    u8 unk4[4];
    u8 unk8;
    u8 unk9;
    u8 unkA;
    u8 unkB;
    UnkStruct_ov90_02258800_C *unkC;
} UnkStruct_ov90_02258800;

typedef struct UnkStruct_ov90_02258938 {
    u8 unk0;
    u8 unk1[5];
    u8 unk6;
    u8 unk7;
    u8 unk8[8];
    u8 unk10;
    u8 unk11[0x1F];
    u8 unk30[0xC];
    u8 unk3C[0x10];
    u8 unk4C[0x38];
    u8 unk84[0x12C];
    u8 unk1B0[0x1C];
    u8 unk1CC[0x38];
    u8 unk204[0xE0];
    u8 unk2E4[0x308];
    SysTask *unk5EC;
    SysTask *unk5F0;
} UnkStruct_ov90_02258938;

typedef struct UnkStruct_ov90_02258A04 {
    u8 unk0[6];
    u8 unk6;
    u8 unk7;
    u8 unk8;
    u8 unk9[0xB];
    u8 unk14;
    u8 unk15;
    u8 unk16[0x36];
    u8 unk4C[0xC];
    u8 unk58[0x10];
    u8 unk68[0x38];
    u8 unkA0[0x12C];
    u8 unk1CC[0x1C];
    u8 unk1E8[0x74];
    u8 unk25C[0xE0];
    u8 unk33C[0x308];
    SysTask *unk644;
    SysTask *unk648;
} UnkStruct_ov90_02258A04;

typedef struct UnkStruct_ov90_02258DD0 {
    void *unk0;
    GF_2DGfxResMan *unk4;
    u8 unk8[0x10];
} UnkStruct_ov90_02258DD0;

typedef struct UnkStruct_ov90_02258BD4 {
    u8 unk0[4];
    u16 unk4;
    u8 unk6[2];
    SpriteList *unk8;
    NARC *unkC;
    UnkStruct_ov90_02258DD0 unk10;
    void *unk28;
    SysTask *unk2C;
    Sprite *unk30;
    u8 unk34[0x198];
} UnkStruct_ov90_02258BD4;

typedef struct UnkStruct_ov90_02258AA8 {
    u32 unk0[4];
    u8 unk10[4];
} UnkStruct_ov90_02258AA8;

typedef struct UnkStruct_ov90_02258CF0 {
    fx32 unk0;
    fx32 unk4;
    fx32 unk8;
    fx32 unkC;
    int unk10;
} UnkStruct_ov90_02258CF0;

extern void *ov90_02259588(const UnkStruct_ov90_02258800 *a0, int a1, enum HeapID heapId);
extern void *ov90_0225A6B4(const UnkStruct_ov90_02258800 *a0, const void *a1, int a2, enum HeapID heapId);
extern void ov90_0225A108(void *a0);
extern void ov90_0225A340(void *a0);
extern void ov90_02259EAC(void *a0);
extern void ov90_02259434(void *a0);
extern void ov90_02259784(void *a0);
extern void ov90_022591D4(void *a0);
extern void ov90_02258E10(void *a0);
extern void ov90_02259158(void *a0);
extern void ov90_02259084(void *a0);
extern void ov90_0225B380(void *a0);
extern void ov90_0225A960(void *a0);
extern void ov90_0225B53C(void *a0, u32 a1, BOOL a2, u32 a3);
extern void ov90_0225B594(void *a0, BOOL a1);
extern void ov90_02258DD0(UnkStruct_ov90_02258DD0 *a0, int a1, enum HeapID heapId);
extern void *ov90_02258E54(UnkStruct_ov90_02258DD0 *a0, NARC *a1, int a2, int a3, int a4, int a5, int a6, int a7, enum HeapID heapId);
extern void ov90_0225BD08(void *a0);
extern void ov90_0225BEE0(SysTask *a0, void *a1);
extern void ov90_0225C06C(SysTask *a0, void *a1);

void ov90_02258800(UnkStruct_ov90_02258800 *a0, BOOL a1, SaveData *a2, BOOL a3, UnkStruct_ov90_02258800_C *a4);
u32 ov90_0225886C(const UnkStruct_ov90_02258800 *a0, u32 a1);
u32 ov90_0225888C(const UnkStruct_ov90_02258800 *a0, u32 a1);
BOOL ov90_022588A4(const UnkStruct_ov90_02258800 *a0, u32 a1);
PlayerProfile *ov90_022588CC(const UnkStruct_ov90_02258800 *a0, u32 a1);
void *ov90_02258914(const UnkStruct_ov90_02258800 *a0, enum HeapID heapId);
void *ov90_02258920(const UnkStruct_ov90_02258800 *a0, enum HeapID heapId);
void *ov90_0225892C(const UnkStruct_ov90_02258800 *a0, enum HeapID heapId);
void ov90_02258938(UnkStruct_ov90_02258938 *a0);
BOOL ov90_022589BC(const UnkStruct_ov90_02258938 *a0);
int ov90_022589CC(const UnkStruct_ov90_02258938 *a0);
void *ov90_022589E0(const UnkStruct_ov90_02258800 *a0, const void *a1, enum HeapID heapId);
void *ov90_022589EC(const UnkStruct_ov90_02258800 *a0, const void *a1, enum HeapID heapId);
void *ov90_022589F8(const UnkStruct_ov90_02258800 *a0, const void *a1, enum HeapID heapId);
void ov90_02258A04(UnkStruct_ov90_02258A04 *a0);
BOOL ov90_02258AA0(const UnkStruct_ov90_02258A04 *a0);
BOOL ov90_02258AA4(const UnkStruct_ov90_02258A04 *a0);
void ov90_02258AA8(UnkStruct_ov90_02258AA8 *a0, u32 a1);
void ov90_02258B24(UnkStruct_ov90_02258938 *a0, int a1);
void ov90_02258B2C(UnkStruct_ov90_02258A04 *a0, u32 a1, BOOL a2);
void ov90_02258B44(UnkStruct_ov90_02258A04 *a0, BOOL a1);
BOOL ov90_02258B54(UnkStruct_ov90_02258800 *a0);
BOOL ov90_02258B98(const UnkStruct_ov90_02258800 *a0);
UnkStruct_ov90_02258BD4 *ov90_02258BD4(SpriteList *a0, enum HeapID heapId);
void ov90_02258C38(UnkStruct_ov90_02258BD4 *a0);
int ov90_02258C74(UnkStruct_ov90_02258BD4 *a0);
void ov90_02258C8C(UnkStruct_ov90_02258BD4 *a0);
void ov90_02258CB0(UnkStruct_ov90_02258BD4 *a0);
BOOL ov90_02258CE0(const UnkStruct_ov90_02258BD4 *a0);
void ov90_02258CF0(UnkStruct_ov90_02258CF0 *a0, fx32 a1, fx32 a2, fx32 a3, int a4);

void ov90_02258800(UnkStruct_ov90_02258800 *a0, BOOL a1, SaveData *a2, BOOL a3, UnkStruct_ov90_02258800_C *a4) {
    int v0;
    int v1;
    u32 v2;
    PlayerProfile *v3;

    memset(a0, 0, sizeof(UnkStruct_ov90_02258800));

    a0->unk8 = sub_020347A0();
    v2 = sub_0203769C();
    v1 = 0;

    for (v0 = 0; v0 < 4; v0++) {
        v3 = sub_02034818(v0);

        if (v3 != NULL) {
            if (v2 == v0) {
                a0->unk9 = v1;
            }

            a0->unk4[v1] = v0;
            v1++;
        }
    }

    GF_ASSERT(v1 == a0->unk8);

    if (a1 == 0) {
        a0->unkB = 1;
    }

    a0->unk0 = a2;
    a0->unkA = a3;
    a0->unkC = a4;
}

u32 ov90_0225886C(const UnkStruct_ov90_02258800 *a0, u32 a1) {
    int v0;

    for (v0 = 0; v0 < a0->unk8; v0++) {
        if (a0->unk4[v0] == a1) {
            return v0;
        }
    }

    return 4;
}

u32 ov90_0225888C(const UnkStruct_ov90_02258800 *a0, u32 a1) {
    GF_ASSERT(a1 < a0->unk8);

    return a0->unk4[a1];
}

BOOL ov90_022588A4(const UnkStruct_ov90_02258800 *a0, u32 a1) {
    u32 v0;
    BOOL v1;

    if (a1 >= 4) {
        GF_ASSERT(a1 < 4);
        return FALSE;
    }

    v0 = a0->unkC->unk4[a1];

    if (v0 == 0xFFFFFFFF) {
        return FALSE;
    }

    v1 = a0->unkC->unk8[v0];

    return v1;
}

PlayerProfile *ov90_022588CC(const UnkStruct_ov90_02258800 *a0, u32 a1) {
    u32 v0;

    if (a1 >= 4) {
        GF_ASSERT(a1 < 4);
        return NULL;
    }

    if (a0->unkB == 1) {
        v0 = ov90_0225886C(a0, a1);

        if (v0 == a0->unk9) {
            return Save_PlayerData_GetProfile(a0->unk0);
        }

        return sub_02034818(a1);
    }

    GF_ASSERT(a0->unkC != NULL);
    return a0->unkC->unk20[a1];
}

void *ov90_02258914(const UnkStruct_ov90_02258800 *a0, enum HeapID heapId) {
    return ov90_02259588(a0, 0, heapId);
}

void *ov90_02258920(const UnkStruct_ov90_02258800 *a0, enum HeapID heapId) {
    return ov90_02259588(a0, 1, heapId);
}

void *ov90_0225892C(const UnkStruct_ov90_02258800 *a0, enum HeapID heapId) {
    return ov90_02259588(a0, 2, heapId);
}

void ov90_02258938(UnkStruct_ov90_02258938 *a0) {
    SysTask_Destroy(a0->unk5EC);
    SysTask_Destroy(a0->unk5F0);

    ov90_0225A108(a0->unk2E4);
    ov90_0225A340(a0->unk1CC);

    {
        int v0;

        for (v0 = 0; v0 < a0->unk10; v0++) {
            ov90_02259EAC(&a0->unk204[0x38 * v0]);
        }
    }

    ov90_02259434(a0->unk4C);
    ov90_02259784(a0);
    ov90_022591D4(a0->unk3C);
    ov90_02258E10(a0->unk1B0);
    ov90_02259158(a0->unk84);
    ov90_02259084(a0->unk30);

    Heap_Free(a0);
}

BOOL ov90_022589BC(const UnkStruct_ov90_02258938 *a0) {
    if (a0->unk0 >= 16) {
        return TRUE;
    }

    return FALSE;
}

int ov90_022589CC(const UnkStruct_ov90_02258938 *a0) {
    GF_ASSERT(a0->unk7 == 1);
    return a0->unk6;
}

void *ov90_022589E0(const UnkStruct_ov90_02258800 *a0, const void *a1, enum HeapID heapId) {
    return ov90_0225A6B4(a0, a1, 0, heapId);
}

void *ov90_022589EC(const UnkStruct_ov90_02258800 *a0, const void *a1, enum HeapID heapId) {
    return ov90_0225A6B4(a0, a1, 1, heapId);
}

void *ov90_022589F8(const UnkStruct_ov90_02258800 *a0, const void *a1, enum HeapID heapId) {
    return ov90_0225A6B4(a0, a1, 2, heapId);
}

void ov90_02258A04(UnkStruct_ov90_02258A04 *a0) {
    SysTask_Destroy(a0->unk644);
    SysTask_Destroy(a0->unk648);

    ov90_0225A108(a0->unk33C);

    {
        int v0;

        for (v0 = 0; v0 < a0->unk14; v0++) {
            ov90_02259EAC(&a0->unk25C[0x38 * v0]);
        }
    }

    ov90_0225B380(a0->unk1E8);
    ov90_0225A960(a0);
    ov90_02259434(a0->unk68);
    ov90_022591D4(a0->unk58);
    ov90_02258E10(a0->unk1CC);
    ov90_02259158(a0->unkA0);
    ov90_02259084(a0->unk4C);

    G2_BlendNone();
    G2S_BlendNone();

    GF_DestroyVramTransferManager();
    Heap_Free(a0);
}

BOOL ov90_02258AA0(const UnkStruct_ov90_02258A04 *a0) {
    return a0->unk6;
}

BOOL ov90_02258AA4(const UnkStruct_ov90_02258A04 *a0) {
    return a0->unk8;
}

void ov90_02258AA8(UnkStruct_ov90_02258AA8 *a0, u32 a1) {
    u8 v0[4];
    int v1;
    int v2;

    for (v1 = 0; v1 < a1; v1++) {
        for (v2 = v1; v2 > 0; v2--) {
            if (a0->unk0[v1] <= a0->unk0[v0[v2 - 1]]) {
                break;
            } else {
                v0[v2] = v0[v2 - 1];
            }
        }

        v0[v2] = v1;
    }

    {
        u32 v3;

        for (v1 = 0; v1 < a1; v1++) {
            v3 = v1;

            if (v1 > 0) {
                if (a0->unk0[v0[v1]] == a0->unk0[v0[v1 - 1]]) {
                    v3 = a0->unk10[v0[v1 - 1]];
                }
            }

            a0->unk10[v0[v1]] = v3;
        }
    }
}

void ov90_02258B24(UnkStruct_ov90_02258938 *a0, int a1) {
    a0->unk6 = a1;
    a0->unk7 = 1;
}

void ov90_02258B2C(UnkStruct_ov90_02258A04 *a0, u32 a1, BOOL a2) {
    if (a0->unk15 == 0) {
        ov90_0225B53C(a0->unk1E8, a1, a2, a0->unk14);
    }
}

void ov90_02258B44(UnkStruct_ov90_02258A04 *a0, BOOL a1) {
    ov90_0225B594(a0->unk1E8, a1);
}

BOOL ov90_02258B54(UnkStruct_ov90_02258800 *a0) {
    BOOL v0 = FALSE;

    if (a0->unkC != NULL) {
        if (a0->unk8 != sub_02037454()) {
            v0 = TRUE;
        }

        if (sub_02039264() == 1) {
            v0 = TRUE;
        }

        if (sub_020390C4() >= 2) {
            v0 = TRUE;
        }

        if (v0 == 1) {
            a0->unkC->unk1C = 1;
        }

        if (a0->unkC->unk1C == 1) {
            v0 = TRUE;
        }
    }

    return v0;
}

BOOL ov90_02258B98(const UnkStruct_ov90_02258800 *a0) {
    GF_ASSERT(a0->unkC != NULL);
    GF_ASSERT(a0->unkC->unk1C == 1);

    if (sub_02034420() == 1) {
        sub_020343E4();
        sub_0203986C();
    } else {
        if (sub_020392A0() == 1) {
            return TRUE;
        }
    }

    return FALSE;
}

UnkStruct_ov90_02258BD4 *ov90_02258BD4(SpriteList *a0, enum HeapID heapId) {
    UnkStruct_ov90_02258BD4 *v0 = Heap_Alloc(heapId, sizeof(UnkStruct_ov90_02258BD4));
    memset(v0, 0, sizeof(UnkStruct_ov90_02258BD4));

    v0->unk8 = a0;
    v0->unkC = NARC_New(0xC8, heapId);

    ov90_02258DD0(&v0->unk10, 1, heapId);

    v0->unk28 = ov90_02258E54(&v0->unk10, v0->unkC, 3, 3, 2, 1, 0, 5000, heapId);

    return v0;
}

void ov90_02258C38(UnkStruct_ov90_02258BD4 *a0) {
    if (a0->unk2C != NULL) {
        SysTask_Destroy(a0->unk2C);
        a0->unk2C = NULL;
    }

    if (a0->unk30 != NULL) {
        Sprite_Delete(a0->unk30);
    }

    ov90_0225BD08(a0->unk34);
    ov90_02258E10(&a0->unk10);

    NARC_Delete(a0->unkC);
    Heap_Free(a0);
}

int ov90_02258C74(UnkStruct_ov90_02258BD4 *a0) {
    SpriteResource *v0 = SpriteResourceCollection_Find(a0->unk10.unk4, 5000);
    return SpriteTransfer_GetPlttOffset(v0, NNS_G2D_VRAM_TYPE_2DMAIN);
}

void ov90_02258C8C(UnkStruct_ov90_02258BD4 *a0) {
    GF_ASSERT(a0->unk2C == NULL);
    a0->unk2C = SysTask_CreateOnMainQueue(ov90_0225BEE0, a0, 0);
    a0->unk4 = 1;
}

void ov90_02258CB0(UnkStruct_ov90_02258BD4 *a0) {
    GF_ASSERT(a0->unk2C == NULL);
    a0->unk2C = SysTask_CreateOnMainQueue(ov90_0225C06C, a0, 0);
    a0->unk4 = 1;

    PlaySE(0x5F1);
}

BOOL ov90_02258CE0(const UnkStruct_ov90_02258BD4 *a0) {
    if (a0->unk4 == 0) {
        return TRUE;
    }

    return FALSE;
}

void ov90_02258CF0(UnkStruct_ov90_02258CF0 *a0, fx32 a1, fx32 a2, fx32 a3, int a4) {
    fx32 v0;
    fx32 v1;
    fx32 v2;
    fx32 v3;

    v2 = a2 - a1;
    v0 = (a4 * a4) << FX32_SHIFT;
    v1 = FX_Mul(a3, a4 * FX32_ONE);
    v1 = v2 - v1;
    v1 = FX_Mul(v1, 2 * FX32_ONE);
    v3 = FX_Div(v1, v0);

    a0->unk0 = a1;
    a0->unk4 = a1;
    a0->unk8 = a3;
    a0->unkC = v3;
    a0->unk10 = a4;
}
