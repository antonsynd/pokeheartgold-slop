#include "global.h"

#include "field_system.h"
#include "heap.h"
#include "overlay_01.h"

extern void sub_0205B63C(BgConfig *bgConfig, Window *window, u32 a, u32 b);
extern void sub_0205B6A0(Window *window, u32 a, u32 b);

// Locally declared. The frozen overlay_01_021F3D38.h declares ov01_021F3DFC with
// `int a1` (the matching-time view for field_system.c); this TU needs `u8 a1` so
// the call to ov01_021F3D70 (u8 param) does not emit an int->u8 truncation that
// the target asm lacks. Not including that header keeps field_system.c untouched.
struct FieldSystemUnkSub68 *ov01_021F3D38(enum HeapID heapId);
void ov01_021F3D50(struct FieldSystemUnkSub68 *self);
void ov01_021F3DFC(FieldSystem *fieldSystem, u8 a1);

static void ov01_021F3E10(FieldSystem *fieldSystem);
static void ov01_021F3E4C(FieldSystem *fieldSystem);
static int ov01_021F3EA0(FieldSystem *fieldSystem);
static int ov01_021F3EE0(FieldSystem *fieldSystem);

struct FieldSystemUnkSub68 *ov01_021F3D38(enum HeapID heapId) {
    struct FieldSystemUnkSub68 *self = Heap_Alloc(heapId, sizeof(struct FieldSystemUnkSub68));
    u8 *ptr = (u8 *)self;
    u32 n = sizeof(struct FieldSystemUnkSub68);
    do {
        *ptr++ = 0;
    } while (--n);
    return self;
}

void ov01_021F3D50(struct FieldSystemUnkSub68 *self) {
    if (self->unk13_7) {
        RemoveWindow(&self->unk0);
    }
    Heap_Free(self);
}

void ov01_021F3D68(struct FieldSystemUnkSub68 *self, u8 a1, u16 a2) {
    self->unk12 = a1;
    self->unk10 = a2;
}

void ov01_021F3D70(struct FieldSystemUnkSub68 *self, u8 a1) {
    self->unk13_0 = a1;
}

Window *ov01_021F3D80(struct FieldSystemUnkSub68 *self) {
    return &self->unk0;
}

u8 ov01_021F3D84(struct FieldSystemUnkSub68 *self) {
    return self->unk12;
}

BOOL ov01_021F3D88(struct FieldSystemUnkSub68 *self) {
    return self->unk13_0 == 0;
}

void ov01_021F3D98(FieldSystem *fieldSystem) {
    struct FieldSystemUnkSub68 *self = fieldSystem->unk68;
    switch (self->unk13_0) {
    case 0:
        break;
    case 1:
        ov01_021F3E10(fieldSystem);
        self->unk13_0 = 0;
        break;
    case 2:
        if (ov01_021F3EE0(fieldSystem) == 1) {
            self->unk13_0 = 0;
        }
        break;
    case 3:
        if (ov01_021F3EA0(fieldSystem) == 1) {
            self->unk13_0 = 0;
        }
        break;
    case 4:
        ov01_021F3E4C(fieldSystem);
        self->unk13_0 = 0;
        break;
    }
}

void ov01_021F3DFC(FieldSystem *fieldSystem, u8 a1) {
    ov01_021F3D70(fieldSystem->unk68, a1);
    ov01_021F3D98(fieldSystem);
}

static void ov01_021F3E10(FieldSystem *fieldSystem) {
    BgSetPosTextAndCommit(fieldSystem->bgConfig, 3, BG_POS_OP_SET_Y, -48);
    if (!fieldSystem->unk68->unk13_7) {
        sub_0205B63C(fieldSystem->bgConfig, &fieldSystem->unk68->unk0, fieldSystem->unk68->unk12, 3);
        fieldSystem->unk68->unk13_7 = 1;
    }
    sub_0205B6A0(&fieldSystem->unk68->unk0, fieldSystem->unk68->unk12, fieldSystem->unk68->unk10);
}

static void ov01_021F3E4C(FieldSystem *fieldSystem) {
    if (fieldSystem->unk68->unk13_7) {
        RemoveWindow(&fieldSystem->unk68->unk0);
        FillBgTilemapRect(fieldSystem->bgConfig, 3, 0, 0, 0x12, 0x20, 6, 0x10);
        BgCommitTilemapBufferToVram(fieldSystem->bgConfig, 3);
        BgSetPosTextAndCommit(fieldSystem->bgConfig, 3, BG_POS_OP_SET_Y, 0);
        fieldSystem->unk68->unk13_7 = 0;
    }
}

static int ov01_021F3EA0(FieldSystem *fieldSystem) {
    int y = Bg_GetYpos(fieldSystem->bgConfig, GF_BG_LYR_MAIN_3);
    if (y == 0) {
        return 1;
    }
    if (y <= -48 || y >= 0) {
        BgSetPosTextAndCommit(fieldSystem->bgConfig, 3, BG_POS_OP_SET_Y, -48);
    }
    BgSetPosTextAndCommit(fieldSystem->bgConfig, 3, BG_POS_OP_ADD_Y, 0x10);
    return 0;
}

static int ov01_021F3EE0(FieldSystem *fieldSystem) {
    int y = Bg_GetYpos(fieldSystem->bgConfig, GF_BG_LYR_MAIN_3);
    if (y == -48) {
        FillBgTilemapRect(fieldSystem->bgConfig, 3, 0, 0, 0x12, 0x20, 6, 0x10);
        BgCommitTilemapBufferToVram(fieldSystem->bgConfig, 3);
        BgSetPosTextAndCommit(fieldSystem->bgConfig, 3, BG_POS_OP_SET_Y, 0);
        return 1;
    }
    if (y <= -48 || y >= 0) {
        BgSetPosTextAndCommit(fieldSystem->bgConfig, 3, BG_POS_OP_SET_Y, 0);
    }
    BgSetPosTextAndCommit(fieldSystem->bgConfig, 3, BG_POS_OP_SUB_Y, 0x10);
    return 0;
}
