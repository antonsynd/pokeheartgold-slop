#include "overlay_01_02200858.h"

#include "global.h"

#include "map_object.h"
#include "unk_0205FD20.h"

typedef struct UnkOv01_02200858 UnkOv01_02200858;

typedef struct {
    u8 unk0[0xc];
    NNSG3dResMdl *unkC;
    u8 unk10[4];
} UnkOv01_02200858_sub;

struct UnkOv01_02200858 {
    void *unk0;
    UnkOv01_02200858_sub unk4;
    NNSG3dRenderObj unk18;
};

typedef struct {
    FieldSystem *unk0;
    UnkOv01_02200858 *unk4;
    PlayerAvatar *unk8;
} UnkOv01_02200858_Data;

typedef struct {
    int unk0;
    int unk4;
    u8 unk8;
    u8 filler9[0xb];
    int unk14;
    int unk18;
    int unk1c;
    int unk20;
    UnkOv01_02200858_Data data;
} UnkOv01_02200858_Work;

typedef BOOL (*UnkOv01_02200858_Cb1)(void *, UnkOv01_02200858_Work *);
typedef void (*UnkOv01_02200858_Cb2)(void *, UnkOv01_02200858_Work *);

typedef struct {
    u32 unk0;
    UnkOv01_02200858_Cb1 unk4;
    UnkOv01_02200858_Cb1 unk8;
    UnkOv01_02200858_Cb2 unkC;
    UnkOv01_02200858_Cb2 unk10;
} UnkOv01_02200858_Template;

extern UnkOv01_02200858 *ov01_021F1430(void *a0, int a1, int a2, int a3);
extern void ov01_021F1448(void *a0);
extern FieldSystem *ov01_021F146C(LocalMapObject *mapObject);
extern UnkOv01_02200858 *ov01_021F1450(FieldSystem *fieldSystem, int a1);
extern void *ov01_021F1620(FieldSystem *fieldSystem, const UnkOv01_02200858_Template *a1, VecFx32 *a2, int a3, UnkOv01_02200858_Data *a4, int a5);
extern void ov01_021F1640(int a0);
extern void ov01_021F19F4(void *a0, UnkOv01_02200858_sub *a1, int a2, int a3, int a4);

extern UnkOv01_02200858_Data *sub_02068D98(void *a0);
extern void sub_02068DA8(void *a0, VecFx32 *a1);
extern void sub_02068DB8(void *a0, VecFx32 *a1);
extern void sub_02069784(UnkOv01_02200858_sub *a0);
extern void sub_02069978(NNSG3dRenderObj *a0, UnkOv01_02200858_sub *a1);
extern void sub_020699AC(NNSG3dRenderObj *a0, VecFx32 *a1, VecFx32 *a2, MtxFx33 *a3);
extern void sub_02020DA4(MtxFx33 *rotation, u16 xAngle, u16 yAngle, u16 zAngle);
extern BOOL sub_0205F0A8(LocalMapObject *object, u32 objectId, u32 mapId);
extern u16 sub_0205F504(LocalMapObject *object);
extern BOOL sub_0205B718(u8 tile);
extern BOOL sub_0205B724(u8 tile);
extern BOOL sub_0205B730(u8 tile);
extern BOOL sub_0205B73C(u8 tile);

UnkOv01_02200858 *ov01_02200858(void *a0);
void ov01_02200874(UnkOv01_02200858 *manager);

static void ov01_02200884(UnkOv01_02200858 *manager);
static void ov01_022008A8(UnkOv01_02200858 *manager);
static BOOL ov01_02200900(void *param0, UnkOv01_02200858_Work *work);
static BOOL ov01_02200938(void *param0, UnkOv01_02200858_Work *work);
static void ov01_0220093C(void *param0, UnkOv01_02200858_Work *work);
static void ov01_02200A08(void *param0, UnkOv01_02200858_Work *work);
static int ov01_02200AB0(u8 tile);

static const VecFx32 ov01_02209334 = { 0x1000, 0x1000, 0x1000 };

