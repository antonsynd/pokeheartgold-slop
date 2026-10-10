#include "global.h"
#include "bg_window.h"
#include "render_window.h"
#include "sys_task_api.h"

extern u32 ov01_021EDDD8(u8 *menu);
extern u64 _s32_div_f(s32 a, s32 b);
extern void ov01_021EEA44(u8 *menu, u32 columns, u32 rows);
extern void *Create2dMenu(void *template, u8 initialSelection, u8 heapID);
extern void ov01_021EDE8C(SysTask *task, void *data);

void ov01_021EE974(u8 *menu, u32 columns) {
    u32 w = ov01_021EDDD8(menu);
    u32 tiles;
    u32 count;
    u8 rows;
    if ((w & 7) == 0) {
        tiles = w >> 3;
    } else {
        tiles = (w >> 3) + 1;
    }
    count = menu[0x9B];
    rows = (u8)(u32)_s32_div_f(count, columns);
    if ((u32)(_s32_div_f(count, columns) >> 32) != 0) {
        rows = rows + 1;
    }
    AddWindowParameterized(*(BgConfig **)(*(u8 **)menu + 8), (Window *)(menu + 8), 3, menu[0x98], menu[0x99], (u8)(tiles * columns), (u8)(rows << 1), 13, 0x3D);
    LoadUserFrameGfx1(*(BgConfig **)(*(u8 **)menu + 8), 3, 0x3D9, 11, 0, 4);
    DrawFrameAndWindow1((Window *)(menu + 8), TRUE, 0x3D9, 11);
    ov01_021EEA44(menu, columns, rows);
    *(void **)(menu + 0xB8) = Create2dMenu(menu + 0xAC, menu[0x96], 4);
    *(SysTask **)(menu + 4) = SysTask_CreateOnMainQueue(ov01_021EDE8C, menu, 0);
}
