#include "global.h"

#include "field_system.h"
#include "map_events.h"
#include "map_object.h"
#include "metatile_behavior.h"
#include "player_avatar.h"
#include "script_manager.h"
#include "unk_02054648.h"

void sub_0203DB6C(void);
void sub_0203DB70(void);
BOOL sub_0203DB74(void);
static u32 _GetCoordsOfFacingTile(FieldSystem *fieldSystem, u32 *outX, u32 *outZ);
static BOOL sub_0203DBD4(PlayerAvatar *playerAvatar, LocalMapObject *obj);
void FieldSystem_GetFacingObject(FieldSystem *fieldSystem, LocalMapObject **ret_p);
BOOL sub_0203DC64(FieldSystem *fieldSystem, LocalMapObject **ret_p);
u16 GetInteractedBackgroundEventScript(FieldSystem *fieldSystem, BgEvent *bgEvents, int num);
static BOOL BgEventIsUncollectedHiddenItem(FieldSystem *fieldSystem, BgEvent *bgEvent);
static BOOL BgEventDirectionIsCompatibleWithPlayerFacing(FieldSystem *fieldSystem, BgEvent *bgEvent);
u16 sub_0203DDA4(FieldSystem *fieldSystem, BgEvent *events, int num);
u16 sub_0203DE04(FieldSystem *fieldSystem, CoordEvent *coordEvents, int num);

void sub_0203DB6C(void) {
}

void sub_0203DB70(void) {
}

BOOL sub_0203DB74(void) {
    return TRUE;
}

static u32 _GetCoordsOfFacingTile(FieldSystem *fieldSystem, u32 *outX, u32 *outZ) {
    u32 dir = PlayerAvatar_GetFacingDirection(fieldSystem->playerAvatar);
    *outX = PlayerAvatar_GetXCoord(fieldSystem->playerAvatar);
    *outZ = PlayerAvatar_GetZCoord(fieldSystem->playerAvatar);
    switch (dir) {
    case 0:
        (*outZ)--;
        break;
    case 1:
        (*outZ)++;
        break;
    case 2:
        (*outX)--;
        break;
    case 3:
        (*outX)++;
        break;
    }
    return dir;
}

static BOOL sub_0203DBD4(PlayerAvatar *playerAvatar, LocalMapObject *obj) {
    u8 ret;
    if (MapObject_GetPositionVectorYCoordUInt(PlayerAvatar_GetMapObject(playerAvatar)) == MapObject_GetPositionVectorYCoordUInt(obj)) {
        ret = TRUE;
    } else {
        ret = FALSE;
    }
    return ret;
}

void FieldSystem_GetFacingObject(FieldSystem *fieldSystem, LocalMapObject **ret_p) {
    u32 x;
    u32 z;
    u32 dir = _GetCoordsOfFacingTile(fieldSystem, &x, &z);
    if (sub_0205B700(GetMetatileBehavior(fieldSystem, x, z)) == TRUE) {
        switch (dir) {
        case 0:
            z--;
            break;
        case 1:
            z++;
            break;
        case 2:
            x--;
            break;
        case 3:
            x++;
            break;
        }
    }
    *ret_p = MapObjectManager_GetFirstObjectWithXAndZ(fieldSystem->mapObjectManager, x, z, FALSE);
}

BOOL sub_0203DC64(FieldSystem *fieldSystem, LocalMapObject **ret_p) {
    FieldSystem_GetFacingObject(fieldSystem, ret_p);
    if (*ret_p != NULL && MapObject_CheckFlag19Disabled(*ret_p) == TRUE && sub_0203DBD4(fieldSystem->playerAvatar, *ret_p) == TRUE) {
        return TRUE;
    }
    return FALSE;
}

