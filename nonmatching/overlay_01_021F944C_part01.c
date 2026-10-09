#include "global.h"

#include "gf_3d_loader.h"
#include "heap.h"
#include "map_object.h"
#include "overlay_01_021F944C.h"

#define UNK_OV01_021F944C_EMPTY_SHORT 0xFF
#define UNK_OV01_021F944C_EMPTY_LONG  0xFFFF

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
    void *unk100;
    MapObjectManager *unk104;
} UnkStruct_Ov01_021F944C;

typedef struct UnkOv01_Resources {
    u32 unk[10];
} UnkOv01_Resources;

typedef struct UnkOv01_ResourceSlot {
    u32 id;
    UnkOv01_Resources *resources;
} UnkOv01_ResourceSlot;

typedef struct UnkOv01_GfxEntry {
    u16 id;
    u16 narcIdx;
} UnkOv01_GfxEntry;

typedef struct UnkOv01_SpriteState {
    u32 unk0;
    u8 unk4[2];
    u16 unk6;
    u32 unk8;
} UnkOv01_SpriteState;

extern const int ov01_02206CF0[];
extern const int ov01_02207260[];
extern const UnkOv01_GfxEntry ov01_02207294[];

extern void sub_02023DA4(Sprite *sprite);
extern u32 sub_02023EB8(Sprite *sprite);
extern u16 sub_02023EF4(Sprite *sprite);
extern u32 sub_02023F30(Sprite *sprite);
extern void sub_02023EA4(Sprite *sprite, u8 arg1);
extern void sub_02023EE0(Sprite *sprite, u16 arg1);
extern void sub_02023F1C(Sprite *sprite, u32 arg1);
extern void GF3dGfxRawResMan_Destroy(GF_3DGfxRawResMan *man);
extern s32 GetMoveModelNoBySpriteId(u32 spriteId);

extern void ov01_021F93AC(LocalMapObject *object, VecFx32 *pos);
extern void ov01_021F9A8C(UnkStruct_Ov01_021F944C *data, const int *arg1, const int *arg2, const int *arg3);
extern void ov01_021F9B00(UnkStruct_Ov01_021F944C *data);
extern void ov01_021F9B10(UnkStruct_Ov01_021F944C *data, int id);
extern void ov01_021F9B54(UnkStruct_Ov01_021F944C *data, int id);
extern void ov01_021F9C24(UnkStruct_Ov01_021F944C *data);
extern void ov01_021F9D48(UnkStruct_Ov01_021F944C *data);
extern int ov01_021F9DA4(UnkStruct_Ov01_021F944C *data, int id);
extern void ov01_021F9F84(UnkStruct_Ov01_021F944C *data, int id);
extern void *ov01_021FA1DC(UnkStruct_Ov01_021F944C *data);
extern void ov01_021FA1EC(UnkStruct_Ov01_021F944C *data, GF_3DGfxRawResMan *resMan);
extern GF_3DGfxRawResMan *ov01_021FA1F4(UnkStruct_Ov01_021F944C *data);
extern void ov01_021FA208(UnkStruct_Ov01_021F944C *data, int value);
extern void ov01_021FA210(UnkStruct_Ov01_021F944C *data, int value);
extern void ov01_021FA218(UnkStruct_Ov01_021F944C *data, int value);
extern void ov01_021FA220(UnkStruct_Ov01_021F944C *data, int value);
extern void ov01_021FA228(UnkStruct_Ov01_021F944C *data, int value);
extern void ov01_021FA230(UnkStruct_Ov01_021F944C *data, int value);
extern void ov01_021FA2EC(UnkStruct_Ov01_021F944C *data, int count);
extern void ov01_021FA314(void *list);
extern Sprite *ov01_021FA31C(void *list, UnkOv01_Resources *resources, VecFx32 *pos);
extern void ov01_021FA370(UnkStruct_Ov01_021F944C *data, int id, UnkOv01_Resources *resources);
extern UnkStruct_Ov01_021F944C *ov01_021FA3DC(LocalMapObject *object);
extern int ov01_021FA470(UnkStruct_Ov01_021F944C *data, int id, int narcIdx, int arg3);
extern int ov01_021FA524(UnkStruct_Ov01_021F944C *data, int id);
extern void ov01_021FA75C(UnkStruct_Ov01_021F944C *data, LocalMapObject *object, Sprite **sprite, int id);
extern void ov01_021FA798(UnkStruct_Ov01_021F944C *data, LocalMapObject *object);
extern void ov01_021FA854(UnkStruct_Ov01_021F944C *data, int count, int arg2);
extern void ov01_021FA8F8(UnkStruct_Ov01_021F944C *data);
extern void *ov01_021FC4C4(int heapId, int heapId2, u32 size, int count);
extern void ov01_021FC520(void *heap);
extern BOOL ov01_021FC5B8(void *heap, int id);
extern void ov01_021FC5CC(void *heap, int id, NARC *narc, int narcIdx, int arg4);

