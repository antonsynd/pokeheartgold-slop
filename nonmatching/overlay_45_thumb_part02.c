#include "global.h"

#include "constants/sndseq.h"

#include "assert.h"
#include "filesystem.h"
#include "font.h"
#include "heap.h"
#include "msgdata.h"
#include "player_data.h"
#include "pm_string.h"
#include "sound_02004A44.h"

#define UNK_OV45_INVALID_ID (-1)
#define UNK_OV45_SCENE      21

typedef struct UnkStruct_ov45_0222A5C0_Profile {
    s32 unk0;
    u8 unk4[4];
    u16 unk8[8];
    u8 unk18[0x41 - 0x18];
    u8 unk41;
    u8 unk42;
    u8 unk43;
    u8 unk44[0x4C - 0x44];
    u8 unk4C[12];
    s32 unk58[12];
    u16 unk88[2];
    u32 unk8C;
    u32 unk90;
    u8 unk94[4];
} UnkStruct_ov45_0222A5C0_Profile;

typedef struct UnkStruct_ov45_0222A5C0_Container {
    u8 unk0[0x20];
    UnkStruct_ov45_0222A5C0_Profile profile;
} UnkStruct_ov45_0222A5C0_Container;

typedef struct UnkStruct_ov45_0222A4D0_State {
    u8 unk0_0 : 4;
    u8 unk0_4 : 1;
    u8 unk0_5 : 3;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 unk4[2];
    s16 unk6;
    u8 unk8[2];
    s16 unkA;
    u8 unkC;
    u8 unkD;
    u8 unkE;
    u8 unkF_0 : 4;
    u8 unkF_4 : 4;
} UnkStruct_ov45_0222A4D0_State;

typedef struct UnkStruct_ov45_0222A3D4 {
    void *unk0;
    u8 unk4[0x108 - 0x4];
    UnkStruct_ov45_0222A5C0_Container unk108;
    u8 unk1C0[4];
    u16 unk1C4;
    u8 unk1C6[0x1FC - 0x1C6];
    UnkStruct_ov45_0222A4D0_State unk1FC;
    u8 unk20C[0x3A0 - 0x20C];
    u8 unk3A0[0x3E0 - 0x3A0];
    u8 unk3E0[4];
    u8 unk3E4[0x4BC - 0x3E4];
    u8 unk4BC[0x50C - 0x4BC];
    int unk50C;
    u8 unk510[0x52C - 0x510];
    int unk52C;
} UnkStruct_ov45_0222A3D4;

typedef struct UnkStruct_ov45_0222EC10 {
    u32 unk0;
    s32 *unk4;
} UnkStruct_ov45_0222EC10;

extern void ov45_0222BCA0(void *a0);
extern BOOL ov45_0222BCA8(void *a0);
extern void ov45_0222BD24(void *a0);
extern BOOL ov45_0222BD2C(void *a0);
extern void ov45_0222BC84(UnkStruct_ov45_0222A4D0_State *a0);
extern s32 ov45_0222E9E0(void);
extern u32 ov45_0222EC68(s32 a0);
extern u32 ov45_0222EC90(u32 a0);
extern void ov45_0222EC10(UnkStruct_ov45_0222EC10 *a0);
extern UnkStruct_ov45_0222A5C0_Profile *ov45_0222EA2C(s32 a0);
extern BOOL ov45_0222BADC(UnkStruct_ov45_0222A5C0_Container *a0, void *a1);
extern void ov45_0222BAC4(UnkStruct_ov45_0222A5C0_Container *a0, void *a1);
extern void ov45_0222BA3C(UnkStruct_ov45_0222A3D4 *a0);
extern BOOL ov45_0222AFF8(UnkStruct_ov45_0222A3D4 *a0);
extern BOOL ov45_0222B00C(UnkStruct_ov45_0222A3D4 *a0);
extern void ov45_0222BD5C(void *a0);
extern void ov45_0222BE28(UnkStruct_ov45_0222A3D4 *a0, u32 a1);
extern void ov45_0222CB74(void *a0, int a1, s32 a2);
extern void ov45_0222B118(UnkStruct_ov45_0222A3D4 *a0, int a1);
extern BOOL ov45_0222B28C(u16 *a0, int a1);
extern u32 ov45_0222A9A0(const UnkStruct_ov45_0222A5C0_Profile *a0);
extern int ov45_0222A9CC(const UnkStruct_ov45_0222A5C0_Profile *a0);
extern u32 ov45_0222AA10(const UnkStruct_ov45_0222A5C0_Profile *a0);
extern u32 ov45_0222AA5C(const UnkStruct_ov45_0222A5C0_Profile *a0);

