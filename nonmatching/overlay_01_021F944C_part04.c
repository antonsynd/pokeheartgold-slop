#include "global.h"

#include "gf_3d_loader.h"
#include "map_object.h"
#include "unk_02023694.h"

typedef struct UnkStruct_ov01_021FA6E0_Entry {
    int unk_00;
    int unk_04;
    GF_3DGfxRawResMan *unk_08;
} UnkStruct_ov01_021FA6E0_Entry;

typedef struct UnkStruct_ov01_021FA470_Entry {
    u32 unk_00;
    int unk_04;
    int unk_08;
    GF_3DGfxRawResMan *unk_0C;
} UnkStruct_ov01_021FA470_Entry;

typedef struct UnkStruct_ov01_021FA470 {
    s16 unk_00;
    s16 unk_02;
    s16 unk_04;
    u16 unk_06;
    u8 unk_08[4];
    UnkStruct_ov01_021FA470_Entry *unk_0C;
    UnkStruct_ov01_021FA6E0_Entry *unk_10;
} UnkStruct_ov01_021FA470;

typedef struct UnkStruct_ov01_021FA228 {
    u8 unk_00[0x18];
    int unk_18;
    int unk_1C;
    u8 unk_20[0xC0];
    void *unk_E0;
    u8 unk_E4[0xC];
    GF_3DGfxRawResMan *unk_F0;
    void *unk_F4;
    void *unk_F8;
    void *unk_FC;
    UnkStruct_ov01_021FA470 *unk_100;
    void *unk_104;
} UnkStruct_ov01_021FA228;

typedef struct UnkStruct_ov01_02207318 {
    u16 unk_00;
    u8 unk_02;
    u8 unk_03;
    const void *unk_04;
} UnkStruct_ov01_02207318;

typedef struct UnkStruct_ov01_021FA2EC {
    int maxElements;
    int heapID;
} UnkStruct_ov01_021FA2EC;

typedef struct UnkStruct_ov01_021FA31C {
    void *list;
    const void *resources;
    VecFx32 pos;
    VecFx32 scale;
} UnkStruct_ov01_021FA31C;

typedef struct UnkStruct_ov01_021FA370 {
    void *unk_00;
    NNSG3dResTex *unk_04;
    const void *unk_08;
    u8 unk_0C[0x10];
    NNSG3dTexKey unk_1C;
    NNSG3dTexKey unk_20;
    NNSG3dPlttKey unk_24;
} UnkStruct_ov01_021FA370;

extern const ObjectEventGraphicsInfo ov01_022074A8[];
extern const UnkStruct_ov01_02207318 ov01_02207318[];

void *ReadMModelFromNarcInternal(void *narc, u32 fileId, int arg2);
void *sub_020237EC(UnkStruct_ov01_021FA2EC *params);
void sub_02023874(void *list);
Sprite *sub_02023D44(UnkStruct_ov01_021FA31C *template);
void sub_02023E50(Sprite *sprite, VecFx32 *pos);
void sub_02023EE0(Sprite *sprite, int arg1);
void sub_02023F40(Sprite *sprite, int arg1);
int sub_020238F8(void *list);
void sub_02026E18(void *resource, void *dest);
void ov01_021EA3B0(NNSG3dResMdl *model);
void *ov01_021FC5A4(void *heap, int id);
void ov01_021F93AC(LocalMapObject *object, VecFx32 *pos);
void ov01_021F9D5C(UnkStruct_ov01_021FA228 *arg0, int arg1);
void ov01_021F9DD0(UnkStruct_ov01_021FA228 *arg0, int arg1);
void ov01_021FA1C8(UnkStruct_ov01_021FA228 *arg0, void *arg1);
void ov01_021FA1D8(UnkStruct_ov01_021FA228 *arg0, int arg1);
GF_3DGfxRawResMan *ov01_021FA1F4(UnkStruct_ov01_021FA228 *arg0);

