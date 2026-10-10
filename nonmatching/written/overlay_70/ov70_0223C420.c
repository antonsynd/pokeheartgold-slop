#include "global.h"
#include "sprite.h"

extern u8 ov70_022464F0[];
extern u8 ov70_022464FE[];

extern int ov70_0223C2EC(void *work);
extern void ov70_02238F9C(Sprite *sprite, int x, int y);

void ov70_0223C420(u8 *work, int idx) {
    u8 *p = *(u8 **)(work + 0x11C4);
    int off = idx * 2;
    int a, b;

    if (ov70_022464F0[off] == 0) {
        *(int *)(p + 0x24) = 0;
        *(int *)(p + 0x28) = ov70_022464F0[off + 1];
    } else {
        *(int *)(p + 0x24) = 1;
        *(int *)(p + 0x2C) = ov70_022464F0[off + 1];
    }
    a = ov70_0223C2EC(work);
    b = ov70_0223C2EC(work);
    ov70_02238F9C(*(Sprite **)(work + 0xDCC), *(u16 *)(ov70_022464FE + a * 6), *(u16 *)(ov70_022464FE + b * 6 + 2));
    a = ov70_0223C2EC(work);
    Sprite_SetAnimCtrlSeq(*(Sprite **)(work + 0xDCC), *(u16 *)(ov70_022464FE + a * 6 + 4));
}
