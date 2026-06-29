#include "overlay_01_021F8D80.h"

#include "global.h"

#include "constants/heap.h"

#include "filesystem.h"
#include "filesystem_files_def.h"
#include "heap.h"
#include "map_object.h"
#include "sprite.h"

// Per-object move-model work buffer, returned by sub_0205F40C (LocalMapObject.unk108[0x20]).
typedef struct FieldObjMove {
    /*0x00*/ Sprite *unk00; // move-model 3D resource (NULL = not loaded)
    /*0x04*/ VecFx32 unk04; // cached model position
    /*0x10*/ u32 unk10;     // sub_0205F330 result; overlaps the s8 cell deltas at 0x12/0x13
    /*0x14*/ s8 unk14;
    /*0x15*/ u8 unk15;
    /*0x16*/ u8 unk16;
    /*0x17*/ u8 unk17_0 : 1;
    /*    */ u8 unk17_1 : 1;
    /*    */ u8 unk17_2 : 1;
    /*    */ u8 unk17_rest : 5;
    /*0x18*/ u8 unk18[8];
} FieldObjMove;

// Caller-owned movement-step struct passed as arg2 of ov01_021F8D80 (NOT a sub_0205F40C buffer).
typedef struct UnkStruct_ov01_021F8D80 {
    u8 filler_00[0x10];
    /*0x10*/ s8 unk10;
    u8 filler_11[3];
    /*0x14*/ s8 unk14;
    /*0x15*/ u8 unk15;
    u8 filler_16;
    /*0x17*/ u8 unk17_0 : 1;
    /*    */ u8 unk17_1 : 1;
    /*    */ u8 unk17_2 : 1;
    /*    */ u8 unk17_rest : 5;
} UnkStruct_ov01_021F8D80;

// --- imports (sibling overlays / anim-cell API, still asm) ---
extern void sub_02023EA4(Sprite *sprite, int a1);
extern void sub_02023EE0(Sprite *sprite, int a1);
extern void sub_02023F04(Sprite *sprite, fx32 a1);
extern fx32 sub_02023F30(Sprite *sprite);
extern void sub_02023F40(Sprite *sprite, int a1);
extern int ov01_021FA298(u32 spriteId);
extern BOOL ov01_021FA2D4(LocalMapObject *object);
extern void ov01_021FA3E8(LocalMapObject *object, Sprite *sprite);
extern int ov01_021FA44C(u32 dir);
extern void ov01_021FD9CC(u32 dir, VecFx32 *vec);
extern fx32 ov01_022054E0(LocalMapObject *object);
extern int ov01_02205564(LocalMapObject *object);
extern int ov01_022055B0(LocalMapObject *object);
extern void ov01_02205808(int a0, LocalMapObject *object, Sprite *sprite);
extern void ov01_021F944C(void *fldObjSys, MapObjectManager *manager, u32 objectCount, u32 priority, u32 a4, u32 a5, u32 a6, u32 a7);
extern void ov01_021F94A0(void *fldObjSys);
extern void ov01_021F9510(LocalMapObject *object, FieldObjMove *mv);
extern void ov01_021F95A8(LocalMapObject *object, FieldObjMove *mv);
extern void ov01_021F9610(Sprite *sprite, VecFx32 *vec);
extern void ov01_021F9630(Sprite *sprite, VecFx32 *vec);

extern ObjectEventGraphicsInfo ov01_022074A8[];
extern u16 ov01_02206D00[];

