#include "global.h"

#include "bg_window.h"

void ov01_021F0454(void *a0, int a1, int a2, int a3, int a4, int a5, BgConfig *bgConfig, int bgId);

void ov01_021F0500(void *a0, int a1, int a2, int a3, int a4, int a5, BgConfig *bgConfig, int bgId, int mirrorBgId) {
    u16 *tilemap;
    int y;
    int x;

    ov01_021F0454(a0, a1, a2, a3, a4, a5, bgConfig, bgId);
    ov01_021F0454(a0, a1, a2, a3, a4, a5, bgConfig, mirrorBgId);
    tilemap = GetBgTilemapBuffer(bgConfig, mirrorBgId);
    for (y = 0; y < 24; y++) {
        for (x = 0; x < 8; x++) {
            u16 left = y * 16 + x;
            u16 right = y * 16 + 15 - x;
            u16 tmp = tilemap[left];

            tilemap[left] = tilemap[right];
            tilemap[right] = tmp;
            tilemap[left] = (tilemap[left] & 0xFBFF) | (((tilemap[left] >> 10) ^ 1) << 10);
            tilemap[right] = (tilemap[right] & 0xFBFF) | (((tilemap[right] >> 10) ^ 1) << 10);
        }
    }
    ScheduleBgTilemapBufferTransfer(bgConfig, mirrorBgId);
}
