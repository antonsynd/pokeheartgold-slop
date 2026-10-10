#include "global.h"

extern s32 ov96_0221C01C[];

void ov96_021F4724(void *param0);
void ov96_021F4E9C(u8 frame, const s32 *table, void *sprite);

void ov96_021F4AE0(u8 *param0) {
    u8 *state = param0 + 0x68;
    u16 frame;

    *(u16 *)(state + 0x1a) = *(u16 *)(state + 0x1a) + 1;
    frame = *(u16 *)(state + 0x1a);
    if (frame > 0x46) {
        ov96_021F4724(state);
        return;
    }
    ov96_021F4E9C(frame, ov96_0221C01C, *(void **)(state + 0x90));
    state[0xea] = state[0xea] + 0x20;
    *(vu32 *)0x04001018 = ((u32)state[0xea] << 16) & 0x01FF0000;
}
