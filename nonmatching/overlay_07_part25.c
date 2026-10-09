#include "global.h"

#include "assert.h"
#include "heap.h"
#include "overlay_07.h"
#include "palette.h"
#include "seal_case.h"
#include "sprite_system.h"
#include "unk_02014DA0.h"
#include "unk_02091054.h"

typedef struct UnkStruct_ov07_02232C28 {
    int unk0;
    int unk4;
    int unk8;
    int unkC;
    int unk10;
    SEAL *unk14;
} UnkStruct_ov07_02232C28;

typedef struct UnkStruct_ov07_02232CD8 {
    s16 unk0;
    s16 unk2;
} UnkStruct_ov07_02232CD8;

typedef struct UnkStruct_ov07_02232D20_in {
    s16 unk0;
    s16 unk2;
    int unk4;
    enum HeapID unk8;
    int unkC;
    int unk10;
} UnkStruct_ov07_02232D20_in;

typedef struct UnkStruct_ov07_02232D20 {
    UnkStruct_ov07_02232D20_in unk0;
    u32 unk14;
    SPLEmitter *unk18;
    int unk1C;
    int unk20;
} UnkStruct_ov07_02232D20;

typedef struct UnkStruct_ov07_022330B8 {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    s16 unk6;
    int unk8;
    int unkC;
    int unk10;
} UnkStruct_ov07_022330B8;

typedef BOOL (*UnkFunc_ov07_022371B8)(UnkBallData *);

extern UnkFunc_ov07_022371B8 ov07_022371B8[];

extern void ov07_02232BB0(int a0, VecFx32 *a1);
extern int ov07_0223261C(int a0);
extern int ov07_02232630(int a0);
extern int ov07_02232644(int a0);
extern SPLEmitter *ov07_0221FEB0(enum HeapID heapId, int a1, int a2, int a3);
extern void ov07_0221FF2C(SPLEmitter *a0);
extern void *ov07_0221FDFC(BattleSystem *a0, enum HeapID heapId);
extern void ov07_0221FE08(void *a0);
extern void ov07_02233EB8(UnkBallData *a0, int a1);
extern BOOL ov07_02233EBC(UnkBallData *a0, int a1);
extern BOOL ov07_022335B4(UnkBallData *a0);
extern void ov07_02222268(void *a0, s16 a1, s16 a2, s16 a3, s16 a4, int a5);
extern BOOL ov07_022222F0(void *a0, ManagedSprite *a1);

void ov07_02232C28(SPLEmitter *a0);
void ov07_02232C64(SPLEmitter *a0);
void ov07_02232CD8(SPLEmitter *a0);
UnkStruct_ov07_02232D20 *ov07_02232D20(UnkStruct_ov07_02232D20_in *a0);
void ov07_02232D80(UnkStruct_ov07_02232D20 *a0);
BOOL ov07_02232DF4(UnkStruct_ov07_02232D20 *a0);
void ov07_02232E10(UnkStruct_ov07_02232D20 *a0);
BOOL ov07_02232E18(UnkBallData *a0);
BOOL ov07_02232E40(UnkBallData *a0);
BOOL ov07_02232E68(UnkBallData *a0);
BOOL ov07_02232E90(UnkBallData *a0);
BOOL ov07_02232EB8(UnkBallData *a0);
BOOL ov07_02232EE0(UnkBallData *a0);
BOOL ov07_02232F08(UnkBallData *a0);
BOOL ov07_02232F30(UnkBallData *a0);
void ov07_02232F74(UnkBallData *a0, int a1);
BOOL ov07_02232F80(UnkBallData *a0);
BOOL ov07_02232F84(UnkBallData *a0);
BOOL ov07_02232F9C(UnkBallData *a0);
BOOL ov07_02232FA8(UnkBallData *a0);
BOOL ov07_02233088(UnkBallData *a0);
BOOL ov07_0223308C(UnkBallData *a0);
BOOL ov07_022330E0(UnkBallData *a0);
BOOL ov07_022330E4(UnkBallData *a0);
BOOL ov07_022330F0(UnkBallData *a0);
BOOL ov07_022330FC(UnkBallData *a0);
BOOL ov07_022331A4(UnkBallData *a0);
BOOL ov07_022331B0(UnkBallData *a0);

