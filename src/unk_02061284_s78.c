#include "global.h"

#include "map_object.h"
#include "player_avatar.h"
#include "unk_0205CB48.h"

extern const int _020FD800[];

int sub_02061200(int x, int z, int targetX, int targetZ);

int sub_02061E90(LocalMapObject *object) {
    int type = MapObject_GetType(object);

    if (type != 1 && type != 2) {
        return -1;
    }
    {
        FieldSystem *fieldSystem = MapObject_GetFieldSystem(object);
        PlayerAvatar *avatar = FieldSystem_GetPlayerAvatar(fieldSystem);

        if (sub_0205DE98(avatar) == FALSE) {
            return -1;
        }
        {
            int movement;
            int i = 0;

            type = MapObject_GetMovement(object);
            do {
                movement = _020FD800[i++];
                if (movement == type) {
                    break;
                }
            } while (movement != 0xFF);
            if (type != movement) {
                return -1;
            }
        }
        {
            LocalMapObject *playerObject = PlayerAvatar_GetMapObject(avatar);
            int playerY = MapObject_GetPositionVectorYCoordUInt(playerObject);
            int y = MapObject_GetPositionVectorYCoordUInt(object);

            if (playerY != y) {
                return -1;
            }
        }
        {
            int playerX = PlayerAvatar_GetXCoord(avatar);
            int playerZ = PlayerAvatar_GetZCoord(avatar);
            int range = MapObject_GetParam(object, 0);
            int x = MapObject_GetXCoord(object);
            int z = MapObject_GetZCoord(object);
            int minX = x - range;
            int maxX = x + range;
            int minZ = z - range;
            int maxZ = z + range;

            if (minZ <= playerZ && maxZ >= playerZ) {
                if (minX <= playerX && maxX >= playerX) {
                    return sub_02061200(x, z, playerX, playerZ);
                }
            }
        }
    }
    return -1;
}
