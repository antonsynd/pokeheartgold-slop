#include "global.h"

#include "assert.h"

typedef struct UnkStruct_ov45_1C0 {
    u8 unk0[4];
    u16 unk4;
    u8 unk6;
    u8 unk7;
    u16 unk8;
    u8 unkA;
    u8 unkB;
    u8 unkC[0x14];
    u16 unk20;
    u16 unk22;
    u16 unk24;
    s16 unk26;
    u8 unk28[0x24];
} UnkStruct_ov45_1C0;

typedef struct UnkStruct_ov45_20C {
    u8 unk0[4];
} UnkStruct_ov45_20C;

typedef struct UnkStruct_ov45_0222AD70 {
    u8 unk0[0x1C0];
    UnkStruct_ov45_1C0 unk1C0;
    UnkStruct_ov45_20C unk20C;
} UnkStruct_ov45_0222AD70;

extern void ov45_0222EEF0(int cmd, void *data, int size);
extern void ov45_0222EF4C(int cmd, int a1, void *data, int size);
extern int ov45_0222EC90(int a0);
extern int ov45_0222A578(UnkStruct_ov45_0222AD70 *a0, int a1);
extern int ov45_0222A920(int a0);
extern void ov45_0222BD4C(UnkStruct_ov45_1C0 *a0);
extern void ov45_0222BE00(UnkStruct_ov45_1C0 *a0, int a1);
extern void ov45_0222BE28(UnkStruct_ov45_0222AD70 *a0, int a1);
extern void ov45_0222BE48(UnkStruct_ov45_1C0 *a0);
extern BOOL ov45_0222BE74(UnkStruct_ov45_1C0 *a0);
extern s16 ov45_0222BE94(UnkStruct_ov45_1C0 *a0);
extern u32 ov45_0222C4E4(UnkStruct_ov45_20C *a0, int a1);
extern u32 ov45_0222C4FC(UnkStruct_ov45_20C *a0, int a1);
extern int ov45_0222C5B4(UnkStruct_ov45_20C *a0, int a1);
extern int ov45_0222C408(UnkStruct_ov45_20C *a0, int a1, int a2);
extern void ov45_0222C480(UnkStruct_ov45_20C *a0, int a1);
extern void ov45_0222C514(UnkStruct_ov45_20C *a0, int a1);
extern u32 ov45_0222C54C(UnkStruct_ov45_20C *a0, int a1);
extern void ov45_0222C580(UnkStruct_ov45_20C *a0, int a1);
extern void ov45_0222C5E8(UnkStruct_ov45_20C *a0, int a1, int a2);
extern u32 ov45_0222C658(UnkStruct_ov45_20C *a0, int a1);

void ov45_0222AD70(UnkStruct_ov45_0222AD70 *a0, int a1);
u32 ov45_0222AD80(UnkStruct_ov45_0222AD70 *a0, int a1);
u32 ov45_0222AD90(UnkStruct_ov45_0222AD70 *a0, int a1);
int ov45_0222ADA0(void);
int ov45_0222ADA8(UnkStruct_ov45_0222AD70 *a0, int a1);
int ov45_0222ADB8(UnkStruct_ov45_0222AD70 *a0, int a1, int a2);
void ov45_0222ADC8(UnkStruct_ov45_0222AD70 *a0, int a1);
void ov45_0222ADD8(UnkStruct_ov45_0222AD70 *a0, int a1);
u32 ov45_0222ADE8(UnkStruct_ov45_0222AD70 *a0, int a1);
void ov45_0222ADF8(UnkStruct_ov45_0222AD70 *a0, int a1);
void ov45_0222AE08(u32 a0, u32 *a1, u32 *a2);
void ov45_0222AE24(UnkStruct_ov45_0222AD70 *a0, int a1, int a2);
u32 ov45_0222AE34(UnkStruct_ov45_0222AD70 *a0, int a1);
void ov45_0222AE44(UnkStruct_ov45_0222AD70 *a0);
void ov45_0222AE54(UnkStruct_ov45_0222AD70 *a0);
void ov45_0222AE64(UnkStruct_ov45_0222AD70 *a0);
BOOL ov45_0222AE74(UnkStruct_ov45_0222AD70 *a0, int a1);
void ov45_0222AED8(UnkStruct_ov45_0222AD70 *a0, int a1);
void ov45_0222AF80(UnkStruct_ov45_0222AD70 *a0);
void ov45_0222AFC4(UnkStruct_ov45_0222AD70 *a0);
BOOL ov45_0222AFF8(UnkStruct_ov45_0222AD70 *a0);
BOOL ov45_0222B00C(UnkStruct_ov45_0222AD70 *a0);
u16 ov45_0222B020(UnkStruct_ov45_0222AD70 *a0);
u8 ov45_0222B028(UnkStruct_ov45_0222AD70 *a0);
u8 ov45_0222B034(UnkStruct_ov45_0222AD70 *a0);
u16 ov45_0222B040(UnkStruct_ov45_0222AD70 *a0);
BOOL ov45_0222B048(UnkStruct_ov45_0222AD70 *a0, u32 a1);
BOOL ov45_0222B06C(UnkStruct_ov45_0222AD70 *a0);
s16 ov45_0222B094(UnkStruct_ov45_0222AD70 *a0);
void ov45_0222B0A4(UnkStruct_ov45_0222AD70 *a0);