u32 ov45_0222A3D4(const UnkStruct_ov45_0222A3D4 *a0);
u32 ov45_0222A3EC(const UnkStruct_ov45_0222A3D4 *a0);
void ov45_0222A404(UnkStruct_ov45_0222A3D4 *a0);
BOOL ov45_0222A414(const UnkStruct_ov45_0222A3D4 *a0);
int ov45_0222A424(const UnkStruct_ov45_0222A3D4 *a0);
void ov45_0222A430(UnkStruct_ov45_0222A3D4 *a0, int a1);
void ov45_0222A43C(UnkStruct_ov45_0222A3D4 *a0);
void ov45_0222A450(UnkStruct_ov45_0222A3D4 *a0, s32 a1, u32 a2);
void ov45_0222A480(UnkStruct_ov45_0222A3D4 *a0, u32 a1);
void ov45_0222A498(const UnkStruct_ov45_0222A3D4 *a0, void *a1);
void ov45_0222A4A8(UnkStruct_ov45_0222A3D4 *a0);
BOOL ov45_0222A4B8(const UnkStruct_ov45_0222A3D4 *a0);
void ov45_0222A4C8(UnkStruct_ov45_0222A3D4 *a0, int a1);
void ov45_0222A4D0(const UnkStruct_ov45_0222A3D4 *a0);
void ov45_0222A520(UnkStruct_ov45_0222A3D4 *a0, int a1);
u32 ov45_0222A53C(const UnkStruct_ov45_0222A3D4 *a0);
s32 ov45_0222A548(const UnkStruct_ov45_0222A3D4 *a0);
BOOL ov45_0222A550(const UnkStruct_ov45_0222A3D4 *a0, u32 a1);
const UnkStruct_ov45_0222A5C0_Profile *ov45_0222A578(const UnkStruct_ov45_0222A3D4 *a0, u32 a1);
UnkStruct_ov45_0222A5C0_Profile *ov45_0222A5C0(UnkStruct_ov45_0222A3D4 *a0);
void ov45_0222A5E8(UnkStruct_ov45_0222A3D4 *a0, int a1);
void ov45_0222A704(UnkStruct_ov45_0222A3D4 *a0, int a1, s32 a2);
void ov45_0222A72C(UnkStruct_ov45_0222A3D4 *a0, u32 a1);
void ov45_0222A770(UnkStruct_ov45_0222A3D4 *a0, int a1, int a2);
void ov45_0222A7DC(UnkStruct_ov45_0222A3D4 *a0, u32 a1, u32 a2);
void ov45_0222A844(const UnkStruct_ov45_0222A5C0_Profile *a0, PlayerProfile *a1, enum HeapID heapID);
u32 ov45_0222A920(const UnkStruct_ov45_0222A5C0_Profile *a0);
int ov45_0222A92C(const UnkStruct_ov45_0222A5C0_Profile *a0, u32 a1);
s32 ov45_0222A964(const UnkStruct_ov45_0222A5C0_Profile *a0, u32 a1);
s32 ov45_0222A99C(const UnkStruct_ov45_0222A5C0_Profile *a0);

