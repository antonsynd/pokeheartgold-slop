#include "global.h"
#include "bg_window.h"
#include "mail.h"
#include "pm_string.h"

extern void ov103_021EE3E4(Window *window, String *string, int a2, int a3, int a4, u32 color, int a6);
extern void sub_02019A60(void *a0, int a1, Window *window);

void ov103_021EE468(u8 *data, int a1, int windowIdx, int mailIdx) {
    u8 *work = *(u8 **)(data + 0xC);
    Window *window = (Window *)(work + 0x48 + windowIdx * 0x10);
    Mail *mail = *(Mail **)(work + mailIdx * 4 + 0x27C);
    u32 i;
    u32 x;

    CopyU16ArrayToString(*(String **)(*(u8 **)(data + 0xC) + 0x230), Mail_GetAuthorNamePtr(mail));
    for (i = 0, x = 0; i < 8; i++, x += 8) {
        BlitBitmapRectToWindow(window, *(u8 **)(data + 0xC) + 0x8, 0, 0, 8, 8, (u16)x, 0, 8, 8);
        BlitBitmapRectToWindow(window, *(u8 **)(data + 0xC) + 0x28, 0, 0, 8, 8, (u16)x, 8, 8, 8);
    }
    if (Mail_GetAuthorGender(mail) == 0) {
        ov103_021EE3E4(window, *(String **)(*(u8 **)(data + 0xC) + 0x230), 0, 0, 4, 0x30200, 0);
    } else {
        ov103_021EE3E4(window, *(String **)(*(u8 **)(data + 0xC) + 0x230), 0, 0, 4, 0x50400, 0);
    }
    CopyWindowPixelsToVram_TextMode(window);
    sub_02019A60(*(void **)(*(u8 **)(data + 0xC) + 4), a1, window);
}
