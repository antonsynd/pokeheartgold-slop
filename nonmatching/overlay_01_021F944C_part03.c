#include "global.h"

#include "gf_3d_loader.h"
#include "map_object.h"
#include "overlay_01_021F944C.h"

#define UNK_OV01_021F944C_NO_SPRITE 0xFFFF

typedef struct UnkStruct_Ov01_021F944C {
    int unk0;
    int unk4;
    int unk8;
    int unkC;
    int unk10;
    int unk14;
    int unk18;
    int unk1C;
    int unk20[8];
    int unk40[8];
    int unk60[32];
    void *unkE0;
    void *unkE4;
    void *unkE8;
    void *unkEC;
    GF_3DGfxRawResMan *unkF0;
    void *unkF4;
    void *unkF8;
    void *unkFC;
} UnkStruct_Ov01_021F944C;

extern int ov01_021F9D88(UnkStruct_Ov01_021F944C *arg0, int arg1);
extern int ov01_021F9E9C(UnkStruct_Ov01_021F944C *arg0, int arg1);
extern int ov01_021F9B38(UnkStruct_Ov01_021F944C *arg0, int arg1);
extern int ov01_021F9B84(UnkStruct_Ov01_021F944C *arg0, int arg1);
extern int ov01_021F9C5C(UnkStruct_Ov01_021F944C *arg0, int arg1);
extern int ov01_021F9CA8(UnkStruct_Ov01_021F944C *arg0, int arg1);
extern int ov01_021F9DA4(UnkStruct_Ov01_021F944C *arg0, int arg1);
extern void ov01_021F9974(UnkStruct_Ov01_021F944C *arg0, int arg1);
extern void ov01_021F99D0(UnkStruct_Ov01_021F944C *arg0, int arg1);
extern void ov01_021F9A44(UnkStruct_Ov01_021F944C *arg0, int arg1);
extern void ov01_021F9BAC(UnkStruct_Ov01_021F944C *arg0, int arg1);
extern void ov01_021F9CD0(UnkStruct_Ov01_021F944C *arg0, int arg1);
extern void ov01_021F9E04(UnkStruct_Ov01_021F944C *arg0, int arg1);
extern void ov01_021F9BD4(MapObjectManager *manager, UnkStruct_Ov01_021F944C *arg1);
extern void ov01_021F9CF8(MapObjectManager *manager, UnkStruct_Ov01_021F944C *arg1);
extern void ov01_021F9E30(MapObjectManager *manager, UnkStruct_Ov01_021F944C *arg1);
extern void ov01_021FA4F0(UnkStruct_Ov01_021F944C *arg0, int arg1);
extern void ov01_021FA6A4(UnkStruct_Ov01_021F944C *arg0, int arg1);
extern void ov01_021FC588(void *arg0, int arg1);
extern u16 *ov01_021F9318(LocalMapObject *object);
extern int ov01_021FA28C(int arg0);
extern int ov01_021FA2A0(int arg0);

int ov01_021F9EC4(UnkStruct_Ov01_021F944C *arg0, int arg1);
int ov01_021F9EEC(UnkStruct_Ov01_021F944C *arg0, int arg1);
int ov01_021F9F14(UnkStruct_Ov01_021F944C *arg0, int arg1);
void ov01_021F9F3C(UnkStruct_Ov01_021F944C *arg0, int arg1);
void ov01_021F9F54(UnkStruct_Ov01_021F944C *arg0, int arg1);
void ov01_021F9F6C(UnkStruct_Ov01_021F944C *arg0, int arg1);
void ov01_021F9F84(UnkStruct_Ov01_021F944C *arg0, int arg1);
int ov01_021F9FCC(MapObjectManager *manager, int spriteId, LocalMapObject *exclude);
int ov01_021FA01C(MapObjectManager *manager, int arg1, LocalMapObject *exclude);
int ov01_021FA094(MapObjectManager *manager, int arg1, LocalMapObject *exclude);
void ov01_021FA1C8(UnkStruct_Ov01_021F944C *arg0, void *arg1);
void ov01_021FA1D8(UnkStruct_Ov01_021F944C *arg0, int arg1);
void *ov01_021FA1DC(UnkStruct_Ov01_021F944C *arg0);
void *ov01_021FA1E4(UnkStruct_Ov01_021F944C *arg0);
void ov01_021FA1EC(UnkStruct_Ov01_021F944C *arg0, GF_3DGfxRawResMan *arg1);
GF_3DGfxRawResMan *ov01_021FA1F4(UnkStruct_Ov01_021F944C *arg0);
int *ov01_021FA1FC(UnkStruct_Ov01_021F944C *arg0);
int *ov01_021FA200(UnkStruct_Ov01_021F944C *arg0);
int *ov01_021FA204(UnkStruct_Ov01_021F944C *arg0);
void ov01_021FA208(UnkStruct_Ov01_021F944C *arg0, int arg1);
int ov01_021FA20C(UnkStruct_Ov01_021F944C *arg0);
void ov01_021FA210(UnkStruct_Ov01_021F944C *arg0, int arg1);
int ov01_021FA214(UnkStruct_Ov01_021F944C *arg0);
void ov01_021FA218(UnkStruct_Ov01_021F944C *arg0, int arg1);
int ov01_021FA21C(UnkStruct_Ov01_021F944C *arg0);
void ov01_021FA220(UnkStruct_Ov01_021F944C *arg0, int arg1);
int ov01_021FA224(UnkStruct_Ov01_021F944C *arg0);

