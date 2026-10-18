#include "global.h"

#include "gf_gfx_loader.h"
#include "heap.h"

typedef struct Ov89Footprint {
    u16 palette;
    u16 species;
    u8 filler_4[4];
    u8 form;
} Ov89Footprint;

int ov89_0225C88C(u16 species, u8 form, BOOL a2);

void ov89_0225AA24(NNSG3dResTex *tex, NARC *narc, NARC *footprintNarc, const Ov89Footprint *footprint, BOOL a4) {
    u16 *palette;
    u8 *texData, *data;
    NNSG2dCharacterData *charData;
    int hasFootprint = ov89_0225C88C(footprint->species, footprint->form, a4);

    texData = (u8 *)tex + tex->texInfo.ofsTex;
    if (hasFootprint == 1) {
        data = GfGfxLoader_LoadFromOpenNarc(footprintNarc, 3 + footprint->species, TRUE, HEAP_ID_125, TRUE);
        NNS_G2dGetUnpackedCharacterData(data, &charData);
    } else {
        data = GfGfxLoader_LoadFromOpenNarc(narc, 16, FALSE, HEAP_ID_125, TRUE);
        NNS_G2dGetUnpackedCharacterData(data, &charData);
    }
    MI_CpuClear16(texData, 16 * 16 / 4);
    {
        int y, x, pixel, quadrant, shift;
        u8 *raw, *src;
        u16 *dst;

        raw = charData->pRawData;
        src = raw;
        dst = (u16 *)texData;
        for (quadrant = 0; quadrant < 4; quadrant++) {
            switch (quadrant) {
            case 0:
                if (hasFootprint == 1) {
                    src = &raw[0x20 * 4];
                } else {
                    src = &raw[0x20 * 0];
                }
                dst = (u16 *)texData;
                break;
            case 1:
                if (hasFootprint == 1) {
                    src = &raw[0x20 * 5];
                } else {
                    src = &raw[0x20 * 1];
                }
                dst = (u16 *)texData;
                dst++;
                break;
            case 2:
                if (hasFootprint == 1) {
                    src = raw;
                } else {
                    src = &raw[0x20 * 2];
                }
                dst = (u16 *)texData;
                dst = &dst[2 * 8];
                break;
            case 3:
                if (hasFootprint == 1) {
                    src = &raw[0x20 * 1];
                } else {
                    src = &raw[0x20 * 3];
                }
                dst = (u16 *)texData;
                dst = &dst[2 * 8 + 1];
                break;
            }
            pixel = 0;
            for (y = 0; y < 8; y++) {
                shift = 0;
                for (x = 0; x < 4; x++) {
                    if (src[pixel] & 0xF) {
                        *dst |= 1 << shift;
                    }
                    shift += 2;
                    if (src[pixel] & 0xF0) {
                        *dst |= 1 << shift;
                    }
                    shift += 2;
                    pixel++;
                }
                dst++;
                dst++;
            }
        }
    }
    palette = (u16 *)((u8 *)tex + tex->plttInfo.ofsPlttData);
    palette[1] = footprint->palette;
    Heap_Free(data);
}
