#include "global.h"

#include "map_object.h"
#include "sprite.h"

typedef struct UnkOv01_021FFC0C {
    void *unk0;
} UnkOv01_021FFC0C;

typedef struct {
    int unk0;
    int unk4;
    int unk8;
    void *unkC;
    FieldSystem *unk10;
    int unk14;
    LocalMapObject *unk18;
    int unk1C;
    s8 unk20;
    u8 unk21[3];
} UnkOv01_021FFC0C_Data;

typedef struct {
    int unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
    u8 unk10[4];
    int unk14;
    UnkOv01_021FFC0C_Data unk18;
    Sprite *unk3C;
} UnkOv01_021FFC0C_Work;

extern UnkOv01_021FFC0C *ov01_021F1430(void *a0, int a1, int a2, int a3);
extern void ov01_021F1448(void *a0);
extern void ov01_021F1640(void *a0);
extern void *ov01_021F1740(FieldSystem *fieldSystem, int a1, VecFx32 *a2);
extern void ov01_021F1758(void *a0, int a1, int a2, int a3, int a4, int a5, const void *a6);
extern void ov01_021F18C8(void *a0, int a1);
extern void ov01_021F18D4(void *a0, int a1, int a2);
extern void ov01_021F18FC(void *a0, int a1);
extern void ov01_021F1908(void *a0, int a1, int a2);
extern void ov01_021F1924(void *a0, int a1);
extern void ov01_021F1930(void *a0, int a1, int a2, int a3);
extern void ov01_021F1970(void *a0, int a1);

extern UnkOv01_021FFC0C_Data *sub_02068D98(void *a0);
extern u32 sub_02068D90(void *a0);
extern void sub_02068DA8(void *a0, VecFx32 *a1);
extern void sub_02068DB8(void *a0, VecFx32 *a1);
extern int sub_0206121C(void *a0, VecFx32 *a1);

extern BOOL sub_02023DA4(Sprite *sprite);
extern void sub_02023E50(Sprite *sprite, VecFx32 *a1);
extern void sub_02023EA4(Sprite *sprite, int a1);
extern void sub_02023F04(Sprite *sprite, int a1);
extern void sub_02023F1C(Sprite *sprite, int a1);
extern int sub_02023F70(Sprite *sprite);

extern BOOL sub_0205F0A8(LocalMapObject *object, u32 objectId, u32 mapId);
extern BOOL sub_0205F0F8(LocalMapObject *object, u32 spriteId, u32 objectId, u32 mapId);

UnkOv01_021FFC0C *ov01_021FFC0C(void *a0);
void ov01_021FFC28(UnkOv01_021FFC0C *manager);
BOOL ov01_021FFCA8(void *param0, UnkOv01_021FFC0C_Work *work);
BOOL ov01_021FFD64(void *param0, UnkOv01_021FFC0C_Work *work);
void ov01_021FFD70(void *param0, UnkOv01_021FFC0C_Work *work);
void ov01_021FFE98(void *param0, UnkOv01_021FFC0C_Work *work);

static void ov01_021FFC38(UnkOv01_021FFC0C *manager);
static void ov01_021FFC80(UnkOv01_021FFC0C *manager);

static const u32 ov01_02209258[] = { 0, 2, 0, 0, 0, 2 };

UnkOv01_021FFC0C *ov01_021FFC0C(void *a0) {
    UnkOv01_021FFC0C *manager = ov01_021F1430(a0, sizeof(UnkOv01_021FFC0C), 0, 0);
    manager->unk0 = a0;
    ov01_021FFC38(manager);
    return manager;
}

void ov01_021FFC28(UnkOv01_021FFC0C *manager) {
    ov01_021FFC80(manager);
    ov01_021F1448(manager);
}

static void ov01_021FFC38(UnkOv01_021FFC0C *manager) {
    ov01_021F18D4(manager->unk0, 8, 0x7b);
    ov01_021F1908(manager->unk0, 8, 0x93);
    ov01_021F1930(manager->unk0, 9, 0x16, 1);
    ov01_021F1758(manager->unk0, 0xa, 8, 8, 9, 0, ov01_02209258);
}

