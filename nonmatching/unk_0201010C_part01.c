#include "global.h"

#include "heap.h"

typedef struct FadeWork {
    int type;
    int steps;
    int framesPerStep;
    int unk_0C;
    int screen;
    void *unk_14;
    void *windows;
    void *hblank;
    enum HeapID heapID;
    u16 color;
    int unk_28;
    int unk_2C;
} FadeWork;

typedef struct UnkStruct_0200F898 {
    u8 unk_00;
    u8 unk_01;
    u16 unk_02;
} UnkStruct_0200F898;

typedef struct UnkStruct_0200FE6C {
    const UnkStruct_0200F898 *unk_00;
    u16 unk_04;
    u16 unk_06;
} UnkStruct_0200FE6C;

typedef struct UnkStruct_0200F980 {
    u8 unk_00[4];
    u8 unk_04[4];
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A;
    u8 unk_0B;
} UnkStruct_0200F980;

typedef struct UnkStruct_0200FB7C {
    u16 unk_00;
    u16 unk_02;
    u16 unk_04;
    u16 unk_06;
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A;
    u8 unk_0B;
} UnkStruct_0200FB7C;

typedef struct UnkStruct_0200FC2C {
    u16 unk_00;
    u16 unk_02;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 unk_07;
} UnkStruct_0200FC2C;

typedef struct UnkStruct_0200FD8C {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
} UnkStruct_0200FD8C;

typedef struct UnkStruct_02011738 {
    const UnkStruct_0200FD8C *unk_00;
    const UnkStruct_0200FD8C *unk_04;
    u16 unk_08;
    u16 unk_0A;
    u8 unk_0C;
    u8 unk_0D;
    u16 unk_0E;
} UnkStruct_02011738;

extern void sub_0200FCDC(u16 color);
extern void sub_02010B14(FadeWork *work, int a1);
extern BOOL sub_02010BB4(FadeWork *work);
extern void sub_0201164C(FadeWork *work, const UnkStruct_0200F980 *a1);
extern BOOL sub_0201169C(FadeWork *work);
extern void sub_020116EC(FadeWork *work, const UnkStruct_0200F980 *a1, const UnkStruct_0200F980 *a2);
extern BOOL sub_02011744(FadeWork *work);
extern void sub_02011884(FadeWork *work, const UnkStruct_0200FB7C *a1);
extern BOOL sub_020118BC(FadeWork *work);
extern void sub_02011B5C(FadeWork *work, const UnkStruct_0200FC2C *a1);
extern BOOL sub_02011B94(FadeWork *work);
extern void sub_02011D60(FadeWork *work, const UnkStruct_0200FC2C *a1);
extern BOOL sub_02011D98(FadeWork *work);
extern void sub_02011FF8(FadeWork *work, const UnkStruct_02011738 *a1);
extern BOOL sub_02012030(FadeWork *work);
extern void sub_0201289C(FadeWork *work, const UnkStruct_0200FE6C *a1);
extern BOOL sub_020128E0(FadeWork *work);

static const UnkStruct_0200F898 _020F5D58 = { 192, 0, 0 };
static const UnkStruct_0200F898 _020F5D5C = { 0, 192, 0 };
static const UnkStruct_0200F898 _020F5D60 = { 0, 192, 1 };
static const UnkStruct_0200F898 _020F5D64 = { 192, 0, 1 };
static const UnkStruct_0200F898 _020F5D68[2] = { { 96, 0, 0 }, { 96, 192, 0 } };
static const UnkStruct_0200F898 _020F5D80[2] = { { 96, 0, 1 }, { 96, 192, 1 } };
static const UnkStruct_0200F898 _020F5D90[2] = { { 0, 96, 1 }, { 192, 96, 1 } };
static const UnkStruct_0200F898 _020F5DB8[2] = { { 0, 96, 0 }, { 192, 96, 0 } };

