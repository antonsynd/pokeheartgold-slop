#include "global.h"

extern u8 ov14_021F7BF0[];

int ov14_021E8514(void *a);
int ov14_021E80A8(void *self);
void ManagedSprite_GetPositionXY(void *spr, s16 *x, s16 *y);
void ManagedSprite_SetPositionXY(void *spr, s16 x, s16 y);
BOOL System_GetTouchHeldCoords(u32 *x, u32 *y);
void ov14_021F69F0(void *self, u32 a);
void ov14_021F3488(void *self, u32 a, u32 b);
u32 ov14_021E7960(int x, int y);
u32 ov14_021E79AC(int x, int y, void *table);
void ov14_021E6CF8(void *self, u32 a, u32 b);
void ov14_021F40E8(void *self, u32 a);
u32 ov14_021E70B0(void *self, u32 a);
int ov14_021E6070(void *self, u32 a, u32 b, u32 c);
void ov14_021E7EE0(void *a);
void ov14_021E7588(void *self, u32 a);
void ov14_021E7FEC(void *a);
void ov14_021E8434(void *a);
void ov14_021E8824(void *a);
void ov14_021E7FB8(void *a);
void ov14_021F4174(void *self);
int ov14_021E6814(void *self);
void ov14_021E7148(void *self, u32 a);
int ov14_021E66F4(void *self);

BOOL ov14_021E8D20(u8 *self) {
    u8 *state = *(u8 **)(self + 0x34);
    int touchBusy;
    int r6;
    s16 posY;
    s16 posX;
    u32 touchX;
    u32 touchY;
    u8 *s;
    u32 idx;

    touchBusy = ov14_021E8514(*(void **)(state + 0x2f0));
    if (*(u16 *)(state + 0x10) == 0) {
        s = *(u8 **)(self + 0x34);
        idx = s[self[0x21] + 0x4094];
        ManagedSprite_GetPositionXY(*(void **)(s + idx * 4 + 0x2fc), &posX, &posY);
    }
    r6 = ov14_021E80A8(self);

    switch (*(u16 *)(state + 0x10)) {
    case 0:
        s = *(u8 **)(self + 0x34);
        if (s[0x44a] == 1 && r6 == 0) {
            s[0x44a] = 2;
            ov14_021F69F0(self, 0x28);
            ov14_021F3488(self, 1, 0);
        }
        if (System_GetTouchHeldCoords(&touchX, &touchY) == 0) {
            u32 r0;
            u32 px;
            u32 py;

            s = *(u8 **)(self + 0x34);
            idx = s[self[0x21] + 0x4094];
            ManagedSprite_SetPositionXY(*(void **)(s + idx * 4 + 0x2fc), posX, posY);
            s = *(u8 **)(self + 0x34);
            px = *(u32 *)(s + 0x40b8);
            py = *(u32 *)(s + 0x40bc);
            if (s[0x44a] == 2) {
                r0 = ov14_021E7960((s16)px, (s16)py);
            } else {
                r0 = ov14_021E79AC((s16)px, (s16)py, ov14_021F7BF0);
            }
            ov14_021E6CF8(self, self[0x21], r0);
            ov14_021F40E8(self, 0);
            self[0x21] = (u8)ov14_021E70B0(self, self[0x21]);
            *(u32 *)(*(u8 **)(self + 0x34) + 0x40c4) = self[0x21] >= 0x1e ? 1 : 0;
            if (self[0x21] < 0x1e) {
                if (ov14_021E6070(self, self[0x21], 0xac, 0) == 0) {
                    *(u16 *)(state + 0x10) = 3;
                } else {
                    ov14_021E7EE0(*(void **)(*(u8 **)(self + 0x34) + 0x2f0));
                    ov14_021E7588(self, 0xff);
                    *(u16 *)(state + 0x10) = 1;
                }
            } else {
                ov14_021E7FEC(*(void **)(*(u8 **)(self + 0x34) + 0x2f0));
                ov14_021E8434(*(void **)(*(u8 **)(self + 0x34) + 0x2f0));
                ov14_021E8824(*(void **)(self + 0x34));
                *(u16 *)(state + 0x10) = 1;
            }
        } else {
            s = *(u8 **)(self + 0x34);
            if (touchBusy == 0 && s[0x44a] == 0) {
                if (touchX < 0x10 || touchY < 0x30 || touchX >= 0x68) {
                    s[0x44a] = 1;
                    ov14_021E7FB8(*(void **)(*(u8 **)(self + 0x34) + 0x2f0));
                }
            }
            s = *(u8 **)(self + 0x34);
            idx = s[self[0x21] + 0x4094];
            ManagedSprite_SetPositionXY(*(void **)(s + idx * 4 + 0x2fc), (s16)touchX, (s16)((s16)touchY - 8));
            ov14_021F4174(self);
            *(u32 *)(*(u8 **)(self + 0x34) + 0x40b8) = touchX;
            *(u32 *)(*(u8 **)(self + 0x34) + 0x40bc) = touchY;
        }
        break;
    case 1:
    case 2:
        if (ov14_021E6814(self) == 0 && touchBusy == 0 && r6 == 0) {
            ov14_021E7148(self, *(u32 *)(state + 0xc));
            if (self[0x21] < 0x1e) {
                self[0x21] = 0xff;
            }
            ov14_021F4174(self);
            ov14_021F40E8(self, *(u32 *)(*(u8 **)(self + 0x34) + 0x40c4));
            *(u16 *)(state + 0x10) = 5;
        }
        break;
    case 3:
        if (ov14_021E66F4(self) == 0) {
            ov14_021E7148(self, *(u32 *)(state + 0xc));
            ov14_021E7EE0(*(void **)(*(u8 **)(self + 0x34) + 0x2f0));
            ov14_021E7588(self, 0xff);
            self[0x21] = 0xff;
            *(u16 *)(state + 0x10) = *(u16 *)(state + 0x10) + 1;
        }
        break;
    case 4:
        if (r6 == 0) {
            *(u16 *)(state + 0x10) = 5;
        }
        break;
    case 5:
        ov14_021F3488(self, 1, 1);
        (*(u8 **)(self + 0x34))[0x44a] = 0;
        *(u16 *)(state + 0x10) = 0;
        return FALSE;
    default:
        break;
    }
    return TRUE;
}