int ov01_021F9EC4(UnkStruct_Ov01_021F944C *arg0, int arg1) {
    if (ov01_021F9D88(arg0, arg1) == 1) {
        return 0;
    }
    if (ov01_021F9E9C(arg0, arg1) == 1) {
        return 1;
    }
    return 2;
}

int ov01_021F9EEC(UnkStruct_Ov01_021F944C *arg0, int arg1) {
    if (ov01_021F9B38(arg0, arg1) == 1) {
        return 0;
    }
    if (ov01_021F9B84(arg0, arg1) == 1) {
        return 1;
    }
    return 2;
}

int ov01_021F9F14(UnkStruct_Ov01_021F944C *arg0, int arg1) {
    if (ov01_021F9C5C(arg0, arg1) == 1) {
        return 0;
    }
    if (ov01_021F9CA8(arg0, arg1) == 1) {
        return 1;
    }
    return 2;
}

void ov01_021F9F3C(UnkStruct_Ov01_021F944C *arg0, int arg1) {
    if (ov01_021F9DA4(arg0, arg1) == 0) {
        ov01_021F9974(arg0, arg1);
    }
}

void ov01_021F9F54(UnkStruct_Ov01_021F944C *arg0, int arg1) {
    if (ov01_021F9EEC(arg0, arg1) == 2) {
        ov01_021F99D0(arg0, arg1);
    }
}

void ov01_021F9F6C(UnkStruct_Ov01_021F944C *arg0, int arg1) {
    if (ov01_021F9F14(arg0, arg1) == 2) {
        ov01_021F9A44(arg0, arg1);
    }
}

void ov01_021F9F84(UnkStruct_Ov01_021F944C *arg0, int arg1) {
    ov01_021F9F54(arg0, ov01_021FA28C(arg1));
    ov01_021F9F6C(arg0, ov01_021FA2A0(arg1));
    ov01_021F9F3C(arg0, arg1);
}

void ov01_021F9FB0(MapObjectManager *manager, void *arg1) {
    ov01_021F9BD4(manager, arg1);
    ov01_021F9CF8(manager, arg1);
    ov01_021F9E30(manager, arg1);
}

int ov01_021F9FCC(MapObjectManager *manager, int spriteId, LocalMapObject *exclude) {
    s32 index = 0;
    LocalMapObject *object = NULL;

    while (MapObjectManager_GetNextObjectWithFlagFromIndex(manager, &object, &index, MAPOBJECTFLAG_ACTIVE) == TRUE) {
        if (exclude != NULL && exclude == object) {
            continue;
        }
        if (MapObject_GetSpriteID(object) == spriteId) {
            return 1;
        }
    }
    return 0;
}

int ov01_021FA01C(MapObjectManager *manager, int arg1, LocalMapObject *exclude) {
    int spriteId;
    s32 index = 0;
    LocalMapObject *object = NULL;

    while (MapObjectManager_GetNextObjectWithFlagFromIndex(manager, &object, &index, MAPOBJECTFLAG_ACTIVE) == TRUE) {
        if (exclude != NULL && exclude == object) {
            continue;
        }
        spriteId = MapObject_GetSpriteID(object);
        if (spriteId == UNK_OV01_021F944C_NO_SPRITE) {
            continue;
        }
        if ((*ov01_021F9318(object) & 0xF) != 1) {
            continue;
        }
        if (spriteId == UNK_OV01_021F944C_NO_SPRITE) {
            continue;
        }
        if (arg1 == ov01_021FA28C(spriteId)) {
            return 1;
        }
    }
    return 0;
}

