typedef unsigned char u8;
typedef unsigned int u32;
typedef int s32;

u32 MapObject_GetID(void *mapObj);
u32 MapObject_TestFlagsBits(void *mapObj, u32 flags);
u32 MapObject_GetFacingDirection(void *mapObj);
void *MapObject_GetFieldSystem(void *mapObj);
u32 ov01_022055DC(void *mapObj);
void ov01_02205604(void *mapObj, s32 *tileX, s32 *tileY);
u32 MetatileBehavior_IsTallGrass(u32 behavior);
u32 MetatileBehavior_IsVeryTallGrass(u32 behavior);
u32 GetMetatileBehavior(void *fieldSystem, s32 tileX, s32 tileY);
void ov01_021FF070(void *mapObj, u32 arg1);
void ov01_021FF0E4(void *mapObj, u32 arg1, s32 tileX, s32 tileY, s32 arg4);
void ov01_021FF964(void *mapObj, u32 arg1, s32 tileX, s32 tileY, s32 arg4);

void sub_02060274(void *mapObj, u32 currTileBehavior, u32 prevTileBehavior, void *renderDetails)
{
    u32 id;
    s32 tileX;
    s32 tileY;
    u32 behavior;
    u8 facing;
    void *fieldSys;

    id = MapObject_GetID(mapObj);
    if (MetatileBehavior_IsTallGrass(currTileBehavior) == 1) {
        if (id == 0xfd && MapObject_TestFlagsBits(mapObj, 0x200) == 1) {
            return;
        }
        ov01_021FF070(mapObj, 1);
    }

    if (MapObject_GetID(mapObj) == 0xfd && ov01_022055DC(mapObj) != 0) {
        facing = (u8)MapObject_GetFacingDirection(mapObj);
        fieldSys = MapObject_GetFieldSystem(mapObj);

        if ((u8)(facing + 0xFE) <= 1) {
            ov01_02205604(mapObj, &tileX, &tileY);
            behavior = GetMetatileBehavior(fieldSys, tileX, tileY);

            if (MetatileBehavior_IsTallGrass((u8)behavior) == 1) {
                ov01_021FF0E4(mapObj, 1, tileX, tileY, 1);
                return;
            }
            if (MetatileBehavior_IsVeryTallGrass((u8)behavior) == 1) {
                ov01_021FF964(mapObj, 1, tileX, tileY, 1);
            }
        }
    }
}
