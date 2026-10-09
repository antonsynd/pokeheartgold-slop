#include "global.h"

#include "assert.h"
#include "gf_3d_render.h"
#include "unk_02018000.h"
#include "unk_02023694.h"

typedef struct UnkStruct_ov45_02230920 {
    u8 unk_00_0 : 4;
    u8 unk_00_4 : 2;
    u8 unk_00_6 : 2;
    u8 unk_01_0 : 1;
    u8 unk_01_1 : 7;
    u8 unk_02;
    u8 unk_03;
    void *unk_04;
    Sprite *unk_08;
    UnkStruct_020181B0 unk_0C;
    u8 unk_84;
    u8 unk_85;
    u16 unk_86;
    fx32 unk_88;
    u8 unk_8C[4];
} UnkStruct_ov45_02230920;

typedef struct UnkStruct_ov45_02230A44 {
    UnkStruct_02018030 unk_00;
    u32 unk_10;
} UnkStruct_ov45_02230A44;

typedef struct UnkStruct_ov45_02230A6C {
    u8 unk_00[0x10];
    UnkStruct_ov45_02230920 *unk_10;
    u32 unk_14;
} UnkStruct_ov45_02230A6C;

typedef struct UnkStruct_ov45_02254C48 {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_ov45_02254C48;

typedef struct UnkStruct_ov42_022282F4 {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_ov42_022282F4;

u32 ov42_02228188(void *arg0, int arg1);
UnkStruct_ov42_022282F4 ov42_022282F4(void *arg0);
void ov49_02258830(void **dest, NARC *narc, u32 fileId, enum HeapID heapID);
void ov45_022308C0(UnkStruct_ov45_02230920 *arg0, UnkStruct_ov42_022282F4 *arg1);
BOOL ov45_02230E78(Sprite *arg0);
void sub_02023EE0(Sprite *sprite, int arg1);
void sub_02023F40(Sprite *sprite, int arg1);
void sub_02023F04(Sprite *sprite, fx32 arg1);
u8 sub_02023EF4(Sprite *sprite);
fx32 sub_02023F70(Sprite *sprite);
void NNS_G3dMdlSetMdlPolygonIDAll(NNSG3dResMdl *model, int polygonID);
void NNS_G3dMdlSetMdlAlphaAll(NNSG3dResMdl *model, int alpha);

void ov45_02230920(UnkStruct_ov45_02230920 *arg0, int arg1);
void ov45_0223093C(UnkStruct_ov45_02230920 *arg0, int arg1);
void ov45_02230968(UnkStruct_ov45_02230920 *arg0);
void ov45_02230974(UnkStruct_ov45_02230920 *arg0, u8 arg1);
void ov45_02230978(UnkStruct_ov45_02230920 *arg0, BOOL arg1);
BOOL ov45_02230994(const UnkStruct_ov45_02230920 *arg0);
const UnkStruct_ov45_02254C48 *ov45_0223099C(u32 arg0);
u32 ov45_022309C4(BOOL arg0, u32 arg1);
fx32 ov45_022309D0(u32 arg0, u32 arg1, u32 arg2);
void ov45_022309E8(UnkStruct_ov45_02230A44 *arg0, NARC *arg1, u32 arg2, enum HeapID heapID);
void ov45_02230A44(UnkStruct_ov45_02230A44 *arg0);
void ov45_02230A4C(UnkStruct_ov45_02230A44 *arg0, u32 arg1);
u32 ov45_02230A58(const UnkStruct_ov45_02230A44 *arg0);
void ov45_02230A5C(UnkStruct_ov45_02230A44 *arg0, UnkStruct_020181B0 *arg1);
UnkStruct_ov45_02230920 *ov45_02230A6C(UnkStruct_ov45_02230A6C *arg0);
BOOL ov45_02230AA4(const UnkStruct_ov45_02230920 *arg0);
void ov45_02230AB4(UnkStruct_ov45_02230920 *arg0);
void ov45_02230AC0(UnkStruct_ov45_02230920 *arg0);
void ov45_02230ACC(UnkStruct_ov45_02230920 *arg0);
void ov45_02230B64(UnkStruct_ov45_02230920 *arg0);
void ov45_02230B8C(UnkStruct_ov45_02230920 *arg0);
void ov45_02230BFC(UnkStruct_ov45_02230920 *arg0);
void ov45_02230C40(UnkStruct_ov45_02230920 *arg0);
void ov45_02230CB0(UnkStruct_ov45_02230920 *arg0);
void ov45_02230CD8(UnkStruct_ov45_02230920 *arg0);
void ov45_02230D20(UnkStruct_ov45_02230920 *arg0);
void ov45_02230D5C(UnkStruct_ov45_02230920 *arg0);
BOOL ov45_02230DC4(u32 arg0);
void ov45_02230DF4(UnkStruct_ov45_02230920 *arg0);
void ov45_02230E28(UnkStruct_ov45_02230920 *arg0);

const u8 ov45_02254C34[4] = { 1, 2, 0, 3 };

const UnkStruct_ov45_02254C48 ov45_02254C48[20] = {
    { 0x0000, 0x8045 },
    { 0x0061, 0x8046 },
    { 0x0003, 0x0002 },
    { 0x0005, 0x0004 },
    { 0x000B, 0x000A },
    { 0x001F, 0x0024 },
    { 0x0032, 0x002F },
    { 0x0033, 0x0030 },
    { 0x003E, 0x001B },
    { 0x0046, 0x0021 },
    { 0x0006, 0x0005 },
    { 0x0007, 0x0006 },
    { 0x000D, 0x000D },
    { 0x000E, 0x000E },
    { 0x0023, 0x0026 },
    { 0x0025, 0x0028 },
    { 0x002A, 0x002B },
    { 0x003F, 0x001C },
    { 0x011E, 0x0066 },
    { 0x011D, 0x0065 },
};

void (*ov45_02254F1C[3])(UnkStruct_ov45_02230920 *) = {
    ov45_02230CD8,
    ov45_02230D20,
    ov45_02230D5C,
};

void (*ov45_02254F28[12])(UnkStruct_ov45_02230920 *) = {
    ov45_02230B64,
    ov45_02230BFC,
    ov45_02230B8C,
    ov45_02230C40,
    ov45_02230B64,
    ov45_02230B8C,
    ov45_02230B8C,
    ov45_02230B8C,
    ov45_02230B8C,
    ov45_02230B8C,
    ov45_02230B8C,
};

void ov45_02230920(UnkStruct_ov45_02230920 *arg0, int arg1) {
    u32 v0 = ov45_022309C4(1, arg1);

    sub_02023EE0(arg0->unk_08, v0);
    sub_02023F40(arg0->unk_08, 0);
}

void ov45_0223093C(UnkStruct_ov45_02230920 *arg0, int arg1) {
    arg0->unk_01_0 = 1;
    arg0->unk_01_1 = arg1;
    arg0->unk_02 = 0;
    arg0->unk_03 = 1;
}

void ov45_02230968(UnkStruct_ov45_02230920 *arg0) {
    arg0->unk_01_0 = 0;
}

void ov45_02230974(UnkStruct_ov45_02230920 *arg0, u8 arg1) {
    arg0->unk_03 = arg1;
}

void ov45_02230978(UnkStruct_ov45_02230920 *arg0, BOOL arg1) {
    arg0->unk_00_6 = arg1;
    ov45_02230E28(arg0);
}

BOOL ov45_02230994(const UnkStruct_ov45_02230920 *arg0) {
    return arg0->unk_00_6;
}

const UnkStruct_ov45_02254C48 *ov45_0223099C(u32 arg0) {
    int i;

    for (i = 0; i < 20; i++) {
        if (ov45_02254C48[i].unk_00 == arg0) {
            return &ov45_02254C48[i];
        }
    }

    GF_ASSERT(FALSE);
    return NULL;
}

u32 ov45_022309C4(BOOL arg0, u32 arg1) {
    if (arg0) {
        return 0 + arg1;
    }

    return 4 + arg1;
}

fx32 ov45_022309D0(u32 arg0, u32 arg1, u32 arg2) {
    fx32 v0;

    arg1 = (u16)(arg1 + 1);

    v0 = (arg1 * arg2) / arg0;
    v0 *= FX32_ONE;

    return v0;
}

void ov45_022309E8(UnkStruct_ov45_02230A44 *arg0, NARC *arg1, u32 arg2, enum HeapID heapID) {
    void *v0;

    ov49_02258830(&v0, arg1, arg2, heapID);

    arg0->unk_00.resFile = v0;
    arg0->unk_00.mdlSet = NNS_G3dGetMdlSet(arg0->unk_00.resFile);
    arg0->unk_00.model = NNS_G3dGetMdlByIdx(arg0->unk_00.mdlSet, 0);
    arg0->unk_00.tex = NNS_G3dGetTex(arg0->unk_00.resFile);

    GF3dRender_BindModelSet(arg0->unk_00.resFile, arg0->unk_00.tex);

    NNS_G3dMdlSetMdlPolygonIDAll(arg0->unk_00.model, 20);
}

void ov45_02230A44(UnkStruct_ov45_02230A44 *arg0) {
    sub_02018068(&arg0->unk_00);
}

void ov45_02230A4C(UnkStruct_ov45_02230A44 *arg0, u32 arg1) {
    arg0->unk_10 = arg1;
    NNS_G3dMdlSetMdlAlphaAll(arg0->unk_00.model, arg0->unk_10);
}

u32 ov45_02230A58(const UnkStruct_ov45_02230A44 *arg0) {
    return arg0->unk_10;
}

void ov45_02230A5C(UnkStruct_ov45_02230A44 *arg0, UnkStruct_020181B0 *arg1) {
    sub_020181B0(arg1, &arg0->unk_00);
}

UnkStruct_ov45_02230920 *ov45_02230A6C(UnkStruct_ov45_02230A6C *arg0) {
    u32 i;

    for (i = 0; i < arg0->unk_14; i++) {
        if (ov45_02230AA4(&arg0->unk_10[i]) == 0) {
            return &arg0->unk_10[i];
        }
    }

    GF_ASSERT(FALSE);
    return NULL;
}

BOOL ov45_02230AA4(const UnkStruct_ov45_02230920 *arg0) {
    if (arg0->unk_04 == NULL) {
        return 0;
    }

    return 1;
}

void ov45_02230AB4(UnkStruct_ov45_02230920 *arg0) {
    memset(arg0, 0, sizeof(UnkStruct_ov45_02230920));
}

void ov45_02230AC0(UnkStruct_ov45_02230920 *arg0) {
    sub_020181EC(&arg0->unk_0C);
}

void ov45_02230ACC(UnkStruct_ov45_02230920 *arg0) {
    u32 v0;
    u32 v1;
    UnkStruct_ov42_022282F4 v2;

    if (arg0->unk_00_0 == 0) {
        return;
    }

    v0 = ov42_02228188(arg0->unk_04, 5);
    v1 = ov42_02228188(arg0->unk_04, 8);

    if (arg0->unk_86 > v1 || arg0->unk_84 != v0) {
        if (ov45_02230DC4(arg0->unk_84) == 1) {
            arg0->unk_85 = sub_02023EF4(arg0->unk_08);
            arg0->unk_88 = sub_02023F70(arg0->unk_08);
        }

        arg0->unk_84 = v0;
    }

    arg0->unk_86 = v1;

    ov45_02254F28[v0](arg0);

    v2 = ov42_022282F4(arg0->unk_04);
    ov45_022308C0(arg0, &v2);
}

void ov45_02230B64(UnkStruct_ov45_02230920 *arg0) {
    u32 v0;
    u32 v1;

    v0 = ov42_02228188(arg0->unk_04, 6);
    v1 = ov45_022309C4(1, v0);

    sub_02023EE0(arg0->unk_08, v1);
    sub_02023F40(arg0->unk_08, 0);
}

void ov45_02230B8C(UnkStruct_ov45_02230920 *arg0) {
    u32 v0;
    u32 v1;
    fx32 v2;
    u16 v3;
    u16 v4;

    v0 = ov42_02228188(arg0->unk_04, 6);
    v1 = ov45_022309C4(1, v0);
    v3 = ov42_02228188(arg0->unk_04, 9);
    v4 = ov42_02228188(arg0->unk_04, 8);
    v2 = ov45_022309D0(v3, v4, 8);

    sub_02023EE0(arg0->unk_08, v1);

    if (arg0->unk_85 == v1) {
        sub_02023F40(arg0->unk_08, 0);
        sub_02023F04(arg0->unk_08, v2 + arg0->unk_88);
    } else {
        sub_02023F40(arg0->unk_08, 0);
        sub_02023F04(arg0->unk_08, v2);
    }
}

void ov45_02230BFC(UnkStruct_ov45_02230920 *arg0) {
    u32 v0;
    u32 v1;
    u16 v2 = ov42_02228188(arg0->unk_04, 8);

    if (v2 < 4) {
        sub_02023F40(arg0->unk_08, 4 * FX32_ONE);
    } else {
        v0 = ov42_02228188(arg0->unk_04, 6);
        v1 = ov45_022309C4(1, v0);

        sub_02023EE0(arg0->unk_08, v1);
        sub_02023F40(arg0->unk_08, 0);
    }
}

void ov45_02230C40(UnkStruct_ov45_02230920 *arg0) {
    u32 v0;
    u32 v1;
    fx32 v2;
    u16 v3;
    u16 v4;

    v0 = ov42_02228188(arg0->unk_04, 6);
    v1 = ov45_022309C4(0, v0);
    v3 = ov42_02228188(arg0->unk_04, 9);
    v4 = ov42_02228188(arg0->unk_04, 8);
    v2 = ov45_022309D0(v3, v4, 4);

    sub_02023EE0(arg0->unk_08, v1);

    if (arg0->unk_85 == v1) {
        sub_02023F40(arg0->unk_08, 0);
        sub_02023F04(arg0->unk_08, v2 + arg0->unk_88);
    } else {
        sub_02023F40(arg0->unk_08, 0);
        sub_02023F04(arg0->unk_08, v2);
    }
}

void ov45_02230CB0(UnkStruct_ov45_02230920 *arg0) {
    if (arg0->unk_00_0 == 0 && arg0->unk_01_0 == 1) {
        ov45_02254F1C[arg0->unk_01_1](arg0);
    }
}

void ov45_02230CD8(UnkStruct_ov45_02230920 *arg0) {
    u32 v0;
    u32 v1;

    if (arg0->unk_02 % 4 == 0) {
        v0 = arg0->unk_02 / 4;
        v1 = ov45_022309C4(1, ov45_02254C34[v0]);

        sub_02023EE0(arg0->unk_08, v1);
        sub_02023F40(arg0->unk_08, 0);
    }

    if (arg0->unk_02 + arg0->unk_03 < 4 * 4) {
        arg0->unk_02 += arg0->unk_03;
    } else {
        arg0->unk_02 = 0;
    }
}

void ov45_02230D20(UnkStruct_ov45_02230920 *arg0) {
    u32 v0;
    u32 v1;

    if (arg0->unk_02 == 0) {
        v0 = ov42_02228188(arg0->unk_04, 6);
        v0 = ov42_02228188(arg0->unk_04, 6);
        v1 = ov45_022309C4(1, v0);

        sub_02023EE0(arg0->unk_08, v1);
        sub_02023F40(arg0->unk_08, 4 * FX32_ONE);

        arg0->unk_02++;
    }
}

void ov45_02230D5C(UnkStruct_ov45_02230920 *arg0) {
    u32 v0;
    u32 v1;

    if (arg0->unk_02 == 0) {
        v0 = ov42_02228188(arg0->unk_04, 6);
        v1 = ov45_022309C4(1, v0);

        sub_02023EE0(arg0->unk_08, v1);
        sub_02023F40(arg0->unk_08, 4 * FX32_ONE);
    } else if (arg0->unk_02 == 4) {
        v0 = ov42_02228188(arg0->unk_04, 6);
        v1 = ov45_022309C4(1, v0);

        sub_02023EE0(arg0->unk_08, v1);
        sub_02023F40(arg0->unk_08, (4 * 3) * FX32_ONE);
    }

    arg0->unk_02 = (arg0->unk_02 + 1) % (4 * 2);
}

BOOL ov45_02230DC4(u32 arg0) {
    switch (arg0) {
    case 2:
    case 3:
    case 5:
    case 6:
    case 10:
    case 11:
        return 1;
    default:
        break;
    }

    return 0;
}

void ov45_02230DF4(UnkStruct_ov45_02230920 *arg0) {
    BOOL v0;

    if (ov45_02230AA4(arg0)) {
        v0 = ov45_02230E78(arg0->unk_08);

        if (v0 == 0) {
            arg0->unk_00_4 = 1;
        } else {
            arg0->unk_00_4 = 0;
        }

        ov45_02230E28(arg0);
    }
}

void ov45_02230E28(UnkStruct_ov45_02230920 *arg0) {
    if (arg0->unk_00_4 == 0 && arg0->unk_00_6 == 1) {
        sub_02023EA4(arg0->unk_08, 1);
        sub_020182A0(&arg0->unk_0C, 1);
    } else {
        sub_02023EA4(arg0->unk_08, 0);
        sub_020182A0(&arg0->unk_0C, 0);
    }
}
