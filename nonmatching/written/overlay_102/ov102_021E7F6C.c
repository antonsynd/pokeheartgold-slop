#include "global.h"

extern u8 gSystem_ov102_021E7F6C[] __asm__("gSystem");
extern const u8 ov102_021EC634[];

extern void *ov102_021EA228(void *a0);
extern int ov102_021EA238(void *a0);
extern void ov102_021EA248(void *a0, void *out, u8 idx);
extern void Sprite_GetPositionXY(void *sprite, s16 *x, s16 *y);
extern void Sprite_SetPositionXY(void *sprite, s16 x, s16 y);
extern BOOL ov102_021E7F30(void *a0, int x, int y);
extern BOOL ov102_021E7EEC(void *a0, int x, int y);
extern void ov102_021E79DC(void *a0, void *a1, u8 val);
extern void PlaySE(u16 sndseq);
extern void ov102_021E940C(void *a0, int a1);
extern BOOL System_GetTouchNew(void);
extern int TouchscreenHitbox_FindRectAtTouchNew(const void *hitboxes);
extern BOOL TouchscreenHitbox_PointIsIn(const void *hitbox, u32 x, u32 y);

#define TOUCH_X (*(s16 *)(gSystem_ov102_021E7F6C + 0x60))
#define TOUCH_XU (*(u16 *)(gSystem_ov102_021E7F6C + 0x60))
#define TOUCH_YU (*(u16 *)(gSystem_ov102_021E7F6C + 0x62))

int ov102_021E7F6C(u8 *a0) {
    s16 y;
    s16 x;
    u8 box[4];
    void *sprite;
    int x2;
    int d;

    sprite = ov102_021EA228(*(void **)(a0 + 0x14));
    Sprite_GetPositionXY(sprite, &x, &y);

    if (a0[0x6c] != 0) {
        if (!ov102_021E7F30(a0, x, y)) {
            a0[0x6c] = 0;
            return -1;
        }
        x2 = TOUCH_X;
        if (x2 < 0x1c) {
            x2 = 0x1c;
        } else if (x2 > 0xe2) {
            x2 = 0xe2;
        }
        d = x2 - *(s16 *)(a0 + 0x6e);
        if (d < 0) {
            d = -d;
        }
        if (d < 2) {
            return -1;
        }
        Sprite_SetPositionXY(sprite, x2, y);
        *(s16 *)(a0 + 0x6e) = x2;
        *(u16 *)(a0 + 0x4e) = 0;
        ov102_021E79DC(a0 + 0x64, a0 + 8, (x2 - 0x1c) / 2);
        PlaySE(0x5dc);
        ov102_021E940C(*(void **)(a0 + 0x14), 3);
        return -1;
    }

    if (!System_GetTouchNew()) {
        return -1;
    }
    if (ov102_021E7EEC(a0, x, y)) {
        *(u16 *)(a0 + 0x6e) = TOUCH_XU;
        a0[0x6c] = 1;
        PlaySE(0x5dc);
        return 6;
    }
    {
        int ret = TouchscreenHitbox_FindRectAtTouchNew(ov102_021EC634);
        int n, i;
        if (ret != -1) {
            return ret;
        }
        n = ov102_021EA238(*(void **)(a0 + 0x14));
        for (i = 0; i < n; i++) {
            ov102_021EA248(*(void **)(a0 + 0x14), box, i);
            if (TouchscreenHitbox_PointIsIn(box, TOUCH_XU, TOUCH_YU)) {
                return i + 4;
            }
        }
        return -1;
    }
}
