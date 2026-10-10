#include "global.h"
#include "bg_window.h"
#include "gf_gfx_planes.h"
#include "heap.h"

extern void *memset(void *dst, int c, unsigned int n);
extern void sub_0200FC20(u16 color);
extern void ov01_021EFEC8(void *a0, s32 a1, s32 a2, s32 a3, s32 a4);
extern u8 ov01_021EFF28(void *a0);
extern void ov01_021EFCF8(int a0, int a1, int a2, void *a3, int a4);
extern void ov01_021EFCDC(void *a0, void *a1);
extern void ov01_021F12B4(void *a0, int a1);
extern void ov01_021F12D0(void *a0);
extern void ov01_021F12E8(void *a0, int a1, int a2, int a3, int a4, int a5, u32 a6, int a7, int a8);
extern void ov120_0225F6AC(void *a0, int a1, int a2, int a3);
extern void ov120_0225F6BC(void *a0);
extern void ov120_0225FECC(void *a0, void *a1);
extern BOOL ov120_0225FEE8(void *a0);

extern const BgTemplate ov120_022601BC;
extern const BgTemplate ov120_022601D8;

typedef struct UnkStruct_ov120_0225FF00_Sub10 {
    u8 filler0[8];
    BgConfig *bgConfig;
} UnkStruct_ov120_0225FF00_Sub10;

typedef struct UnkStruct_ov120_0225FF00 {
    int state;
    int unk4;
    u8 filler8[4];
    u8 *work;
    UnkStruct_ov120_0225FF00_Sub10 *unk10;
    int *unk14;
} UnkStruct_ov120_0225FF00;

#define W32(o) (*(s32 *)(work + (o)))
#define W8(o) (*(u8 *)(work + (o)))

void ov120_0225FF00(void *task, UnkStruct_ov120_0225FF00 *p, int dir) {
    u8 *work = p->work;
    int v;
    s32 old;

    switch (p->state) {
    case 0:
        p->work = Heap_Alloc(4, 0x70);
        memset(p->work, 0, 0x70);
        work = p->work;
        GfGfx_EngineATogglePlanes(2, 1);
        GfGfx_EngineATogglePlanes(8, 1);
        *(vu32 *)0x04000000 = (*(vu32 *)0x04000000 & 0xFFFFE0FF) | 0x1500;
        FreeBgTilemapBuffer(p->unk10->bgConfig, 1);
        InitBgFromTemplate(p->unk10->bgConfig, 1, &ov120_022601BC, 0);
        BgClearTilemapBufferAndCommit(p->unk10->bgConfig, 1);
        FreeBgTilemapBuffer(p->unk10->bgConfig, 3);
        InitBgFromTemplate(p->unk10->bgConfig, 3, &ov120_022601D8, 0);
        BgClearTilemapBufferAndCommit(p->unk10->bgConfig, 3);
        SetBgPriority(2, 0);
        SetBgPriority(8, 0);
        GfGfx_EngineASetPlanes(0x15);
        ov120_0225FECC(work + 0x50, p);
        p->state = 1;
        break;
    case 1:
        if (ov120_0225FEE8(work + 0x50)) {
            BG_SetMaskColor(1, 0);
            ov01_021EFEC8(work + 0xC, 0, 0x140000, 0, 0x12);
            ov01_021EFEC8(work + 0x24, 0, 0x140000, 0x8000, 0x1E);
            ov120_0225F6AC(work + 0x3C, 0, 0x10, 0xF);
            ScheduleSetBgPosText(p->unk10->bgConfig, 3, 3, W32(0xC) >> 12);
            ScheduleSetBgPosText(p->unk10->bgConfig, 3, 0, 0);
            ScheduleSetBgPosText(p->unk10->bgConfig, 1, 3, W32(0x24) >> 12);
            ScheduleSetBgPosText(p->unk10->bgConfig, 1, 0, 0);
            if (dir) {
                v = 0x10;
            } else {
                v = -0x10;
            }
            ov01_021EFCF8(1, v, v, &p->unk4, 2);
            p->state = 2;
        }
        break;
    case 2:
        if (p->unk4) {
            ov01_021F12B4(work, 4);
            p->state = 3;
        }
        break;
    case 3:
        W32(0x48) = 10;
        ov01_021F12E8(work, 0, 0xBF, 0xD52, 0x3000, 400, 0x04000010, 0, 4);
        W8(0x4D) = 1;
        GfGfx_EngineATogglePlanes(8, 1);
        p->state = 4;
        // fallthrough
    case 4:
        old = W32(0x48);
        W32(0x48) = old - 1;
        if (old == 0) {
            p->state = 5;
        }
        break;
    case 5:
        W8(0x4C) = 1;
        GfGfx_EngineATogglePlanes(2, 1);
        p->state = 6;
        break;
    case 6:
        if (W8(0x4E)) {
            p->state = 7;
        }
        break;
    case 7:
        sub_0200FC20(0);
        if (p->unk14 != NULL) {
            *p->unk14 = 1;
        }
        ov01_021F12D0(work);
        ov01_021EFCDC(p, task);
        return;
    }

    if (W8(0x4C)) {
        W8(0x4E) = ov01_021EFF28(work + 0xC);
        ScheduleSetBgPosText(p->unk10->bgConfig, 1, 3, W32(0xC) >> 12);
    }
    if (W8(0x4D)) {
        W8(0x4F) = ov01_021EFF28(work + 0x24);
        ov120_0225F6BC(work + 0x3C);
        ScheduleSetBgPosText(p->unk10->bgConfig, 3, 3, W32(0x24) >> 12);
        ScheduleSetBgPosText(p->unk10->bgConfig, 3, 0, *(s16 *)(work + 0x3C));
    }
}