static const UnkOv01_02200858_Template ov01_02209340 = {
    sizeof(UnkOv01_02200858_Work), ov01_02200900, ov01_02200938, ov01_0220093C, ov01_02200A08
};

static const VecFx32 ov01_02209354[4][2] = {
    { { 0, 0, 0 }, { 0, 0, -0x2000 } },
    { { 0, 0, 0 }, { 0, 0, 0x2000 }  },
    { { 0, 0, 0 }, { -0x2000, 0, 0 } },
    { { 0, 0, 0 }, { 0x2000, 0, 0 }  },
};

UnkOv01_02200858 *ov01_02200858(void *a0) {
    UnkOv01_02200858 *manager = ov01_021F1430(a0, sizeof(UnkOv01_02200858), 0, 0);
    manager->unk0 = a0;
    ov01_02200884(manager);
    return manager;
}

void ov01_02200874(UnkOv01_02200858 *manager) {
    ov01_022008A8(manager);
    ov01_021F1448(manager);
}

static void ov01_02200884(UnkOv01_02200858 *manager) {
    ov01_021F19F4(manager->unk0, &manager->unk4, 0, 0x55, 0);
    sub_02069978(&manager->unk18, &manager->unk4);
}

static void ov01_022008A8(UnkOv01_02200858 *manager) {
    sub_02069784(&manager->unk4);
}

void ov01_022008B4(PlayerAvatar *avatar) {
    UnkOv01_02200858_Data data;
    VecFx32 position = { 0, 0, 0 };
    LocalMapObject *mapObject = PlayerAvatar_GetMapObject(avatar);
    FieldSystem *fieldSystem = ov01_021F146C(mapObject);
    data.unk0 = fieldSystem;
    data.unk4 = ov01_021F1450(fieldSystem, 3);
    data.unk8 = avatar;
    ov01_021F1620(fieldSystem, &ov01_02209340, &position, 0, &data, MapObject_GetPriorityPlusValue(mapObject, 2));
}

static BOOL ov01_02200900(void *param0, UnkOv01_02200858_Work *work) {
    UnkOv01_02200858_Data *data = sub_02068D98(param0);
    LocalMapObject *mapObject;
    work->data = *data;
    mapObject = PlayerAvatar_GetMapObject(data->unk8);
    work->unk4 = -1;
    work->unk14 = MapObject_GetID(mapObject);
    work->unk18 = MapObject_GetMapID(mapObject);
    return TRUE;
}

static BOOL ov01_02200938(void *param0, UnkOv01_02200858_Work *work) {
}

static void ov01_0220093C(void *param0, UnkOv01_02200858_Work *work) {
    VecFx32 copyPosition;
    VecFx32 position;
    PlayerAvatar *avatar = work->data.unk8;
    LocalMapObject *mapObject = PlayerAvatar_GetMapObject(avatar);
    int prevDir;
    if (sub_0205F0A8(mapObject, work->unk14, work->unk18) == 0) {
        ov01_021F1640((int)param0);
        return;
    }
    prevDir = work->unk4;
    work->unk8 = sub_0205F504(mapObject);
    work->unk4 = ov01_02200AB0(work->unk8);
    work->unk0 = 0;
    if (work->unk4 == -1 || work->unk4 != PlayerAvatar_GetFacingDirection(avatar)) {
        work->unk1c = 0;
        work->unk20 = 0;
        work->unk0 = 1;
        return;
    }
    if (prevDir != work->unk4) {
        work->unk1c = 0;
        work->unk20 = 0;
    }
    sub_020611C8(MapObject_GetXCoord(mapObject) + GetDeltaXByFacingDirection(work->unk4), MapObject_GetZCoord(mapObject) + GetDeltaYByFacingDirection(work->unk4), &position);
    MapObject_CopyPositionVector(mapObject, &copyPosition);
    position.y = copyPosition.y;
    sub_02068DA8(param0, &position);
    work->unk1c++;
    if (work->unk1c > 0xf) {
        work->unk1c = 0;
        work->unk20 = (work->unk20 + 1) % 2;
    }
}