void ov01_021F944C(UnkStruct_Ov01_021F944C *data, MapObjectManager *manager, int arg2, int arg3, int arg4, int arg5, const int *arg6, int arg7);
void ov01_021F94A0(UnkStruct_Ov01_021F944C *data);
int ov01_021F94C0(LocalMapObject *object, Sprite **sprite, int id);
int ov01_021F9510(LocalMapObject *object, Sprite **sprite);
Sprite *ov01_021F9528(LocalMapObject *object, int id);
void ov01_021F9574(LocalMapObject *object, Sprite **sprite, int id);
void ov01_021F95A8(LocalMapObject *object, Sprite **sprite);
void ov01_021F95CC(LocalMapObject *object, Sprite **sprite, int id);
void ov01_021F9610(Sprite *sprite, UnkOv01_SpriteState *state);
void ov01_021F9630(Sprite *sprite, UnkOv01_SpriteState *state);
void ov01_021F9654(LocalMapObject *object, Sprite **sprite, int id);
void ov01_021F9688(LocalMapObject *object);
void ov01_021F9698(UnkStruct_Ov01_021F944C *data, int count);
void ov01_021F96E4(UnkStruct_Ov01_021F944C *data);
UnkOv01_Resources *ov01_021F9704(UnkStruct_Ov01_021F944C *data, u32 id);
BOOL ov01_021F9744(MapObjectManager *manager, u32 id, UnkOv01_Resources *dest);
void ov01_021F9778(UnkStruct_Ov01_021F944C *data, u32 id);
void ov01_021F9798(UnkStruct_Ov01_021F944C *data);
BOOL ov01_021F97BC(MapObjectManager *manager, LocalMapObject *exclude, u32 spriteId);
void ov01_021F9808(UnkStruct_Ov01_021F944C *data, int arg1, int arg2, int arg3, int arg4, int arg5, int arg6);
void ov01_021F9890(UnkStruct_Ov01_021F944C *data);
const UnkOv01_GfxEntry *ov01_021F98B4(int id, int terminator, const UnkOv01_GfxEntry *table);
int ov01_021F98CC(UnkStruct_Ov01_021F944C *data, void *heap, int id, int terminator, const UnkOv01_GfxEntry *table);
int ov01_021F9918(UnkStruct_Ov01_021F944C *data, int arg1, int id);
int ov01_021F9968(UnkStruct_Ov01_021F944C *data, int id);
int ov01_021F9974(UnkStruct_Ov01_021F944C *data, int id);
void ov01_021F9980(UnkStruct_Ov01_021F944C *data, const int *list);
void ov01_021F99A4(UnkStruct_Ov01_021F944C *data, int id);
void ov01_021F99D0(UnkStruct_Ov01_021F944C *data, int id);
void ov01_021F99FC(UnkStruct_Ov01_021F944C *data, const int *list);

