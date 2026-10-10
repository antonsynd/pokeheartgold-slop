#include "global.h"
#include "bg_window.h"
#include "render_window.h"
#include "sys_task_api.h"

extern u8 *ov01_021EDC28(void *fieldSystem, u32 x, u32 y, u32 initCursorPos, u8 cancellable, u16 *p_ret, void *msgFmt, void *window, void *msgData);
extern u32 GetFontAttribute(u32 fontId, u32 attr);
extern void ov01_021EE754(u8 *menu, u32 msgId, u32 x, u32 y);
extern u32 ov01_021EE934(u32 mapId, u16 floor, u8 *xOut);
extern void ov01_021EE7B8(SysTask *task, void *data);

void PrintCurFloorInNewWindow(u8 *fieldSystem, u32 x, u32 y, u16 *p_ret, void *msgFmt, u16 floor) {
    u8 xOut;
    u8 *menu = ov01_021EDC28(fieldSystem, x, y, 0, 0, p_ret, msgFmt, NULL, NULL);
    u32 width = GetFontAttribute(0, 0) << 3;
    u16 msgId;
    if ((width & 7) == 0) {
        width = width >> 3;
    } else {
        width = (width >> 3) + 1;
    }
    AddWindowParameterized(*(BgConfig **)(*(u8 **)menu + 8), (Window *)(menu + 8), 3, menu[0x98], menu[0x99], (u8)width, 4, 13, 0xDD);
    LoadUserFrameGfx1(*(BgConfig **)(*(u8 **)menu + 8), 3, 0x3D9, 11, 0, 4);
    DrawFrameAndWindow1((Window *)(menu + 8), TRUE, 0x3D9, 11);
    FillWindowPixelRect((Window *)(menu + 8), 15, 0, 0, (u16)(width << 3), 0x20);
    ov01_021EE754(menu, 0x10, 0, 0);
    msgId = ov01_021EE934(**(u32 **)(fieldSystem + 0x20), floor, &xOut);
    ov01_021EE754(menu, msgId, xOut, 0x10);
    *(Window **)(menu + 0xB0) = (Window *)(menu + 8);
    CopyWindowToVram((Window *)(menu + 8));
    *(SysTask **)(menu + 4) = SysTask_CreateOnMainQueue(ov01_021EE7B8, menu, 0);
}
