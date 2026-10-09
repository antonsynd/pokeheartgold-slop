#include "global.h"

#include "assert.h"
#include "heap.h"
#include "player_data.h"
#include "sound_02004A44.h"

typedef struct UnkStruct_ov45_0222BC3C {
    u8 unk0_0 : 1;
    u8 unk0_1 : 1;
    u8 unk0_2 : 2;
    u8 unk0_4 : 1;
    u8 unk0_5 : 2;
    u8 unk0_7 : 1;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    s16 unk4;
    s16 unk6;
    s16 unk8;
    s16 unkA;
    u8 unkC;
    u8 unkD;
} UnkStruct_ov45_0222BC3C;

typedef struct UnkStruct_ov45_0222BCA0 {
    s16 unk0;
    u8 unk2;
} UnkStruct_ov45_0222BCA0;

typedef struct UnkStruct_ov45_0222BCC8 {
    PlayerProfile *profile;
} UnkStruct_ov45_0222BCC8;

typedef struct UnkStruct_ov45_Profile {
    u8 unk0[8];
    u16 unk8[8];
    u8 unk18[0x7C];
} UnkStruct_ov45_Profile;

typedef struct UnkStruct_ov45_0222BCE4_Src {
    u8 unk0[0x10];
    u16 unk10[8];
    u8 unk20[0x94];
} UnkStruct_ov45_0222BCE4_Src;

typedef struct UnkStruct_ov45_0222BD30 {
    u8 unk0[0x14];
} UnkStruct_ov45_0222BD30;

typedef struct UnkStruct_ov45_State {
    u32 unk0;
    u16 unk4;
    u8 unk6;
    u8 unk7;
    u16 unk8;
    u8 unkA;
    u8 unkB;
    u8 unkC[20];
    u16 unk20;
    u16 unk22;
    u16 unk24;
    s16 unk26;
} UnkStruct_ov45_State;

typedef struct UnkStruct_ov45_Work {
    u8 unk0[4];
    void *unk4;
    u8 unk8[0xE0];
    PlayerProfile *profiles[4];
    u8 unkF8[0xC8];
    UnkStruct_ov45_State unk1C0;
    u8 unk1E8[0x340];
    enum HeapID heapID;
} UnkStruct_ov45_Work;

typedef struct UnkStruct_ov45_Request {
    u32 unk0[4];
    u8 unk10;
    u8 unk11;
    u8 unk12;
    u8 unk13_0 : 7;
    u8 unk13_7 : 1;
} UnkStruct_ov45_Request;

typedef struct UnkStruct_ov45_0222D940 {
    PlayerProfile *unk0;
    PlayerProfile *unk4;
    u16 unk8;
    u16 unkA;
} UnkStruct_ov45_0222D940;

typedef struct UnkStruct_ov45_0222D990 {
    PlayerProfile *unk0;
    PlayerProfile *unk4;
    u16 unk8;
    u16 unkA;
    u32 unkC;
} UnkStruct_ov45_0222D990;

typedef struct UnkStruct_ov45_0222D9EC {
    u32 unk0;
    u32 unk4;
    PlayerProfile *unk8[4];
    u16 unk18[4];
    u32 unk20;
} UnkStruct_ov45_0222D9EC;

extern void ov45_0222A844(const UnkStruct_ov45_Profile *profile, PlayerProfile *dest, enum HeapID heapID);
extern const UnkStruct_ov45_Profile *ov45_0222A578(UnkStruct_ov45_Work *work, u32 index);
extern u32 ov45_0222EC68(u32 a0);
extern void ov45_0222EF4C(int cmd, int a1, void *data, int size);
extern void ov45_0222D940(void *a0, const UnkStruct_ov45_0222D940 *a1);
extern void ov45_0222D990(void *a0, const UnkStruct_ov45_0222D990 *a1);
extern void ov45_0222D9EC(void *a0, const UnkStruct_ov45_0222D9EC *a1);
extern void ov45_0222BE54(UnkStruct_ov45_State *state);

void ov45_0222BC3C(UnkStruct_ov45_0222BC3C *a0) {
    a0->unk0_0 = 0;
    a0->unk0_1 = 0;
    a0->unk0_2 = 0;
    a0->unk0_4 = 0;
    a0->unk0_5 = 0;
    a0->unk0_7 = 0;
    a0->unk1 = 1;
    a0->unk2 = 7;
    a0->unk3 = 11;
    a0->unk4 = -1;
    a0->unk6 = -1;
    a0->unk8 = -1;
    a0->unkA = -1;
}

