#include "global.h"

#include "assert.h"

typedef struct UnkStruct_ov45_02254A84 {
    u16 unk0;
    u16 unk2;
} UnkStruct_ov45_02254A84;

typedef struct UnkStruct_ov45_0222A9A0 {
    u8 unk0[4];
    u32 unk4;
    u8 unk8[0x14];
    u32 unk1C;
    u8 unk20[0x18];
    u8 unk38;
    u8 unk39;
    u16 unk3A;
    u16 unk3C;
    u8 unk3E;
    u8 unk3F[2];
    u8 unk41;
    u8 unk42[0x46];
    u16 unk88[2];
    u32 unk8C;
    u32 unk90;
} UnkStruct_ov45_0222A9A0;

typedef struct UnkStruct_ov45_0222AB0C {
    u32 unk0;
    u32 unk4;
} UnkStruct_ov45_0222AB0C;

typedef struct UnkStruct_ov45_0222AB1C {
    u8 unk0[0x1E8];
    u8 unk1E8[0x14];
    u8 unk1FC[0x3CC - 0x1FC];
    u8 unk3CC[0x18];
    u8 unk3E4[0x508 - 0x3E4];
    void *unk508;
} UnkStruct_ov45_0222AB1C;

typedef struct UnkStruct_ov45_0222EC3C {
    u32 unk0;
    u32 unk4;
} UnkStruct_ov45_0222EC3C;

typedef struct UnkStruct_ov45_0222AB94 {
    u32 unk0[4];
    u8 unk10;
    u8 unk11;
    u8 unk12;
    u8 unk13_0 : 7;
    u8 unk13_7 : 1;
} UnkStruct_ov45_0222AB94;

extern u32 ov45_0222CD04(u32 a0);
extern BOOL ov45_0222D79C(u32 a0, u32 a1);
extern BOOL ov45_0222C95C(void *a0, u32 a1);
extern BOOL ov45_0222C9D0(void *a0, u32 a1);
extern void *ov45_0222C9EC(void *a0, u32 a1);
extern void ov45_0222EC3C(UnkStruct_ov45_0222EC3C *a0);
extern u32 ov45_0222EC68(u32 a0);
extern u32 ov45_0222EC90(u32 a0);
extern u32 ov45_0222ECA4(u32 a0);
extern u32 ov45_0222ECDC(u32 a0);
extern void ov45_0222EEF0(int cmd, void *data, int size);

const UnkStruct_ov45_02254A84 ov45_02254A84[16] = {
    { 0x03, 0 },
    { 0x05, 0 },
    { 0x0B, 0 },
    { 0x1F, 0 },
    { 0x32, 0 },
    { 0x33, 0 },
    { 0x3E, 0 },
    { 0x46, 0 },
    { 0x06, 1 },
    { 0x07, 1 },
    { 0x0D, 1 },
    { 0x0E, 1 },
    { 0x23, 1 },
    { 0x25, 1 },
    { 0x2A, 1 },
    { 0x3F, 1 },
};

u32 ov45_0222A9A0(const UnkStruct_ov45_0222A9A0 *a0);
int ov45_0222A9A4(const UnkStruct_ov45_0222A9A0 *a0);
u32 ov45_0222A9C8(const UnkStruct_ov45_0222A9A0 *a0);
u32 ov45_0222A9CC(const UnkStruct_ov45_0222A9A0 *a0);
u32 ov45_0222AA10(const UnkStruct_ov45_0222A9A0 *a0);
BOOL ov45_0222AA28(const UnkStruct_ov45_0222A9A0 *a0);
u32 ov45_0222AA54(const UnkStruct_ov45_0222A9A0 *a0);
u32 ov45_0222AA5C(const UnkStruct_ov45_0222A9A0 *a0);
u32 ov45_0222AA84(const UnkStruct_ov45_0222A9A0 *a0);
u32 ov45_0222AAA8(const UnkStruct_ov45_0222A9A0 *a0);
u32 ov45_0222AAC8(const UnkStruct_ov45_0222A9A0 *a0);
BOOL ov45_0222AADC(const UnkStruct_ov45_0222A9A0 *a0);
int ov45_0222AAEC(const UnkStruct_ov45_0222A9A0 *a0, u32 a1);
void ov45_0222AB0C(const UnkStruct_ov45_0222A9A0 *a0, UnkStruct_ov45_0222AB0C *a1);

u32 ov45_0222A9A0(const UnkStruct_ov45_0222A9A0 *a0) {
    return a0->unk4;
}

int ov45_0222A9A4(const UnkStruct_ov45_0222A9A0 *a0) {
    u32 v0 = ov45_0222AA5C(a0);
    int i;

    for (i = 0; i < 16; i++) {
        if (ov45_02254A84[i].unk0 == v0) {
            return i;
        }
    }

    return 24;
}

u32 ov45_0222A9C8(const UnkStruct_ov45_0222A9A0 *a0) {
    return a0->unk1C;
}

