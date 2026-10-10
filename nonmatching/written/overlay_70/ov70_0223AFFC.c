#include "global.h"

#include "screen_fade.h"
#include "system.h"
#include "touchscreen.h"
#include "unk_02005D10.h"

extern u8 ov70_022454A4[];
extern TouchscreenHitbox ov70_02245498[];

extern void ov70_0223AFA8(void *work);
extern void ov70_0223B364(void *work, int a, int b, int c, int d);
extern void ov70_02238D84(void *work, int a, int b);
extern int ov70_02241164(int a);

int ov70_0223AFFC(u8 *work) {
    int keys = gSystem.newKeys;

    if (keys & 1) {
        ov70_0223B364(work, 0x10, 1, 0, 0xF0F);
        ov70_02238D84(work, 3, 4);
        PlaySE(0x5DC);
    } else if (keys & 2) {
        BeginNormalPaletteFade(0, 0, 0, 0, 0x10, 1, 0x3D);
        *(int *)(work + 0x2C) = 8;
        PlaySE(0x5DC);
    } else if (keys & 0x20) {
        u32 cur = *(u32 *)(work + 0x12C);
        u32 lim = ov70_022454A4[cur * 2];
        if (cur != lim && *(int *)(work + 0x128) >= (int)(lim + 1)) {
            ov70_0223AFA8(work);
        }
    } else if (keys & 0x10) {
        u32 cur = *(u32 *)(work + 0x12C);
        u32 lim = ov70_022454A4[cur * 2 + 1];
        if (cur != lim && *(int *)(work + 0x128) >= (int)(lim + 1)) {
            ov70_0223AFA8(work);
        }
    } else {
        int r = ov70_02241164(*(int *)(work + 0x128));
        if (r != -1) {
            ov70_0223AFA8(work);
        }
        r = TouchscreenHitbox_FindRectAtTouchNew(ov70_02245498);
        if (r == 0) {
            ov70_0223B364(work, 0x10, 1, 0, 0xF0F);
            ov70_02238D84(work, 3, 4);
            PlaySE(0x5DC);
        } else if (r == 1) {
            BeginNormalPaletteFade(0, 0, 0, 0, 0x10, 1, 0x3D);
            *(int *)(work + 0x2C) = 8;
            PlaySE(0x5DC);
        }
    }
    return 3;
}
