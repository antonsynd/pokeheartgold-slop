#include "global.h"

#include "assert.h"
#include "filesystem.h"
#include "heap.h"
#include "party.h"
#include "pokemon.h"
#include "sys_task_api.h"
#include "trainer_memo.h"
#include "unk_02034354.h"
#include "unk_02035900.h"

typedef struct UnkStruct_Ov85_021E5FE0_2C_Quad {
    u16 unk0;
    u16 unk2;
    u16 unk4;
    u16 unk6;
} UnkStruct_Ov85_021E5FE0_2C_Quad;

typedef struct UnkStruct_Ov85_021E5FE0_2C_Pair {
    u16 unk0;
    u16 unk2;
} UnkStruct_Ov85_021E5FE0_2C_Pair;

typedef struct UnkStruct_Ov85_021E5FE0_2C {
    u32 unk0;
    int unk4;
    u32 unk8;
    u8 unkC[4];
    int unk10;
    int unk14;
    int unk18[5];
    UnkStruct_Ov85_021E5FE0_2C_Quad unk2C;
    u16 unk34[8];
    UnkStruct_Ov85_021E5FE0_2C_Pair unk44[5];
    u8 unk58[0x28];
} UnkStruct_Ov85_021E5FE0_2C;

typedef struct UnkStruct_Ov85_Args {
    int unk0;
    int unk4;
    int unk8;
    u32 unkC;
    u8 unk10[0xC];
    void *saveData;
    u8 unk20[0x10];
    void *unk30;
    void *unk34;
} UnkStruct_Ov85_Args;

typedef struct UnkStruct_Ov85_021E5FE0_D0 {
    u8 unk0[0x40];
    u16 unk40;
    u16 unk42;
    u8 unk44[2];
    s16 unk46;
} UnkStruct_Ov85_021E5FE0_D0;

typedef struct UnkStruct_Ov85_Entry {
    int unk0;
    int unk4;
    int unk8;
    int unkC;
    u8 unk10[0x40];
    VecFx32 unk50;
    u8 unk5C[0x54];
} UnkStruct_Ov85_Entry;

typedef struct UnkStruct_Ov85_122C {
    int unk0;
    int unk4;
    int unk8;
    int unkC;
    int unk10;
    int unk14;
} UnkStruct_Ov85_122C;

typedef struct UnkStruct_Ov85_021E8374 {
    int unk0;
    int unk4;
    int unk8;
    void *unkC;
} UnkStruct_Ov85_021E8374;

typedef struct UnkStruct_Ov85_021E5FE0 {
    int unk0;
    int unk4;
    int unk8;
    int unkC;
    int unk10;
    int unk14;
    u8 unk18[4];
    int unk1C;
    u32 unk20;
    Party *unk24;
    u8 unk28[4];
    UnkStruct_Ov85_021E5FE0_2C unk2C;
    u8 unkAC[0x20];
    UnkStruct_Ov85_Args *unkCC;
    UnkStruct_Ov85_021E5FE0_D0 *unkD0;
    u8 unkD4[0x40];
    fx32 unk114;
    u8 unk118[0x1B8];
    UnkStruct_Ov85_Entry unk2D0[13];
    u8 unkBC0[0x84];
    u16 unkC44;
    u16 unkC46;
    u8 unkC48[4];
    UnkStruct_Ov85_021E8374 unkC4C[5];
    u8 unkC9C[0xE4];
    NARC *unkD80;
    u8 unkD84[0x40];
    SysTask *unkDC4;
    u8 unkDC8[4];
} UnkStruct_Ov85_021E5FE0;

extern u64 _s32_div_f(s32 a, s32 b);

extern void sub_0201A728(int a0);
extern void sub_0201A738(int a0);
extern void sub_020210BC(void);
extern void sub_02021148(int a0);
extern int sub_02021238(void);
extern int sub_02036FD8(int a0, void *a1, int a2);
extern int sub_02037454(void);
extern void sub_02037AC0(int a0);
extern int sub_02037B38(int a0);
extern int sub_02096D4C(void *a0, int a1, void *a2, int a3);
extern void GF_DestroyVramTransferManager(void);
extern void GF_CreateVramTransferManager(int a0, int a1);
extern u32 GF_GetCurrentPlayingBGM(void);
extern void Sound_SetSceneAndPlayBGM(int a0, int a1, int a2);
extern int IsPaletteFadeFinished(void);
extern void BeginNormalPaletteFade(int a0, int a1, int a2, int a3, int a4, int a5, int a6);
extern void HBlankInterruptDisable(void);