void ov45_0222AD70(UnkStruct_ov45_0222AD70 *a0, int a1) {
    ov45_0222EEF0(5, &a1, 4);
}

u32 ov45_0222AD80(UnkStruct_ov45_0222AD70 *a0, int a1) {
    return ov45_0222C4E4(&a0->unk20C, a1);
}

u32 ov45_0222AD90(UnkStruct_ov45_0222AD70 *a0, int a1) {
    return ov45_0222C4FC(&a0->unk20C, a1);
}

int ov45_0222ADA0(void) {
    return 0x4B0;
}

int ov45_0222ADA8(UnkStruct_ov45_0222AD70 *a0, int a1) {
    return ov45_0222C5B4(&a0->unk20C, a1);
}

int ov45_0222ADB8(UnkStruct_ov45_0222AD70 *a0, int a1, int a2) {
    return ov45_0222C408(&a0->unk20C, a1, a2);
}

void ov45_0222ADC8(UnkStruct_ov45_0222AD70 *a0, int a1) {
    ov45_0222C480(&a0->unk20C, a1);
}

void ov45_0222ADD8(UnkStruct_ov45_0222AD70 *a0, int a1) {
    ov45_0222C514(&a0->unk20C, a1);
}

u32 ov45_0222ADE8(UnkStruct_ov45_0222AD70 *a0, int a1) {
    return ov45_0222C54C(&a0->unk20C, a1);
}

void ov45_0222ADF8(UnkStruct_ov45_0222AD70 *a0, int a1) {
    ov45_0222C580(&a0->unk20C, a1);
}

void ov45_0222AE08(u32 a0, u32 *a1, u32 *a2) {
    *a1 = a0 / 3;
    *a2 = a0 % 3;
}

void ov45_0222AE24(UnkStruct_ov45_0222AD70 *a0, int a1, int a2) {
    ov45_0222C5E8(&a0->unk20C, a1, a2);
}

u32 ov45_0222AE34(UnkStruct_ov45_0222AD70 *a0, int a1) {
    return ov45_0222C658(&a0->unk20C, a1);
}

void ov45_0222AE44(UnkStruct_ov45_0222AD70 *a0) {
    int unused;
    ov45_0222EEF0(6, &unused, 4);
}

void ov45_0222AE54(UnkStruct_ov45_0222AD70 *a0) {
    int unused;
    ov45_0222EEF0(7, &unused, 4);
}

void ov45_0222AE64(UnkStruct_ov45_0222AD70 *a0) {
    ov45_0222BD4C(&a0->unk1C0);
}