// --- local prototypes (exports kept out of the frozen header; statics) ---
void ov01_021F8D80(LocalMapObject *object, void *animObj, UnkStruct_ov01_021F8D80 *a2, u32 facingDir, BOOL flag);
void ov01_021F8E70(LocalMapObject *object, u32 direction, VecFx32 *vec);
void ov01_021F8F08(LocalMapObject *object, BOOL on);
void ov01_021F8F68(LocalMapObject *object, int a1);
void ov01_021F8F74(LocalMapObject *mapObject, int a1);
BOOL ov01_021F8F88(LocalMapObject *a0);
void ov01_021F8FA0(LocalMapObject *a0, VecFx32 *a1);
static BOOL ov01_021F8FC0(u8 dir, LocalMapObject *object, void *animObj);
void ov01_021F9048(LocalMapObject *map_object);
void ov01_021F9058(LocalMapObject *object);
void ov01_021F9078(LocalMapObject *object);
void ov01_021F90C8(LocalMapObject *object);
void ov01_021F90D0(LocalMapObject *object);
void ov01_021F90FC(LocalMapObject *object);
static void ov01_021F9140(LocalMapObject *object);
static void ov01_021F9154(LocalMapObject *object, Sprite *sprite, FieldObjMove *mv);
static void ov01_021F917C(LocalMapObject *object, Sprite *sprite, FieldObjMove *mv);
static void ov01_021F91A4(LocalMapObject *object, Sprite *sprite);
static void ov01_021F91E4(LocalMapObject *object);
void ov01_021F91F8(MapObjectManager *manager, u32 a1, u32 a2, u32 a3, u32 a4);
void ov01_021F9250(MapObjectManager *manager);
static void FldObjSys_OpenMModelNarc(MapObjectManager *manager);
static void FldObjSys_CloseMModelNarc(MapObjectManager *manager);
void ov01_021F92A0(LocalMapObject *object);
ObjectEventGraphicsInfo *ObjectEvent_GetGraphicsInfo(u32 spriteId);
s32 GetMoveModelNoBySpriteId(u32 spriteId);
u16 *ov01_021F9318(LocalMapObject *object);
static u16 *ov01_021F9324(u32 spriteId);
BOOL ov01_021F9344(LocalMapObject *object);
void *ReadMModelFromNarcInternal(MapObjectManager *manager, u32 memberIdx, BOOL atHead);
void ov01_021F93AC(LocalMapObject *object, VecFx32 *out);
void ov01_021F9408(LocalMapObject *object, u32 dir);
void ov01_021F9424(LocalMapObject *object);
void ov01_021F943C(void);
void ov01_021F9440(void);
void ov01_021F9444(void);
void ov01_021F9448(void);

static void (*const ov01_02208B5C[])(LocalMapObject *, Sprite *, FieldObjMove *) = {
    ov01_021F9154,
    ov01_021F917C,
};

void ov01_021F8D80(LocalMapObject *object, void *animObj, UnkStruct_ov01_021F8D80 *a2, u32 facingDir, BOOL flag) {
    VecFx32 facingVec;
    BOOL paused = ov01_021F9344(object);
    BOOL flag4 = MapObject_CheckFlag4(object);
    int r0 = ov01_02205564(object);
    if (a2->unk17_2 != 0) {
        MapObject_CopyFacingVector(object, &facingVec);
        facingVec.y = a2->unk14 << 0xc;
    } else {
        if (paused != 0 || flag4 != 0 || r0 != 0) {
            MapObject_CopyFacingVector(object, &facingVec);
            facingVec.x = 0;
            facingVec.z = 0;
        } else {
            facingVec.x = 0;
            facingVec.y = 0;
            facingVec.z = 0;
        }
        if (flag != 0) {
            ov01_021F8E70(object, facingDir, &facingVec);
        }
        facingVec.y += ov01_022054E0(object);
    }
    if (facingDir != (u32)a2->unk10) {
        sub_02023EE0(animObj, ov01_021FA44C(facingDir));
        sub_02023F40(animObj, 0);
        a2->unk15 = 0;
    }
    if (paused == 0 && flag4 == 0) {
        sub_02023F04(animObj, 1 << 0xc);
        if (ov01_021F8FC0((u8)facingDir, object, animObj) != 0) {
            facingVec.y -= 2 << 0xc;
            a2->unk15 = 1;
        } else {
            a2->unk15 = 0;
        }
    }
    if (flag4 != 0) {
        sub_02023F04(animObj, 1 << 0xc);
    }
    MapObject_SetFacingVector(object, &facingVec);
}

