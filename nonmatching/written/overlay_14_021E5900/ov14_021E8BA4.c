#include "global.h"

int ov14_021E8514(void *a);
int sub_02019978(void *a, int b);
BOOL System_GetTouchHeldCoords(u32 *x, u32 *y);
u32 ov14_021E79D8(int x, int y);
u32 ov14_021E7960(int x, int y);
void ov14_021E6CF8(void *self, u32 a, u32 b);
void ov14_021F40E8(void *self, u32 a);
u32 ov14_021E70B0(void *self, u32 a);
void ov14_021E8434(void *a);
void ov14_021E8824(void *a);
void ManagedSprite_SetPositionXY(void *spr, s16 x, s16 y);
void ov14_021F4174(void *self);
int ov14_021E65C4(void *self);
void ov14_021E7148(void *self, u32 a);

BOOL ov14_021E8BA4(u8 *self) {
    u8 *state = *(u8 **)(self + 0x34);
    int touchBusy;
    int a;
    int b;
    int c;
    u32 x;
    u32 y;
    u32 r6;

    touchBusy = ov14_021E8514(*(void **)(state + 0x2f0));
    a = sub_02019978(*(void **)(*(u8 **)(self + 0x34) + 0x2f0), 8);
    b = sub_02019978(*(void **)(*(u8 **)(self + 0x34) + 0x2f0), 9);
    c = sub_02019978(*(void **)(*(u8 **)(self + 0x34) + 0x2f0), 10);

    switch (*(u16 *)(state + 0x10)) {
    case 0:
        if (System_GetTouchHeldCoords(&x, &y) == 0) {
            r6 = 0xff;
            if (self[0x24] != 0) {
                u8 *s = *(u8 **)(self + 0x34);
                u32 px = *(u32 *)(s + 0x40b8);
                u32 py = *(u32 *)(s + 0x40bc);

                r6 = ov14_021E79D8((s16)px, (s16)py);
            }
            if (r6 == 0xff) {
                u8 *s = *(u8 **)(self + 0x34);
                u32 px = *(u32 *)(s + 0x40b8);
                u32 py = *(u32 *)(s + 0x40bc);

                r6 = ov14_021E7960((s16)px, (s16)py);
            }
            ov14_021E6CF8(self, self[0x21], r6);
            ov14_021F40E8(self, 0);
            if ((r6 & 0x80) == 0) {
                self[0x21] = (u8)ov14_021E70B0(self, self[0x21]);
            }
            ov14_021E8434(*(void **)(*(u8 **)(self + 0x34) + 0x2f0));
            ov14_021E8824(*(void **)(self + 0x34));
            *(u16 *)(state + 0x10) = 1;
        } else {
            u8 *s = *(u8 **)(self + 0x34);
            u32 idx = s[self[0x21] + 0x4094];

            ManagedSprite_SetPositionXY(*(void **)(s + idx * 4 + 0x2fc), (s16)x, (s16)((s16)y - 8));
            ov14_021F4174(self);
            *(u32 *)(*(u8 **)(self + 0x34) + 0x40b8) = x;
            *(u32 *)(*(u8 **)(self + 0x34) + 0x40bc) = y;
        }
        break;
    case 1:
        if (ov14_021E65C4(self) == 0 && touchBusy == 0 && a == 0 && b == 0 && c == 0) {
            ov14_021E7148(self, *(u32 *)(state + 0xc));
            ov14_021F4174(self);
            ov14_021F40E8(self, *(u32 *)(*(u8 **)(self + 0x34) + 0x40c4));
            *(u16 *)(state + 0x10) = 0;
            return FALSE;
        }
        break;
    default:
        break;
    }
    return TRUE;
}
