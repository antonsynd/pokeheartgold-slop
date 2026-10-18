#include "global.h"

#include "vram_transfer_manager.h"

#pragma opt_common_subs off

typedef struct Ov90Palettes {
    u8 filler_00[0xC];
    u8 *data;
} Ov90Palettes;

typedef struct Ov90_0225B2A8 {
    u8 filler_000[0x14];
    u8 count;
    u8 filler_015[0x17];
    u8 hidden[0x62C];
    Ov90Palettes *palettes;
    u16 frame;
    u16 flashing;
} Ov90_0225B2A8;

extern const u8 ov90_0225C1EC[];

void ov90_0225B2A8(Ov90_0225B2A8 *a0) {
    int i;

    if (a0->flashing == 0) {
        return;
    }
    if (a0->frame == 0 || a0->frame == 8) {
        for (i = 0; i < a0->count; i++) {
            if (a0->hidden[i] == 0) {
                u8 *src;
                u8 slot;
                u32 offset;

                slot = ov90_0225C1EC[i];
                src = a0->palettes->data;
                offset = slot * 32;

                if (a0->frame == 0) {
                    src += (slot + 3) * 32;
                } else {
                    src += (slot + 7) * 32;
                }
                GF_ASSERT(GF_CreateNewVramTransferTask(NNS_GFD_DST_2D_BG_PLTT_MAIN, offset, src, 32));
            }
        }
    }
    a0->frame = (a0->frame + 1) % 16;
}
