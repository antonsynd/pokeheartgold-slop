#include "field/signpost.h"

#include "global.h"

#include "field_system.h"
#include "heap.h"
#include "overlay_01.h"

extern void sub_0205B63C(BgConfig *bgConfig, Window *window, u32 a, u32 b);
extern void sub_0205B6A0(Window *window, u32 a, u32 b);

static void ov01_021F3E10(FieldSystem *fieldSystem);
static void ov01_021F3E4C(FieldSystem *fieldSystem);
static int ov01_021F3EA0(FieldSystem *fieldSystem);
static int ov01_021F3EE0(FieldSystem *fieldSystem);

Signpost *Signpost_Init(enum HeapID heapID) {
    Signpost *signpost = Heap_Alloc(heapID, sizeof(Signpost));
    u8 *ptr = (u8 *)signpost;
    u32 n = sizeof(Signpost);
    do {
        *ptr++ = 0;
    } while (--n);
    return signpost;
}

void Signpost_Free(Signpost *signpost) {
    if (signpost->isActive) {
        RemoveWindow(&signpost->window);
    }
    Heap_Free(signpost);
}

void ov01_021F3D68(Signpost *signpost, u8 type, u16 narcMemberID) {
    signpost->type = type;
    signpost->NARCMemberID = narcMemberID;
}

void ov01_021F3D70(Signpost *signpost, u8 a1) {
    signpost->command = a1;
}

Window *ov01_021F3D80(Signpost *signpost) {
    return &signpost->window;
}

u8 ov01_021F3D84(Signpost *signpost) {
    return signpost->type;
}

BOOL ov01_021F3D88(Signpost *signpost) {
    return signpost->command == 0;
}

void Signpost_DoCurrentCommand(FieldSystem *fieldSystem) {
    Signpost *signpost = fieldSystem->signpost;
    switch (signpost->command) {
    case 0:
        break;
    case 1:
        ov01_021F3E10(fieldSystem);
        signpost->command = 0;
        break;
    case 2:
        if (ov01_021F3EE0(fieldSystem) == 1) {
            signpost->command = 0;
        }
        break;
    case 3:
        if (ov01_021F3EA0(fieldSystem) == 1) {
            signpost->command = 0;
        }
        break;
    case 4:
        ov01_021F3E4C(fieldSystem);
        signpost->command = 0;
        break;
    }
}

void ov01_021F3DFC(FieldSystem *fieldSystem, u8 a1) {
    ov01_021F3D70(fieldSystem->signpost, a1);
    Signpost_DoCurrentCommand(fieldSystem);
}

static void ov01_021F3E10(FieldSystem *fieldSystem) {
    BgSetPosTextAndCommit(fieldSystem->bgConfig, 3, BG_POS_OP_SET_Y, -48);
    if (!fieldSystem->signpost->isActive) {
        sub_0205B63C(fieldSystem->bgConfig, &fieldSystem->signpost->window, fieldSystem->signpost->type, 3);
        fieldSystem->signpost->isActive = 1;
    }
    sub_0205B6A0(&fieldSystem->signpost->window, fieldSystem->signpost->type, fieldSystem->signpost->NARCMemberID);
}

static void ov01_021F3E4C(FieldSystem *fieldSystem) {
    if (fieldSystem->signpost->isActive) {
        RemoveWindow(&fieldSystem->signpost->window);
        FillBgTilemapRect(fieldSystem->bgConfig, 3, 0, 0, 0x12, 0x20, 6, 0x10);
        BgCommitTilemapBufferToVram(fieldSystem->bgConfig, 3);
        BgSetPosTextAndCommit(fieldSystem->bgConfig, 3, BG_POS_OP_SET_Y, 0);
        fieldSystem->signpost->isActive = 0;
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
