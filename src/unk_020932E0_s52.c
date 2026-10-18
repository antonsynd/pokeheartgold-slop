#include "global.h"

#include "sound.h"
#include "sprite.h"

typedef struct UnkStruct_02095540 {
    u8 filler_0000[0xF];
    u8 selection;
    u8 count;
    u8 filler_0011[0x8AB];
    Sprite *cursorSprite;
    Sprite *markerSprite;
    u8 filler_08C4[0x3DF4];
    void *board;
} UnkStruct_02095540;

void sub_020943EC(UnkStruct_02095540 *a0);
int sub_02095DD8(void *board);
int sub_02095DE8(void *board);
void sub_02095D40(void *board, int a1, int a2);

void sub_02095540(UnkStruct_02095540 *a0) {
    u8 slot;
    VecFx32 pos;

    switch (a0->selection) {
    case 0:
        a0->selection = a0->count - 1;
        break;
    default:
        a0->selection--;
        break;
    }
    Sprite_SetAnimCtrlSeq(a0->cursorSprite, 1);
    sub_020943EC(a0);
    PlaySE(SEQ_SE_DP_SELECT);
    if (a0->selection == 18) {
        if (sub_02095DD8(a0->board) == 2) {
            slot = sub_02095DE8(a0->board) % 6;
            sub_02095D40(a0->board, 6, slot);
            pos.x = (slot * 24 + 20) << FX32_SHIFT;
            pos.y = FX32_CONST(40);
            pos.z = 0;
            Sprite_SetMatrix(a0->markerSprite, &pos);
        }
    } else if (sub_02095DD8(a0->board) == 6) {
        sub_02095D40(a0->board, 2, sub_02095DE8(a0->board));
    }
}
