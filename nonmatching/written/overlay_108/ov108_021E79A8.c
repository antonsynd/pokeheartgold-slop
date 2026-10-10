#include "global.h"

#define U8AT(p, off)  (*(u8 *)((u8 *)(p) + (off)))
#define PTRAT(p, off) (*(void **)((u8 *)(p) + (off)))

extern void BgClearTilemapBufferAndCommit(void *bgConfig, u32 bgId);
extern void ScheduleBgTilemapBufferTransfer(void *bgConfig, u32 bgId);
extern void CopyToBgTilemapRect(void *bgConfig, u32 bgId, u8 destX, u8 destY, u8 destWidth, u8 destHeight, const void *buffer, u8 srcX, u8 srcY, u8 srcWidth, u8 srcHeight);
extern void FillBgTilemapRect(void *bgConfig, u32 bgId, u16 fillValue, u8 x, u8 y, u8 width, u8 height, u8 mode);

void ov108_021E79A8(void *data, u32 bgId, int pos, int enable) {
    u8 x, y;
    u16 *scr;

    if (enable == 0) {
        BgClearTilemapBufferAndCommit(PTRAT(data, 0x340), bgId);
        ScheduleBgTilemapBufferTransfer(PTRAT(data, 0x340), bgId);
        return;
    }
    scr = PTRAT(data, 0x4D4);
    CopyToBgTilemapRect(PTRAT(data, 0x340), bgId, 0, (u8)(0x18 * (U8AT(data, 0x184E2) >> 3)), 0x20, 0x18, (u8 *)scr + 0xC, 0, 0, (u8)(scr[0] >> 3), (u8)(scr[1] >> 3));
    if ((U8AT(data, 0x184E2) >> 3) == 0) {
        x = (u8)((pos % 3) * 9 + 3);
        y = (u8)((pos / 3) * 9 + 3);
        if (bgId == 4) {
            scr = PTRAT(data, 0x4D4);
            CopyToBgTilemapRect(PTRAT(data, 0x340), bgId, 0, 0x15, 0x20, 3, (u8 *)scr + 0xC, 0, 0x18, (u8)(scr[0] >> 3), (u8)(scr[1] >> 3));
        }
    } else {
        x = (u8)((pos % 3) * 10 + 2);
        y = (u8)((pos / 3) * 9 + 0x1B);
    }
    FillBgTilemapRect(PTRAT(data, 0x340), bgId, 0, x, y, 8, 8, 0x11);
    ScheduleBgTilemapBufferTransfer(PTRAT(data, 0x340), bgId);
}