void ov01_021FA228(UnkStruct_ov01_021FA228 *arg0, int arg1);
int ov01_021FA22C(UnkStruct_ov01_021FA228 *arg0);
void ov01_021FA230(UnkStruct_ov01_021FA228 *arg0, int arg1);
int ov01_021FA234(UnkStruct_ov01_021FA228 *arg0);
void *FldObjSys_ReadMModelFromNarc(UnkStruct_ov01_021FA228 *arg0, u32 fileId, int arg2);
const UnkStruct_ov01_02207318 *sub_021FA248(int graphicsId);
int ov01_021FA28C(int graphicsId);
int ov01_021FA298(int graphicsId);
int ov01_021FA2A0(int graphicsId);
const void *ov01_021FA2AC(int graphicsId);
void ov01_021FA2B8(LocalMapObject *object, int arg1);
BOOL ov01_021FA2D4(LocalMapObject *object);
void ov01_021FA2EC(UnkStruct_ov01_021FA228 *arg0, int arg1);
void ov01_021FA314(void *list);
Sprite *ov01_021FA31C(void *list, const void *resources, const VecFx32 *pos);
void ov01_021FA370(UnkStruct_ov01_021FA228 *arg0, int graphicsId, UnkStruct_ov01_021FA370 *arg2);
void *ov01_021FA3DC(LocalMapObject *object);
BOOL ov01_021FA3E8(LocalMapObject *object, Sprite *sprite);
void ov01_021FA40C(LocalMapObject *object, Sprite *sprite);
int ov01_021FA44C(int index);
int ov01_021FA458(int index);
int ov01_021FA464(int index);
int ov01_021FA470(UnkStruct_ov01_021FA228 *arg0, int arg1, u32 arg2, int arg3);
void ov01_021FA4F0(UnkStruct_ov01_021FA228 *arg0, int arg1);
int ov01_021FA524(UnkStruct_ov01_021FA228 *arg0, int arg1);
void ov01_021FA564(void *task, void *arg1);
void ov01_021FA61C(UnkStruct_ov01_021FA228 *arg0, int arg1, void *arg2, int arg3);
void ov01_021FA668(UnkStruct_ov01_021FA228 *arg0, int arg1);
void ov01_021FA6A4(UnkStruct_ov01_021FA228 *arg0, int arg1);
void ov01_021FA6E0(void *task, void *arg1);

const VecFx32 ov01_02208B64 = { FX32_ONE, FX32_ONE, FX32_ONE };
const int ov01_02208B70[4] = { 0, 1, 2, 3 };
const int ov01_02208B80[4] = { 4, 5, 6, 7 };
const int ov01_02208B90[4] = { 4, 5, 4, 5 };

void ov01_021FA228(UnkStruct_ov01_021FA228 *arg0, int arg1) {
    arg0->unk_18 = arg1;
}

int ov01_021FA22C(UnkStruct_ov01_021FA228 *arg0) {
    return arg0->unk_18;
}

void ov01_021FA230(UnkStruct_ov01_021FA228 *arg0, int arg1) {
    arg0->unk_1C = arg1;
}

int ov01_021FA234(UnkStruct_ov01_021FA228 *arg0) {
    return arg0->unk_1C;
}

void *FldObjSys_ReadMModelFromNarc(UnkStruct_ov01_021FA228 *arg0, u32 fileId, int arg2) {
    return ReadMModelFromNarcInternal(arg0->unk_104, fileId, arg2);
}

const UnkStruct_ov01_02207318 *sub_021FA248(int graphicsId) {
    const ObjectEventGraphicsInfo *info = ov01_022074A8;

    do {
        if (info->spriteId == graphicsId) {
            GF_ASSERT(info->unk4_10 != 0xFF);
            return &ov01_02207318[info->unk4_10];
        }

        info++;
    } while (info->spriteId != 0xFFFF);

    GF_ASSERT(FALSE);
    return NULL;
}

int ov01_021FA28C(int graphicsId) {
    return sub_021FA248(graphicsId)->unk_02;
}

int ov01_021FA298(int graphicsId) {
    return ov01_021FA28C(graphicsId);
}

int ov01_021FA2A0(int graphicsId) {
    return sub_021FA248(graphicsId)->unk_03;
}

const void *ov01_021FA2AC(int graphicsId) {
    return sub_021FA248(graphicsId)->unk_04;
}

void ov01_021FA2B8(LocalMapObject *object, int arg1) {
    if (arg1 == 1) {
        MapObject_SetFlagsBits(object, MAPOBJECTFLAG_UNK22);
    } else {
        MapObject_ClearFlagsBits(object, MAPOBJECTFLAG_UNK22);
    }
}

BOOL ov01_021FA2D4(LocalMapObject *object) {
    if (MapObject_GetFlagsBitsMask(object, MAPOBJECTFLAG_UNK22)) {
        return TRUE;
    }

    return FALSE;
}

