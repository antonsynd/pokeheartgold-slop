#include "global.h"

#include "message_format.h"
#include "player_data.h"
#include "unk_02037C94.h"

typedef struct UnkStruct_0205A750 {
    u8 filler_00[0x34];
    int unk34;
} UnkStruct_0205A750;

extern const u32 _020FC7D4[2];
extern const u32 _020FC7DC[2];
extern const u32 _020FC7E4[2];
extern const u32 _020FC7EC[2];
extern const u32 _020FC7F4[2];
extern const u32 _020FC838[3][2];
extern const u32 _020FC850[3][2];
extern const u32 _020FC868[3][2];
extern const u32 _020FC880[3][2];
extern const u32 _020FC934[6][2];
extern const u32 _020FC95C[][2];

PlayerProfile *sub_02035798(int index);
u32 sub_0205A544(UnkStruct_0205A750 *a0, int netId);
u32 sub_0205A730(int a0, int gender, MessageFormat *msgFormat);

u32 sub_0205A750(UnkStruct_0205A750 *a0, int netId, int type, MessageFormat *msgFormat) {
    PlayerProfile *profile;
    u32 gender;

    if (type == 0) {
        return sub_0205A544(a0, netId - 1);
    }
    profile = sub_02035798(netId - 1);
    if (profile == NULL) {
        sub_020398D4(1, 1);
        sub_02039AD8(1);
        return 0;
    }
    gender = PlayerProfile_GetTrainerGender(profile);
    switch (type) {
    case 1:
        return sub_0205A730(a0->unk34 - 1, gender, msgFormat);
    case 2:
        return _020FC7D4[gender];
    case 9:
        if (a0->unk34 == 0) {
            return 0;
        }
        return _020FC95C[a0->unk34][gender];
    case 19:
    case 20:
    case 21:
        return _020FC880[type - 19][gender];
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
        return _020FC934[type - 3][gender];
    case 10:
    case 11:
    case 12:
        return _020FC838[type - 10][gender];
    case 13:
    case 14:
    case 15:
        return _020FC850[type - 13][gender];
    case 16:
    case 17:
    case 18:
        return _020FC868[type - 16][gender];
    case 22:
        return _020FC7E4[gender];
    case 23:
        return _020FC7DC[gender];
    case 24:
        return _020FC7EC[gender];
    case 25:
        return 218;
    case 26:
        return _020FC7F4[gender];
    default:
        GF_ASSERT(FALSE);
        return 40;
    }
}
