#include "global.h"

#include "sprite_system.h"
#include "unk_0201956C.h"

typedef struct Ov14Offset {
    u8 x;
    u8 y;
} Ov14Offset;

typedef struct Ov14Sub {
    u8 filler_0000[0x2F0];
    UnkStruct_0201956C *tilemaps;
    u8 filler_02F4[8];
    ManagedSprite *sprites[16];
    u8 filler_033C[0x3D76];
    u8 spriteIds[6];
} Ov14Sub;

typedef struct Ov14_021F32E0 {
    u8 filler_00[0x34];
    Ov14Sub *sub;
} Ov14_021F32E0;

extern const Ov14Offset ov14_021F808C[];

void sub_02019B1C(UnkStruct_0201956C *a0, int index, s8 *x, s8 *y);

void ov14_021F32E0(Ov14_021F32E0 *a0) {
    s8 x;
    s8 y;
    s16 baseY;
    s16 baseX;
    u16 i;

    sub_02019B1C(a0->sub->tilemaps, 1, &x, &y);
    baseY = y * 8;
    baseX = x * 8;
    for (i = 0; i < 6; i++) {
        ManagedSprite_SetPositionXY(a0->sub->sprites[a0->sub->spriteIds[i]], baseX + ov14_021F808C[i].x, baseY + ov14_021F808C[i].y);
    }
}