int ov01_021FA094(MapObjectManager *manager, int arg1, LocalMapObject *exclude) {
    int spriteId = 0;
    s32 index = 0;
    LocalMapObject *object = NULL;

    while (MapObjectManager_GetNextObjectWithFlagFromIndex(manager, &object, &index, MAPOBJECTFLAG_ACTIVE) == TRUE) {
        if (exclude != NULL && object == exclude) {
            continue;
        }
        if (spriteId == UNK_OV01_021F944C_NO_SPRITE) {
            continue;
        }
        if ((*ov01_021F9318(object) & 0xF) != 1) {
            continue;
        }
        spriteId = MapObject_GetSpriteID(object);
        if (spriteId == UNK_OV01_021F944C_NO_SPRITE) {
            continue;
        }
        if (arg1 == ov01_021FA2A0(spriteId)) {
            return 1;
        }
    }
    return 0;
}

void ov01_021FA108(MapObjectManager *mgr, int gfxId, LocalMapObject *mapObject) {
    UnkStruct_Ov01_021F944C *data = sub_0205F1A0(mgr);
    int id = ov01_021FA28C(gfxId);

    if (ov01_021F9EEC(data, id) == 1) {
        if (ov01_021FA01C(mgr, id, mapObject) == 0) {
            ov01_021FC588(data->unkF8, id);
            ov01_021F9BAC(data, id);
        }
    }

    id = ov01_021FA2A0(gfxId);
    if (ov01_021F9F14(data, id) == 1) {
        if (ov01_021FA094(mgr, id, mapObject) == 0) {
            ov01_021FC588(data->unkFC, id);
            ov01_021F9CD0(data, id);
        }
    }

    if (ov01_021F9EC4(data, gfxId) == 1) {
        if (ov01_021F9FCC(mgr, gfxId, mapObject) == 0) {
            GF3dGfxRawResMan_FreeObjById(ov01_021FA1F4(data), gfxId);
            ov01_021F9E04(data, gfxId);
            ov01_021FA4F0(data, gfxId);
            ov01_021FA6A4(data, gfxId);
        }
    }
}

void ov01_021FA1C8(UnkStruct_Ov01_021F944C *arg0, void *arg1) {
    arg0->unkE0 = arg1;
}

void *ov01_021FA1D0(void *arg0) {
    return ((UnkStruct_Ov01_021F944C *)arg0)->unkE0;
}

void ov01_021FA1D8(UnkStruct_Ov01_021F944C *arg0, int arg1) {
    arg0->unk4 = arg1;
}

void *ov01_021FA1DC(UnkStruct_Ov01_021F944C *arg0) {
    return arg0->unkE8;
}

void *ov01_021FA1E4(UnkStruct_Ov01_021F944C *arg0) {
    return arg0->unkEC;
}

void ov01_021FA1EC(UnkStruct_Ov01_021F944C *arg0, GF_3DGfxRawResMan *arg1) {
    arg0->unkF0 = arg1;
}

GF_3DGfxRawResMan *ov01_021FA1F4(UnkStruct_Ov01_021F944C *arg0) {
    return arg0->unkF0;
}

int *ov01_021FA1FC(UnkStruct_Ov01_021F944C *arg0) {
    return arg0->unk60;
}

int *ov01_021FA200(UnkStruct_Ov01_021F944C *arg0) {
    return arg0->unk20;
}

int *ov01_021FA204(UnkStruct_Ov01_021F944C *arg0) {
    return arg0->unk40;
}

void ov01_021FA208(UnkStruct_Ov01_021F944C *arg0, int arg1) {
    arg0->unk8 = arg1;
}

int ov01_021FA20C(UnkStruct_Ov01_021F944C *arg0) {
    return arg0->unk8;
}

void ov01_021FA210(UnkStruct_Ov01_021F944C *arg0, int arg1) {
    arg0->unkC = arg1;
}

int ov01_021FA214(UnkStruct_Ov01_021F944C *arg0) {
    return arg0->unkC;
}

void ov01_021FA218(UnkStruct_Ov01_021F944C *arg0, int arg1) {
    arg0->unk10 = arg1;
}

int ov01_021FA21C(UnkStruct_Ov01_021F944C *arg0) {
    return arg0->unk10;
}

void ov01_021FA220(UnkStruct_Ov01_021F944C *arg0, int arg1) {
    arg0->unk14 = arg1;
}

int ov01_021FA224(UnkStruct_Ov01_021F944C *arg0) {
    return arg0->unk14;
}
