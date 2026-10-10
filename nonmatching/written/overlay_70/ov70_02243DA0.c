#include "global.h"

#include "sprite.h"

extern u8 ov70_02245D80[];
extern u8 ov70_02245D81[];

extern void ov70_02242EE4(void *work);
extern void ov70_02238F9C(void *sprite, int x, int y);

int ov70_02243DA0(u8 *work) {
    int n;

    *(int *)(work + 0x48) = 0;
    ov70_02242EE4(work);
    Sprite_SetAnimCtrlSeq(*(Sprite **)(work + 0xC), 0x31);
    n = *(int *)(work + 0x48) * 2;
    ov70_02238F9C(*(void **)(work + 0xC), ov70_02245D80[n], ov70_02245D81[n]);
    *(int *)(work + 0x4C) = 1;
    *(int *)(work + 0x50) = 0x20;
    return -1;
}
