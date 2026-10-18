#include "global.h"

#include "system.h"

typedef struct Ov82_0223F488 {
    u8 filler_000[0xD];
    u8 cursor;
    u8 filler_00E[0x82];
    u8 unk90;
    u8 filler_091[0x173];
    void *cursorSprite;
} Ov82_0223F488;

int ov82_0223F558(Ov82_0223F488 *a0);
int ov82_0223F570(Ov82_0223F488 *a0);
void ov82_0223FCBC(void *sprite, int x, int y);
void ov82_0223FCFC(void *sprite, int anim);
u8 ov80_02237920(u8 a0);

BOOL ov82_0223F488(Ov82_0223F488 *a0) {
    u16 x;
    u16 y;
    int row;
    int col;
    int left;
    int top;
    int right;
    int bottom;

    if (gSystem.touchNew != 0) {
        x = gSystem.touchX;
        y = gSystem.touchY;
        for (row = 0; row < 5; row++) {
            top = row * 36 + 3;
            bottom = top + 35;
            for (col = 0; col < 4; col++) {
                left = col * 64 + 1;
                right = left + 63;
                if (left <= x && x <= right && top <= y && y <= bottom) {
                    a0->cursor = col + row * 4;
                    ov82_0223FCBC(a0->cursorSprite, ov82_0223F558(a0), ov82_0223F570(a0));
                    if (ov80_02237920(a0->cursor) == 0xFE) {
                        ov82_0223FCFC(a0->cursorSprite, 2);
                        ov82_0223FCBC(a0->cursorSprite, 128, 168);
                    } else {
                        ov82_0223FCFC(a0->cursorSprite, 1);
                    }
                    a0->unk90 = TRUE;
                    return TRUE;
                }
            }
        }
    }
    return FALSE;
}