void ov01_021F944C(UnkStruct_Ov01_021F944C *data, MapObjectManager *manager, int arg2, int arg3, int arg4, int arg5, const int *arg6, int arg7) {
    data->unk104 = manager;

    ov01_021FA2EC(data, arg2);
    ov01_021FA854(data, arg2, arg7);
    ov01_021F9808(data, 8, 4, 8, 4, arg4, arg5);
    ov01_021F9698(data, arg2);
    ov01_021F9A8C(data, arg6, ov01_02207260, ov01_02206CF0);
}

void ov01_021F94A0(UnkStruct_Ov01_021F944C *data) {
    ov01_021FA8F8(data);
    ov01_021F96E4(data);
    ov01_021FA314(ov01_021FA1D0(data));
    ov01_021F9890(data);
}

int ov01_021F94C0(LocalMapObject *object, Sprite **sprite, int id) {
    int result;
    UnkStruct_Ov01_021F944C *data;

    *sprite = NULL;

    data = ov01_021FA3DC(object);
    result = ov01_021F9DA4(data, id);

    if (result == 0) {
        ov01_021F9654(object, sprite, id);
        return result;
    }

    if (result == 3 || result == 4) {
        ov01_021FA75C(data, object, sprite, id);
        return result;
    }

    *sprite = ov01_021F9528(object, id);
    return result;
}

int ov01_021F9510(LocalMapObject *object, Sprite **sprite) {
    int id = MapObject_GetSpriteID(object);
    return ov01_021F94C0(object, sprite, id);
}

Sprite *ov01_021F9528(LocalMapObject *object, int id) {
    VecFx32 pos;
    void *list;
    Sprite *sprite;
    UnkOv01_Resources *resources;
    UnkStruct_Ov01_021F944C *data = ov01_021FA3DC(object);

    list = ov01_021FA1D0(data);

    ov01_021F9F84(data, id);
    resources = ov01_021F9704(data, id);

    GF_ASSERT(resources != NULL);

    ov01_021F93AC(object, &pos);
    sprite = ov01_021FA31C(list, resources, &pos);

    GF_ASSERT(sprite != NULL);

    return sprite;
}

void ov01_021F9574(LocalMapObject *object, Sprite **sprite, int id) {
    int inUse;

    sub_02023DA4(*sprite);
    *sprite = NULL;

    inUse = ov01_021F97BC(MapObject_GetManager(object), object, id);

    if (inUse == 0) {
        ov01_021F9778(ov01_021FA3DC(object), id);
    }
}

void ov01_021F95A8(LocalMapObject *object, Sprite **sprite) {
    ov01_021F9688(object);

    if (*sprite != NULL) {
        ov01_021F9574(object, sprite, MapObject_GetSpriteID(object));
    }
}

void ov01_021F95CC(LocalMapObject *object, Sprite **sprite, int id) {
    int inUse;

    ov01_021F9688(object);

    if (*sprite != NULL) {
        sub_02023DA4(*sprite);
        *sprite = NULL;
    }

    if (id != UNK_OV01_021F944C_EMPTY_LONG) {
        inUse = ov01_021F97BC(MapObject_GetManager(object), object, id);

        if (inUse == 0) {
            ov01_021F9778(ov01_021FA3DC(object), id);
        }
    }
}

void ov01_021F9610(Sprite *sprite, UnkOv01_SpriteState *state) {
    state->unk0 = sub_02023EB8(sprite);
    state->unk6 = sub_02023EF4(sprite);
    state->unk8 = sub_02023F30(sprite);
}

void ov01_021F9630(Sprite *sprite, UnkOv01_SpriteState *state) {
    sub_02023EA4(sprite, state->unk0);
    sub_02023EE0(sprite, state->unk6);
    sub_02023F1C(sprite, state->unk8);
}

void ov01_021F9654(LocalMapObject *object, Sprite **sprite, int id) {
    UnkStruct_Ov01_021F944C *data = ov01_021FA3DC(object);

    if (ov01_021F9974(data, id) == 0) {
        *sprite = ov01_021F9528(object, id);
    } else {
        ov01_021FA75C(data, object, sprite, id);
    }
}

