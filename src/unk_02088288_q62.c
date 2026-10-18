#include "global.h"

#include "sprite_system.h"

typedef struct UnkStruct_0208A7F8 {
    u8 filler_000[0x44C];
    Sprite *unk44C;
} UnkStruct_0208A7F8;

void sub_0208DAD4(UnkStruct_0208A7F8 *a0, int a1);
void sub_0208D9A0(UnkStruct_0208A7F8 *a0, int a1);
void sub_0208BB8C(UnkStruct_0208A7F8 *a0, int a1);

void sub_0208A7F8(UnkStruct_0208A7F8 *a0, int a1) {
    if (a1 == -1) {
        sub_0208DAD4(a0, a1);
        thunk_Sprite_SetDrawFlag(a0->unk44C, FALSE);
    } else {
        sub_0208D9A0(a0, a1);
        sub_0208BB8C(a0, a1);
        thunk_Sprite_SetDrawFlag(a0->unk44C, TRUE);
    }
}
