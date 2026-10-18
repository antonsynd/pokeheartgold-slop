#include "global.h"

#include "map_object.h"
#include "player_avatar.h"

typedef struct UnkStruct_020FCB88 {
    BOOL (*check)(u8 behavior);
    int result;
} UnkStruct_020FCB88;

extern const UnkStruct_020FCB88 _020FCB88[];

BOOL sub_0205E078(PlayerAvatar *avatar, u32 behavior, int a2);

int sub_0205D01C(PlayerAvatar *avatar, int a1) {
    int i = 0;
    u32 behavior = sub_0205F504(PlayerAvatar_GetMapObject(avatar));

    if (sub_0205E078(avatar, behavior, a1) == TRUE) {
        return 2;
    }
    if (PlayerAvatar_CheckFlag1(avatar) == TRUE) {
        return 0;
    }
    do {
        if (_020FCB88[i].check(behavior) == TRUE) {
            return _020FCB88[i].result;
        }
        i++;
    } while (_020FCB88[i].check != NULL);
    return 0;
}