void ov01_021F9688(LocalMapObject *object) {
    UnkStruct_Ov01_021F944C *data = ov01_021FA3DC(object);

    ov01_021FA798(data, object);
}

void ov01_021F9698(UnkStruct_Ov01_021F944C *data, int count) {
    UnkOv01_Resources *resources;
    UnkOv01_ResourceSlot *slots;

    resources = Heap_Alloc(HEAP_ID_FIELD1, sizeof(UnkOv01_Resources) * count);
    data->unkE4 = resources;
    GF_ASSERT(resources != NULL);

    slots = Heap_Alloc(HEAP_ID_FIELD1, sizeof(UnkOv01_ResourceSlot) * count);
    data->unkF4 = slots;
    GF_ASSERT(slots != NULL);

    do {
        slots->id = UNK_OV01_021F944C_EMPTY_LONG;
        slots->resources = resources;
        slots++;
        resources++;
        count--;
    } while (count);
}

void ov01_021F96E4(UnkStruct_Ov01_021F944C *data) {
    ov01_021F9798(data);

    Heap_FreeExplicit(HEAP_ID_FIELD1, data->unkE4);
    Heap_FreeExplicit(HEAP_ID_FIELD1, data->unkF4);
}

UnkOv01_Resources *ov01_021F9704(UnkStruct_Ov01_021F944C *data, u32 id) {
    int count;
    int total;
    UnkOv01_ResourceSlot *slots = data->unkF4;
    UnkOv01_ResourceSlot *slot;

    total = data->unk4;
    slot = slots;
    count = total;

    do {
        if (slot->id == id) {
            return slot->resources;
        }
        slot++;
        count--;
    } while (count);

    count = total;

    do {
        if (slots->id == UNK_OV01_021F944C_EMPTY_LONG) {
            slots->id = id;
            ov01_021FA370(data, id, slots->resources);
            return slots->resources;
        }
        slots++;
        count--;
    } while (count);

    return NULL;
}

BOOL ov01_021F9744(MapObjectManager *manager, u32 id, UnkOv01_Resources *dest) {
    int count;
    UnkStruct_Ov01_021F944C *data = sub_0205F1A0(manager);
    UnkOv01_ResourceSlot *slots = data->unkF4;

    count = data->unk4;

    do {
        if (slots->id == id) {
            *dest = *slots->resources;
            return TRUE;
        }
        slots++;
        count--;
    } while (count);

    return FALSE;
}

void ov01_021F9778(UnkStruct_Ov01_021F944C *data, u32 id) {
    int count;
    UnkOv01_ResourceSlot *slots = data->unkF4;

    count = data->unk4;

    do {
        if (slots->id == id) {
            slots->id = UNK_OV01_021F944C_EMPTY_LONG;
            return;
        }
        slots++;
        count--;
    } while (count);
}

void ov01_021F9798(UnkStruct_Ov01_021F944C *data) {
    int count;
    UnkOv01_ResourceSlot *slots = data->unkF4;

    count = data->unk4;

    do {
        if (slots->id != UNK_OV01_021F944C_EMPTY_LONG) {
            slots->id = UNK_OV01_021F944C_EMPTY_LONG;
        }
        slots++;
        count--;
    } while (count);
}

BOOL ov01_021F97BC(MapObjectManager *manager, LocalMapObject *exclude, u32 spriteId) {
    u32 count = MapObjectManager_GetObjectCount(manager);
    LocalMapObject *object = MapObjectManager_GetObjects2(manager);

    do {
        if (object != exclude && MapObject_CheckActive(object) == TRUE) {
            u32 id = MapObject_GetSpriteID(object);

            if (id != UNK_OV01_021F944C_EMPTY_LONG && id == spriteId) {
                return TRUE;
            }
        }
        MapObjectArray_NextObject(&object);
        count--;
    } while (count);

    return FALSE;
}

