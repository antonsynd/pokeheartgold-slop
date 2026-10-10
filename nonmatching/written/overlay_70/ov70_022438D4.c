#include "global.h"
#include "sprite.h"

extern u8 ov70_02245DF8[];

extern void ov70_02242D44(void *work, int a1, int a2);
extern void ov70_02238F9C(Sprite *sprite, int x, int y);

typedef struct UnkStruct_ov70_022438D4 {
    u8 filler_00[0xC];
    Sprite *unk_0C;
    u8 filler_10[0x8];
    Sprite *unk_18;
    u8 filler_1C[0x20];
    s16 unk_3C;
    u8 filler_3E[0xA];
    int unk_48;
    int unk_4C;
} UnkStruct_ov70_022438D4;

int ov70_022438D4(UnkStruct_ov70_022438D4 *work) {
    int idx;
    ov70_02242D44(work, 6, 16);
    Sprite_SetAnimCtrlSeq(work->unk_0C, 0x3d);
    Sprite_SetDrawFlag(work->unk_0C, TRUE);
    idx = work->unk_3C;
    work->unk_48 = idx;
    ov70_02238F9C(work->unk_0C, (ov70_02245DF8[idx * 2] + 0x10) * 8, ov70_02245DF8[idx * 2 + 1] * 8);
    if (work->unk_18 != NULL) {
        Sprite_SetDrawFlag(work->unk_18, TRUE);
    }
    work->unk_4C = 0x11;
    return -1;
}
