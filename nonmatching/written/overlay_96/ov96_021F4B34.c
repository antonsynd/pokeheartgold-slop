#include "global.h"
#include "gf_gfx_planes.h"

extern s32 ov96_0221C050[];
extern s32 ov96_0221C080[];

void ov96_021F4724(void *param0);
void ov96_021F4DAC(u8 frame, const s32 *table, void *sprite);

void ov96_021F4B34(u8 *param0) {
    u8 *state = param0 + 0x68;
    u16 frame;
    int step;
    u32 x;
    u32 alpha;

    *(u16 *)(state + 0x1a) = *(u16 *)(state + 0x1a) + 1;
    frame = *(u16 *)(state + 0x1a);
    if (frame > 0x32) {
        ov96_021F4724(state);
        return;
    }
    if (frame == 5) {
        GfGfx_EngineBTogglePlanes(8, 1);
    } else if (frame > 0xf) {
        step = frame - 0xf;
        if (step <= 4) {
            x = (u32)step << 4;
            alpha = ((x + ((u32)((int)x >> 1) >> 30)) << 14) >> 16;
            G2x_SetBlendAlpha_(0x04001050, 8, 0x34, 16 - alpha, alpha);
        }
    }
    ov96_021F4DAC(*(u16 *)(state + 0x1a), ov96_0221C050, *(void **)(state + 0x90));
    ov96_021F4DAC(*(u16 *)(state + 0x1a), ov96_0221C080, *(void **)(state + 0x94));
}