static const UnkStruct_0200FC2C _020F5DA0 = { 0, (0xFFFF * 90) / 360, 0, 0x3F, GX_BLEND_PLANEMASK_BD, 0 };
static const UnkStruct_0200FC2C _020F5DA8 = { (0xFFFF * 90) / 360, 0, 0, 0x3F, GX_BLEND_PLANEMASK_BD, 1 };
static const UnkStruct_0200FC2C _020F5DC8 = { 0, (0xFFFF * 90) / 360, 0, 0x3F, GX_BLEND_PLANEMASK_BD, 0 };
static const UnkStruct_0200FC2C _020F5DD0 = { (0xFFFF * 90) / 360, 0, 0, 0x3F, GX_BLEND_PLANEMASK_BD, 1 };

static const UnkStruct_0200FB7C _020F5DD8 = { 512, 0, 128, 288, 0, 0x3F, GX_BLEND_PLANEMASK_BD, 1 };
static const UnkStruct_0200FB7C _020F5DE4 = { 0, 512, 128, 288, 0, 0x3F, GX_BLEND_PLANEMASK_BD, 0 };

static const UnkStruct_0200F980 _020F5E08 = { { 0, 0, 255, 192 }, { 128, 96, 128, 96 }, 0, 0x3F, GX_BLEND_PLANEMASK_BD, 1 };
static const UnkStruct_0200F980 _020F5E14 = { { 128, 96, 128, 96 }, { 0, 0, 255, 192 }, 0, 0x3F, GX_BLEND_PLANEMASK_BD, 0 };
static const UnkStruct_0200F980 _020F5E20 = { { 128, 96, 128, 96 }, { 0, 0, 255, 192 }, 0, GX_BLEND_PLANEMASK_BD, 0x3F, 1 };
static const UnkStruct_0200F980 _020F5E2C = { { 0, 0, 255, 192 }, { 0, 0, 0, 192 }, 0, 0x3F, GX_BLEND_PLANEMASK_BD, 1 };
static const UnkStruct_0200F980 _020F5E38 = { { 0, 0, 0, 192 }, { 0, 0, 255, 192 }, 0, 0x3F, GX_BLEND_PLANEMASK_BD, 0 };
static const UnkStruct_0200F980 _020F5E44 = { { 0, 0, 255, 192 }, { 128, 96, 128, 96 }, 0, GX_BLEND_PLANEMASK_BD, 0x3F, 0 };
static const UnkStruct_0200F980 _020F5E5C = { { 0, 0, 255, 192 }, { 128, 0, 128, 192 }, 0, 0x3F, GX_BLEND_PLANEMASK_BD, 1 };
static const UnkStruct_0200F980 _020F5E68 = { { 128, 0, 128, 192 }, { 0, 0, 255, 192 }, 0, 0x3F, GX_BLEND_PLANEMASK_BD, 0 };
static const UnkStruct_0200F980 _020F5E80 = { { 128, 0, 128, 192 }, { 0, 0, 128, 192 }, 0, GX_BLEND_PLANEMASK_BD, 0x3F, 1 };
static const UnkStruct_0200F980 _020F5E8C = { { 128, 0, 128, 192 }, { 128, 0, 255, 192 }, 1, GX_BLEND_PLANEMASK_BD, 0x3F, 1 };
static const UnkStruct_0200F980 _020F5EA4 = { { 0, 0, 128, 192 }, { 128, 0, 128, 192 }, 0, GX_BLEND_PLANEMASK_BD, 0x3F, 0 };
static const UnkStruct_0200F980 _020F5EB0 = { { 128, 0, 255, 192 }, { 128, 0, 128, 192 }, 1, GX_BLEND_PLANEMASK_BD, 0x3F, 0 };

static const UnkStruct_0200FB7C _020F5EC8 = { 256, 0, 128, 96, 0, 0x3F, GX_BLEND_PLANEMASK_BD, 1 };
static const UnkStruct_0200FB7C _020F5ED4 = { 0, 256, 128, 96, 0, 0x3F, GX_BLEND_PLANEMASK_BD, 0 };

