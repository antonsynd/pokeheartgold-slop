#include "global.h"

#include "map_object.h"
#include "player_avatar.h"

// Map object reflection field effects (water / puddle / ice).

typedef struct UnkOv01_021FDA14_BillboardResources {
    void *modelRes;
    u8 unk4[0x24];
} UnkOv01_021FDA14_BillboardResources;

// Local view of FieldSystem: field_system.h pulls in overlay_01_021F1348.h,
// whose ov01_021F1620 prototype returns void.
typedef struct UnkOv01_021FDA14_FieldSystem {
    u8 unk0[0x40];
    PlayerAvatar *playerAvatar;
} UnkOv01_021FDA14_FieldSystem;

typedef struct UnkOv01_021FDA14 {
    void *unk0;
} UnkOv01_021FDA14;

typedef struct UnkOv01_021FDA14_DataA {
    FieldSystem *fieldSystem;
    void *fxMgr;
    void *manager;
    LocalMapObject *mapObject;
} UnkOv01_021FDA14_DataA;

typedef struct UnkOv01_021FDA14_WorkA {
    u32 objectId;
    u32 mapId;
    u32 spriteId;
    BOOL hasBillboard;
    u32 type;
    UnkOv01_021FDA14_DataA data;
    void *billboard;
    VecFx32 scale;
    fx32 scaleDelta;
} UnkOv01_021FDA14_WorkA;

typedef struct UnkOv01_021FDA14_DataB {
    FieldSystem *fieldSystem;
    void *fxMgr;
    void *manager;
    UnkOv01_021FDA14_BillboardResources res;
    void *srcBillboard;
} UnkOv01_021FDA14_DataB;

typedef struct UnkOv01_021FDA14_WorkB {
    u32 type;
    UnkOv01_021FDA14_DataB data;
    void *billboard;
    VecFx32 scale;
    fx32 scaleDelta;
    VecFx32 basePos;
} UnkOv01_021FDA14_WorkB;

typedef struct UnkOv01_021FDA14_Template {
    u32 workSize;
    BOOL (*init)(void *, void *);
    BOOL (*delete)(void *, void *);
    void (*update)(void *, void *);
    void (*draw)(void *, void *);
} UnkOv01_021FDA14_Template;

typedef struct UnkOv01_021FDA14_Offsets {
    fx32 offsets[6];
} UnkOv01_021FDA14_Offsets;

extern UnkOv01_021FDA14 *ov01_021F1430(void *a0, int a1, int a2, int a3);
extern void ov01_021F1448(void *a0);
extern void *ov01_021F1450(void *fxMgr, int a1);
extern FieldSystem *ov01_021F1468(void *fxMgr);
extern void *ov01_021F146C(LocalMapObject *mapObject);
extern void *ov01_021F1620(void *fxMgr, const UnkOv01_021FDA14_Template *template, VecFx32 *pos, int a3, void *data, int priority);
extern void ov01_021F1640(void *a0);
extern void *ov01_021F16EC(void *fxMgr, UnkOv01_021FDA14_BillboardResources *res, VecFx32 *pos);
extern void ov01_021F18D4(void *a0, int a1, int a2);
extern void *ov01_021F18F0(void *fxMgr, int id);
extern void ov01_021F18FC(void *a0, int a1);
extern void *ov01_021F72DC(LocalMapObject *mapObject);
extern BOOL ov01_021F9744(MapObjectManager *manager, u32 spriteId, UnkOv01_021FDA14_BillboardResources *out);
extern BOOL ov01_021FA2D4(LocalMapObject *mapObject);
extern BOOL ov01_0220553C(LocalMapObject *mapObject);
extern void ov01_02205870(BOOL a0, LocalMapObject *mapObject, void *billboard, UnkOv01_021FDA14_BillboardResources *res);