BOOL ov45_0222AE74(UnkStruct_ov45_0222AD70 *a0, int a1) {
    if (a0->unk1C0.unkA != 0) {
        return FALSE;
    }
    if (ov45_0222A920(ov45_0222A578(a0, a1)) != 1) {
        return FALSE;
    }
    a0->unk1C0.unk4 = a1;
    a0->unk1C0.unk6 = 1;
    a0->unk1C0.unkA = 1;
    ov45_0222BE00(&a0->unk1C0, 0);
    ov45_0222EF4C(0, ov45_0222EC90(a1), &a0->unk1C0.unk20, 4);
    ov45_0222BE48(&a0->unk1C0);
    return TRUE;
}

void ov45_0222AED8(UnkStruct_ov45_0222AD70 *a0, int a1) {
    BOOL flag = FALSE;
    u8 state = a0->unk1C0.unkA;

    if (state == 1) {
        if (a0->unk1C0.unk6 != 2) {
            flag = TRUE;
        }
    } else if (state == 2) {
        if (a0->unk1C0.unk6 != 3) {
            flag = TRUE;
        }
    }
    if (flag) {
        ov45_0222BE28(a0, ov45_0222EC90(a0->unk1C0.unk4));
        return;
    }
    if (state == 1) {
        a0->unk1C0.unk6 = 3;
    } else if (state == 2) {
        a0->unk1C0.unk6 = 2;
    } else {
        ov45_0222BE28(a0, ov45_0222EC90(a0->unk1C0.unk4));
        return;
    }
    ov45_0222BE00(&a0->unk1C0, a1);
    ov45_0222EF4C(2, ov45_0222EC90(a0->unk1C0.unk4), &a0->unk1C0.unk20, 4);
    ov45_0222BE48(&a0->unk1C0);
}

void ov45_0222AF80(UnkStruct_ov45_0222AD70 *a0) {
    if (a0->unk1C0.unk6 != 0) {
        if (a0->unk1C0.unkA == 1) {
            a0->unk1C0.unk22 = 0;
            ov45_0222EF4C(3, ov45_0222EC90(a0->unk1C0.unk4), &a0->unk1C0.unk20, 4);
            ov45_0222BD4C(&a0->unk1C0);
        }
    }
}

void ov45_0222AFC4(UnkStruct_ov45_0222AD70 *a0) {
    int value;

    if (a0->unk1C0.unk6 != 0) {
        value = ov45_0222EC90(a0->unk1C0.unk4);
        a0->unk1C0.unk6 = 4;
        a0->unk1C0.unk22 = 4;
        ov45_0222EF4C(2, value, &a0->unk1C0.unk20, 4);
    }
}

BOOL ov45_0222AFF8(UnkStruct_ov45_0222AD70 *a0) {
    if (a0->unk1C0.unkA != 0) {
        return TRUE;
    }
    return FALSE;
}

BOOL ov45_0222B00C(UnkStruct_ov45_0222AD70 *a0) {
    if (a0->unk1C0.unkA == 2) {
        return TRUE;
    }
    return FALSE;
}

u16 ov45_0222B020(UnkStruct_ov45_0222AD70 *a0) {
    return a0->unk1C0.unk4;
}

u8 ov45_0222B028(UnkStruct_ov45_0222AD70 *a0) {
    return a0->unk1C0.unkB;
}

u8 ov45_0222B034(UnkStruct_ov45_0222AD70 *a0) {
    return a0->unk1C0.unk6;
}

u16 ov45_0222B040(UnkStruct_ov45_0222AD70 *a0) {
    return a0->unk1C0.unk8;
}

BOOL ov45_0222B048(UnkStruct_ov45_0222AD70 *a0, u32 a1) {
    GF_ASSERT(a1 < 0x14);
    if (a0->unk1C0.unkC[a1] >= 6) {
        return FALSE;
    }
    return TRUE;
}

BOOL ov45_0222B06C(UnkStruct_ov45_0222AD70 *a0) {
    if (a0->unk1C0.unk6 == 4) {
        return TRUE;
    }
    if (ov45_0222BE74(&a0->unk1C0) == 0) {
        return TRUE;
    }
    return FALSE;
}

s16 ov45_0222B094(UnkStruct_ov45_0222AD70 *a0) {
    return ov45_0222BE94(&a0->unk1C0);
}

void ov45_0222B0A4(UnkStruct_ov45_0222AD70 *a0) {
    a0->unk1C0.unk7 = 1;
}