u32 ov45_0222A3D4(const UnkStruct_ov45_0222A3D4 *a0) {
    if (a0->unk1FC.unk6 <= 0) {
        return a0->unk1FC.unk2;
    }
    return 7;
}

u32 ov45_0222A3EC(const UnkStruct_ov45_0222A3D4 *a0) {
    if (a0->unk1FC.unk6 <= 0) {
        return a0->unk1FC.unk3;
    }
    return 11;
}

void ov45_0222A404(UnkStruct_ov45_0222A3D4 *a0) {
    ov45_0222BCA0(a0->unk3A0);
}

BOOL ov45_0222A414(const UnkStruct_ov45_0222A3D4 *a0) {
    return ov45_0222BCA8((void *)a0->unk3A0);
}

int ov45_0222A424(const UnkStruct_ov45_0222A3D4 *a0) {
    return a0->unk50C;
}

void ov45_0222A430(UnkStruct_ov45_0222A3D4 *a0, int a1) {
    a0->unk50C = a1;
}

void ov45_0222A43C(UnkStruct_ov45_0222A3D4 *a0) {
    MI_CpuClear32(a0->unk3E0, 4);
}

void ov45_0222A450(UnkStruct_ov45_0222A3D4 *a0, s32 a1, u32 a2) {
    u32 value;

    GF_ASSERT(a2 < 4);
    value = ov45_0222EC68(a1);
    GF_ASSERT(value != 0xFFFFFFFF);
    a0->unk3E0[a2] = value;
}

void ov45_0222A480(UnkStruct_ov45_0222A3D4 *a0, u32 a1) {
    s32 id = ov45_0222E9E0();
    ov45_0222A450(a0, id, a1);
}

void ov45_0222A498(const UnkStruct_ov45_0222A3D4 *a0, void *a1) {
    MI_CpuCopy8(a0->unk3E0, a1, 4);
}

void ov45_0222A4A8(UnkStruct_ov45_0222A3D4 *a0) {
    ov45_0222BD24(a0->unk3A0);
}

BOOL ov45_0222A4B8(const UnkStruct_ov45_0222A3D4 *a0) {
    return ov45_0222BD2C((void *)a0->unk3A0);
}

void ov45_0222A4C8(UnkStruct_ov45_0222A3D4 *a0, int a1) {
    a0->unk1FC.unkC = a1;
}

void ov45_0222A4D0(const UnkStruct_ov45_0222A3D4 *a0) {
    if (a0->unk1FC.unk0_4 == 1 && a0->unk1FC.unkA <= 0) {
        Sound_SetSceneAndPlayBGM(UNK_OV45_SCENE, SEQ_GS_WIFIPARADE, 0);
        ov45_0222BC84((UnkStruct_ov45_0222A4D0_State *)&a0->unk1FC);
        return;
    }
    Sound_SetSceneAndPlayBGM(UNK_OV45_SCENE, SEQ_GS_WIFIUNION, 0);
    ov45_0222BC84((UnkStruct_ov45_0222A4D0_State *)&a0->unk1FC);
}

void ov45_0222A520(UnkStruct_ov45_0222A3D4 *a0, int a1) {
    if (a1 != a0->unk1FC.unkD) {
        a0->unk1FC.unkD = a1;
        ov45_0222BC84(&a0->unk1FC);
    }
}

u32 ov45_0222A53C(const UnkStruct_ov45_0222A3D4 *a0) {
    return ov45_0222EC68(ov45_0222E9E0());
}

s32 ov45_0222A548(const UnkStruct_ov45_0222A3D4 *a0) {
    return ov45_0222E9E0();
}

BOOL ov45_0222A550(const UnkStruct_ov45_0222A3D4 *a0, u32 a1) {
    UnkStruct_ov45_0222EC10 info;

    ov45_0222EC10(&info);
    if (info.unk4[a1] != UNK_OV45_INVALID_ID) {
        return TRUE;
    }
    return FALSE;
}