extern void *sub_02068D98(void *a0);
extern u32 sub_02068D90(void *a0);
extern void sub_02068DA8(void *a0, VecFx32 *a1);
extern void sub_02068DB8(void *a0, VecFx32 *a1);
extern BOOL sub_02068D18(void *a0);
extern int sub_0206121C(FieldSystem *fieldSystem, VecFx32 *a1);
extern s32 _s32_div_f(s32 num, s32 den);

extern BOOL sub_02023DA4(void *billboard);
extern void sub_02023E50(void *billboard, VecFx32 *pos);
extern void sub_02023E78(void *billboard, VecFx32 *scale);
extern void sub_02023EA4(void *billboard, u8 draw);
extern void sub_02023EE0(void *billboard, int animNum);
extern int sub_02023EF4(void *billboard);
extern int sub_02023F04(void *billboard, fx32 numFrames);
extern void sub_02023F1C(void *billboard, fx32 frameNum);
extern fx32 sub_02023F30(void *billboard);
extern void sub_02023F40(void *billboard, fx32 animFrameNum);
extern fx32 sub_02023F70(void *billboard);
extern void sub_02023FC0(void *billboard);

UnkOv01_021FDA14 *ov01_021FDA14(void *a0);
void ov01_021FDA30(UnkOv01_021FDA14 *manager);
static void ov01_021FDA40(UnkOv01_021FDA14 *manager);
static void ov01_021FDA5C(UnkOv01_021FDA14 *manager);
void *ov01_021FDA74(LocalMapObject *mapObject, int type);
static BOOL ov01_021FDAC0(void *param0, UnkOv01_021FDA14_WorkA *work);
static void ov01_021FDB34(void *param0, UnkOv01_021FDA14_WorkA *work);
static void ov01_021FDB44(void *param0, UnkOv01_021FDA14_WorkA *work);
static void ov01_021FDBCC(void *param0, UnkOv01_021FDA14_WorkA *work);
static void ov01_021FDC7C(UnkOv01_021FDA14_WorkA *work, LocalMapObject *mapObject, VecFx32 *out);
static void ov01_021FDD48(void *param0, UnkOv01_021FDA14_WorkA *work);
static void ov01_021FDD94(void *param0, UnkOv01_021FDA14_WorkB *work);
static void ov01_021FDE08(UnkOv01_021FDA14_WorkB *work, VecFx32 *out);
void *ov01_021FDE64(void *fxMgr, UnkOv01_021FDA14_BillboardResources *res, void *srcBillboard, VecFx32 *pos, int type, int priority);
static BOOL ov01_021FDEAC(void *param0, UnkOv01_021FDA14_WorkB *work);
static BOOL ov01_021FDF14(void *param0, UnkOv01_021FDA14_WorkB *work);
static void ov01_021FDF20(void *param0, UnkOv01_021FDA14_WorkB *work);
static void ov01_021FDF64(void *param0, UnkOv01_021FDA14_WorkB *work);
void *ov01_021FDF88(LocalMapObject *mapObject, int type);
static BOOL ov01_021FDFD4(void *param0, UnkOv01_021FDA14_WorkA *work);
static void ov01_021FE058(void *param0, UnkOv01_021FDA14_WorkA *work);
static void ov01_021FE0EC(void *param0, UnkOv01_021FDA14_WorkA *work);
static void ov01_021FE190(void *param0, UnkOv01_021FDA14_WorkA *work);

static const struct {
    UnkOv01_021FDA14_Template template_02208F74;
    UnkOv01_021FDA14_Template template_02208F88;
    UnkOv01_021FDA14_Template template_02208F9C;
    UnkOv01_021FDA14_Offsets offsets_02208FB0;
    UnkOv01_021FDA14_Offsets offsets_02208FC8;
} sRodata = {
    { 0x38, (void *)ov01_021FDFD4, (void *)ov01_021FDB34, (void *)ov01_021FE058, (void *)ov01_021FE0EC },
    { 0x38, (void *)ov01_021FDAC0, (void *)ov01_021FDB34, (void *)ov01_021FDB44, (void *)ov01_021FDBCC },
    { 0x38, (void *)ov01_021FDEAC, (void *)ov01_021FDF14, (void *)ov01_021FDF20, (void *)ov01_021FDF64 },
    { { 0xE000, 0x14000, 0xE000, 0xE000, 0x14000, 0xE000 } },
    { { 0xE000, 0x14000, 0xE000, 0xE000, 0x14000, 0xE000 } },
};