static void ov01_021FFC80(UnkOv01_021FFC0C *manager) {
    ov01_021F18FC(manager->unk0, 8);
    ov01_021F1924(manager->unk0, 8);
    ov01_021F1970(manager->unk0, 9);
    ov01_021F18C8(manager->unk0, 0xa);
}

BOOL ov01_021FFCA8(void *param0, UnkOv01_021FFC0C_Work *work) {
    VecFx32 vec;
    work->unk18 = *sub_02068D98(param0);
    work->unk4 = MapObject_GetSpriteID(work->unk18.unk18);
    work->unk8 = MapObject_GetID(work->unk18.unk18);
    work->unkC = MapObject_GetMapID(work->unk18.unk18);
    vec.x = work->unk18.unk0 << 0x10;
    vec.z = work->unk18.unk8 << 0x10;
    vec.y = MapObject_GetPositionVectorYCoord(work->unk18.unk18);
    work->unk14 = sub_0206121C(work->unk18.unkC, &vec);
    vec.x += 0x1e << 0xa;
    vec.y -= 2 << 0xe;
    vec.z += 0xd << 0xc;
    sub_02068DA8(param0, &vec);
    work->unk3C = ov01_021F1740(work->unk18.unk10, 0xa, &vec);
    if (MapObject_TestFlagsBits(work->unk18.unk18, (MapObjectFlagBits)(2 << 8)) == 1) {
        sub_02023EA4(work->unk3C, 0);
    }
    if (sub_02068D90(param0) == 0) {
        sub_02023F1C(work->unk3C, 2 << 0xc);
        work->unk0 = 2;
    }
    return TRUE;
}

BOOL ov01_021FFD64(void *param0, UnkOv01_021FFC0C_Work *work) {
    return sub_02023DA4(work->unk3C);
}

void ov01_021FFD70(void *param0, UnkOv01_021FFC0C_Work *work) {
    LocalMapObject *obj = work->unk18.unk18;
    if (sub_0205F0F8(obj, work->unk4, work->unk8, work->unkC) == 0) {
        ov01_021F1640(param0);
        return;
    }
    if (MapObject_TestFlagsBits(obj, (MapObjectFlagBits)(2 << 8)) == 1) {
        sub_02023EA4(work->unk3C, 0);
    } else {
        sub_02023EA4(work->unk3C, 1);
    }
    if (work->unk14 == 0) {
        VecFx32 vecB;
        VecFx32 vecA;
        sub_02068DB8(param0, &vecB);
        vecA.x = work->unk18.unk0 << 0x10;
        vecA.z = work->unk18.unk8 << 0x10;
        vecA.y = vecB.y;
        work->unk14 = sub_0206121C(work->unk18.unkC, &vecA);
        if (work->unk14 == 1) {
            vecB.y = vecA.y;
            sub_02068DA8(param0, &vecB);
        }
    }
    switch (work->unk0) {
    case 0:
        sub_02023F04(work->unk3C, 1 << 0xc);
        if (sub_02023F70(work->unk3C) / 0x1000 >= 2) {
            work->unk0 = 1;
        }
        break;
    case 1:
        sub_02023F1C(work->unk3C, 2 << 0xc);
        sub_02023F04(work->unk3C, 0);
        work->unk0 = 2;
        // fallthrough
    case 2:
        if (sub_0205F0F8(obj, work->unk4, work->unk8, work->unkC) == 0) {
            ov01_021F1640(param0);
            return;
        }
        {
            int x = MapObject_GetXCoord(obj);
            int z = MapObject_GetZCoord(obj);
            if (work->unk18.unk0 != x || work->unk18.unk8 != z) {
                ov01_021F1640(param0);
                return;
            }
        }
        if (work->unk18.unk20 != -1 && work->unk18.unk20 != MapObject_GetFacingDirection(obj)) {
            ov01_021F1640(param0);
        }
        break;
    }
}

void ov01_021FFE98(void *param0, UnkOv01_021FFC0C_Work *work) {
    VecFx32 vec;
    if (sub_0205F0A8(work->unk18.unk18, work->unk8, work->unkC) == 0) {
        ov01_021F1640(param0);
        return;
    }
    sub_02068DB8(param0, &vec);
    sub_02023E50(work->unk3C, &vec);
}