void ov07_02232C28(SPLEmitter *a0) {
    int v0;
    UnkStruct_ov07_02232C28 *v1 = sub_02015504();
    v0 = v1->unk4;

    {
        VecFx32 v2;

        ov07_02232BB0(v0, &v2);
        a0->emtr_pos.x = v2.x + a0->p_res->p_base->pos.x;
        a0->emtr_pos.y = v2.y + a0->p_res->p_base->pos.y;
        a0->emtr_pos.z = v2.z + a0->p_res->p_base->pos.z;
    }
}

void ov07_02232C64(SPLEmitter *a0) {
    VecFx32 v0;
    int v1;
    UnkStruct_ov07_02232C28 *v3 = sub_02015504();
    v1 = v3->unk8;

    ov07_02232BB0(v1, &v0);

    {
        u32 v4;
        u8 v5;
        u8 v6;
        s16 v7;
        s16 v8;
        int v9;
        int v10;

        v4 = SealOnCapsuleGetID(v3->unk14);
        sub_0209109C(v4);

        v5 = SealOnCapsuleGetX(v3->unk14);
        v6 = SealOnCapsuleGetY(v3->unk14);
        v7 = (v5 - 190);
        v8 = (100 - v6);
        v9 = v7 * 172;
        v10 = v8 * 172;

        v0.x += v9;
        v0.y += v10;
    }

    a0->emtr_pos.x = v0.x + a0->p_res->p_base->pos.x;
    a0->emtr_pos.y = v0.y + a0->p_res->p_base->pos.y;
    a0->emtr_pos.z = v0.z + a0->p_res->p_base->pos.z;
}

void ov07_02232CD8(SPLEmitter *a0) {
    UnkStruct_ov07_02232CD8 *v0 = sub_02015504();

    {
        VecFx32 v1;
        int v2;
        int v3;
        s16 v4;
        s16 v5;

        v4 = (v0->unk0 - 129);
        v5 = (100 - v0->unk2);
        v2 = v4 * 172;
        v3 = v5 * 172;

        v1.x = v2;
        v1.y = v3;
        v1.z = 0;
        a0->emtr_pos.x = v1.x + a0->p_res->p_base->pos.x;
        a0->emtr_pos.y = v1.y + a0->p_res->p_base->pos.y;
        a0->emtr_pos.z = v1.z + a0->p_res->p_base->pos.z;
    }
}

UnkStruct_ov07_02232D20 *ov07_02232D20(UnkStruct_ov07_02232D20_in *a0) {
    UnkStruct_ov07_02232D20 *v0 = Heap_Alloc(a0->unk8, sizeof(UnkStruct_ov07_02232D20));
    GF_ASSERT(v0 != NULL);

    v0->unk0 = *a0;

    if (v0->unk0.unk10) {
        v0->unk20 = ov07_0223261C(0x403);
        v0->unk1C = ov07_02232630(0x403);
    } else {
        v0->unk20 = ov07_0223261C(v0->unk0.unk4);
        v0->unk1C = ov07_02232630(v0->unk0.unk4);
    }

    v0->unk18 = ov07_0221FEB0(v0->unk0.unk8, 0x5F, v0->unk20, 0);

    return v0;
}

void ov07_02232D80(UnkStruct_ov07_02232D20 *a0) {
    int v0;
    int v1;
    UnkStruct_ov07_02232D20 *v2 = a0;

    if (v2->unk0.unkC == 0xFF) {
        if (v2->unk0.unk10) {
            for (v0 = 0; v0 < v2->unk1C; v0++) {
                sub_02015494(v2->unk18, v0, ov07_02232CD8, v2);
            }
        } else {
            for (v0 = 0; v0 < v2->unk1C; v0++) {
                if (v0 == ov07_02232644(v2->unk0.unk4)) {
                    continue;
                }

                sub_02015494(v2->unk18, v0, ov07_02232CD8, v2);
            }
        }
    } else {
        v1 = v2->unk0.unkC;
        sub_02015494(v2->unk18, v1, ov07_02232CD8, v2);
    }

    sub_02015528(v2->unk18, 1);
}

BOOL ov07_02232DF4(UnkStruct_ov07_02232D20 *a0) {
    UnkStruct_ov07_02232D20 *v0 = a0;

    if (sub_020154B0(v0->unk18) == 0) {
        ov07_0221FF2C(v0->unk18);
        return FALSE;
    }

    return TRUE;
}

