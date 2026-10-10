#include "global.h"
#include "bg_window.h"
#include "field_system.h"
#include "map_object.h"
#include "player_avatar.h"
#include "unk_0203DB6C.h"
#include "field/field_control.h"

typedef struct UnkStruct_ov28_0225E810 {
    u8 filler_000[0x18];
    FieldSystem *fieldSystem;
    u8 filler_01C[0x1B4 - 0x1C];
    Window windows[24];
    int state;
} UnkStruct_ov28_0225E810;

extern const u8 ov28_0225EB7C[];

u32 ov01_021F6BD0(u32 scriptID);
u32 ov01_021F6BB0(u32 spriteID);

void ov28_0225E810(UnkStruct_ov28_0225E810 *a0) {
    LocalMapObject *obj;
    __asm__ volatile("movs %0, r3" : "=l"(obj) : : "cc");
    int newState;

    if ((*((u8 *)a0->fieldSystem + 0xD2) >> 6) & 1) {
        newState = 4;
    } else if (!FieldSystem_IsPlayerMovementAllowed(a0->fieldSystem)) {
        LocalMapObject *playerObj = PlayerAvatar_GetMapObject(FieldSystem_GetPlayerAvatar(a0->fieldSystem));
        if (MapObject_GetSpriteID(playerObj) - 0xBC <= 1) {
            if (sub_0205F330(playerObj) == 1) {
                newState = 3;
            } else {
                newState = 4;
            }
        } else {
            newState = a0->state;
        }
    } else {
        newState = ov01_021E7F54(a0->fieldSystem);
        if (newState == 1) {
            FieldSystem_GetFacingObject(a0->fieldSystem, &obj);
            if (ov01_021F6BD0(MapObject_GetScriptID(obj)) == 1 || ov01_021F6BB0(MapObject_GetSpriteID(obj)) == 1) {
                newState = 0;
            }
        }
    }

    if (newState != a0->state) {
        a0->state = newState;
        ScheduleWindowCopyToVram(&a0->windows[ov28_0225EB7C[a0->state]]);
    }
}