UnkOv01_021FDA14 *ov01_021FDA14(void *a0) {
    UnkOv01_021FDA14 *manager = ov01_021F1430(a0, sizeof(UnkOv01_021FDA14), 0, 0);
    manager->unk0 = a0;
    ov01_021FDA40(manager);
    return manager;
}

void ov01_021FDA30(UnkOv01_021FDA14 *manager) {
    ov01_021FDA5C(manager);
    ov01_021F1448(manager);
}

static void ov01_021FDA40(UnkOv01_021FDA14 *manager) {
    ov01_021F18D4(manager->unk0, 2, 0x23);
    ov01_021F18D4(manager->unk0, 0xD, 0x69);
}

static void ov01_021FDA5C(UnkOv01_021FDA14 *manager) {
    ov01_021F18FC(manager->unk0, 2);
    ov01_021F18FC(manager->unk0, 0xD);
}

void *ov01_021FDA74(LocalMapObject *mapObject, int type) {
    VecFx32 pos;
    UnkOv01_021FDA14_DataA data;

    data.fieldSystem = MapObject_GetFieldSystem(mapObject);
    data.fxMgr = ov01_021F146C(mapObject);
    data.manager = ov01_021F1450(data.fxMgr, 1);
    data.mapObject = mapObject;
    MapObject_CopyPositionVector(mapObject, &pos);
    return ov01_021F1620(data.fxMgr, &sRodata.template_02208F88, &pos, type, &data, MapObject_GetPriorityPlusValue(mapObject, 2));
}

static BOOL ov01_021FDAC0(void *param0, UnkOv01_021FDA14_WorkA *work) {
    VecFx32 pos;

    work->data = *(UnkOv01_021FDA14_DataA *)sub_02068D98(param0);
    work->type = sub_02068D90(param0);
    work->objectId = MapObject_GetID(work->data.mapObject);
    work->mapId = MapObject_GetMapID(work->data.mapObject);
    work->spriteId = MapObject_GetSpriteID(work->data.mapObject);
    work->scale.x = FX32_ONE;
    work->scale.y = FX32_ONE;
    work->scale.z = FX32_ONE;
    work->scaleDelta = 0x40;
    if (work->type == 2) {
        work->scaleDelta = 0;
    }
    ov01_021FDC7C(work, work->data.mapObject, &pos);
    sub_02068DA8(param0, &pos);
    ov01_021FDD48(param0, work);
    return TRUE;
}

static void ov01_021FDB34(void *param0, UnkOv01_021FDA14_WorkA *work) {
    if (work->hasBillboard == TRUE) {
        sub_02023DA4(work->billboard);
    }
}

static void ov01_021FDB44(void *param0, UnkOv01_021FDA14_WorkA *work) {
    LocalMapObject *mapObject = work->data.mapObject;
    VecFx32 pos;

    if (work->spriteId != MapObject_GetSpriteID(mapObject) || sub_0205F0A8(mapObject, work->objectId, work->mapId) == FALSE || MapObject_CheckFlag24(mapObject) == FALSE) {
        ov01_021F1640(param0);
        return;
    }
    work->scale.x += work->scaleDelta;
    if (work->scale.x >= 0x1200) {
        work->scale.x = 0x1200;
        work->scaleDelta = -work->scaleDelta;
    } else if (work->scale.x <= 0xE00) {
        work->scale.x = 0xE00;
        work->scaleDelta = -work->scaleDelta;
    }
    ov01_021FDC7C(work, mapObject, &pos);
    sub_02068DA8(param0, &pos);
    if (work->hasBillboard == FALSE) {
        ov01_021FDD48(param0, work);
    }
}