void ov01_021FA2EC(UnkStruct_ov01_021FA228 *arg0, int arg1) {
    UnkStruct_ov01_021FA2EC params;
    void *list;

    params.maxElements = arg1;
    params.heapID = HEAP_ID_FIELD1;

    list = sub_020237EC(&params);
    ov01_021FA1C8(arg0, list);
    ov01_021FA1D8(arg0, arg1);
}

void ov01_021FA314(void *list) {
    sub_02023874(list);
}

Sprite *ov01_021FA31C(void *list, const void *resources, const VecFx32 *pos) {
    UnkStruct_ov01_021FA31C template;
    Sprite *billboard;
    VecFx32 scale = ov01_02208B64;

    template.list = list;
    template.resources = resources;
    template.pos = *pos;
    template.scale = scale;

    billboard = sub_02023D44(&template);

    if (billboard != NULL) {
        sub_02023EA4(billboard, 0);
        sub_02023EE0(billboard, 0);
        sub_02023F40(billboard, 0);
        ov01_021EA3B0(sub_02023F90(billboard));
    }

    return billboard;
}

void ov01_021FA370(UnkStruct_ov01_021FA228 *arg0, int graphicsId, UnkStruct_ov01_021FA370 *arg2) {
    GF_3DGfxRawResObj *texture;

    arg2->unk_00 = ov01_021FC5A4(arg0->unk_F8, ov01_021FA28C(graphicsId));
    sub_02026E18(ov01_021FC5A4(arg0->unk_FC, ov01_021FA2A0(graphicsId)), arg2->unk_0C);

    texture = GF3dGfxRawResMan_GetObjById(ov01_021FA1F4(arg0), graphicsId);
    arg2->unk_04 = GF3dGfxRawResObj_GetTex(texture);
    arg2->unk_1C = GF3dGfxRawResObj_GetTexKey(texture);
    arg2->unk_20 = GF3dGfxRawResObj_GetTex4x4Key(texture);
    arg2->unk_24 = GF3dGfxRawResObj_GetPlttKey(texture);
    arg2->unk_08 = ov01_021FA2AC(graphicsId);
}

void *ov01_021FA3DC(LocalMapObject *object) {
    return sub_0205F1A0(MapObject_GetManager(object));
}

BOOL ov01_021FA3E8(LocalMapObject *object, Sprite *sprite) {
    VecFx32 pos;

    ov01_021F93AC(object, &pos);
    pos.z += 6 * FX32_ONE;
    sub_02023E50(sprite, &pos);

    return FALSE;
}

void ov01_021FA40C(LocalMapObject *object, Sprite *sprite) {
    int visible = 1;

    if (MapObject_TestFlagsBits(object, MAPOBJECTFLAG_VISIBLE) == 1) {
        visible = 0;
    }

    if (MapObject_TestFlagsBits(object, MAPOBJECTFLAG_UNK12) == 1) {
        if (!MapObject_TestFlagsBits(object, MAPOBJECTFLAG_UNK13)) {
            visible = 0;
        }
    }

    sub_02023EA4(sprite, visible);
}

int ov01_021FA44C(int index) {
    return ov01_02208B70[index];
}

int ov01_021FA458(int index) {
    return ov01_02208B80[index];
}

int ov01_021FA464(int index) {
    return ov01_02208B90[index];
}

int ov01_021FA470(UnkStruct_ov01_021FA228 *arg0, int arg1, u32 arg2, int arg3) {
    UnkStruct_ov01_021FA470 *queue = arg0->unk_100;

    if (queue->unk_04 >= queue->unk_02 || sub_020238F8(arg0->unk_E0) == 1) {
        int i = 0;
        UnkStruct_ov01_021FA470_Entry *entry = queue->unk_0C;

        while (i < queue->unk_00) {
            if (entry->unk_0C == NULL) {
                entry->unk_0C = arg0->unk_F0;
                entry->unk_08 = arg3;
                entry->unk_04 = arg1;
                entry->unk_00 = arg2;
                return 0;
            }

            i++;
            entry++;
        }

        GF_ASSERT(FALSE);
        return 0;
    }

    {
        void *model = FldObjSys_ReadMModelFromNarc(arg0, arg2, 0);

        ov01_021FA61C(arg0, arg1, model, arg3);
        queue->unk_04++;
        return 1;
    }
}

void ov01_021FA4F0(UnkStruct_ov01_021FA228 *arg0, int arg1) {
    int i = 0;
    UnkStruct_ov01_021FA470 *queue = arg0->unk_100;
    UnkStruct_ov01_021FA470_Entry *entry = queue->unk_0C;

    while (i < queue->unk_00) {
        if (entry->unk_04 == arg1 && entry->unk_0C != NULL) {
            entry->unk_0C = NULL;
            return;
        }

        i++;
        entry++;
    }
}