void ov01_021F8E70(LocalMapObject *object, u32 direction, VecFx32 *vec) {
    VecFx32 facingVec;
    MapObject_CopyFacingVector(object, &facingVec);
    if (ov01_021FA298(MapObject_GetSpriteID(object)) == 0xa) {
        switch (direction) {
        case 0:
            vec->z += 1 << 0xc;
            break;
        case 1:
            vec->z -= 1 << 0xc;
            break;
        case 2:
            vec->x += 0xa << 0xc;
            break;
        case 3:
            vec->x -= 0xa << 0xc;
            break;
        }
    } else {
        switch (direction) {
        case 2:
            vec->x += 2 << 0xc;
            break;
        case 3:
            vec->x -= 2 << 0xc;
            break;
        }
    }
}

void ov01_021F8F08(LocalMapObject *object, BOOL on) {
    FieldObjMove *mv = (FieldObjMove *)sub_0205F40C(object);
    if (on) {
        VecFx32 vec = { 0, 0, 0 };
        mv->unk17_2 = 1;
        ov01_021FD9CC(MapObject_GetFacingDirection(object), &vec);
        ((s8 *)mv)[0x12] = vec.x / 0x1000;
        ((s8 *)mv)[0x13] = vec.z / 0x1000;
    } else {
        mv->unk17_2 = 0;
        ((s8 *)mv)[0x12] = 0;
        ((s8 *)mv)[0x13] = 0;
    }
}

void ov01_021F8F68(LocalMapObject *object, int a1) {
    FieldObjMove *mv = (FieldObjMove *)sub_0205F40C(object);
    mv->unk14 = a1;
}

void ov01_021F8F74(LocalMapObject *mapObject, int a1) {
    FieldObjMove *mv = (FieldObjMove *)sub_0205F40C(mapObject);
    mv->unk14 += a1;
}

BOOL ov01_021F8F88(LocalMapObject *a0) {
    FieldObjMove *mv = (FieldObjMove *)sub_0205F40C(a0);
    return mv->unk17_2 == 0;
}

void ov01_021F8FA0(LocalMapObject *a0, VecFx32 *a1) {
    FieldObjMove *mv = (FieldObjMove *)sub_0205F40C(a0);
    a1->x = ((s8 *)mv)[0x12] << 0xc;
    a1->z = ((s8 *)mv)[0x13] << 0xc;
    a1->y = 0;
}

static BOOL ov01_021F8FC0(u8 dir, LocalMapObject *object, void *animObj) {
    s32 cell = sub_02023F30(animObj) / 0x1000;
    switch (dir) {
    case 0:
        break;
    case 1:
        cell -= 0x14;
        break;
    case 2:
        cell -= 0x28;
        break;
    case 3:
        cell -= 0x3c;
        break;
    }
    if (ov01_022055B0(object) != 0) {
        if (dir == 1) {
            if (cell < 5 || cell >= 0xf) {
                return TRUE;
            }
        } else if (cell < 0xa) {
            return TRUE;
        }
    } else if ((cell >= 5 && cell < 0xa) || cell >= 0xf) {
        return TRUE;
    }
    return FALSE;
}

void ov01_021F902C(int a0, LocalMapObject *a1) {
    FieldObjMove *mv = (FieldObjMove *)sub_0205F40C(a1);
    ov01_02205808(a0, a1, mv->unk00);
}

void ov01_021F9048(LocalMapObject *map_object) {
    FieldObjMove *mv = (FieldObjMove *)sub_0205F40C(map_object);
    mv->unk17_0 = 0;
}

void ov01_021F9058(LocalMapObject *object) {
    VecFx32 vec;
    ov01_021F9140(object);
    vec.x = 0;
    vec.y = 0;
    vec.z = 0;
    sub_0205F9A0(object, &vec);
}