static void ov01_021FDBCC(void *param0, UnkOv01_021FDA14_WorkA *work) {
    LocalMapObject *mapObject = work->data.mapObject;
    BOOL hide = FALSE;
    VecFx32 facing;
    VecFx32 pos;
    void *srcBillboard;

    if (work->spriteId != MapObject_GetSpriteID(mapObject) || sub_0205F0A8(mapObject, work->objectId, work->mapId) == FALSE || MapObject_CheckFlag24(mapObject) == FALSE) {
        ov01_021F1640(param0);
        return;
    }
    if (work->hasBillboard) {
        MapObject_CopyFacingVector(work->data.mapObject, &facing);
        if (facing.y != 0) {
            hide = TRUE;
        }
        if (MapObject_CheckVisible(mapObject) == TRUE) {
            hide = TRUE;
        }
        if (hide) {
            sub_02023EA4(work->billboard, FALSE);
        } else {
            sub_02023EA4(work->billboard, TRUE);
        }
        sub_02068DB8(param0, &pos);
        sub_02023E50(work->billboard, &pos);
        sub_02023E78(work->billboard, &work->scale);
        srcBillboard = ov01_021F72DC(work->data.mapObject);
        sub_02023EE0(work->billboard, sub_02023EF4(srcBillboard));
        sub_02023F1C(work->billboard, sub_02023F30(srcBillboard));
    }
}

