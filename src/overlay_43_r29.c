#include "global.h"

#include "gf_gfx_loader.h"

typedef struct Ov43_0222A998 {
    u8 filler_000[0x58];
    NARC *narc;
    u8 filler_05C[0x1A4];
    void *screenData[2];
    NNSG2dScreenData *screens[2];
} Ov43_0222A998;

extern const u8 ov43_0222F0C0[];

void ov43_0222A998(Ov43_0222A998 *a0, enum HeapID heapID) {
    int i;

    for (i = 0; i < 2; i++) {
        a0->screenData[i] = GfGfxLoader_GetScrnDataFromOpenNarc(a0->narc, ov43_0222F0C0[i], TRUE, &a0->screens[i], heapID);
    }
}