extern void ov85_021E678C(UnkStruct_Ov85_021E5FE0 *a0);
extern void ov85_021E67CC(UnkStruct_Ov85_021E5FE0 *a0);
extern void ov85_021E67F4(UnkStruct_Ov85_021E5FE0 *a0);
extern void ov85_021E6764(void *a0);
extern void ov85_021E72E8(UnkStruct_Ov85_021E5FE0 *a0);
extern void ov85_021E74AC(UnkStruct_Ov85_021E5FE0 *a0);
extern void ov85_021E752C(UnkStruct_Ov85_021E5FE0 *a0);
extern void ov85_021E75B8(UnkStruct_Ov85_021E5FE0 *a0);
extern void ov85_021E75C8(UnkStruct_Ov85_021E5FE0 *a0);
extern void ov85_021E7650(UnkStruct_Ov85_021E5FE0 *a0);
extern void ov85_021E7658(UnkStruct_Ov85_021E5FE0 *a0);
extern void ov85_021E7798(UnkStruct_Ov85_021E5FE0 *a0);
extern void ov85_021E7D08(UnkStruct_Ov85_021E5FE0 *a0);
extern void ov85_021E7D40(UnkStruct_Ov85_021E5FE0 *a0);
extern void ov85_021E7E3C(UnkStruct_Ov85_021E5FE0 *a0);
extern void ov85_021E7E78(UnkStruct_Ov85_021E5FE0 *a0);
extern void ov85_021E7F74(UnkStruct_Ov85_021E5FE0 *a0);
extern void ov85_021E7FB0(UnkStruct_Ov85_021E5FE0 *a0);
extern void ov85_021E80E0(UnkStruct_Ov85_021E5FE0 *a0);
extern void ov85_021E8118(UnkStruct_Ov85_021E5FE0 *a0);
extern void ov85_021E81E0(UnkStruct_Ov85_021E5FE0 *a0);
extern void ov85_021E82F8(UnkStruct_Ov85_021E5FE0 *a0);
extern void ov85_021E833C(UnkStruct_Ov85_021E5FE0 *a0);
extern void ov85_021E83E0(UnkStruct_Ov85_021E5FE0 *a0);
extern void ov85_021E8418(UnkStruct_Ov85_021E5FE0 *a0);
extern void ov85_021E84EC(UnkStruct_Ov85_021E5FE0 *a0, int a1);
extern void ov85_021E7400(UnkStruct_Ov85_021E5FE0 *a0, int a1);
extern void ov85_021E7194(UnkStruct_Ov85_021E5FE0 *a0, int a1);
extern void ov85_021E7B40(UnkStruct_Ov85_021E5FE0 *a0, u16 a1, int a2, int a3, u16 a4, int a5, UnkStruct_Ov85_Entry *a6);
extern int ov85_021E8610(UnkStruct_Ov85_021E5FE0 *a0);
extern int ov85_021E8614(UnkStruct_Ov85_021E5FE0 *a0, u32 a1);
extern int ov85_021E8628(UnkStruct_Ov85_021E5FE0 *a0);
extern int ov85_021E8660(UnkStruct_Ov85_021E5FE0 *a0);
extern int ov85_021E8720(UnkStruct_Ov85_021E5FE0 *a0);
extern int ov85_021E8834(UnkStruct_Ov85_021E5FE0 *a0);
extern int ov85_021E8878(UnkStruct_Ov85_021E5FE0 *a0);
extern int ov85_021E8898(UnkStruct_Ov85_021E5FE0 *a0);
extern int ov85_021E86B0(UnkStruct_Ov85_021E5FE0 *a0, int a1);
extern void *ov85_021E85F0(UnkStruct_Ov85_021E5FE0 *a0, int a1);