void ov01_021F9078(LocalMapObject *object) {
    FieldObjMove *mv = (FieldObjMove *)sub_0205F40C(object);
    Sprite *spr = mv->unk00;
    if (ov01_021FA2D4(object) != 1 && spr != NULL) {
        ov01_02208B5C[sub_0205F330(object)](object, spr, mv);
        mv->unk10 = sub_0205F330(object);
        ov01_021FA3E8(object, spr);
        ov01_021F91A4(object, spr);
    }
}

void ov01_021F90C8(LocalMapObject *object) {
    ov01_021F91E4(object);
}

void ov01_021F90D0(LocalMapObject *object) {
    FieldObjMove *mv = (FieldObjMove *)sub_0205F40C(object);
    if (mv->unk00 != NULL) {
        ov01_021F9610(mv->unk00, &mv->unk04);
    }
    ov01_021F95A8(object, mv);
    MapObject_SetFlagsBits(object, (MapObjectFlagBits)(2 << 0x14));
}

void ov01_021F90FC(LocalMapObject *object) {
    FieldObjMove *mv = (FieldObjMove *)sub_0205F40C(object);
    if (ov01_021FA2D4(object) != 1) {
        if (mv->unk00 == NULL) {
            ov01_021F9510(object, mv);
        }
        if (mv->unk00 != NULL) {
            ov01_021F9630(mv->unk00, &mv->unk04);
            ov01_021FA3E8(object, mv->unk00);
            MapObject_ClearFlagsBits(object, (MapObjectFlagBits)(2 << 0x14));
        }
    }
}

static void ov01_021F9140(LocalMapObject *object) {
    ov01_021F9510(object, (FieldObjMove *)sub_0205F3E8(object, 0x14));
}

static void ov01_021F9154(LocalMapObject *object, Sprite *sprite, FieldObjMove *mv) {
    if (mv->unk10 != 0) {
        sub_02023EE0(sprite, 0);
        sub_02023F40(sprite, 0);
    }
    sub_02023F04(sprite, 1 << 0xc);
}

static void ov01_021F917C(LocalMapObject *object, Sprite *sprite, FieldObjMove *mv) {
    if (mv->unk10 != 1) {
        sub_02023EE0(sprite, 1);
        sub_02023F40(sprite, 0);
    }
    sub_02023F04(sprite, 1 << 0xc);
}

static void ov01_021F91A4(LocalMapObject *object, Sprite *sprite) {
    int vis = 1;
    if (MapObject_TestFlagsBits(object, (MapObjectFlagBits)(1 << 9)) == 1) {
        vis = 0;
    }
    if (MapObject_TestFlagsBits(object, (MapObjectFlagBits)(1 << 0xc)) == 1 && MapObject_TestFlagsBits(object, (MapObjectFlagBits)(2 << 0xc)) == 0) {
        vis = 0;
    }
    sub_02023EA4(sprite, (u8)vis);
}

static void ov01_021F91E4(LocalMapObject *object) {
    ov01_021F95A8(object, (FieldObjMove *)sub_0205F40C(object));
}

void ov01_021F91F8(MapObjectManager *manager, u32 a1, u32 a2, u32 a3, u32 a4) {
    u32 objectCount;
    u32 priority;
    GF_ASSERT(MapObjectManager_GetFlagsBitsMask(manager, (MapObjectManagerFlagBits)1) == 0);
    FldObjSys_OpenMModelNarc(manager);
    objectCount = MapObjectManager_GetObjectCount(manager);
    priority = MapObjectManager_GetPriority(manager) - 1;
    ov01_021F944C(sub_0205F1A0(manager), manager, objectCount, priority, a1, a2, a3, a4);
    MapObjectManager_SetFlagsBits(manager, (MapObjectManagerFlagBits)1);
}

void ov01_021F9250(MapObjectManager *manager) {
    GF_ASSERT(sub_0205F5D4(manager) == TRUE);
    ov01_021F94A0(sub_0205F1A0(manager));
    MapObjectManager_ClearFlagsBits(manager, (MapObjectManagerFlagBits)1);
    FldObjSys_CloseMModelNarc(manager);
}

