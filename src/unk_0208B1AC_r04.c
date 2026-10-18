#include "global.h"

#include "sprite.h"

typedef struct UnkStruct_0208B400_Sub {
    u8 filler_00[0x11];
    u8 unk11;
    u8 filler_12[2];
    u8 unk14;
} UnkStruct_0208B400_Sub;

typedef struct UnkStruct_0208B400 {
    u8 filler_000[0x22C];
    UnkStruct_0208B400_Sub *unk22C;
    u8 filler_230[0x1F8];
    Sprite *unk428;
} UnkStruct_0208B400;

typedef struct UnkStruct_021105B0 {
    u8 x;
    u8 y;
} UnkStruct_021105B0;

extern const UnkStruct_021105B0 _021105B0[];

void sub_0208B400(UnkStruct_0208B400 *a0) {
    UnkStruct_0208B400_Sub *sub = a0->unk22C;

    if (sub->unk11 != 2) {
        Sprite_SetPositionXY(a0->unk428, _021105B0[sub->unk14].x, _021105B0[sub->unk14].y);
        Sprite_SetAnimCtrlSeq(a0->unk428, 2);
    } else {
        Sprite_SetDrawFlag(a0->unk428, FALSE);
    }
}
