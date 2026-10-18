#include "global.h"

#include "unk_0201956C.h"

typedef struct Ov14Cursor {
    u8 active : 1;
    u8 id : 7;
    u8 unk1_0 : 4;
    u8 unk1_4 : 4;
    u8 unk2;
    u8 unk3;
    u8 x;
    u8 y;
    u8 width;
    u8 height;
} Ov14Cursor;

typedef struct Ov14Work {
    u8 filler_0000[0x2F0];
    UnkStruct_0201956C *tilemaps;
    u8 filler_02F4[0x85E0];
    Ov14Cursor cursor;
} Ov14Work;

typedef struct Ov14_021F2270 {
    u8 filler_00[0x30];
    int nextState;
    Ov14Work *work;
} Ov14_021F2270;

u8 sub_02019B10(UnkStruct_0201956C *a0, int a1);
void sub_02019B1C(UnkStruct_0201956C *a0, int a1, s8 *x, s8 *y);

int ov14_021F2270(Ov14_021F2270 *a0, int index, int nextState) {
    u16 width;
    u16 height;
    s8 x;
    s8 y;

    sub_02019B1C(a0->work->tilemaps, index, &x, &y);
    sub_02019B44(a0->work->tilemaps, index, &width, &height);
    a0->work->cursor.active = TRUE;
    a0->work->cursor.id = sub_02019B10(a0->work->tilemaps, index);
    a0->work->cursor.unk1_0 = 13;
    a0->work->cursor.unk1_4 = 12;
    a0->work->cursor.unk2 = 0;
    a0->work->cursor.unk3 = 0;
    a0->work->cursor.x = x;
    a0->work->cursor.y = y;
    a0->work->cursor.width = width;
    a0->work->cursor.height = height;
    a0->nextState = nextState;
    return 8;
}
