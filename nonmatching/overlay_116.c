#include "global.h"

#include "camera.h"
#include "field_system.h"
#include "gf_gfx_planes.h"
#include "heap.h"
#include "screen_fade.h"

typedef struct {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    s32 unkC;
} UnkStruct_ov116_0225F054;

typedef struct {
    u32 unk0;
    u32 unk4;
    s32 unk8;
    u8 unkC[0x10];
    s32 unk1C;
    u8 unk20[0x14];
    s32 unk34;
} UnkStruct_ov116_0225F1BC;

typedef struct {
    u32 unk0;
    int unk4;
    u8 unk8[4];
    void *unkC;
    FieldSystem *unk10;
    int *unk14;
} UnkStruct_ov116_Work;

typedef struct {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    s32 unk4;
    s32 unk8;
    s32 unkC;
    u16 unk10;
    u16 unk12;
} UnkStruct_ov116_0225F384;

typedef struct {
    s32 unk0;
    u16 unk4;
    u16 unk6;
    u16 unk8;
    u16 unkA;
} UnkStruct_ov116_0225F3AC;

extern void ov01_021EFCDC(UnkStruct_ov116_Work *work, void *task);
extern void ov01_021EFCF8(int a0, int a1, int a2, int *a3, int a4);
extern void ov01_021EFE34(void *tween, int start, int end, int frames);
extern BOOL ov01_021EFE44(void *tween);
extern void ov01_021EFEC8(void *tween, int start, int end, int speed, int frames);
extern BOOL ov01_021EFF28(void *tween);
extern u32 ov01_021F467C(u32 a0, u32 a1);
extern void ov01_021F46DC(u32 *a0);

static void ov116_0225F020(FieldSystem *fieldSystem, const UnkStruct_ov116_0225F3AC *entry);
void ov116_0225F054(void *task, UnkStruct_ov116_Work *work);
static void ov116_0225F1BC(void *task, UnkStruct_ov116_Work *work, const UnkStruct_ov116_0225F384 *config);
void ov116_0225F364(void *task, UnkStruct_ov116_Work *work);
void ov116_0225F374(void *task, UnkStruct_ov116_Work *work);

static const UnkStruct_ov116_0225F384 _0225F384 = {
    0x28,
    0x05,
    0x08,
    0x3C,
    0x00000100,
    (s32)0xFFD6C000,
    0x00000800,
    0x0005,
    0x000D,
};

static const UnkStruct_ov116_0225F384 ov116_0225F398 = {
    0x28,
    0x05,
    0x08,
    0x3C,
    0x00000100,
    (s32)0xFFDDA000,
    0x00000800,
    0x0005,
    0x000D,
};

static const UnkStruct_ov116_0225F3AC ov116_0225F3AC[] = {
    { 0x0029AEC1, 0xD602, 0x0000, 0x05C1, 0x0004 },
    { 0x0029AEC1, 0xCF02, 0xFF00, 0x0601, 0x0004 },
    { 0x0029AEC1, 0xE602, 0x1000, 0x0691, 0x0004 },
    { 0x0029AEC1, 0xD602, 0x0A00, 0x0711, 0x0003 },
    { 0x0029AEC1, 0xE102, 0xF000, 0x0780, 0x0003 },
    { 0x0029AEC1, 0xC602, 0x0000, 0x0751, 0x0003 },
    { 0x0029AEC1, 0xE002, 0xF000, 0x0800, 0x0003 },
    { 0x0029AEC1, 0xD602, 0x0000, 0x0802, 0x0003 },
    { 0x0029AEC1, 0xD002, 0x1000, 0x0800, 0x0003 },
    { 0x0029AEC1, 0xD902, 0xF500, 0x0751, 0x0003 },
    { 0x0029AEC1, 0xD002, 0x0A00, 0x04C1, 0x0002 },
    { 0x0029AEC1, 0xE002, 0xF000, 0x03C1, 0x0002 },
    { 0x0029AEC1, 0xD002, 0xF000, 0x0650, 0x0001 },
    { 0x0029AEC1, 0xE002, 0xA000, 0x0241, 0x0001 },
    { 0x0029AEC1, 0xE1A2, 0x0500, 0x0500, 0x0001 },
    { 0x0029AEC1, 0xD602, 0x0000, 0x0241, 0x0001 },
};

static void ov116_0225F020(FieldSystem *fieldSystem, const UnkStruct_ov116_0225F3AC *entry) {
    CameraAngle angle;
    Camera_SetPerspectiveAngle(entry->unk8, fieldSystem->camera);
    Camera_SetDistance(entry->unk0, fieldSystem->camera);
    angle.x = entry->unk4;
    angle.y = entry->unk6;
    angle.z = 0;
    Camera_SetAnglePos(&angle, fieldSystem->camera);
}

