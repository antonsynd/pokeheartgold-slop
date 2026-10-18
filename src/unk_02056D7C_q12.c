#include "global.h"

#include "field_system.h"
#include "map_object.h"
#include "player_avatar.h"
#include "player_data.h"
#include "unk_02034354.h"
#include "unk_02035900.h"

typedef struct UnkPlayerPos {
    u16 x;
    u16 y;
    s8 direction;
    u8 unk5;
    u8 unk6;
    u8 moving;
} UnkPlayerPos;

typedef struct UnkStruct_021D41C4 {
    u8 filler_00[4];
    PlayerAvatar *avatars[8];
    u8 spawned[8];
    u8 filler_2C[4];
    FieldSystem *fieldSystem;
    u8 filler_34[0x40];
    UnkPlayerPos positions[8];
    u8 filler_B4[0x3A];
    u8 unkEE;
} UnkStruct_021D41C4;

extern UnkStruct_021D41C4 *_021D41C4;

void sub_02057184(int netId) {
    PlayerProfile *profile;
    PlayerAvatar *avatar;
    LocalMapObject *object;
    u32 version;
    u8 gameVersion;

    if (_021D41C4->avatars[netId] != NULL || _021D41C4->unkEE != 0) {
        return;
    }
    profile = sub_02034818(netId);
    if (profile == NULL) {
        return;
    }
    if (netId != sub_0203769C()) {
        object = MapObjectManager_GetFirstActiveObjectByID(_021D41C4->fieldSystem->mapObjectManager, netId + 256);
        if (object != NULL) {
            MapObject_Remove(object);
        }
    }
    version = 2;
    gameVersion = PlayerProfile_GetVersion(profile);
    if (gameVersion == 0) {
        version = 1;
    } else if (gameVersion == VERSION_PLATINUM) {
        version = 0;
    }
    avatar = PlayerAvatar_CreateWithParams(_021D41C4->fieldSystem->mapObjectManager, _021D41C4->positions[netId].x, _021D41C4->positions[netId].y, _021D41C4->positions[netId].direction, 0, PlayerProfile_GetTrainerGender(profile), version, NULL);
    GF_ASSERT(avatar != NULL);
    _021D41C4->avatars[netId] = avatar;
    MapObject_SetID(PlayerAvatar_GetMapObject(avatar), netId + 256);
    _021D41C4->spawned[netId] = TRUE;
}