const UnkStruct_ov45_0222A5C0_Profile *ov45_0222A578(const UnkStruct_ov45_0222A3D4 *a0, u32 a1) {
    s32 id;
    UnkStruct_ov45_0222EC10 info;

    GF_ASSERT(a1 < 20);
    ov45_0222EC10(&info);
    id = info.unk4[a1];
    if (id == UNK_OV45_INVALID_ID) {
        return NULL;
    }
    if (id == ov45_0222E9E0()) {
        return &a0->unk108.profile;
    }
    return ov45_0222EA2C(id);
}

UnkStruct_ov45_0222A5C0_Profile *ov45_0222A5C0(UnkStruct_ov45_0222A3D4 *a0) {
    if (ov45_0222BADC(&a0->unk108, a0->unk0) == FALSE) {
        a0->unk52C = 1;
    }
    return &a0->unk108.profile;
}

void ov45_0222A5E8(UnkStruct_ov45_0222A3D4 *a0, int a1) {
    GF_ASSERT(a1 < 15);

    if (ov45_0222BADC(&a0->unk108, a0->unk0) == FALSE) {
        a0->unk52C = 1;
        return;
    }

    if (a0->unk108.profile.unk43 == a1) {
        return;
    }

    if (a1 != 9) {
        if (ov45_0222AFF8(a0) == TRUE) {
            if (ov45_0222B00C(a0) == FALSE) {
                ov45_0222EC90(a0->unk1C4);
                ov45_0222BE28(a0, a0->unk1C4);
            }
            ov45_0222BD5C(a0->unk1C0);
        }
    }

    switch (a0->unk108.profile.unk43) {
    case 2:
        ov45_0222CB74(a0->unk4BC, 16, UNK_OV45_INVALID_ID);
        break;
    case 3:
        ov45_0222CB74(a0->unk4BC, 17, UNK_OV45_INVALID_ID);
        break;
    case 4:
        ov45_0222CB74(a0->unk4BC, 18, UNK_OV45_INVALID_ID);
        break;
    case 5:
        ov45_0222CB74(a0->unk4BC, 19, UNK_OV45_INVALID_ID);
        break;
    case 6:
        ov45_0222CB74(a0->unk4BC, 20, UNK_OV45_INVALID_ID);
        break;
    case 7:
        ov45_0222CB74(a0->unk4BC, 21, UNK_OV45_INVALID_ID);
        break;
    case 8:
        ov45_0222CB74(a0->unk4BC, 22, UNK_OV45_INVALID_ID);
        break;
    }

    a0->unk108.profile.unk43 = a1;
    ov45_0222BAC4(&a0->unk108, a0->unk0);
    ov45_0222BA3C(a0);
}

void ov45_0222A704(UnkStruct_ov45_0222A3D4 *a0, int a1, s32 a2) {
    GF_ASSERT(a1 < 24);
    ov45_0222CB74(a0->unk4BC, a1, a2);
    ov45_0222BA3C(a0);
}

void ov45_0222A72C(UnkStruct_ov45_0222A3D4 *a0, u32 a1) {
    GF_ASSERT(a1 < 27);

    if (ov45_0222BADC(&a0->unk108, a0->unk0) == FALSE) {
        a0->unk52C = 1;
        return;
    }

    a0->unk108.profile.unk41 = a1;
    ov45_0222BAC4(&a0->unk108, a0->unk0);
    ov45_0222BA3C(a0);
}

void ov45_0222A770(UnkStruct_ov45_0222A3D4 *a0, int a1, int a2) {
    GF_ASSERT(a1 < 18);
    GF_ASSERT(a2 < 18);

    if (ov45_0222BADC(&a0->unk108, a0->unk0) == FALSE) {
        a0->unk52C = 1;
        return;
    }

    if (a1 >= 18) {
        return;
    }
    if (a2 >= 18) {
        return;
    }

    if (a1 == 0) {
        a0->unk108.profile.unk88[0] = a2;
        a0->unk108.profile.unk88[1] = 0;
    } else {
        a0->unk108.profile.unk88[0] = a1;
        a0->unk108.profile.unk88[1] = a2;
    }

    ov45_0222BAC4(&a0->unk108, a0->unk0);
    ov45_0222BA3C(a0);
}

