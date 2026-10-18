#include "global.h"

#include "math_util.h"
#include "player_data.h"

typedef struct UnkStruct_0205A544_Sub {
    u8 filler_00[0x18];
    u8 unk18[4];
    u8 unk1C;
} UnkStruct_0205A544_Sub;

typedef struct UnkStruct_0205A544_Mid {
    u8 filler_00[0x30];
    UnkStruct_0205A544_Sub unk30;
} UnkStruct_0205A544_Mid;

typedef struct UnkStruct_0205A544_Entry {
    u8 filler_00[0x50];
    UnkStruct_0205A544_Mid unk50;
} UnkStruct_0205A544_Entry;

typedef struct UnkStruct_0205A750 {
    u8 filler_000[0x110];
    UnkStruct_0205A544_Entry *unk110[1];
} UnkStruct_0205A750;

extern const u32 _020FC7FC[2];
extern const u32 _020FC804[2][2];
extern const u32 _020FC814[2][2];
extern const u32 _020FC8B4[4][2];
extern const u32 _020FC8D4[4][2];
extern const u32 _020FC8F4[4][2];
extern const u32 _020FC914[4][2];

PlayerProfile *sub_02035798(int index);
int sub_0205A51C(int netId);

u32 sub_0205A544(UnkStruct_0205A750 *a0, int netId) {
    int index;
    PlayerProfile *profile;
    UnkStruct_0205A544_Sub *sub;
    int gender;

    if (netId > 9) {
        index = sub_0205A51C(netId);
        GF_ASSERT(netId != -1);
    } else {
        index = netId;
    }
    if (a0->unk110[index] == NULL) {
        return 40;
    }
    profile = sub_02035798(index);
    sub = (UnkStruct_0205A544_Sub *)&a0->unk110[index]->unk50;
    sub = &((UnkStruct_0205A544_Mid *)sub)->unk30;
    if (profile == NULL) {
        return 40;
    }
    if (netId > 9) {
        gender = sub->unk18[(netId - 10) % 4] >> 7;
    } else {
        gender = PlayerProfile_GetTrainerGender(profile);
    }
    switch (sub->unk1C) {
    case 4:
    case 11:
        return _020FC7FC[gender];
    case 5:
        return _020FC814[LCRandom() % 2][gender];
    case 6:
        return _020FC8D4[LCRandom() % 4][gender];
    case 7:
        return _020FC804[LCRandom() % 2][gender];
    case 1:
    case 8:
        return _020FC8B4[LCRandom() % 4][gender];
    case 2:
    case 9:
        return _020FC8F4[LCRandom() % 4][gender];
    case 3:
    case 10:
    case 12:
    case 13:
        return _020FC914[LCRandom() % 4][gender];
    default:
        return 40;
    }
}
