#include "global.h"

#include "constants/sndseq.h"

#include "player_avatar.h"
#include "sound.h"

int sub_0205DDD4(PlayerAvatar *avatar, u16 pressedKeys, u16 heldKeys);
u32 sub_0205DEC0(PlayerAvatar *avatar, int facingDir);
BOOL sub_0205DE88(PlayerAvatar *avatar, u16 heldKeys);
u32 sub_0206234C(int facingDir, u32 movementAction);

u32 sub_0205DF0C(PlayerAvatar *avatar, u16 pressedKeys, u16 heldKeys, int actionSpeed, int isRunning, int _collision) {
    u32 movementAction;
    int facingDir = sub_0205DDD4(avatar, pressedKeys, heldKeys);
    u32 moveState = sub_0205DEC0(avatar, facingDir);

    PlayerAvatar_SetMoveState(avatar, moveState);
    if (moveState == 0) {
        return sub_0206234C(PlayerAvatar_GetFacingDirection(avatar), 0);
    }
    if (moveState == 2) {
        return sub_0206234C(facingDir, 0x28);
    }
    PlayerAvatar_GetMapObject(avatar);
    u32 collision = _collision;

    if (collision & 4) {
        movementAction = 0x38;
    } else if (collision != 0) {
        movementAction = 0x1C;
        if ((collision & 8) == 0) {
            PlaySE(SEQ_SE_DP_WALL_HIT);
        }
    } else {
        switch (actionSpeed) {
        case 0:
            movementAction = 4;
            break;
        case 1:
            movementAction = 8;
            break;
        case 2:
            movementAction = 0xC;
            break;
        case 3:
            movementAction = 0x4C;
            break;
        case 4:
            movementAction = 0x10;
            break;
        case 5:
            movementAction = 0x14;
            break;
        default:
            movementAction = 4;
            break;
        }
        if (isRunning == TRUE && sub_0205DE88(avatar, heldKeys) == TRUE) {
            movementAction = 0x58;
        }
    }
    return sub_0206234C(facingDir, movementAction);
}