void ov45_0222A7DC(UnkStruct_ov45_0222A3D4 *a0, u32 a1, u32 a2) {
    GF_ASSERT(a2 < 3);

    if (ov45_0222BADC(&a0->unk108, a0->unk0) == FALSE) {
        a0->unk52C = 1;
        return;
    }

    if (a2 >= 3) {
        return;
    }

    a0->unk108.profile.unk8C = a1;
    a0->unk108.profile.unk90 = a2;
    a0->unk1FC.unkF_0 = 1;
    ov45_0222B118(a0, 6);
    ov45_0222BAC4(&a0->unk108, a0->unk0);
    ov45_0222BA3C(a0);
}

void ov45_0222A844(const UnkStruct_ov45_0222A5C0_Profile *a0, PlayerProfile *a1, enum HeapID heapID) {
    BOOL isNameValid = ov45_0222B28C((u16 *)a0->unk8, 8);
    BOOL isNameInvalid = FALSE;

    if (isNameValid == TRUE) {
        String *buffer;
        String *name;

        Save_Profile_PlayerName_Set(a1, (u16 *)a0->unk8);
        buffer = String_New(32, heapID);
        name = String_New(32, heapID);
        PlayerName_FlatToString(a1, name);
        isNameValid = FontID_String_AllCharsValid(0, name, buffer);
        if (isNameValid == FALSE) {
            isNameInvalid = TRUE;
        }
        String_Delete(buffer);
        String_Delete(name);
    } else {
        isNameInvalid = TRUE;
    }

    if (isNameInvalid) {
        MsgData *msgData = NewMsgDataFromNarc(MSGDATA_LOAD_LAZY, NARC_msgdata_msg, 777, heapID);
        String *fallback = NewString_ReadMsgData(msgData, 64);

        PlayerName_StringToFlat(a1, fallback);
        String_Delete(fallback);
        DestroyMsgData(msgData);
    }

    PlayerProfile_SetTrainerID(a1, ov45_0222A9A0(a0));
    PlayerProfile_SetTrainerGender(a1, ov45_0222A9CC(a0));
    PlayerProfile_SetAvatar(a1, ov45_0222AA5C(a0));
    PlayerProfile_SetLanguage(a1, ov45_0222AA10(a0));
    PlayerProfile_SetGameClearFlag(a1);
}

u32 ov45_0222A920(const UnkStruct_ov45_0222A5C0_Profile *a0) {
    if (a0->unk43 >= 14) {
        return 14;
    }
    return a0->unk43;
}

int ov45_0222A92C(const UnkStruct_ov45_0222A5C0_Profile *a0, u32 a1) {
    int i;
    int count;

    GF_ASSERT(a1 < 12);

    count = 0;
    for (i = 0; i < 12; i++) {
        if (a0->unk4C[i] < 24) {
            count++;
        }
        if (count - 1 == a1) {
            return a0->unk4C[i];
        }
    }
    return 24;
}

s32 ov45_0222A964(const UnkStruct_ov45_0222A5C0_Profile *a0, u32 a1) {
    int i;
    int count;

    GF_ASSERT(a1 < 12);

    count = 0;
    for (i = 0; i < 12; i++) {
        if (a0->unk4C[i] < 24) {
            count++;
        }
        if (count - 1 == a1) {
            return a0->unk58[i];
        }
    }
    return UNK_OV45_INVALID_ID;
}

s32 ov45_0222A99C(const UnkStruct_ov45_0222A5C0_Profile *a0) {
    return a0->unk0;
}
