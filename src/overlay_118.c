#include "global.h"

#include "bg_window.h"
#include "gf_gfx_planes.h"
#include "heap.h"

typedef struct {
    int unk0;
    u8 unk4[0x14];
    u32 unk18;
    int unk1c;
} SubStruct_overlay118;

typedef struct {
    u8 unk0[8];
    BgConfig *unk8;
} UnkStruct_overlay118_10;

typedef struct {
    int unk0;
    int unk4;
    u8 unk8[4];
    SubStruct_overlay118 *unkC;
    UnkStruct_overlay118_10 *unk10;
    int *unk14;
    u8 unk18[8];
    void *unk20;
} Work_overlay118;

extern void ov01_021EFCF8(int a0, int a1, int a2, int *a3, int a4);
extern void ov01_021EFEC8(SubStruct_overlay118 *a0, int a1, int a2, int a3, int a4);
extern BOOL ov01_021EFF28(SubStruct_overlay118 *a0);
extern void ov01_021EFCDC(Work_overlay118 *a0, void *a1);
extern void ov01_021F0500(void *a0, int a1, int a2, int a3, int a4, int a5, BgConfig *a6, int a7, int a8);
extern void sub_0200FC20(void);

void ov118_0225F020(void *a0, Work_overlay118 *work);

static const BgTemplate _0225F270 = {
    0,
    0,
    0x1000,
    0,
    3,
    0,
    0,
    1,
    0,
    0,
    0,
    0,
    0,
};

static const BgTemplate ov118_0225F28C = {
    0,
    0,
    0x1000,
    0,
    3,
    0,
    2,
    2,
    1,
    0,
    0,
    0,
    0,
};

void ov118_0225F020(void *a0, Work_overlay118 *work) {
    SubStruct_overlay118 *sub = work->unkC;
    switch (work->unk0) {
    case 0:
        work->unkC = Heap_Alloc(HEAP_ID_FIELD1, 0x20);
        memset(work->unkC, 0, 0x20);
        sub = work->unkC;
        GfGfx_EngineATogglePlanes(2, 1);
        GfGfx_EngineATogglePlanes(8, 1);
        reg_GX_DISPCNT = (reg_GX_DISPCNT & 0xFFFFE0FF) | (0x15 << 8);
        FreeBgTilemapBuffer(work->unk10->unk8, 1);
        InitBgFromTemplate(work->unk10->unk8, 1, &_0225F270, 0);
        BgClearTilemapBufferAndCommit(work->unk10->unk8, 1);
        FreeBgTilemapBuffer(work->unk10->unk8, 3);
        InitBgFromTemplate(work->unk10->unk8, 3, &ov118_0225F28C, 0);
        BgClearTilemapBufferAndCommit(work->unk10->unk8, 3);
        ov01_021F0500(work->unk20, 0xa8, 0xa7, 0xa6, 0, 0, work->unk10->unk8, 1, 3);
        SetBgPriority(2, 0);
        SetBgPriority(8, 0);
        BG_SetMaskColor(1, 0);
        BgSetPosTextAndCommit(work->unk10->unk8, 1, BG_POS_OP_SET_X, 0x80);
        BgSetPosTextAndCommit(work->unk10->unk8, 3, BG_POS_OP_SET_X, 0x100);
        GfGfx_EngineASetPlanes(0x15);
        work->unk0 = 1;
        break;
    case 1:
        ov01_021EFCF8(1, -0x10, -0x10, &work->unk4, 2);
        work->unk0 = 2;
        break;
    case 2:
        if (work->unk4 == 0) {
            break;
        }
        work->unk0 = 3;
        break;
    case 3:
        ov01_021EFEC8(sub, 2 << 0x12, 0, 5 << 0xc, 0x12);
        GfGfx_EngineATogglePlanes(2, 1);
        GfGfx_EngineATogglePlanes(8, 1);
        sub->unk1c = 1;
        work->unk0 = 4;
        break;
    case 4:
        if (ov01_021EFF28(sub) == 0) {
            break;
        }
        work->unk0 = 5;
        break;
    case 5:
        BgSetPosTextAndCommit(work->unk10->unk8, 1, BG_POS_OP_SET_X, 0);
        BgSetPosTextAndCommit(work->unk10->unk8, 3, BG_POS_OP_SET_X, 3 << 7);
        sub->unk1c = 0;
        if (sub->unk18++ > 5) {
            GfGfx_EngineATogglePlanes(1, 0);
            sub->unk1c = 1;
            sub->unk18 = 0;
            work->unk0 = 6;
        }
        break;
    case 6:
        ov01_021EFEC8(sub, 0, 2 << 0x12, 5 << 0xc, 0x12);
        sub->unk1c = 1;
        work->unk0 = 7;
        break;
    case 7:
        if (ov01_021EFF28(sub) == 0) {
            break;
        }
        work->unk0 = 8;
        break;
    case 8:
        sub->unk1c = 0;
        sub_0200FC20();
        if (work->unk14 != NULL) {
            *work->unk14 = 1;
        }
        ov01_021EFCDC(work, a0);
        return;
    }
    if (sub->unk1c != 0) {
        ScheduleSetBgPosText(work->unk10->unk8, 1, BG_POS_OP_SET_X, sub->unk0 >> 0xc);
        ScheduleSetBgPosText(work->unk10->unk8, 1, BG_POS_OP_SET_Y, 0);
        ScheduleSetBgPosText(work->unk10->unk8, 3, BG_POS_OP_SET_X, (3 << 7) - (sub->unk0 >> 0xc));
        ScheduleSetBgPosText(work->unk10->unk8, 3, BG_POS_OP_SET_Y, 0);
    }
}