static const UnkStruct_0200FD8C _020F5EEC[] = { { 0, 0, 255, 48 }, { 0, 47, 255, 96 }, { 0, 96, 255, 144 }, { 0, 144, 255, 192 } };
static const UnkStruct_0200FD8C _020F5EFC[] = { { 0, 0, 0, 48 }, { 255, 47, 255, 96 }, { 0, 96, 0, 144 }, { 255, 144, 255, 192 } };
static const UnkStruct_0200FD8C _020F5F0C[] = { { 255, 0, 255, 48 }, { 0, 47, 0, 96 }, { 255, 96, 255, 144 }, { 0, 144, 0, 192 } };
static const UnkStruct_0200FD8C _020F5F1C[] = { { 0, 0, 255, 48 }, { 0, 47, 255, 96 }, { 0, 96, 255, 144 }, { 0, 144, 255, 192 } };

static UnkStruct_0200FE6C _0210F64C = { NULL, 1, 1 };
static UnkStruct_0200FE6C _0210F654 = { NULL, 2, 1 };
static UnkStruct_0200FE6C _0210F65C = { NULL, 1, 0 };
static UnkStruct_0200FE6C _0210F66C = { NULL, 1, 1 };
static UnkStruct_0200FE6C _0210F674 = { NULL, 1, 0 };
static UnkStruct_0200FE6C _0210F684 = { NULL, 2, 0 };
static UnkStruct_0200FE6C _0210F68C = { NULL, 2, 0 };
static UnkStruct_0200FE6C _0210F694 = { NULL, 2, 1 };

BOOL FadeFunc_00(FadeWork *work) {
    if (work->unk_0C == 0) {
        work->unk_28 = 1;
        work->unk_2C = 1;
        sub_02010B14(work, 1);
        return FALSE;
    }

    return sub_02010BB4(work);
}

BOOL FadeFunc_01(FadeWork *work) {
    if (work->unk_0C == 0) {
        work->unk_28 = 0;
        work->unk_2C = 1;
        sub_02010B14(work, 0);
        return FALSE;
    }

    return sub_02010BB4(work);
}

BOOL FadeFunc_02(FadeWork *work) {
    if (work->unk_0C == 0) {
        _0210F64C.unk_00 = &_020F5D60;
        sub_0200FCDC(work->color);
        sub_0201289C(work, &_0210F64C);
        work->unk_28 = 1;
        work->unk_2C = 0;
        return FALSE;
    }

    return sub_020128E0(work);
}

BOOL FadeFunc_03(FadeWork *work) {
    if (work->unk_0C == 0) {
        _0210F65C.unk_00 = &_020F5D5C;
        sub_0200FCDC(work->color);
        sub_0201289C(work, &_0210F65C);
        work->unk_28 = 0;
        work->unk_2C = 0;
        return FALSE;
    }

    return sub_020128E0(work);
}

BOOL FadeFunc_04(FadeWork *work) {
    if (work->unk_0C == 0) {
        _0210F66C.unk_00 = &_020F5D64;
        sub_0200FCDC(work->color);
        sub_0201289C(work, &_0210F66C);
        work->unk_28 = 1;
        work->unk_2C = 0;
        return FALSE;
    }

    return sub_020128E0(work);
}

BOOL FadeFunc_05(FadeWork *work) {
    if (work->unk_0C == 0) {
        _0210F674.unk_00 = &_020F5D58;
        sub_0200FCDC(work->color);
        sub_0201289C(work, &_0210F674);
        work->unk_28 = 0;
        work->unk_2C = 0;
        return FALSE;
    }

    return sub_020128E0(work);
}

BOOL FadeFunc_06(FadeWork *work) {
    if (work->unk_0C == 0) {
        sub_0200FCDC(work->color);
        sub_0201164C(work, &_020F5E2C);
        work->unk_28 = 1;
        work->unk_2C = 0;
        return FALSE;
    }

    return sub_0201169C(work);
}

BOOL FadeFunc_07(FadeWork *work) {
    if (work->unk_0C == 0) {
        sub_0200FCDC(work->color);
        sub_0201164C(work, &_020F5E38);
        work->unk_28 = 0;
        work->unk_2C = 0;
        return FALSE;
    }

    return sub_0201169C(work);
}