void ov45_0222BC84(const UnkStruct_ov45_0222BC3C *a0) {
    if (a0->unkD == 1) {
        GF_SndHandleSetPlayerVolume(7, 127 / 3);
    } else {
        GF_SndHandleSetPlayerVolume(7, 127);
    }
}

void ov45_0222BCA0(UnkStruct_ov45_0222BCA0 *a0) {
    a0->unk0 = 30 * 30;
}

BOOL ov45_0222BCA8(const UnkStruct_ov45_0222BCA0 *a0) {
    if (a0->unk0 > 0) {
        return TRUE;
    }
    return FALSE;
}

void ov45_0222BCB8(UnkStruct_ov45_0222BCA0 *a0) {
    if (a0->unk0 > 0) {
        a0->unk0--;
    }
}

void ov45_0222BCC8(UnkStruct_ov45_0222BCC8 *a0, enum HeapID heapID) {
    a0->profile = PlayerProfile_New(heapID);
}

void ov45_0222BCD8(UnkStruct_ov45_0222BCC8 *a0) {
    Heap_Free(a0->profile);
}

void ov45_0222BCE4(UnkStruct_ov45_0222BCC8 *a0, const UnkStruct_ov45_0222BCE4_Src *a1, enum HeapID heapID) {
    UnkStruct_ov45_Profile *profile = Heap_Alloc(heapID, sizeof(UnkStruct_ov45_Profile));

    MI_CpuCopyFast(a1->unk20, profile, sizeof(UnkStruct_ov45_Profile));
    MI_CpuCopy8(a1->unk10, profile->unk8, sizeof(u16) * 8);

    ov45_0222A844(profile, a0->profile, heapID);
    Heap_Free(profile);
}

void ov45_0222BD24(UnkStruct_ov45_0222BCA0 *a0) {
    a0->unk2 = 1;
}

BOOL ov45_0222BD2C(const UnkStruct_ov45_0222BCA0 *a0) {
    return a0->unk2;
}

void ov45_0222BD30(UnkStruct_ov45_0222BD30 *a0) {
    int i;

    for (i = 0; i < 0x14; i++) {
        a0->unk0[i] = 0;
    }
}

void ov45_0222BD40(UnkStruct_ov45_State *a0) {
    memset(a0, 0, sizeof(UnkStruct_ov45_State));
}

void ov45_0222BD4C(UnkStruct_ov45_State *a0) {
    a0->unk4 = 0;
    a0->unk6 = 0;
    a0->unkA = 0;

    ov45_0222BE54(a0);
}

void ov45_0222BD5C(UnkStruct_ov45_State *a0) {
    a0->unk4 = 0;
    a0->unk6 = 4;

    ov45_0222BE54(a0);

    a0->unkA = 0;
}

BOOL ov45_0222BD74(const UnkStruct_ov45_State *a0, u32 a1) {
    GF_ASSERT(a1 < 20);

    if (a0->unk0 & (1 << a1)) {
        return TRUE;
    }
    return FALSE;
}

void ov45_0222BD94(UnkStruct_ov45_State *a0, u32 a1) {
    GF_ASSERT(a1 < 20);
    a0->unk0 |= (1 << a1);
}

void ov45_0222BDB0(UnkStruct_ov45_State *a0, u32 a1) {
    GF_ASSERT(a1 < 20);
    a0->unk0 &= ~(1 << a1);
}

void ov45_0222BDCC(UnkStruct_ov45_State *a0, u32 a1) {
    GF_ASSERT(a1 < 20);

    if (a0->unkC[a1] + 1 <= 6) {
        a0->unkC[a1]++;
    }
}

void ov45_0222BDE8(UnkStruct_ov45_State *a0, u32 a1) {
    GF_ASSERT(a1 < 20);
    a0->unkC[a1] = 0;
}

void ov45_0222BE00(UnkStruct_ov45_State *a0, u16 a1) {
    a0->unk22 = a0->unk6;
    a0->unk20 = a1;
}

void ov45_0222BE08(UnkStruct_ov45_Work *a0, int a1, int a2) {
    a0->unk1C0.unk22 = 2;
    a0->unk1C0.unk20 = a2;

    ov45_0222EF4C(1, a1, &a0->unk1C0.unk20, 4);
}

void ov45_0222BE28(UnkStruct_ov45_Work *a0, int a1) {
    a0->unk1C0.unk6 = 4;
    a0->unk1C0.unk22 = 4;

    ov45_0222EF4C(2, a1, &a0->unk1C0.unk20, 4);
}

void ov45_0222BE48(UnkStruct_ov45_State *a0) {
    a0->unk24 = 1;
    a0->unk26 = 0;
}