void ov01_021F9808(UnkStruct_Ov01_021F944C *data, int arg1, int arg2, int arg3, int arg4, int arg5, int arg6) {
    GF_3DGfxRawResMan *resMan;

    data->unkF8 = ov01_021FC4C4(HEAP_ID_FIELD1, 63, arg1 << 12, arg1);
    ov01_021F9B00(data);
    ov01_021FA208(data, arg2);
    ov01_021FA210(data, arg1 - arg2);

    data->unkFC = ov01_021FC4C4(HEAP_ID_FIELD1, 64, arg3 << 7, arg3);
    ov01_021F9C24(data);
    ov01_021FA218(data, arg4);
    ov01_021FA220(data, arg3 - arg4);

    resMan = GF3dGfxRawResMan_Create(arg5, HEAP_ID_FIELD1);
    ov01_021FA1EC(data, resMan);
    ov01_021F9D48(data);
    ov01_021FA228(data, arg6);
    ov01_021FA230(data, arg5 - arg6);
}

void ov01_021F9890(UnkStruct_Ov01_021F944C *data) {
    ov01_021FC520(data->unkF8);
    ov01_021FC520(data->unkFC);
    GF3dGfxRawResMan_Destroy(ov01_021FA1F4(data));
}

const UnkOv01_GfxEntry *ov01_021F98B4(int id, int terminator, const UnkOv01_GfxEntry *table) {
    do {
        if (table->id == id) {
            return table;
        }
        table++;
    } while (table->id != terminator);

    return NULL;
}

int ov01_021F98CC(UnkStruct_Ov01_021F944C *data, void *heap, int id, int terminator, const UnkOv01_GfxEntry *table) {
    const UnkOv01_GfxEntry *entry;

    if (ov01_021FC5B8(heap, id) == TRUE) {
        return 0;
    }

    entry = ov01_021F98B4(id, terminator, table);
    GF_ASSERT(entry != NULL);

    ov01_021FC5CC(heap, id, MapObjectManager_GetMapModelNarc(data->unk104), entry->narcIdx, 0);
    return 1;
}

int ov01_021F9918(UnkStruct_Ov01_021F944C *data, int arg1, int id) {
    s32 modelNo;

    if (GF3dGfxRawResMan_DoesNotHaveObjWithId(data->unkF0, id) == 0) {
        return 0;
    }

    if (ov01_021FA524(data, id) != 0) {
        return 1;
    }

    modelNo = GetMoveModelNoBySpriteId(id);
    if (modelNo < 0) {
        return 2;
    }

    if (ov01_021FA470(data, id, modelNo, arg1) == 1) {
        return 0;
    }
    return 1;
}

int ov01_021F9968(UnkStruct_Ov01_021F944C *data, int id) {
    return ov01_021F9918(data, 0, id);
}

int ov01_021F9974(UnkStruct_Ov01_021F944C *data, int id) {
    return ov01_021F9918(data, 1, id);
}

void ov01_021F9980(UnkStruct_Ov01_021F944C *data, const int *list) {
    while (*list != UNK_OV01_021F944C_EMPTY_LONG) {
        ov01_021F9968(data, *list);
        list++;
    }
}

void ov01_021F99A4(UnkStruct_Ov01_021F944C *data, int id) {
    ov01_021FA1DC(data);
    ov01_021F98CC(data, data->unkF8, id, UNK_OV01_021F944C_EMPTY_SHORT, ov01_02207294);
    ov01_021F9B10(data, id);
}

void ov01_021F99D0(UnkStruct_Ov01_021F944C *data, int id) {
    ov01_021FA1DC(data);
    ov01_021F98CC(data, data->unkF8, id, UNK_OV01_021F944C_EMPTY_SHORT, ov01_02207294);
    ov01_021F9B54(data, id);
}

void ov01_021F99FC(UnkStruct_Ov01_021F944C *data, const int *list) {
    while (*list != UNK_OV01_021F944C_EMPTY_SHORT) {
        ov01_021F99A4(data, *list);
        list++;
    }
}