void ov07_02232E10(UnkStruct_ov07_02232D20 *a0) {
    Heap_Free(a0);
}

BOOL ov07_02232E18(UnkBallData *a0) {
    BOOL v0;

    if (a0->unk4 == 0) {
        a0->unk4++;
        ov07_02233EB8(a0, 1);
    }

    v0 = ov07_02233EBC(a0, 2);

    if (v0 == 1) {
        return FALSE;
    }

    return TRUE;
}

BOOL ov07_02232E40(UnkBallData *a0) {
    BOOL v0;

    if (a0->unk4 == 0) {
        a0->unk4++;
        ov07_02233EB8(a0, 3);
    }

    v0 = ov07_02233EBC(a0, 4);

    if (v0 == 1) {
        return FALSE;
    }

    return TRUE;
}

BOOL ov07_02232E68(UnkBallData *a0) {
    BOOL v0;

    if (a0->unk4 == 0) {
        a0->unk4++;
        ov07_02233EB8(a0, 5);
    }

    v0 = ov07_02233EBC(a0, 6);

    if (v0 == 1) {
        return FALSE;
    }

    return TRUE;
}

BOOL ov07_02232E90(UnkBallData *a0) {
    BOOL v0;

    if (a0->unk4 == 0) {
        a0->unk4++;
        ov07_02233EB8(a0, 7);
    }

    v0 = ov07_02233EBC(a0, 14);

    if (v0 == 1) {
        return FALSE;
    }

    return TRUE;
}

BOOL ov07_02232EB8(UnkBallData *a0) {
    BOOL v0;

    if (a0->unk4 == 0) {
        a0->unk4++;
        ov07_02233EB8(a0, 15);
    }

    v0 = ov07_02233EBC(a0, 18);

    if (v0 == 1) {
        return FALSE;
    }

    return TRUE;
}

BOOL ov07_02232EE0(UnkBallData *a0) {
    BOOL v0;

    if (a0->unk4 == 0) {
        a0->unk4++;
        ov07_02233EB8(a0, 19);
    }

    v0 = ov07_02233EBC(a0, 27);

    if (v0 == 1) {
        return FALSE;
    }

    return TRUE;
}

BOOL ov07_02232F08(UnkBallData *a0) {
    BOOL v0;

    if (a0->unk4 == 0) {
        a0->unk4++;
        ov07_02233EB8(a0, 21);
    }

    v0 = ov07_02233EBC(a0, 22);

    if (v0 == 1) {
        return FALSE;
    }

    return TRUE;
}

BOOL ov07_02232F30(UnkBallData *a0) {
    BOOL v0;

    if (a0->unk4 == 0) {
        a0->unk4++;
        ov07_02233EB8(a0, 23);
    }

    v0 = ov07_02233EBC(a0, 27);

    if (v0 == 1) {
        return FALSE;
    }

    return TRUE;
}

void UnkBallData_SetBallAnimation(UnkBallData *a0, s32 a1) {
    a0->unk0 = a1;
    a0->unk4 = 0;
}

BOOL ov07_02232F60(UnkBallData *a0, s32 a1) {
    return ov07_022371B8[a0->unk0](a0);
}

void ov07_02232F74(UnkBallData *a0, int a1) {
    a0->unk14 = a1;
    a0->unk8 = 0;
    a0->unkC = 0;
    a0->unk10 = 0;
}

BOOL ov07_02232F80(UnkBallData *a0) {
    return TRUE;
}

BOOL ov07_02232F84(UnkBallData *a0) {
    BOOL v0 = ov07_022335B4(a0);

    if (v0 == 0) {
        ov07_02232F74(a0, 2);
    }

    return TRUE;
}

BOOL ov07_02232F9C(UnkBallData *a0) {
    ov07_02232F74(a0, 3);
    return TRUE;
}