void ov45_0222BE54(UnkStruct_ov45_State *a0) {
    a0->unk24 = 0;
    a0->unk26 = 0;
}

void ov45_0222BE5C(UnkStruct_ov45_State *a0) {
    if (a0->unk24 == 1) {
        if (a0->unk26 + 1 <= 900) {
            a0->unk26++;
        }
    }
}

BOOL ov45_0222BE74(const UnkStruct_ov45_State *a0) {
    if (a0->unk24 == 0) {
        return TRUE;
    }

    if (a0->unk26 >= 900) {
        return FALSE;
    }

    return TRUE;
}

s16 ov45_0222BE94(const UnkStruct_ov45_State *a0) {
    return a0->unk26;
}

void ov45_0222BE9C(UnkStruct_ov45_Work *a0, const UnkStruct_ov45_Request *a1) {
    const UnkStruct_ov45_Profile *profile;
    int i;
    u32 index;
    UnkStruct_ov45_0222D940 args;

    if (a1->unk10 != 2) {
        return;
    }

    for (i = 0; i < 2; i++) {
        index = ov45_0222EC68(a1->unk0[i]);

        if (index != 0xFFFFFFFF) {
            profile = ov45_0222A578(a0, index);
            ov45_0222A844(profile, a0->profiles[i], a0->heapID);
        } else {
            return;
        }
    }

    args.unk0 = a0->profiles[0];
    args.unk4 = a0->profiles[1];
    args.unk8 = ov45_0222EC68(a1->unk0[0]);
    args.unkA = ov45_0222EC68(a1->unk0[1]);

    ov45_0222D940(a0->unk4, &args);
}

void ov45_0222BF18(UnkStruct_ov45_Work *a0, const UnkStruct_ov45_Request *a1) {
    const UnkStruct_ov45_Profile *profile;
    int i;
    u32 index;
    UnkStruct_ov45_0222D990 args;

    if (a1->unk10 != 2) {
        return;
    }

    for (i = 0; i < 2; i++) {
        index = ov45_0222EC68(a1->unk0[i]);

        if (index != 0xFFFFFFFF) {
            profile = ov45_0222A578(a0, index);
            ov45_0222A844(profile, a0->profiles[i], a0->heapID);
        } else {
            return;
        }
    }

    args.unk0 = a0->profiles[0];
    args.unk4 = a0->profiles[1];
    args.unk8 = ov45_0222EC68(a1->unk0[0]);
    args.unkA = ov45_0222EC68(a1->unk0[1]);
    args.unkC = a1->unk12;

    ov45_0222D990(a0->unk4, &args);
}

void ov45_0222BF98(UnkStruct_ov45_Work *a0, const UnkStruct_ov45_Request *a1) {
    const UnkStruct_ov45_Profile *profile;
    int i;
    PlayerProfile *profiles[4];
    u32 index;
    UnkStruct_ov45_0222D9EC args;

    if (a1->unk10 > 4 || a1->unk10 <= 0) {
        return;
    }

    if (a1->unk13_7 == 1) {
        for (i = 0; i < 4; i++) {
            if (i < a1->unk10) {
                index = ov45_0222EC68(a1->unk0[i]);

                if (index != 0xFFFFFFFF) {
                    profile = ov45_0222A578(a0, index);
                    ov45_0222A844(profile, a0->profiles[i], a0->heapID);
                    profiles[i] = a0->profiles[i];
                } else {
                    return;
                }
            } else {
                profiles[i] = NULL;
            }
        }
    } else {
        for (i = 0; i < 4; i++) {
            if (i == 0) {
                u32 first = ov45_0222EC68(a1->unk0[i]);

                if (first != 0xFFFFFFFF) {
                    profile = ov45_0222A578(a0, first);
                    ov45_0222A844(profile, a0->profiles[i], a0->heapID);
                    profiles[i] = a0->profiles[i];
                } else {
                    return;
                }
            } else {
                profiles[i] = NULL;
            }
        }
    }

    args.unk0 = a1->unk13_0;
    args.unk4 = a1->unk10;
    args.unk8[0] = profiles[0];
    args.unk8[1] = profiles[1];
    args.unk8[2] = profiles[2];
    args.unk8[3] = profiles[3];
    args.unk18[0] = ov45_0222EC68(a1->unk0[0]);
    args.unk18[1] = ov45_0222EC68(a1->unk0[1]);
    args.unk18[2] = ov45_0222EC68(a1->unk0[2]);
    args.unk18[3] = ov45_0222EC68(a1->unk0[3]);
    args.unk20 = a1->unk13_7;

    ov45_0222D9EC(a0->unk4, &args);
}
