#include "global.h"

typedef struct Ov15Item {
    u8 filler_0[6];
    s16 unk6;
    u8 filler_8;
    u8 unk9;
    u8 filler_A[2];
} Ov15Item;

typedef struct Ov15List {
    u8 filler_00[4];
    Ov15Item items[8];
    u8 cursor;
} Ov15List;

typedef struct Ov15Arg {
    u8 filler_0[6];
    s16 unk6;
} Ov15Arg;

typedef struct Ov15_021FAD80 {
    u8 filler_000[0x234];
    Ov15List *list;
    u8 filler_238[0x43A];
    u8 unk672;
} Ov15_021FAD80;

int ov15_021FA074(Ov15_021FAD80 *a0);
int ov15_021FA098(Ov15_021FAD80 *a0);
void ov15_021FD574(Ov15_021FAD80 *a0, int a1, int a2, int a3);
void ov15_021FF364(Ov15_021FAD80 *a0, int a1, int a2, int a3);
void ov15_022001C4(Ov15_021FAD80 *a0, Ov15Arg *a1, u8 a2);
void ov15_021FF6BC(Ov15_021FAD80 *a0, int a1, int a2, int a3);

void ov15_021FAD80(Ov15_021FAD80 *a0, Ov15Arg *a1) {
    int value = ov15_021FA074(a0);

    ov15_021FD574(a0, 1, value, ov15_021FA098(a0));
    ov15_021FF364(a0, a1->unk6, ov15_021FA098(a0), 1);
    ov15_022001C4(a0, a1, a0->unk672);
    ov15_021FF6BC(a0, a0->list->items[a0->list->cursor].unk9, a0->list->items[a0->list->cursor].unk6, 0);
}
