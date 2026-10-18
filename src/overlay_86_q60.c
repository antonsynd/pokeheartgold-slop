#include "global.h"

#include "bg_window.h"

typedef struct Ov86Slot {
    BOOL filled;
    u8 filler_04[4];
} Ov86Slot;

typedef struct Ov86_021E77BC {
    u8 filler_000[0xC];
    BgConfig *bgConfig;
    u8 filler_010[0x240];
    u8 rectX;
    u8 rectY;
    u8 rectWidth;
    u8 rectHeight;
    u8 filler_254[0x10];
    Ov86Slot slots[26];
} Ov86_021E77BC;

void ov86_021E7688(Ov86_021E77BC *a0, u32 index);

void ov86_021E77BC(Ov86_021E77BC *a0) {
    u32 i;

    for (i = 0; i < 26; i++) {
        if (a0->slots[i].filled == FALSE) {
            ov86_021E7688(a0, i);
            BgTilemapRectChangePalette(a0->bgConfig, GF_BG_LYR_MAIN_2, a0->rectX, a0->rectY, a0->rectWidth, a0->rectHeight, 1);
        }
    }
    ScheduleBgTilemapBufferTransfer(a0->bgConfig, GF_BG_LYR_MAIN_2);
}
