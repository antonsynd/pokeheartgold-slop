typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

u32 MapObject_CheckFlag24(void *mapObj);
void MapObject_SetFlag24(void *mapObj, u32 value);
u32 GetMetatileBehavior_None(void);
u32 MapObject_GetID(void *mapObj);
u32 ov01_022055DC(void *mapObj);
u32 sub_02060FA8(void *mapObj, u32 which);
u32 ov01_022056C4(void *mapObj, u32 which);
u32 MetatileBehavior_HasReflectiveSurface(u32 behavior);
u32 MetatileBehavior_IsReflective(u32 behavior);
u32 MetatileBehavior_IsPuddle(u32 behavior);
void ov01_021FDF88(void *mapObj, u32 kind);
void ov01_021FDA74(void *mapObj, u32 kind);

void sub_020607D8(void *mapObj, u32 behavior, u32 unused, u16 *renderFlags)
{
    u32 chosen;
    u32 r4;
    u8 t1;
    u8 t2;
    u8 t3;
    u8 t4;
    u8 t5;
    u32 kind;

    if ((((u32)*renderFlags << 19) >> 30) == 0) {
        return;
    }
    if (MapObject_CheckFlag24(mapObj) == 1) {
        return;
    }

    r4 = GetMetatileBehavior_None();

    if (MapObject_GetID(mapObj) == 0xfd) {
        if (ov01_022055DC(mapObj) != 0) {
            if (MapObject_CheckFlag24(mapObj) != 0) {
                return;
            }
            if (MetatileBehavior_HasReflectiveSurface(behavior) == 1) {
                r4 = behavior;
            } else {
                t1 = (u8)sub_02060FA8(mapObj, 1);
                t3 = (u8)sub_02060FA8(mapObj, 3);
                t2 = (u8)sub_02060FA8(mapObj, 2);
                t4 = (u8)ov01_022056C4(mapObj, 4);
                t5 = (u8)ov01_022056C4(mapObj, 5);

                if (MetatileBehavior_HasReflectiveSurface(t1) == 1) {
                    chosen = t1;
                    r4 = chosen;
                } else if (MetatileBehavior_HasReflectiveSurface(t3) == 1) {
                    chosen = t3;
                    r4 = chosen;
                } else if (MetatileBehavior_HasReflectiveSurface(t2) == 1) {
                    chosen = t2;
                    r4 = chosen;
                } else if (MetatileBehavior_HasReflectiveSurface(t4) == 1) {
                    chosen = t4;
                    r4 = chosen;
                } else if (MetatileBehavior_HasReflectiveSurface(t5) == 1) {
                    chosen = t5;
                    r4 = chosen;
                }
            }

            if (r4 == GetMetatileBehavior_None()) {
                return;
            }
            MapObject_SetFlag24(mapObj, 1);
            if (MetatileBehavior_IsReflective(r4) == 1) {
                kind = 5;
            } else if (MetatileBehavior_IsPuddle(r4) == 1) {
                kind = 3;
            } else {
                kind = 4;
            }
            ov01_021FDF88(mapObj, kind);
        } else {
            if (MapObject_CheckFlag24(mapObj) != 0) {
                return;
            }
            if (MetatileBehavior_HasReflectiveSurface(behavior) == 1) {
                r4 = behavior;
            } else {
                t1 = (u8)sub_02060FA8(mapObj, 1);
                if (MetatileBehavior_HasReflectiveSurface(t1) == 1) {
                    r4 = t1;
                }
            }

            if (r4 == GetMetatileBehavior_None()) {
                return;
            }
            MapObject_SetFlag24(mapObj, 1);
            if (MetatileBehavior_IsReflective(r4) == 1) {
                kind = 2;
            } else if (MetatileBehavior_IsPuddle(r4) == 1) {
                kind = 0;
            } else {
                kind = 1;
            }
            ov01_021FDF88(mapObj, kind);
        }
    } else {
        if (MapObject_CheckFlag24(mapObj) != 0) {
            return;
        }
        if (MetatileBehavior_HasReflectiveSurface(behavior) == 1) {
            r4 = behavior;
        } else {
            t1 = (u8)sub_02060FA8(mapObj, 1);
            if (MetatileBehavior_HasReflectiveSurface(t1) == 1) {
                r4 = t1;
            }
        }

        if (r4 == GetMetatileBehavior_None()) {
            return;
        }
        MapObject_SetFlag24(mapObj, 1);
        if (MetatileBehavior_IsReflective(r4) == 1) {
            kind = 2;
        } else if (MetatileBehavior_IsPuddle(r4) == 1) {
            kind = 0;
        } else {
            kind = 1;
        }
        ov01_021FDA74(mapObj, kind);
    }
}