u32 ov45_0222A9CC(const UnkStruct_ov45_0222A9A0 *a0) {
    u32 ret;

    if (a0->unk38 >= 2) {
        u32 v0 = ov45_0222CD04(a0->unk3A);

        if (v0 != 0xFFFF) {
            int i;

            for (i = 0; i < 16; i++) {
                if (ov45_02254A84[i].unk0 == a0->unk3A) {
                    ret = ov45_02254A84[i].unk0;
                }
            }
        } else {
            ret = 1;
        }
    } else {
        ret = a0->unk38;
    }

    return ret;
}

u32 ov45_0222AA10(const UnkStruct_ov45_0222A9A0 *a0) {
    if (ov45_0222AA28(a0) == TRUE) {
        return a0->unk39;
    }

    return 2;
}

BOOL ov45_0222AA28(const UnkStruct_ov45_0222A9A0 *a0) {
    switch (a0->unk39) {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 7:
        return TRUE;
    }

    return FALSE;
}

u32 ov45_0222AA54(const UnkStruct_ov45_0222A9A0 *a0) {
    return a0->unk39;
}

u32 ov45_0222AA5C(const UnkStruct_ov45_0222A9A0 *a0) {
    u32 v0 = ov45_0222CD04(a0->unk3A);

    if (v0 != 0xFFFF) {
        return v0;
    }

    if (ov45_0222A9CC(a0) == 0) {
        return 3;
    }

    return 6;
}

u32 ov45_0222AA84(const UnkStruct_ov45_0222A9A0 *a0) {
    if (a0->unk3C >= 234) {
        return 0;
    }

    if (ov45_0222D79C(a0->unk3C, a0->unk3E) == 0) {
        return 0;
    }

    return a0->unk3C;
}

u32 ov45_0222AAA8(const UnkStruct_ov45_0222A9A0 *a0) {
    if (ov45_0222D79C(a0->unk3C, a0->unk3E) == 0) {
        return 0;
    }

    return a0->unk3E;
}

u32 ov45_0222AAC8(const UnkStruct_ov45_0222A9A0 *a0) {
    u32 v0 = a0->unk41;

    if (v0 == 0xFF) {
        return 0;
    }

    if (v0 >= 27) {
        v0 = 0;
    }

    return v0;
}

BOOL ov45_0222AADC(const UnkStruct_ov45_0222A9A0 *a0) {
    if (a0->unk41 == 0xFF) {
        return FALSE;
    }

    return TRUE;
}

int ov45_0222AAEC(const UnkStruct_ov45_0222A9A0 *a0, u32 a1) {
    GF_ASSERT(a1 < 2);

    if (a0->unk88[a1] >= 18) {
        return 0;
    }

    return a0->unk88[a1];
}

void ov45_0222AB0C(const UnkStruct_ov45_0222A9A0 *a0, UnkStruct_ov45_0222AB0C *a1) {
    a1->unk0 = a0->unk8C;
    a1->unk4 = a0->unk90;
}

void *ov45_0222AB1C(const UnkStruct_ov45_0222AB1C *a0);
BOOL ov45_0222AB28(const UnkStruct_ov45_0222AB1C *a0, u32 a1);
void ov45_0222AB38(const UnkStruct_ov45_0222AB1C *a0, void *a1);
BOOL ov45_0222AB48(const UnkStruct_ov45_0222AB1C *a0, u32 a1);
void *ov45_0222AB58(const UnkStruct_ov45_0222AB1C *a0, u32 a1);
u32 ov45_0222AB68(const UnkStruct_ov45_0222AB1C *a0);
u32 ov45_0222AB78(const UnkStruct_ov45_0222AB1C *a0, u32 a1);
void ov45_0222AB94(UnkStruct_ov45_0222AB1C *a0, u32 a1, u32 a2);
void ov45_0222ABD0(UnkStruct_ov45_0222AB1C *a0, u32 a1, u32 a2, u32 a3);
void ov45_0222AC14(UnkStruct_ov45_0222AB1C *a0, u32 a1, u32 a2, u32 a3, u32 a4, u32 a5, u32 a6, BOOL a7);
void ov45_0222ACB8(UnkStruct_ov45_0222AB1C *a0, u32 a1, u32 a2, u32 a3, u32 a4, u32 a5, u32 a6);
u32 ov45_0222AD2C(const UnkStruct_ov45_0222AB1C *a0);
u32 ov45_0222AD3C(const UnkStruct_ov45_0222AB1C *a0);
u32 ov45_0222AD4C(const UnkStruct_ov45_0222AB1C *a0);
BOOL ov45_0222AD58(const UnkStruct_ov45_0222AB1C *a0, u32 a1);

void *ov45_0222AB1C(const UnkStruct_ov45_0222AB1C *a0) {
    return a0->unk508;
}

BOOL ov45_0222AB28(const UnkStruct_ov45_0222AB1C *a0, u32 a1) {
    return ov45_0222C95C((void *)a0->unk3CC, a1);
}