// NONMATCHING: retail materialises FX32_HALF before the facing-direction compare
// (scheduler hoist); every C spelling tried computes it after the branch.
#ifdef NONMATCHING
static void ov01_021FDC7C(UnkOv01_021FDA14_WorkA *work, LocalMapObject *mapObject, VecFx32 *out) {
    VecFx32 facing;
    UnkOv01_021FDA14_Offsets offsets = sRodata.offsets_02208FC8;
    fx32 x;
    fx32 yOffset;
    fx32 z;
    int result;

    MapObject_CopyFacingVector(mapObject, &facing);
    x = facing.x;
    if (MapObject_GetID(mapObject) == 0xFF && MapObject_GetSpriteID(mapObject) == 0xBC) {
        if (MapObject_GetFacingDirection(mapObject) == 1) {
            z = FX32_HALF;
            z *= 3;
            z -= facing.z;
        } else {
            z = facing.z;
        }
    } else {
        z = facing.z;
    }
    yOffset = -(facing.y / 6);
    if (MapObject_GetID(mapObject) == 0xFD && MapObject_GetSpriteID(PlayerAvatar_GetMapObject(((UnkOv01_021FDA14_FieldSystem *)work->data.fieldSystem)->playerAvatar)) == 0xBC) {
        yOffset = 0;
    }
    MapObject_CopyPositionVector(mapObject, out);
    result = sub_0206121C(work->data.fieldSystem, out);
    out->x += x;
    out->z += z - FX32_CONST(7);
    if (result == 0) {
        out->y = 0;
    } else {
        out->y -= offsets.offsets[work->type];
    }
    out->y += yOffset;
}
#else
// clang-format off
static asm void ov01_021FDC7C(UnkOv01_021FDA14_WorkA *work, LocalMapObject *mapObject, VecFx32 *out) {
    push {r4, r5, r6, r7, lr}
    sub sp, #0x2c
    ldr r3, =sRodata+0x54
    add r4, r2, #0
    add r2, sp, #8
    add r5, r0, #0
    add r6, r1, #0
    ldmia r3!, {r0, r1}
    stmia r2!, {r0, r1}
    ldmia r3!, {r0, r1}
    stmia r2!, {r0, r1}
    ldmia r3!, {r0, r1}
    stmia r2!, {r0, r1}
    add r0, r6, #0
    add r1, sp, #0x20
    bl MapObject_CopyFacingVector
    ldr r0, [sp, #0x20]
    str r0, [sp, #4]
    add r0, r6, #0
    bl MapObject_GetID
    cmp r0, #0xff
    bne _021FDCD2
    add r0, r6, #0
    bl MapObject_GetSpriteID
    cmp r0, #0xbc
    bne _021FDCD2
    add r0, r6, #0
    bl MapObject_GetFacingDirection
    mov r1, #2
    lsl r1, r1, #0xa
    cmp r0, #1
    bne _021FDCCE
    lsl r0, r1, #1
    add r1, r1, r0
    ldr r0, [sp, #0x28]
    sub r7, r1, r0
    b _021FDCD4
_021FDCCE:
    ldr r7, [sp, #0x28]
    b _021FDCD4
_021FDCD2:
    ldr r7, [sp, #0x28]
_021FDCD4:
    ldr r0, [sp, #0x24]
    mov r1, #6
    bl _s32_div_f
    neg r0, r0
    str r0, [sp]
    add r0, r6, #0
    bl MapObject_GetID
    cmp r0, #0xfd
    bne _021FDCFE
    ldr r0, [r5, #0x14]
    ldr r0, [r0, #0x40]
    bl PlayerAvatar_GetMapObject
    bl MapObject_GetSpriteID
    cmp r0, #0xbc
    bne _021FDCFE
    mov r0, #0
    str r0, [sp]
_021FDCFE:
    add r0, r6, #0
    add r1, r4, #0
    bl MapObject_CopyPositionVector
    ldr r0, [r5, #0x14]
    add r1, r4, #0
    bl sub_0206121C
    ldr r2, [r4, #0]
    ldr r1, [sp, #4]
    add r1, r2, r1
    str r1, [r4, #0]
    mov r1, #7
    lsl r1, r1, #0xc
    ldr r2, [r4, #8]
    sub r1, r7, r1
    add r1, r2, r1
    str r1, [r4, #8]
    cmp r0, #0
    bne _021FDD2A
    mov r0, #0
    b _021FDD36
_021FDD2A:
    ldr r0, [r5, #0x10]
    ldr r2, [r4, #4]
    lsl r1, r0, #2
    add r0, sp, #8
    ldr r0, [r0, r1]
    sub r0, r2, r0
_021FDD36:
    str r0, [r4, #4]
    ldr r1, [r4, #4]
    ldr r0, [sp]
    add r0, r1, r0
    str r0, [r4, #4]
    add sp, #0x2c
    pop {r4, r5, r6, r7, pc}
}
// clang-format on
#endif

static void ov01_021FDD48(void *param0, UnkOv01_021FDA14_WorkA *work) {
    VecFx32 pos;
    UnkOv01_021FDA14_BillboardResources res;

    if (ov01_021F9744(MapObject_GetManager(work->data.mapObject), work->spriteId, &res) && ov01_021FA2D4(work->data.mapObject) != TRUE) {
        res.modelRes = ov01_021F18F0(work->data.fxMgr, 2);
        sub_02068DB8(param0, &pos);
        work->billboard = ov01_021F16EC(work->data.fxMgr, &res, &pos);
        work->hasBillboard = TRUE;
    }
}

static void ov01_021FDD94(void *param0, UnkOv01_021FDA14_WorkB *work) {
    VecFx32 pos;
    UnkOv01_021FDA14_BillboardResources res = work->data.res;
    void *srcBillboard;

    res.modelRes = ov01_021F18F0(work->data.fxMgr, 2);
    sub_02068DB8(param0, &pos);
    work->billboard = ov01_021F16EC(work->data.fxMgr, &res, &pos);
    srcBillboard = work->data.srcBillboard;
    sub_02023EE0(work->billboard, sub_02023EF4(srcBillboard));
    sub_02023F40(work->billboard, sub_02023F70(srcBillboard));
    sub_02023F1C(work->billboard, sub_02023F30(srcBillboard));
    sub_02023F04(work->billboard, 0);
    sub_02023FC0(work->billboard);
}

static void ov01_021FDE08(UnkOv01_021FDA14_WorkB *work, VecFx32 *out) {
    UnkOv01_021FDA14_Offsets offsets = sRodata.offsets_02208FB0;
    int result;

    *out = work->basePos;
    result = sub_0206121C(work->data.fieldSystem, out);
    out->z -= FX32_CONST(7);
    if (result == 0) {
        out->y = 0;
    } else {
        out->y -= offsets.offsets[work->type];
    }
}

void *ov01_021FDE64(void *fxMgr, UnkOv01_021FDA14_BillboardResources *res, void *srcBillboard, VecFx32 *pos, int type, int priority) {
    UnkOv01_021FDA14_DataB data;

    data.fieldSystem = ov01_021F1468(fxMgr);
    data.fxMgr = fxMgr;
    data.manager = ov01_021F1450(fxMgr, 1);
    data.res = *res;
    data.srcBillboard = srcBillboard;
    return ov01_021F1620(fxMgr, &sRodata.template_02208F9C, pos, type, &data, priority);
}

static BOOL ov01_021FDEAC(void *param0, UnkOv01_021FDA14_WorkB *work) {
    VecFx32 pos;

    work->data = *(UnkOv01_021FDA14_DataB *)sub_02068D98(param0);
    work->type = sub_02068D90(param0);
    work->scale.x = FX32_ONE;
    work->scale.y = FX32_ONE;
    work->scale.z = FX32_ONE;
    work->scaleDelta = 0x40;
    if (work->type == 2) {
        work->scaleDelta = 0;
    }
    sub_02068DB8(param0, &work->basePos);
    ov01_021FDE08(work, &pos);
    sub_02068DA8(param0, &pos);
    ov01_021FDD94(param0, work);
    sub_02068D18(param0);
    return TRUE;
}

static BOOL ov01_021FDF14(void *param0, UnkOv01_021FDA14_WorkB *work) {
    return sub_02023DA4(work->billboard);
}

static void ov01_021FDF20(void *param0, UnkOv01_021FDA14_WorkB *work) {
    VecFx32 pos;

    work->scale.x += work->scaleDelta;
    if (work->scale.x >= 0x1200) {
        work->scale.x = 0x1200;
        work->scaleDelta = -work->scaleDelta;
    } else if (work->scale.x <= 0xE00) {
        work->scale.x = 0xE00;
        work->scaleDelta = -work->scaleDelta;
    }
    ov01_021FDE08(work, &pos);
    sub_02068DA8(param0, &pos);
}

static void ov01_021FDF64(void *param0, UnkOv01_021FDA14_WorkB *work) {
    VecFx32 pos;

    sub_02068DB8(param0, &pos);
    sub_02023E50(work->billboard, &pos);
    sub_02023E78(work->billboard, &work->scale);
}

void *ov01_021FDF88(LocalMapObject *mapObject, int type) {
    VecFx32 pos;
    UnkOv01_021FDA14_DataA data;

    data.fieldSystem = MapObject_GetFieldSystem(mapObject);
    data.fxMgr = ov01_021F146C(mapObject);
    data.manager = ov01_021F1450(data.fxMgr, 1);
    data.mapObject = mapObject;
    MapObject_CopyPositionVector(mapObject, &pos);
    return ov01_021F1620(data.fxMgr, &sRodata.template_02208F74, &pos, type, &data, MapObject_GetPriorityPlusValue(mapObject, 2));
}

static BOOL ov01_021FDFD4(void *param0, UnkOv01_021FDA14_WorkA *work) {
    VecFx32 pos;

    work->data = *(UnkOv01_021FDA14_DataA *)sub_02068D98(param0);
    work->type = sub_02068D90(param0);
    work->objectId = MapObject_GetID(work->data.mapObject);
    work->mapId = MapObject_GetMapID(work->data.mapObject);
    work->spriteId = MapObject_GetSpriteID(work->data.mapObject);
    work->scale.x = FX32_ONE;
    work->scale.y = FX32_ONE;
    work->scale.z = FX32_ONE;
    work->scaleDelta = 0x40;
    if (work->type == 2 || work->type == 5) {
        work->scaleDelta = 0;
    }
    ov01_021FDC7C(work, work->data.mapObject, &pos);
    pos.y -= 0x514;
    sub_02068DA8(param0, &pos);
    ov01_021FE190(param0, work);
    return TRUE;
}

static void ov01_021FE058(void *param0, UnkOv01_021FDA14_WorkA *work) {
    LocalMapObject *mapObject = work->data.mapObject;
    VecFx32 pos;

    if (work->spriteId != MapObject_GetSpriteID(mapObject) || sub_0205F0A8(mapObject, work->objectId, work->mapId) == FALSE || MapObject_CheckFlag24(mapObject) == FALSE) {
        ov01_021F1640(param0);
        return;
    }
    work->scale.x += work->scaleDelta;
    if (work->scale.x >= 0x1200) {
        work->scale.x = 0x1200;
        work->scaleDelta = -work->scaleDelta;
    } else if (work->scale.x <= 0xE00) {
        work->scale.x = 0xE00;
        work->scaleDelta = -work->scaleDelta;
    }
    ov01_021FDC7C(work, mapObject, &pos);
    pos.y -= 0x514;
    sub_02068DA8(param0, &pos);
    if (work->hasBillboard == FALSE) {
        ov01_021FE190(param0, work);
    }
}

static void ov01_021FE0EC(void *param0, UnkOv01_021FDA14_WorkA *work) {
    LocalMapObject *mapObject = work->data.mapObject;
    VecFx32 pos;
    void *srcBillboard;

    if (work->spriteId != MapObject_GetSpriteID(mapObject) || sub_0205F0A8(mapObject, work->objectId, work->mapId) == FALSE || MapObject_CheckFlag24(mapObject) == FALSE) {
        ov01_021F1640(param0);
        return;
    }
    if (work->hasBillboard) {
        if (MapObject_CheckVisible(mapObject) == TRUE) {
            sub_02023EA4(work->billboard, FALSE);
        } else {
            sub_02023EA4(work->billboard, TRUE);
        }
        sub_02068DB8(param0, &pos);
        pos.z -= FX32_ONE;
        sub_02023E50(work->billboard, &pos);
        sub_02023E78(work->billboard, &work->scale);
        srcBillboard = ov01_021F72DC(work->data.mapObject);
        sub_02023EE0(work->billboard, sub_02023EF4(srcBillboard));
        sub_02023F1C(work->billboard, sub_02023F30(srcBillboard));
    }
}

static void ov01_021FE190(void *param0, UnkOv01_021FDA14_WorkA *work) {
    VecFx32 pos;
    UnkOv01_021FDA14_BillboardResources res;

    if (ov01_021F9744(MapObject_GetManager(work->data.mapObject), work->spriteId, &res) && ov01_021FA2D4(work->data.mapObject) != TRUE) {
        res.modelRes = (work->type <= 2) ? ov01_021F18F0(work->data.fxMgr, 2) : ov01_021F18F0(work->data.fxMgr, 0xD);
        if (ov01_0220553C(work->data.mapObject)) {
            ov01_02205870(TRUE, work->data.mapObject, work->billboard, &res);
        }
        sub_02068DB8(param0, &pos);
        work->billboard = ov01_021F16EC(work->data.fxMgr, &res, &pos);
        work->hasBillboard = TRUE;
    }
}
