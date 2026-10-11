#pragma warning_errors off
#include "global.h"
#pragma thumb on
typedef struct MapObject MapObject;
void sub_02061338(MapObject *param0);
void MapObject_SetFacingDirection(MapObject *mapObj, int dir);
void *sub_0205F394(MapObject *mapObj);
void sub_02060F78(MapObject *mapObj);
typedef struct {
    u16 unk_00;
    s16 unk_02;
    int unk_04;
} UnkStruct_0206450C;
int sub_02061E20(const int *param0, int param1);
int sub_02061E44(int param0, int param1);
int sub_02061F5C(MapObject *mapObj, int param1, int param2);
extern const int _020FD7B8[];
void sub_02061338(MapObject *mapObj) {
    UnkStruct_0206450C *v0 = sub_0205F394(mapObj);
    int v1 = sub_02061F5C(mapObj, v0->unk_04, -1);

    if (v1 != -1) {
        MapObject_SetFacingDirection(mapObj, v1);
    } else {
        switch (v0->unk_00) {
        case 0:
            v0->unk_02--;

            if (v0->unk_02 <= 0) {
                v0->unk_02 = sub_02061E20(_020FD7B8, -1);
                MapObject_SetFacingDirection(mapObj, sub_02061E44(v0->unk_04, -1));
            }
        }
    }

    sub_02060F78(mapObj);
}

extern const int _020FD7B8[5];
