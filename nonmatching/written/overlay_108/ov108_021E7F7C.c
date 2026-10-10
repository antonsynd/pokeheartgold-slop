#include "global.h"
#include "bg_window.h"
#include "sprite_system.h"

#define U8AT(p, off)  (*(u8 *)((u8 *)(p) + (off)))
#define S16AT(p, off) (*(s16 *)((u8 *)(p) + (off)))
#define PTRAT(p, off) (*(void **)((u8 *)(p) + (off)))

extern void ov108_021E78F4(void *data, int which, u8 pos);
extern void ov108_021E77D4(void *data);
extern void ov108_021E79A8(void *data, int bgId, int pos, int enable);
extern void ov108_021E78C0(void *data, int which, int anim, int a3);
extern void ov108_021E84F8(void *a0, u8 a1, u8 a2);

void ov108_021E7F7C(void *data) {
    if ((U8AT(data, 0x184E2) >> 3) == 0) {
        FillBgTilemapRect(PTRAT(data, 0x340), 1, 0, 0, 0x15, 0x20, 3, 0x11);
        ScheduleBgTilemapBufferTransfer(PTRAT(data, 0x340), 1);
        S16AT(data, 0x184E6) = -0xC0;
        U8AT(data, 0x184E2) = (U8AT(data, 0x184E2) & ~1) | 1;
        U8AT(data, 0x184E0) = 0;
        ov108_021E78F4(data, 1, U8AT(data, 0x184E0));
        ov108_021E78F4(data, 2, U8AT(data, 0x184DF));
        ov108_021E77D4(data);
    } else {
        ov108_021E79A8(data, 1, 0xFF, 0);
        ov108_021E78C0(data, 1, 0, 0);
        int ofs = ((U8AT(data, 0x184E2) >> 2) & 1) * 6;
        int i;
        for (i = 0; i < 6; i++) {
            ManagedSprite *sprite = PTRAT(data, 0x36C + (ofs + i) * 4);
            ManagedSprite_SetPositionXY(sprite, (s16)((i % 3) * 0x48 + 0x38), (s16)((i / 3) * 0x48 - 0x88));
            ManagedSprite_SetPriority(PTRAT(data, 0x36C + (ofs + i) * 4), 2);
            ov108_021E84F8(PTRAT(data, 0x348), (u8)(i + ofs), U8AT(data, 0x1C + i * 0x7A));
        }
    }
    U8AT(data, 0x184E1) = 0;
    FillWindowPixelBuffer((Window *)((u8 *)data + 0x3F4), 0xC);
    ScheduleWindowCopyToVram((Window *)((u8 *)data + 0x3F4));
    *(vu16 *)0x04001040 = 0xF0;
    *(vu16 *)0x04001044 = 0x10;
    *(vu16 *)0x04001048 = (*(vu16 *)0x04001048 & ~0x3F) | 0xF | 0x20;
    *(vu16 *)0x0400104A = (*(vu16 *)0x0400104A & ~0x3F) | 0x1F | 0x20;
    *(vu32 *)0x04001000 = (*(vu32 *)0x04001000 & 0xFFFF1FFF) | 0x2000;
}
