#include "global.h"

typedef struct Ov18Cursor {
    u8 filler_00[0x10];
    int x;
    int y;
} Ov18Cursor;

typedef struct Ov18_021F40E4 {
    Ov18Cursor *cursor;
} Ov18_021F40E4;

void ov18_021F1294(Ov18_021F40E4 *a0, int spriteIdx, s16 x, s16 y, int mode);
void ov18_021F4134(Ov18_021F40E4 *a0);

void ov18_021F40E4(Ov18_021F40E4 *a0) {
    u16 col = a0->cursor->x / 32;
    u16 row = a0->cursor->y / 32;

    if (col >= 23) {
        col -= 22;
    }
    ov18_021F1294(a0, 2, col * 8 + 0x44, row * 8 + 0x2C, 2);
    ov18_021F4134(a0);
}
