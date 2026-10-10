#include "global.h"

#include "options.h"
#include "gf_gfx_planes.h"
#include "unk_02005D10.h"

extern const s16 ov87_021E81A0[];
extern const s16 ov87_021E81A2[];

extern void ov87_021E7FEC(void *sprite, int x, int y);
extern void ov87_021E7FE0(void *sprite, int a);
extern void ov87_021E8134(void *window, u32 frame);
extern void ov87_021E7048(void *app);

BOOL ov87_021E5B48(u8 *param0) {
    int i;
    int idx;

    switch (param0[8]) {
    case 0:
        *(s16 *)(param0 + 0x10) = -256;
        for (i = 0; i < 4; i++) {
            ov87_021E7FEC(*(void **)(param0 + 0x32c + i * 4), *(s16 *)(param0 + 0x10) + ov87_021E81A0[i * 2], ov87_021E81A0[i * 2 + 1]);
            ov87_021E7FE0(*(void **)(param0 + 0x32c + i * 4), i + 0x14);
        }
        ov87_021E8134(param0 + 0x14c, Options_GetFrame(*(Options **)(param0 + 0x164)));
        ov87_021E7048(param0);
        GfGfx_EngineBTogglePlanes(1, 1);
        *(s16 *)(param0 + 0x12) = 3;
        PlaySE(0x560);
        param0[8] = 1;
        break;
    case 1:
        *(s16 *)(param0 + 0x10) = *(s16 *)(param0 + 0x10) + 0x20;
        idx = *(s16 *)(param0 + 0x12) * 4;
        ov87_021E7FEC(*(void **)(param0 + idx + 0x32c), *(s16 *)(param0 + 0x10) + *(const s16 *)((const u8 *)ov87_021E81A0 + idx),
                      *(const s16 *)((const u8 *)ov87_021E81A2 + idx));
        if (*(s16 *)(param0 + 0x10) >= 0) {
            if (*(s16 *)(param0 + 0x12) == 0) {
                param0[8] = 2;
            } else {
                PlaySE(0x560);
                *(s16 *)(param0 + 0x12) = *(s16 *)(param0 + 0x12) - 1;
                *(s16 *)(param0 + 0x10) = -256;
            }
        }
        break;
    case 2:
        *(s16 *)(param0 + 0x10) = 0;
        return 1;
    }
    return 0;
}
