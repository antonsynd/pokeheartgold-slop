#include "global.h"

typedef struct UnkStruct_02089E30_Sub {
    u8 filler_00[0x15];
    u8 validMask;
} UnkStruct_02089E30_Sub;

typedef struct UnkStruct_02089E30 {
    u8 filler_000[0x22C];
    UnkStruct_02089E30_Sub *unk22C;
    u8 filler_230[0x50];
    u32 unk280_0 : 28;
    u32 unk280_28 : 1;
    u32 unk280_29 : 3;
    u8 filler_284[0x538];
    s8 cursor;
} UnkStruct_02089E30;

void sub_02089E14(UnkStruct_02089E30 *a0, s8 cursor);

void sub_02089E30(UnkStruct_02089E30 *a0, int delta) {
    s8 cursor = a0->cursor;
    s8 prev = cursor;
    u8 mask;

    if (a0->unk280_28) {
        return;
    }
    mask = a0->unk22C->validMask;
    do {
        cursor += delta;
        if (cursor < 0) {
            cursor = 2;
        } else if (cursor > 2) {
            cursor = 0;
        }
    } while (!((1 << cursor) & mask));
    if (cursor != prev) {
        sub_02089E14(a0, cursor);
    }
}