#ifdef NONMATCHING
// Matches except for instruction scheduling of the two walking pointers MWCC
// emits for `bgEvents[i]` (field access) and `&bgEvents[i]` (passed to the
// helpers): retail loads/increments the field pointer before the passed copy,
// and sinks both inits past the loop guard. See attempts log.
u16 GetInteractedBackgroundEventScript(FieldSystem *fieldSystem, BgEvent *bgEvents, int num) {
    u32 x;
    u32 z;
    int i;
    _GetCoordsOfFacingTile(fieldSystem, &x, &z);
    for (i = 0; i < num; i++) {
        if (x == bgEvents[i].x && z == bgEvents[i].z) {
            if (bgEvents[i].type == 2) {
                if (BgEventIsUncollectedHiddenItem(fieldSystem, &bgEvents[i]) == TRUE) {
                    return bgEvents[i].scriptId;
                }
            } else {
                if (BgEventDirectionIsCompatibleWithPlayerFacing(fieldSystem, &bgEvents[i]) == TRUE) {
                    return bgEvents[i].scriptId;
                }
            }
        }
    }
    return 0xFFFF;
}
#else
// clang-format off
asm u16 GetInteractedBackgroundEventScript(FieldSystem *fieldSystem, BgEvent *bgEvents, int num) {
    push {r3, r4, r5, r6, r7, lr}
    sub sp, #0x10
    str r1, [sp]
    str r2, [sp, #4]
    add r1, sp, #0xc
    add r2, sp, #8
    add r6, r0, #0
    bl _GetCoordsOfFacingTile
    ldr r0, [sp, #4]
    mov r7, #0
    cmp r0, #0
    ble _0203DD04
    ldr r4, [sp]
    add r5, r4, #0
_0203DCAE:
    ldr r1, [sp, #0xc]
    ldr r0, [r4, #4]
    cmp r1, r0
    bne _0203DCF8
    ldr r1, [sp, #8]
    ldr r0, [r4, #8]
    cmp r1, r0
    bne _0203DCF8
    ldrh r0, [r4, #2]
    cmp r0, #2
    bne _0203DCDE
    add r0, r6, #0
    add r1, r5, #0
    bl BgEventIsUncollectedHiddenItem
    cmp r0, #1
    bne _0203DCF8
    mov r0, #0x14
    add r1, r7, #0
    mul r1, r0
    ldr r0, [sp]
    add sp, #0x10
    ldrh r0, [r0, r1]
    pop {r3, r4, r5, r6, r7, pc}
_0203DCDE:
    add r0, r6, #0
    add r1, r5, #0
    bl BgEventDirectionIsCompatibleWithPlayerFacing
    cmp r0, #1
    bne _0203DCF8
    mov r0, #0x14
    add r1, r7, #0
    mul r1, r0
    ldr r0, [sp]
    add sp, #0x10
    ldrh r0, [r0, r1]
    pop {r3, r4, r5, r6, r7, pc}
_0203DCF8:
    ldr r0, [sp, #4]
    add r7, r7, #1
    add r4, #0x14
    add r5, #0x14
    cmp r7, r0
    blt _0203DCAE
_0203DD04:
    ldr r0, =0xFFFF
    add sp, #0x10
    pop {r3, r4, r5, r6, r7, pc}
}
// clang-format on
#endif

static BOOL BgEventIsUncollectedHiddenItem(FieldSystem *fieldSystem, BgEvent *bgEvent) {
    u8 ret;
    if (bgEvent->type != 2) {
        return FALSE;
    }
    if (FieldSystem_FlagCheck(fieldSystem, HiddenItemScriptNoToFlagId(bgEvent->scriptId)) == TRUE) {
        ret = FALSE;
    } else {
        ret = TRUE;
    }
    return ret;
}

static BOOL BgEventDirectionIsCompatibleWithPlayerFacing(FieldSystem *fieldSystem, BgEvent *bgEvent) {
    if (bgEvent->dir == 4) {
        return TRUE;
    }
    switch (PlayerAvatar_GetFacingDirection(fieldSystem->playerAvatar)) {
    case 0:
        if (bgEvent->dir == 0 || bgEvent->dir == 6) {
            return TRUE;
        }
        break;
    case 1:
        if (bgEvent->dir == 3 || bgEvent->dir == 6) {
            return TRUE;
        }
        break;
    case 2:
        if (bgEvent->dir == 2 || bgEvent->dir == 5) {
            return TRUE;
        }
        break;
    case 3:
        if (bgEvent->dir == 1 || bgEvent->dir == 5) {
            return TRUE;
        }
        break;
    }
    return FALSE;
}

u16 sub_0203DDA4(FieldSystem *fieldSystem, BgEvent *events, int num) {
    u32 x;
    u32 z;
    int i;
    if (PlayerAvatar_GetFacingDirection(fieldSystem->playerAvatar) != 0) {
        return 0xFFFF;
    }
    _GetCoordsOfFacingTile(fieldSystem, &x, &z);
    for (i = 0; i < num; i++) {
        if (x == events[i].x && z == events[i].z && events[i].type == 1) {
            return events[i].scriptId;
        }
    }
    return 0xFFFF;
}

u16 sub_0203DE04(FieldSystem *fieldSystem, CoordEvent *coordEvents, int num) {
    int playerX = PlayerAvatar_GetXCoord(fieldSystem->playerAvatar);
    int playerZ = PlayerAvatar_GetZCoord(fieldSystem->playerAvatar);
    int i;
    for (i = 0; i < num; i++) {
        if (playerX >= (u16)coordEvents[i].x && playerX < (u16)coordEvents[i].x + coordEvents[i].w && playerZ >= (u16)coordEvents[i].z && playerZ < (u16)coordEvents[i].z + coordEvents[i].h && coordEvents[i].val == FieldSystem_VarGet(fieldSystem, coordEvents[i].var)) {
            return coordEvents[i].scriptId;
        }
    }
    return 0xFFFF;
}
