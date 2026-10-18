#include "global.h"

typedef struct Ov69Item {
    s16 x;
    s16 y;
    u8 filler_04[0x24];
    u16 state;
    u16 col;
    u16 row;
    u8 filler_2E[2];
} Ov69Item;

typedef struct Ov69_021E62B0 {
    u8 filler_0000[0xC];
    u32 itemCount;
    Ov69Item items[64];
    u8 filler_0C10[0xC2C4 - 0xC10];
    int cursorX;
    int cursorY;
    u8 filler_C2CC[0xC324 - 0xC2CC];
    u32 cursorCol;
    u32 cursorRow;
} Ov69_021E62B0;

void ov69_021E62B0(Ov69_021E62B0 *a0) {
    u32 i;

    for (i = 0; i < a0->itemCount; i++) {
        if (a0->cursorCol == a0->items[i].col && a0->cursorRow == a0->items[i].row) {
            a0->items[i].state = 3;
            a0->cursorX = a0->items[i].x;
            a0->cursorY = a0->items[i].y;
        }
    }
}
