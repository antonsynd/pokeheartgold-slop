#include "global.h"

#include "bg_window.h"
#include "text.h"

typedef struct Ov08Party {
    u8 filler_00[0x27];
    u8 rows[5];
    u8 columns[5];
} Ov08Party;

typedef struct Ov08_02223AA0 {
    Ov08Party *party;
    u8 filler_0004[0x28];
    Window *windows;
    u8 filler_0030[0x111D];
    u8 cursor;
} Ov08_02223AA0;

void ov08_022239CC(Ov08_02223AA0 *a0, int slot);
void ov08_02223678(Ov08_02223AA0 *a0, int slot, int a2, int a3, int a4, int a5, u32 color);
void ov08_02223A3C(Ov08_02223AA0 *a0, int slot);
void ov08_022234A4(Ov08_02223AA0 *a0, int a1, int a2, int a3, int a4, u32 color);

void ov08_02223AA0(Ov08_02223AA0 *a0) {
    u32 i;
    u8 row;
    u8 column;

    for (i = 0; i < 4; i++) {
        FillWindowPixelBuffer(&a0->windows[i], 0);
    }
    row = a0->party->rows[a0->cursor];
    column = a0->party->columns[a0->cursor];
    ov08_022239CC(a0, row + column * 6);
    ov08_02223678(a0, row + column * 6, 0, 1, 0, 0, MAKE_TEXT_COLOR(1, 2, 0));
    ov08_02223A3C(a0, row + column * 6);
    ov08_022234A4(a0, 3, 0x1F, 4, 5, MAKE_TEXT_COLOR(3, 2, 1));
}
