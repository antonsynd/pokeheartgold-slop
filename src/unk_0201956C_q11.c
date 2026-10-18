#include "global.h"

typedef struct UnkStruct_0201956C_Layer {
    u16 *tilemap;
    u16 width : 6;
    u16 unk4_6 : 10;
    u8 filler_06[0xA];
} UnkStruct_0201956C_Layer;

typedef struct UnkStruct_020199F4 {
    u8 filler_0[4];
    UnkStruct_0201956C_Layer *layers;
} UnkStruct_020199F4;

void sub_020199F4(UnkStruct_020199F4 *a0, int index, u16 x, u16 y, u8 width, u8 height, u8 palette) {
    u16 *tilemap = a0->layers[index].tilemap;
    int stride = a0->layers[index].width;
    u16 i;
    u16 j;

    for (j = y; j < y + height; j++) {
        for (i = x; i < x + width; i++) {
            tilemap[j * stride + i] = (tilemap[j * stride + i] & 0xFFF) | (palette << 12);
        }
    }
}