#ifdef NONMATCHING
static void ov01_02200A08(void *param0, UnkOv01_02200858_Work *work) {
    MtxFx33 rotation;
    VecFx32 translation;
    VecFx32 scale;
    const VecFx32 *row;
    const VecFx32 *offset;
    NNSG3dRenderObj *renderObj;
    int angle;
    int dir;
    if (work->unk0 == 1) {
        return;
    }
    if (work->unk4 == -1) {
        return;
    }
    scale = ov01_02209334;
    dir = work->unk4;
    row = ov01_02209354[dir];
    angle = 0;
    renderObj = &work->data.unk4->unk18;
    offset = &row[work->unk20];
    switch (dir) {
    case 0:
        angle = 0xb4;
        break;
    case 1:
        break;
    case 2:
        angle = 0x10e;
        break;
    case 3:
        angle = 0x5a;
        break;
    }
    sub_02020DA4(&rotation, 0, angle, 0);
    sub_02068DB8(param0, &translation);
    translation.x += offset->x;
    translation.y += offset->y;
    translation.z += offset->z;
    sub_020699AC(renderObj, &translation, &scale, &rotation);
}
#else
// MWCC list-scheduler tie-break: the scale-copy temp registers (r5/r4 vs r4/r2)
// and the mov-r7 / table354-load order can't be steered from C here. Kept as
// byte-exact asm; the C above documents the logic. Jump-table halfwords are
// encoded as movs instructions (offsets 0x6/0x12/0xa/0x10), per battle_hp_bar.
// clang-format off
asm static void ov01_02200A08(void *param0, UnkOv01_02200858_Work *work) {
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r3, r1, #0
	add r6, r0, #0
	ldr r0, [r3, #0]
	cmp r0, #1
	beq _A08_end
	mov r0, #0
	ldr r1, [r3, #4]
	mvn r0, r0
	cmp r1, r0
	beq _A08_end
	ldr r5, =ov01_02209334
	add r4, sp, #0
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	mov r7, #0x18
	str r0, [r4, #0]
	ldr r1, [r3, #4]
	ldr r4, =ov01_02209354
	add r0, r1, #0
	mul r0, r7
	add r0, r4, r0
	ldr r5, [r3, #0x28]
	ldr r4, [r3, #0x20]
	mov r3, #0xc
	mul r3, r4
	mov r2, #0
	add r5, #0x18
	add r4, r0, r3
	cmp r1, #3
	bhi _A08_switchend
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_A08_jt:
	lsl r6, r0, #0
	lsl r2, r2, #0
	lsl r2, r1, #0
	lsl r0, r2, #0
_A08_case0:
	mov r2, #0xb4
	b _A08_switchend
_A08_case2:
	add r2, r7, #0
	add r2, #0xf6
	b _A08_switchend
_A08_case3:
	mov r2, #0x5a
_A08_switchend:
	mov r1, #0
	lsl r2, r2, #0x10
	add r0, sp, #0x18
	lsr r2, r2, #0x10
	add r3, r1, #0
	bl sub_02020DA4
	add r0, r6, #0
	add r1, sp, #0xc
	bl sub_02068DB8
	ldr r1, [sp, #0xc]
	ldr r0, [r4, #0]
	add r2, sp, #0
	add r0, r1, r0
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r0, [r4, #4]
	add r3, sp, #0x18
	add r0, r1, r0
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r0, [r4, #8]
	add r0, r1, r0
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, sp, #0xc
	bl sub_020699AC
_A08_end:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
}
// clang-format on
#endif

static int ov01_02200AB0(u8 tile) {
    if (sub_0205B730(tile)) {
        return 0;
    }
    if (sub_0205B73C(tile)) {
        return 1;
    }
    if (sub_0205B724(tile)) {
        return 2;
    }
    if (sub_0205B718(tile)) {
        return 3;
    }
    return -1;
}
