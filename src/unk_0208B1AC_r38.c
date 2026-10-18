#include "global.h"

#include "sprite.h"

typedef struct UnkStruct_0208C320 {
    u8 filler_000[0x4DC];
    Sprite *sprites[9];
    u8 filler_500[0x2C5];
    u8 page;
    u8 count;
} UnkStruct_0208C320;

int sub_0208ACDC(UnkStruct_0208C320 *a0, u8 index);
void sub_0208C250(UnkStruct_0208C320 *a0, int a1, u8 index);

void sub_0208C320(UnkStruct_0208C320 *a0) {
    u16 i;

    for (i = 0; i < 9; i++) {
        if (i + a0->page * 9 < a0->count) {
            Sprite_SetDrawFlag(a0->sprites[i], TRUE);
            sub_0208C250(a0, sub_0208ACDC(a0, i), i);
        } else {
            Sprite_SetDrawFlag(a0->sprites[i], FALSE);
        }
    }
}