static void FldObjSys_OpenMModelNarc(MapObjectManager *manager) {
    MapObjectManager_SetMapModelNarc(manager, NARC_New(NARC_data_mmodel_mmodel, HEAP_ID_FIELD1));
}

static void FldObjSys_CloseMModelNarc(MapObjectManager *manager) {
    NARC_Delete(MapObjectManager_GetMapModelNarc(manager));
}

void ov01_021F92A0(LocalMapObject *object) {
    if (MapObjectManager_GetFlagsBitsMask(MapObject_GetManager(object), (MapObjectManagerFlagBits)4) == 0 && MapObject_GetFlagsBitsMask(object, (MapObjectFlagBits)(1 << 0xe)) != 0) {
        if (MapObject_CheckMovementPaused(object) == 0 || MapObject_CheckFlag4(object) != 0) {
            sub_0205F484(object);
        }
    }
}

ObjectEventGraphicsInfo *ObjectEvent_GetGraphicsInfo(u32 spriteId) {
    ObjectEventGraphicsInfo *p = ov01_022074A8;
    do {
        if (p->spriteId == spriteId) {
            return p;
        }
        p++;
    } while (p->spriteId != 0xFFFF);
    GF_AssertFail();
    return NULL;
}

s32 GetMoveModelNoBySpriteId(u32 spriteId) {
    ObjectEventGraphicsInfo *info = ObjectEvent_GetGraphicsInfo(spriteId);
    if (info == NULL) {
        return -1;
    }
    return info->mapModelId;
}

u16 *ov01_021F9318(LocalMapObject *object) {
    return ov01_021F9324(MapObject_GetSpriteID(object));
}

static u16 *ov01_021F9324(u32 spriteId) {
    ObjectEventGraphicsInfo *info = ObjectEvent_GetGraphicsInfo(spriteId);
    if (info == NULL) {
        return NULL;
    }
    return &ov01_02206D00[info->unk4_0];
}

BOOL ov01_021F9344(LocalMapObject *object) {
    if (MapObject_CheckMovementPaused(object) == 1 && MapObject_CheckFlag4(object) == 0) {
        return TRUE;
    }
    if (MapObject_GetFlagsBitsMask(object, (MapObjectFlagBits)(1 << 8)) != 0) {
        return TRUE;
    }
    return FALSE;
}

void *ReadMModelFromNarcInternal(MapObjectManager *manager, u32 memberIdx, BOOL atHead) {
    void *buf;
    NARC *narc = MapObjectManager_GetMapModelNarc(manager);
    u32 size = NARC_GetMemberSize(narc, memberIdx);
    if (atHead == 1) {
        buf = Heap_Alloc(HEAP_ID_FIELD1, size);
    } else {
        buf = Heap_AllocAtEnd(HEAP_ID_FIELD1, size);
    }
    NARC_ReadWholeMember(narc, memberIdx, buf);
    return buf;
}

void ov01_021F93AC(LocalMapObject *object, VecFx32 *out) {
    VecFx32 pos;
    VecFx32 facing;
    VecFx32 v3;
    VecFx32 v4;
    MapObject_CopyPositionVector(object, &pos);
    MapObject_CopyFacingVector(object, &facing);
    sub_0205F990(object, &v3);
    sub_0205F9B0(object, &v4);
    out->x = pos.x + facing.x + v3.x + v4.x;
    out->y = pos.y + facing.y + v3.y + v4.y;
    out->z = pos.z + facing.z + v3.z + v4.z;
}

void ov01_021F9408(LocalMapObject *object, u32 dir) {
    MapObject_SetFacingDirection(object, dir);
    if (MapObject_CheckFlag14(object) == 1) {
        sub_0205F484(object);
    }
}

void ov01_021F9424(LocalMapObject *object) {
    MapObject_SetVisible(object, TRUE);
    MapObject_SetFlagsBits(object, (MapObjectFlagBits)(1 << 0x14));
}

void ov01_021F943C(void) {
}

void ov01_021F9440(void) {
}

void ov01_021F9444(void) {
}

void ov01_021F9448(void) {
}
