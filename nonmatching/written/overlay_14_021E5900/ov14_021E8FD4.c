#include "global.h"

extern u8 ov14_021F7C08[];

int sub_02019978(void *a, int b);
BOOL System_GetTouchHeldCoords(u32 *x, u32 *y);
u32 ov14_021E79D8(int x, int y);
u32 ov14_021E7960(int x, int y);
u32 ov14_021E79AC(int x, int y, void *table);
void ov14_021E6CF8(void *self, u32 a, u32 b);
void ov14_021F40E8(void *self, u32 a);
u32 ov14_021E70B0(void *self, u32 a);
void ov14_021E884C(void *a);
void ManagedSprite_SetPositionXY(void *spr, s16 x, s16 y);
void ov14_021F4174(void *self);
void ov14_021E8620(void *a);
int Party_GetCount(void *party);
int ov14_021E65C4(void *self);
void ov14_021E7148(void *self, u32 a);

BOOL ov14_021E8FD4(u8 *self) {
    u8 *state = *(u8 **)(self + 0x34);
    int a;
    int b;
    u32 touchX;
    u32 touchY;
    u32 r6;
    u8 *s;
    u32 idx;

    a = sub_02019978(*(void **)(state + 0x2f0), 0xe);
    b = sub_02019978(*(void **)(*(u8 **)(self + 0x34) + 0x2f0), 0xf);

    switch (*(u16 *)(state + 0x10)) {
    case 0:
        if (System_GetTouchHeldCoords(&touchX, &touchY) == 0) {
            r6 = 0xff;
            if (self[0x24] != 0) {
                u32 px, py;

                s = *(u8 **)(self + 0x34);
                px = *(u32 *)(s + 0x40b8);
                py = *(u32 *)(s + 0x40bc);
                r6 = ov14_021E79D8((s16)px, (s16)py);
            }
            if (r6 == 0xff) {
                u32 px, py;

                s = *(u8 **)(self + 0x34);
                px = *(u32 *)(s + 0x40b8);
                py = *(u32 *)(s + 0x40bc);
                r6 = ov14_021E7960((s16)px, (s16)py);
            }
            if (r6 == 0xff) {
                u32 px, py;

                s = *(u8 **)(self + 0x34);
                px = *(u32 *)(s + 0x40b8);
                py = *(u32 *)(s + 0x40bc);
                r6 = ov14_021E79AC((s16)px, (s16)py, ov14_021F7C08);
            }
            ov14_021E6CF8(self, self[0x21], r6);
            ov14_021F40E8(self, 0);
            if ((r6 & 0x80) == 0) {
                self[0x21] = (u8)ov14_021E70B0(self, self[0x21]);
            }
            ov14_021E884C(*(void **)(self + 0x34));
            *(u16 *)(state + 0x10) = *(u16 *)(state + 0x10) + 1;
        } else {
            s = *(u8 **)(self + 0x34);
            idx = s[self[0x21] + 0x4094];
            ManagedSprite_SetPositionXY(*(void **)(s + idx * 4 + 0x2fc), (s16)touchX, (s16)((s16)touchY - 8));
            ov14_021F4174(self);
            *(u32 *)(*(u8 **)(self + 0x34) + 0x40b8) = touchX;
            *(u32 *)(*(u8 **)(self + 0x34) + 0x40bc) = touchY;
        }
        return TRUE;
    case 1:
        if (a == 0 && b == 0) {
            u8 *mon = *(u8 **)(state + 0xc);
            u32 flags = *(u32 *)(mon + 0xe8);

            if (flags == 0xff || (flags & 0x80) == 0) {
                ov14_021E8620(*(void **)(*(u8 **)(self + 0x34) + 0x2f0));
            } else if (*(u32 *)(mon + 0xe4) >= 0x1e) {
                int count = Party_GetCount(*(void **)(self + 8));

                if (*(u32 *)(mon + 0xe4) - 0x1e < (u32)(count - 1)) {
                    ov14_021E8620(*(void **)(*(u8 **)(self + 0x34) + 0x2f0));
                }
            }
            *(u16 *)(state + 0x10) = *(u16 *)(state + 0x10) + 1;
        }
        break;
    case 2:
        break;
    default:
        return TRUE;
    }
    if (ov14_021E65C4(self) == 0 && b == 0 && *(u16 *)(state + 0x10) == 2) {
        ov14_021E7148(self, *(u32 *)(state + 0xc));
        ov14_021F4174(self);
        ov14_021F40E8(self, 0);
        *(u16 *)(state + 0x10) = 0;
        return FALSE;
    }
    return TRUE;
}