void ov116_0225F054(void *task, UnkStruct_ov116_Work *work) {
    UnkStruct_ov116_0225F054 *sub = work->unkC;
    switch (work->unk0) {
    case 0: {
        u8 *p;
        int i;
        p = Heap_Alloc(HEAP_ID_FIELD1, 0x10);
        work->unkC = p;
        for (i = 0; i < 0x10; i++) {
            p[i] = 0;
        }
        GfGfx_EngineATogglePlanes(2, 0);
        GfGfx_EngineATogglePlanes(4, 0);
        GfGfx_EngineATogglePlanes(8, 0);
        work->unk0++;
        break;
    }
    case 1:
        ov01_021EFCF8(1, 0x10, 0x10, &work->unk4, 1);
        work->unk0++;
        break;
    case 2:
        if (work->unk4 == 0) {
            break;
        }
        work->unk0++;
        break;
    case 3:
        sub->unk0 = ov01_021F467C(3, 0xF);
        sub->unk8 = 0;
        sub->unkC = ov116_0225F3AC[0].unkA;
        work->unk0++;
        break;
    case 4: {
        u32 index;
        if (--sub->unkC >= 0) {
            break;
        }
        ov116_0225F020(work->unk10, &ov116_0225F3AC[sub->unk8]);
        index = ++sub->unk8;
        if (index < 0x10) {
            sub->unkC = ov116_0225F3AC[index].unkA;
            break;
        }
        work->unk0++;
        break;
    }
    case 5:
        BeginNormalPaletteFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, 0x7FFF, 10, 1, HEAP_ID_FIELD1);
        work->unk0++;
        break;
    case 6:
        if (!IsPaletteFadeFinished()) {
            break;
        }
        work->unk4 = 0;
        work->unk0++;
        break;
    case 7:
        sub_0200FBF4(1, 0x7FFF);
        ov01_021F46DC(&sub->unk0);
        reg_G2_BLDCNT = 0;
        if (work->unk14 != NULL) {
            *work->unk14 = 1;
        }
        ov01_021EFCDC(work, task);
        sub_0200FBF4(1, 0x7FFF);
        break;
    }
}

static void ov116_0225F1BC(void *task, UnkStruct_ov116_Work *work, const UnkStruct_ov116_0225F384 *config) {
    UnkStruct_ov116_0225F1BC *sub = work->unkC;
    switch (work->unk0) {
    case 0:
        work->unkC = Heap_Alloc(HEAP_ID_FIELD1, 0x38);
        memset(work->unkC, 0, 0x38);
        GfGfx_EngineATogglePlanes(2, 0);
        GfGfx_EngineATogglePlanes(4, 0);
        GfGfx_EngineATogglePlanes(8, 0);
        work->unk0++;
        break;
    case 1:
        ov01_021EFCF8(1, 0x10, 0x10, &work->unk4, 1);
        work->unk0++;
        break;
    case 2:
        if (work->unk4 == 0) {
            break;
        }
        work->unk0++;
        break;
    case 3: {
        int angle;
        sub->unk0 = ov01_021F467C(config->unk10, config->unk12);
        angle = Camera_GetPerspectiveAngle(work->unk10->camera);
        ov01_021EFE34(&sub->unk8, angle, angle + config->unk4, config->unk0);
        work->unk0++;
        break;
    }
    case 4: {
        BOOL done = ov01_021EFE44(&sub->unk8);
        int angle = sub->unk8;
        Camera_SetPerspectiveAngle((u16)angle, work->unk10->camera);
        if (done == 1) {
            work->unk0++;
            sub->unk34 = config->unk1;
        }
        break;
    }
    case 5: {
        int distance;
        if (--sub->unk34 >= 0) {
            break;
        }
        distance = Camera_GetDistance(work->unk10->camera);
        ov01_021EFEC8(&sub->unk1C, distance, distance + config->unk8, config->unkC, config->unk2);
        work->unk0++;
        break;
    }
    case 6: {
        BOOL done = ov01_021EFF28(&sub->unk1C);
        Camera_SetDistance(sub->unk1C, work->unk10->camera);
        if (done == 1) {
            work->unk0++;
        }
        break;
    }
    case 7:
        BeginNormalPaletteFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, 0x7FFF, config->unk3, 1, HEAP_ID_FIELD1);
        work->unk0++;
        break;
    case 8:
        if (!IsPaletteFadeFinished()) {
            break;
        }
        work->unk4 = 0;
        work->unk0++;
        break;
    case 9:
        sub_0200FBF4(1, 0x7FFF);
        ov01_021F46DC(&sub->unk0);
        reg_G2_BLDCNT = 0;
        if (work->unk14 != NULL) {
            *work->unk14 = 1;
        }
        ov01_021EFCDC(work, task);
        sub_0200FBF4(1, 0x7FFF);
        break;
    }
}

void ov116_0225F364(void *task, UnkStruct_ov116_Work *work) {
    ov116_0225F1BC(task, work, &_0225F384);
}

void ov116_0225F374(void *task, UnkStruct_ov116_Work *work) {
    ov116_0225F1BC(task, work, &ov116_0225F398);
}