void ov45_0222AB38(const UnkStruct_ov45_0222AB1C *a0, void *a1) {
    MI_CpuCopy8(a0->unk3CC, a1, 0x14);
}

BOOL ov45_0222AB48(const UnkStruct_ov45_0222AB1C *a0, u32 a1) {
    return ov45_0222C9D0((void *)a0->unk3E4, a1);
}

void *ov45_0222AB58(const UnkStruct_ov45_0222AB1C *a0, u32 a1) {
    return ov45_0222C9EC((void *)a0->unk3E4, a1);
}

u32 ov45_0222AB68(const UnkStruct_ov45_0222AB1C *a0) {
    UnkStruct_ov45_0222EC3C v0;

    ov45_0222EC3C(&v0);
    return v0.unk0;
}

u32 ov45_0222AB78(const UnkStruct_ov45_0222AB1C *a0, u32 a1) {
    u32 v0 = ov45_0222ECA4(a1);

    if (v0 == 0xFFFFFFFF) {
        return 0xFFFFFFFF;
    }

    return ov45_0222EC68(v0);
}

void ov45_0222AB94(UnkStruct_ov45_0222AB1C *a0, u32 a1, u32 a2) {
    UnkStruct_ov45_0222AB94 v0 = { 0 };

    v0.unk11 = 0;
    v0.unk0[0] = ov45_0222EC90(a1);
    v0.unk0[1] = ov45_0222EC90(a2);
    v0.unk10 = 2;

    ov45_0222EEF0(4, &v0, sizeof(UnkStruct_ov45_0222AB94));
}

void ov45_0222ABD0(UnkStruct_ov45_0222AB1C *a0, u32 a1, u32 a2, u32 a3) {
    UnkStruct_ov45_0222AB94 v0 = { 0 };

    v0.unk11 = 1;
    v0.unk0[0] = ov45_0222EC90(a2);
    v0.unk0[1] = ov45_0222EC90(a1);
    v0.unk10 = 2;
    v0.unk12 = a3;

    ov45_0222EEF0(4, &v0, sizeof(UnkStruct_ov45_0222AB94));
}

void ov45_0222AC14(UnkStruct_ov45_0222AB1C *a0, u32 a1, u32 a2, u32 a3, u32 a4, u32 a5, u32 a6, BOOL a7) {
    UnkStruct_ov45_0222AB94 v0 = { 0 };
    u32 v1;

    switch (a1) {
    case 0:
    case 1:
    case 2:
        v1 = 2;
        break;
    case 3:
    case 4:
        v1 = 3;
        break;
    case 5:
        v1 = 4;
        break;
    case 6:
        v1 = 5;
        break;
    default:
        return;
    }

    v0.unk11 = v1;
    v0.unk0[0] = ov45_0222EC90(a3);
    v0.unk0[1] = ov45_0222EC90(a4);
    v0.unk0[2] = ov45_0222EC90(a5);
    v0.unk0[3] = ov45_0222EC90(a6);
    v0.unk10 = a2;
    v0.unk13_0 = a1;
    v0.unk13_7 = a7;

    ov45_0222EEF0(4, &v0, sizeof(UnkStruct_ov45_0222AB94));
}

void ov45_0222ACB8(UnkStruct_ov45_0222AB1C *a0, u32 a1, u32 a2, u32 a3, u32 a4, u32 a5, u32 a6) {
    UnkStruct_ov45_0222AB94 v0 = { 0 };
    u32 v1;

    switch (a1) {
    case 0:
    case 1:
    case 2:
        v1 = 8;
        break;
    default:
        return;
    }

    v0.unk11 = v1;
    v0.unk0[0] = ov45_0222EC90(a3);
    v0.unk0[1] = ov45_0222EC90(a4);
    v0.unk0[2] = ov45_0222EC90(a5);
    v0.unk0[3] = ov45_0222EC90(a6);
    v0.unk10 = a2;
    v0.unk13_0 = a1;
    v0.unk13_7 = 0;

    ov45_0222EEF0(4, &v0, sizeof(UnkStruct_ov45_0222AB94));
}

u32 ov45_0222AD2C(const UnkStruct_ov45_0222AB1C *a0) {
    u32 v0 = ov45_0222ECDC(3);

    if (v0 >= 5) {
        v0 = 0;
    }

    return v0;
}

u32 ov45_0222AD3C(const UnkStruct_ov45_0222AB1C *a0) {
    u32 v0 = ov45_0222ECDC(2);

    if (v0 >= 5) {
        v0 = 0;
    }

    return v0;
}

u32 ov45_0222AD4C(const UnkStruct_ov45_0222AB1C *a0) {
    u32 v0 = ov45_0222ECDC(5);

    return v0 + 30;
}

BOOL ov45_0222AD58(const UnkStruct_ov45_0222AB1C *a0, u32 a1) {
    GF_ASSERT(a1 < 20);
    return a0->unk1E8[a1];
}