BOOL FadeFunc_08(FadeWork *work) {
    if (work->unk_0C == 0) {
        _0210F654.unk_00 = _020F5D90;
        sub_0200FCDC(work->color);
        sub_0201289C(work, &_0210F654);
        work->unk_28 = 1;
        work->unk_2C = 0;
        return FALSE;
    }

    return sub_020128E0(work);
}

BOOL FadeFunc_09(FadeWork *work) {
    if (work->unk_0C == 0) {
        _0210F684.unk_00 = _020F5D68;
        sub_0200FCDC(work->color);
        sub_0201289C(work, &_0210F684);
        work->unk_28 = 0;
        work->unk_2C = 0;
        return FALSE;
    }

    return sub_020128E0(work);
}

BOOL FadeFunc_10(FadeWork *work) {
    if (work->unk_0C == 0) {
        _0210F694.unk_00 = _020F5D80;
        sub_0200FCDC(work->color);
        sub_0201289C(work, &_0210F694);
        work->unk_28 = 1;
        work->unk_2C = 0;
        return FALSE;
    }

    return sub_020128E0(work);
}

BOOL FadeFunc_11(FadeWork *work) {
    if (work->unk_0C == 0) {
        _0210F68C.unk_00 = _020F5DB8;
        sub_0200FCDC(work->color);
        sub_0201289C(work, &_0210F68C);
        work->unk_28 = 0;
        work->unk_2C = 0;
        return FALSE;
    }

    return sub_020128E0(work);
}

BOOL FadeFunc_12(FadeWork *work) {
    if (work->unk_0C == 0) {
        sub_0200FCDC(work->color);
        sub_0201164C(work, &_020F5E5C);
        work->unk_28 = 1;
        work->unk_2C = 0;
        return FALSE;
    }

    return sub_0201169C(work);
}

BOOL FadeFunc_13(FadeWork *work) {
    if (work->unk_0C == 0) {
        sub_0200FCDC(work->color);
        sub_0201164C(work, &_020F5E68);
        work->unk_28 = 0;
        work->unk_2C = 0;
        return FALSE;
    }

    return sub_0201169C(work);
}

BOOL FadeFunc_14(FadeWork *work) {
    if (work->unk_0C == 0) {
        sub_0200FCDC(work->color);
        sub_020116EC(work, &_020F5E80, &_020F5E8C);
        work->unk_28 = 1;
        work->unk_2C = 0;
        return FALSE;
    }

    return sub_02011744(work);
}

BOOL FadeFunc_15(FadeWork *work) {
    if (work->unk_0C == 0) {
        sub_0200FCDC(work->color);
        sub_020116EC(work, &_020F5EA4, &_020F5EB0);
        work->unk_28 = 0;
        work->unk_2C = 0;
        return FALSE;
    }

    return sub_02011744(work);
}

BOOL FadeFunc_16(FadeWork *work) {
    if (work->unk_0C == 0) {
        sub_0200FCDC(work->color);
        sub_02011884(work, &_020F5EC8);
        work->unk_28 = 1;
        work->unk_2C = 0;
        return FALSE;
    }

    return sub_020118BC(work);
}

BOOL FadeFunc_17(FadeWork *work) {
    if (work->unk_0C == 0) {
        sub_0200FCDC(work->color);
        sub_02011884(work, &_020F5ED4);
        work->unk_28 = 0;
        work->unk_2C = 0;
        return FALSE;
    }

    return sub_020118BC(work);
}

BOOL FadeFunc_18(FadeWork *work) {
    if (work->unk_0C == 0) {
        sub_0200FCDC(work->color);
        sub_02011884(work, &_020F5DD8);
        work->unk_28 = 1;
        work->unk_2C = 0;
        return FALSE;
    }

    return sub_020118BC(work);
}

BOOL FadeFunc_19(FadeWork *work) {
    if (work->unk_0C == 0) {
        sub_0200FCDC(work->color);
        sub_02011884(work, &_020F5DE4);
        work->unk_28 = 0;
        work->unk_2C = 0;
        return FALSE;
    }

    return sub_020118BC(work);
}

