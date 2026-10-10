#include "global.h"
#include "bg_window.h"
#include "safari_zone.h"
#include "yes_no_prompt.h"

#define U8AT(p, off)  (*(u8 *)((u8 *)(p) + (off)))
#define S32AT(p, off) (*(int *)((u8 *)(p) + (off)))
#define PTRAT(p, off) (*(void **)((u8 *)(p) + (off)))

extern void ov108_021E7BB4(void *data, u8 a1, u8 a2);
extern void ov108_021E61E8(void *data);
extern void ov108_021E6238(void *data);
extern void ov108_021E767C(void *data, int a1);
extern void ov108_021E7700(void *data, int a1, int a2, int a3);
extern void ov108_021E79A8(void *data, int a1, int a2, int a3);

int ov108_021E5F38(void *data) {
    BOOL ret;
    int touch;
    int res = YesNoPrompt_HandleInput(PTRAT(data, 0x4C0));

    if (res == 1) {
        ret = TRUE;
        u8 areaNo = (u8)(U8AT(data, 0x184E0) + U8AT(data, 0x184DE) * 6);
        if (areaNo != U8AT(data, U8AT(data, 0x184DF) * 0x7A + 0x1C)) {
            S32AT(data, 0x184E8) = 1;
            SafariZone_InitAreaInSet((SafariZoneAreaSet *)((u8 *)data + 0x1C), U8AT(data, 0x184DF), areaNo);
        }
    } else if (res == 2) {
        u8 idx = U8AT(data, 0x184DF);
        ov108_021E7BB4(data, idx, U8AT(data, idx * 0x7A + 0x1C));
        ret = FALSE;
    } else {
        return 1;
    }

    touch = YesNoPrompt_IsInTouchMode(PTRAT(data, 0x4C0));
    if (touch != S32AT(data, 0x10)) {
        if (touch == 0) {
            ov108_021E61E8(data);
        } else {
            ov108_021E6238(data);
        }
    }
    S32AT(data, 0x10) = touch;
    YesNoPrompt_Reset(PTRAT(data, 0x4C0));
    ClearWindowTilemapAndCopyToVram((Window *)((u8 *)data + 0x3C4));
    ov108_021E767C(data, 0);
    ov108_021E7700(data, 0, 1, 1);
    ov108_021E79A8(data, 1, 0, 0);
    return ret ? 2 : 0;
}