BOOL ov07_02232FA8(UnkBallData *a0) {
    switch (a0->unk8) {
    case 0:
        ManagedSprite_SetAnim(a0->managedSprite, 1);
        {
            UnkStruct_ov07_02232D20_in v0;

            v0.unk4 = a0->unk90.ball;
            v0.unk8 = a0->unk90.heapID;
            v0.unkC = 0xFF;
            v0.unk10 = 0;

            ManagedSprite_GetPositionXY(a0->managedSprite, &v0.unk0, &v0.unk2);

            a0->unkD8 = (int)ov07_0221FDFC(a0->unk90.battleSystem, a0->unk90.heapID);
            a0->unkD0 = (int)ov07_02232D20(&v0);
        }
        a0->unk8++;
        break;
    case 1: {
        int v1 = ManagedSprite_GetAnimationFrame(a0->managedSprite);

        if (v1 >= 2) {
            a0->unk24 = 0;
            a0->unk8++;
        }
    } break;
    case 2:
        ov07_02232D80((UnkStruct_ov07_02232D20 *)a0->unkD0);
        ov07_0221FE08((void *)a0->unkD8);
        a0->unk8++;
        break;
    case 3: {
        if (ov07_02232DF4((UnkStruct_ov07_02232D20 *)a0->unkD0) == 0) {
            ManagedSprite_SetAnimationFrame(a0->managedSprite, 0);
            ov07_02232E10((UnkStruct_ov07_02232D20 *)a0->unkD0);
            a0->unk8++;
        }
    } break;
    default:
        ov07_02232F74(a0, 4);
        break;
    }

    return TRUE;
}

BOOL ov07_02233088(UnkBallData *a0) {
    return TRUE;
}

BOOL ov07_0223308C(UnkBallData *a0) {
    BOOL v0;
    UnkStruct_ov07_022330B8 *v1 = (UnkStruct_ov07_022330B8 *)a0->unkB8;

    switch (a0->unkC) {
    case 0:
        ManagedSprite_GetPositionXY(a0->managedSprite, &v1->unk0, &v1->unk2);
        v1->unk4 = 60;
        v1->unk6 = 180;
        v1->unk8 = 10;
        v1->unk10 = 12;
        a0->unkC++;
        break;
    default: {
        v0 = ov07_022335B4(a0);

        if (v0 == 0) {
            ov07_02232F74(a0, 6);
        }
    } break;
    }

    return TRUE;
}

BOOL ov07_022330E0(UnkBallData *a0) {
    return TRUE;
}

BOOL ov07_022330E4(UnkBallData *a0) {
    ov07_02232F74(a0, 8);
    return TRUE;
}

BOOL ov07_022330F0(UnkBallData *a0) {
    ov07_02232F74(a0, 9);
    return TRUE;
}

BOOL ov07_022330FC(UnkBallData *a0) {
    switch (a0->unk8) {
    case 0:

    {
        int v0;

        v0 = ManagedSprite_GetPaletteOverrideOffset(a0->managedSprite);
        PaletteData_BeginPaletteFade(a0->unk90.paletteData, 4, 1 << v0, -1, 0, 12, 0x37F);

        a0->unk8++;
    } break;
    case 1:
        if (PaletteData_GetSelectedBuffersBitmask(a0->unk90.paletteData) != 0) {
            break;
        }

        {
            int v1;

            v1 = ManagedSprite_GetPaletteOverrideOffset(a0->managedSprite);
            PaletteData_BeginPaletteFade(a0->unk90.paletteData, 4, 1 << v1, -1, 12, 0, 0x37F);
        }

        a0->unk8++;
        break;
    default:
        if (PaletteData_GetSelectedBuffersBitmask(a0->unk90.paletteData) != 0) {
            break;
        }

        ov07_02232F74(a0, 10);
        break;
    }

    return TRUE;
}

BOOL ov07_022331A4(UnkBallData *a0) {
    ov07_02232F74(a0, 11);
    return TRUE;
}

BOOL ov07_022331B0(UnkBallData *a0) {
    switch (a0->unk8) {
    case 0:
        if ((++a0->unkC) < 1) {
            break;
        }

        {
            s16 v0;
            s16 v1;

            ManagedSprite_GetPositionXY(a0->managedSprite, &v0, &v1);
            ov07_02222268(&a0->unk34[0x14], v0, v0, v1, v1 + 32, 10);

            a0->unk8++;
        }
        break;
    case 1:
        if (ov07_022222F0(&a0->unk34[0x14], a0->managedSprite) == 0) {
            a0->unk8++;

            ov07_02232F74(a0, 13);
        }
        break;
    default:
        break;
    }

    return TRUE;
}