int ov01_021FA524(UnkStruct_ov01_021FA228 *arg0, int arg1) {
    int i = 0;
    UnkStruct_ov01_021FA470 *queue = arg0->unk_100;
    UnkStruct_ov01_021FA470_Entry *entry = queue->unk_0C;

    while (i < queue->unk_00) {
        if (entry->unk_04 == arg1 && entry->unk_0C != NULL) {
            if (entry->unk_08 == 0) {
                return 3;
            }

            return 4;
        }

        i++;
        entry++;
    }

    return 0;
}

void ov01_021FA564(void *task, void *arg1) {
    int i = 0;
    UnkStruct_ov01_021FA228 *manager = arg1;
    UnkStruct_ov01_021FA470 *queue = manager->unk_100;
    UnkStruct_ov01_021FA470_Entry *entries = queue->unk_0C;

    if (sub_020238F8(manager->unk_E0) == 1) {
        return;
    }

    while (queue->unk_04 < queue->unk_02 && i < queue->unk_00) {
        if (entries->unk_0C != NULL) {
            void *model = FldObjSys_ReadMModelFromNarc(manager, entries->unk_00, 0);

            ov01_021FA61C(manager, entries->unk_04, model, entries->unk_08);
            entries->unk_0C = NULL;
            queue->unk_04++;
        }

        entries++;
        i++;
    }

    {
        int j;

        entries = queue->unk_0C;

        for (i = 0; i < queue->unk_00 - 1; i++) {
            if (entries[i].unk_0C == NULL) {
                for (j = i + 1; j < queue->unk_00; j++) {
                    if (entries[j].unk_0C != NULL) {
                        entries[i] = entries[j];
                        entries[j].unk_0C = NULL;
                        break;
                    }
                }
            }
        }
    }

    queue->unk_04 = 0;
}

void ov01_021FA61C(UnkStruct_ov01_021FA228 *arg0, int arg1, void *arg2, int arg3) {
    GF_3DGfxRawResObj *resource = GF3dGfxRawResMan_AllocObjAndKeys(arg0->unk_F0, arg2, arg1, TRUE, HEAP_ID_FIELD1);

    GF_ASSERT(resource != NULL);
    ov01_021FA668(arg0, arg1);

    if (arg3 == 0) {
        ov01_021F9D5C(arg0, arg1);
    } else {
        ov01_021F9DD0(arg0, arg1);
    }
}

void ov01_021FA668(UnkStruct_ov01_021FA228 *arg0, int arg1) {
    int i = 0;
    UnkStruct_ov01_021FA470 *queue = arg0->unk_100;
    UnkStruct_ov01_021FA6E0_Entry *entry = queue->unk_10;

    queue->unk_06 = 1;

    while (i < queue->unk_00) {
        if (entry->unk_08 == NULL) {
            entry->unk_08 = arg0->unk_F0;
            entry->unk_04 = arg1;
            entry->unk_00 = 0;

            queue->unk_06 = 0;
            return;
        }

        entry++;
        i++;
    }

    GF_ASSERT(FALSE);
}

void ov01_021FA6A4(UnkStruct_ov01_021FA228 *arg0, int arg1) {
    int i = 0;
    UnkStruct_ov01_021FA470 *queue = arg0->unk_100;
    UnkStruct_ov01_021FA6E0_Entry *entry = queue->unk_10;

    queue->unk_06 = 1;

    while (i < queue->unk_00) {
        if (entry->unk_08 != NULL && entry->unk_04 == arg1) {
            entry->unk_08 = NULL;
            entry->unk_00 = 0;
            break;
        }

        entry++;
        i++;
    }

    queue->unk_06 = 0;
}

void ov01_021FA6E0(void *task, void *arg1) {
    UnkStruct_ov01_021FA228 *manager = arg1;
    UnkStruct_ov01_021FA470 *queue = manager->unk_100;

    if (queue->unk_06 == 1) {
        return;
    }

    {
        int i = 0;
        UnkStruct_ov01_021FA6E0_Entry *entry = queue->unk_10;

        while (i < queue->unk_00) {
            if (entry->unk_00 == 0 && entry->unk_08 != NULL) {
                GF3dGfxRawResMan_LoadObjTexById(entry->unk_08, entry->unk_04);
                entry->unk_00 = 1;
            }

            entry++;
            i++;
        }
    }
}