BOOL FadeFunc_20(FadeWork *work) {
    if (work->unk_0C == 0) {
        sub_0200FCDC(work->color);
        sub_02011B5C(work, &_020F5DD0);
        work->unk_28 = 1;
        work->unk_2C = 0;
        return FALSE;
    }

    return sub_02011B94(work);
}

BOOL FadeFunc_21(FadeWork *work) {
    if (work->unk_0C == 0) {
        sub_0200FCDC(work->color);
        sub_02011B5C(work, &_020F5DC8);
        work->unk_28 = 0;
        work->unk_2C = 0;
        return FALSE;
    }

    return sub_02011B94(work);
}

BOOL FadeFunc_22(FadeWork *work) {
    if (work->unk_0C == 0) {
        sub_0200FCDC(work->color);
        sub_0201164C(work, &_020F5E08);
        work->unk_28 = 1;
        work->unk_2C = 0;
        return FALSE;
    }

    return sub_0201169C(work);
}

BOOL FadeFunc_23(FadeWork *work) {
    if (work->unk_0C == 0) {
        sub_0200FCDC(work->color);
        sub_0201164C(work, &_020F5E14);
        work->unk_28 = 0;
        work->unk_2C = 0;
        return FALSE;
    }

    return sub_0201169C(work);
}

BOOL FadeFunc_24(FadeWork *work) {
    if (work->unk_0C == 0) {
        sub_0200FCDC(work->color);
        sub_0201164C(work, &_020F5E20);
        work->unk_28 = 1;
        work->unk_2C = 0;
        return FALSE;
    }

    return sub_0201169C(work);
}

BOOL FadeFunc_25(FadeWork *work) {
    if (work->unk_0C == 0) {
        sub_0200FCDC(work->color);
        sub_0201164C(work, &_020F5E44);
        work->unk_28 = 0;
        work->unk_2C = 0;
        return FALSE;
    }

    return sub_0201169C(work);
}

BOOL FadeFunc_26(FadeWork *work) {
    if (work->unk_0C == 0) {
        sub_0200FCDC(work->color);
        sub_02011D60(work, &_020F5DA8);
        work->unk_28 = 1;
        work->unk_2C = 0;
        return FALSE;
    }

    return sub_02011D98(work);
}

BOOL FadeFunc_27(FadeWork *work) {
    if (work->unk_0C == 0) {
        sub_0200FCDC(work->color);
        sub_02011D60(work, &_020F5DA0);
        work->unk_28 = 0;
        work->unk_2C = 0;
        return FALSE;
    }

    return sub_02011D98(work);
}

BOOL FadeFunc_28(FadeWork *work) {
    if (work->unk_0C == 0) {
        UnkStruct_02011738 local;

        local.unk_00 = _020F5EEC;
        local.unk_04 = _020F5EFC;
        local.unk_08 = 4;
        local.unk_0A = 0;
        local.unk_0C = 0x3F;
        local.unk_0D = GX_BLEND_PLANEMASK_BD;
        local.unk_0E = 1;
        sub_0200FCDC(work->color);
        sub_02011FF8(work, &local);
        work->unk_28 = 1;
        work->unk_2C = 0;
        return FALSE;
    }

    return sub_02012030(work);
}

BOOL FadeFunc_29(FadeWork *work) {
    if (work->unk_0C == 0) {
        UnkStruct_02011738 local;

        local.unk_00 = _020F5F0C;
        local.unk_04 = _020F5F1C;
        local.unk_08 = 4;
        local.unk_0A = 0;
        local.unk_0C = 0x3F;
        local.unk_0D = GX_BLEND_PLANEMASK_BD;
        local.unk_0E = 0;
        sub_0200FCDC(work->color);
        sub_02011FF8(work, &local);
        work->unk_28 = 0;
        work->unk_2C = 0;
        return FALSE;
    }

    return sub_02012030(work);
}
