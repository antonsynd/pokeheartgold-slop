#include "global.h"

#include "unk_0200A090.h"

typedef struct Ov96_021E9104 {
    SpriteResource *resObj;
    u8 filler_04[0x14];
    u16 large;
} Ov96_021E9104;

u8 ov96_021E9180(void *charData, u32 offset);

u8 ov96_021E9104(Ov96_021E9104 *a0) {
    NNSG2dCharacterData *charData = GF2DGfxResObj_GetCharDataPtr(a0->resObj);
    int size;
    u8 result;
    int i;
    void *raw;
    u8 min;
    int j;

    if (a0->large) {
        size = 8;
    } else {
        size = 4;
    }
    result = 0xFF;
    raw = charData->pRawData;
    for (i = 0; i < size; i++) {
        min = 0xFF;

        for (j = 0; j < size; j++) {
            u8 value = ov96_021E9180(raw, (j + i * size) * 32);

            if (value != 0xFF && min > value) {
                min = value;
            }
        }
        if (min != 0xFF) {
            result = min + i * 8;
            break;
        }
    }
    GF_ASSERT(result != 0xFF);
    return result;
}