int ov85_021E5AF8(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E5B0C(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E5B30(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E5B48(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E5B78(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E5B98(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E5BC8(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E5C58(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E5C80(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E5CA4(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E5CD0(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E5CE4(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E5CFC(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E5D20(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E5D3C(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E5D84(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E5DAC(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E5E30(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E5EB4(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E5EE8(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E5F10(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E5F3C(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E5F58(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E5F6C(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E5F84(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E5F9C(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E5FD0(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E5FE0(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E60F0(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E61C8(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E61FC(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E6224(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E62A0(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E62B4(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E62D8(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E636C(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E63D8(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E6420(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E6474(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E6498(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E652C(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E6550(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E657C(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E6594(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E65D4(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E6610(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E6644(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E6658(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E6674(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E6694(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E66F4(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E670C(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E6748(UnkStruct_Ov85_021E5FE0 *param0);
int ov85_021E6760(UnkStruct_Ov85_021E5FE0 *param0);

const u16 ov85_021EA788[30] = {
    0, 0, 0, 0, 0,
    0, 0, 0, 0, 0,
    0, 180, 0, 0, 0,
    0, 240, 120, 0, 0,
    0, 270, 180, 90, 0,
    0, 288, 216, 144, 72,
};

const u16 ov85_021EA7C4[30] = {
    0, 0, 0, 0, 0,
    0, 0, 0, 0, 0,
    90, 270, 0, 0, 0,
    90, 210, 330, 0, 0,
    90, 180, 270, 0, 0,
    90, 162, 234, 306, 18,
};

void *const ov85_021EA800[54] = {
    (void *)ov85_021E5AF8,
    (void *)ov85_021E5B0C,
    (void *)ov85_021E5B30,
    (void *)ov85_021E5B48,
    (void *)ov85_021E5B78,
    (void *)ov85_021E5B98,
    (void *)ov85_021E5BC8,
    (void *)ov85_021E5C58,
    (void *)ov85_021E5C80,
    (void *)ov85_021E5CA4,
    (void *)ov85_021E5CD0,
    (void *)ov85_021E5CE4,
    (void *)ov85_021E5CFC,
    (void *)ov85_021E5D20,
    (void *)ov85_021E5D3C,
    (void *)ov85_021E5D84,
    (void *)ov85_021E5DAC,
    (void *)ov85_021E5E30,
    (void *)ov85_021E5EB4,
    (void *)ov85_021E5EE8,
    (void *)ov85_021E5F10,
    (void *)ov85_021E5F3C,
    (void *)ov85_021E5F58,
    (void *)ov85_021E5F6C,
    (void *)ov85_021E5F84,
    (void *)ov85_021E5F9C,
    (void *)ov85_021E5FD0,
    (void *)ov85_021E5FE0,
    (void *)ov85_021E60F0,
    (void *)ov85_021E61C8,
    (void *)ov85_021E61FC,
    (void *)ov85_021E6224,
    (void *)ov85_021E62A0,
    (void *)ov85_021E62B4,
    (void *)ov85_021E62D8,
    (void *)ov85_021E636C,
    (void *)ov85_021E63D8,
    (void *)ov85_021E6420,
    (void *)ov85_021E6474,
    (void *)ov85_021E6498,
    (void *)ov85_021E652C,
    (void *)ov85_021E6550,
    (void *)ov85_021E657C,
    (void *)ov85_021E6594,
    (void *)ov85_021E65D4,
    (void *)ov85_021E6610,
    (void *)ov85_021E6644,
    (void *)ov85_021E6658,
    (void *)ov85_021E6674,
    (void *)ov85_021E6694,
    (void *)ov85_021E66F4,
    (void *)ov85_021E670C,
    (void *)ov85_021E6748,
    (void *)ov85_021E6760,
};

int ov85_021E5900(void *appMan, int *param1) {
    UnkStruct_Ov85_021E5FE0 *v0;
    UnkStruct_Ov85_Args *v1 = OverlayManager_GetArgs(appMan);

    sub_020398D4(1, 1);
    Main_SetVBlankIntrCB(NULL, NULL);
    HBlankInterruptDisable();
    sub_0201A728(2);
    Heap_Create(3, 0x66, 0x80000);

    v0 = OverlayManager_CreateAndGetData(appMan, 0xDCC, 0x66);
    memset(v0, 0, 0xDCC);

    v1->unk34 = v0;
    v0->unkCC = v1;
    v0->unkD0 = v1->unk30;
    v0->unk24 = SaveArray_Party_Get(v0->unkCC->saveData);
    v0->unkD80 = NARC_New(0xBB, 0x66);

    GF_CreateVramTransferManager(8, 0x66);
    sub_020210BC();
    sub_02021148(4);
    ov85_021E678C(v0);
    Main_SetVBlankIntrCB(ov85_021E6764, v0);
    ov85_021E752C(v0);
    ov85_021E7650(v0);

    {
        int v2 = 0, v3 = 0;
        int v4 = sub_0203769C();

        do {
            if (v0->unkCC->unkC & (1 << v2)) {
                if (v2 == v4) {
                    break;
                }

                v3++;
            }

            v2++;
        } while (v2 < 5);

        v0->unk114 = ov85_021EA788[v0->unkCC->unk8 * 5 + v3] * 0x1000;
    }

    v0->unk1C = GF_GetCurrentPlayingBGM();

    ov85_021E7D08(v0);
    ov85_021E7E3C(v0);
    ov85_021E7F74(v0);
    ov85_021E80E0(v0);
    ov85_021E82F8(v0);
    ov85_021E83E0(v0);
    BeginNormalPaletteFade(0, 1, 1, 0, 8, 1, 0x66);

    return 1;
}

int ov85_021E5A34(void *appMan, int *param1) {
    UnkStruct_Ov85_021E5FE0 *v0 = OverlayManager_GetData(appMan);

    if (sub_02021238() != 1) {
        GF_ASSERT(FALSE);
    }

    ov85_021E7D40(v0);
    ov85_021E7E78(v0);
    ov85_021E7FB0(v0);
    ov85_021E8118(v0);
    ov85_021E833C(v0);
    ov85_021E8418(v0);
    ov85_021E75B8(v0);
    ov85_021E7658(v0);
    ov85_021E67CC(v0);

    Main_SetVBlankIntrCB(NULL, NULL);
    GF_DestroyVramTransferManager();
    NARC_Delete(v0->unkD80);
    OverlayManager_FreeData(appMan);
    Heap_Destroy(0x66);
    sub_0201A738(2);

    return 1;
}

void ov85_021E5AF0(UnkStruct_Ov85_021E5FE0 *param0);

int ov85_021E5AAC(void *appMan, int *param1) {
    int v0;
    UnkStruct_Ov85_021E5FE0 *v1 = OverlayManager_GetData(appMan);

    ov85_021E74AC(v1);

    do {
        void *v2 = ov85_021EA800[v1->unk0];
        v0 = ((int (*)(UnkStruct_Ov85_021E5FE0 *))v2)(v1);
    } while (v0 == 1);

    if (v0 == 2) {
        return 1;
    }

    ov85_021E75C8(v1);
    ov85_021E7798(v1);
    ov85_021E67F4(v1);
    ov85_021E5AF0(v1);

    return 0;
}

void ov85_021E5AF0(UnkStruct_Ov85_021E5FE0 *param0) {
    param0->unk2C.unk8 = 0;
    param0->unk2C.unk10 = 0;
}

int ov85_021E5AF8(UnkStruct_Ov85_021E5FE0 *param0) {
    ov85_021E7194(param0, 0);
    param0->unk0 = 1;
    return 0;
}

int ov85_021E5B0C(UnkStruct_Ov85_021E5FE0 *param0) {
    if (IsPaletteFadeFinished()) {
        if (sub_0203769C() == 0) {
            param0->unk0 = 2;
        } else {
            param0->unk0 = 8;
        }

        return 1;
    }

    return 0;
}

int ov85_021E5B30(UnkStruct_Ov85_021E5FE0 *param0) {
    if (ov85_021E8628(param0)) {
        param0->unk0 = 3;
        return 1;
    }

    return 0;
}

int ov85_021E5B48(UnkStruct_Ov85_021E5FE0 *param0) {
    u16 v0 = 1;

    if (sub_02096D4C(param0->unkD0, 8, &v0, 2) == 1) {
        param0->unk0 = 4;
        return 1;
    }

    return 0;
}

int ov85_021E5B78(UnkStruct_Ov85_021E5FE0 *param0) {
    int v0 = ov85_021E8660(param0) + 1;

    if (v0 != sub_02037454()) {
        return 0;
    }

    param0->unk0 = 5;
    return 1;
}

int ov85_021E5B98(UnkStruct_Ov85_021E5FE0 *param0) {
    int v0;

    param0->unk2C.unk4 = ov85_021E8660(param0) + 1;

    v0 = sub_02096D4C(param0->unkD0, 13, &param0->unk2C.unk4, 4);

    if (v0 == 1) {
        param0->unk14 = 0;
        param0->unk0 = 6;
    }

    return 0;
}

int ov85_021E5BC8(UnkStruct_Ov85_021E5FE0 *param0) {
    int v0;
    struct {
        u16 unk0;
        u16 unk2;
    } v1;

    if (param0->unk14 == 0) {
        v1.unk2 = 0;
        v1.unk0 = 0;

        v0 = sub_02096D4C(param0->unkD0, 12, &v1, 4);

        if (v0 == 1) {
            param0->unk14++;
        }

        return 0;
    }

    {
        int v2 = 1, v3 = 1;
        u32 v4 = param0->unkD0->unk42;

        do {
            if (v4 & (1 << v2)) {
                if (v3 >= param0->unk14) {
                    v1.unk2 = v2;
                    v1.unk0 = param0->unk14;

                    v0 = sub_02096D4C(param0->unkD0, 12, &v1, 4);

                    if (v0 == 1) {
                        param0->unk14++;
                    }
                    break;
                }

                v3++;
            }

            v2++;
        } while (v2 < 5);
    }

    if (param0->unk14 >= param0->unk2C.unk4) {
        param0->unk0 = 7;
    }

    return 0;
}

int ov85_021E5C58(UnkStruct_Ov85_021E5FE0 *param0) {
    u16 v0 = 8;

    if (sub_02096D4C(param0->unkD0, 8, &v0, 2) == 1) {
        param0->unk0 = 10;
    }

    return 0;
}

int ov85_021E5C80(UnkStruct_Ov85_021E5FE0 *param0) {
    int v0 = sub_02096D4C(param0->unkD0, 9, NULL, 0);

    if (v0 == 1) {
        param0->unk10 = 0;
        param0->unk0 = 9;
        return 0;
    }

    return 0;
}

int ov85_021E5CA4(UnkStruct_Ov85_021E5FE0 *param0) {
    if (ov85_021E8614(param0, 1 << 3) == 1) {
        GF_ASSERT(param0->unk2C.unk4 >= 2);
        GF_ASSERT(param0->unk2C.unk0 != 0);
        param0->unk0 = 10;
    }

    return 0;
}

int ov85_021E5CD0(UnkStruct_Ov85_021E5FE0 *param0) {
    sub_02037AC0(202);
    param0->unk0 = 11;
    return 0;
}

int ov85_021E5CE4(UnkStruct_Ov85_021E5FE0 *param0) {
    if (sub_02037B38(202)) {
        param0->unk0 = 12;
    }

    return 0;
}

int ov85_021E5CFC(UnkStruct_Ov85_021E5FE0 *param0) {
    if (sub_02096D4C(param0->unkD0, 14, &param0->unkCC->unk4, 4)) {
        param0->unk0 = 13;
    }

    return 0;
}

int ov85_021E5D20(UnkStruct_Ov85_021E5FE0 *param0) {
    int v0 = sub_02036FD8(131, (void *)param0->unk24, 236 * 6 + 4 * 2);

    if (v0) {
        param0->unk0 = 14;
    }

    return 0;
}

int ov85_021E5D3C(UnkStruct_Ov85_021E5FE0 *param0) {
    if (ov85_021E8720(param0) == param0->unk2C.unk4) {
        if (ov85_021E8834(param0) == 1) {
            sub_02096D4C(param0->unkD0, 16, NULL, 0);
            param0->unk0 = 46;
        } else {
            sub_02096D4C(param0->unkD0, 17, NULL, 0);
            param0->unk0 = 15;
        }
    }

    return 0;
}

int ov85_021E5D84(UnkStruct_Ov85_021E5FE0 *param0) {
    if (ov85_021E8898(param0) == 1) {
        param0->unk0 = 46;
    } else if (ov85_021E8878(param0) == param0->unk2C.unk4) {
        param0->unk0 = 16;
    }

    return 0;
}

int ov85_021E5DAC(UnkStruct_Ov85_021E5FE0 *param0) {
    int v0;
    UnkStruct_Ov85_122C *v1 = ov85_021E85F0(param0, sizeof(UnkStruct_Ov85_122C));

    v1->unk10 = param0->unk2C.unk0;
    v1->unk14 = param0->unk2C.unk4;
    v1->unk4 = ov85_021EA788[param0->unk2C.unk4 * 5 + param0->unk2C.unk0];

    for (v0 = 0; v0 < (7 + 1); v0++) {
        if (ov85_021E86B0(param0, v0)) {
            *(void **)(param0->unk2C.unk58 + v0 * 4) = sub_02034818(v0);
            PlayerName_FlatToString(*(void **)(param0->unk2C.unk58 + v0 * 4), *(void **)(param0->unk2C.unk58 + 0x14 + v0 * 4));
        }
    }

    param0->unk114 = (fx32)(v1->unk4 * 0x1000);
    param0->unk0 = 17;

    Sound_SetSceneAndPlayBGM(15, 0x483, 1);
    ov85_021E72E8(param0);

    return 1;
}

int ov85_021E5E30(UnkStruct_Ov85_021E5FE0 *param0) {
    param0->unkC--;

    if (param0->unkC > 0) {
        return 0;
    }

    param0->unkC = 15;

    {
        UnkStruct_Ov85_122C *v0 = ov85_021E8610(param0);
        u16 v1 = ov85_021EA7C4[v0->unk14 * 5 + v0->unk10];
        int v2 = param0->unk2C.unk44[v0->unk10].unk2;

        ov85_021E7B40(param0, v2, v0->unk10, v0->unk0, v1, v0->unk4, &param0->unk2D0[v0->unk10]);

        v0->unk10++;
        v0->unk10 = (s32)(_s32_div_f(v0->unk10, v0->unk14) >> 32);
        v0->unk0++;

        if (v0->unk0 == v0->unk14) {
            param0->unkC = 0;
            param0->unk0 = 18;
        }
    }

    return 0;
}

int ov85_021E5EB4(UnkStruct_Ov85_021E5FE0 *param0) {
    int v1 = 0, v2 = 0, v3 = param0->unk2C.unk4;

    do {
        if (param0->unk2D0[v1].unk8 == 1) {
            v2++;
        }

        v1++;
    } while (v1 < v3);

    if (v2 == v3) {
        param0->unk0 = 19;
        return 1;
    }

    return 0;
}

int ov85_021E5EE8(UnkStruct_Ov85_021E5FE0 *param0) {
    param0->unkC++;

    if (param0->unkC > 30) {
        param0->unkC = 0;

        if (sub_0203769C() == 0) {
            param0->unk0 = 20;
        } else {
            param0->unk0 = 21;
        }
    }

    return 0;
}

int ov85_021E5F10(UnkStruct_Ov85_021E5FE0 *param0) {
    u16 v0 = 4;

    if (sub_02096D4C(param0->unkD0, 8, &v0, 2) == 1) {
        param0->unk0 = 22;
    }

    return 0;
}

int ov85_021E5F3C(UnkStruct_Ov85_021E5FE0 *param0) {
    if (ov85_021E8614(param0, 1 << 2) == 1) {
        param0->unk0 = 22;

        return 1;
    }

    return 0;
}

int ov85_021E5F58(UnkStruct_Ov85_021E5FE0 *param0) {
    sub_02037AC0(202);
    param0->unk0 = 23;
    return 0;
}

int ov85_021E5F6C(UnkStruct_Ov85_021E5FE0 *param0) {
    if (sub_02037B38(202)) {
        param0->unk0 = 24;
    }

    return 0;
}

int ov85_021E5F84(UnkStruct_Ov85_021E5FE0 *param0) {
    ov85_021E84EC(param0, 1);
    ov85_021E81E0(param0);
    param0->unk0 = 25;

    return 0;
}

int ov85_021E5F9C(UnkStruct_Ov85_021E5FE0 *param0) {
    int v0;

    param0->unkC++;

    if (param0->unkC < (30 * 3 + 5)) {
        return 0;
    }

    for (v0 = 0; v0 < param0->unk2C.unk4; v0++) {
        ov85_021E7400(param0, v0);
    }

    param0->unkC = 0;
    param0->unk0 = 26;

    return 0;
}
