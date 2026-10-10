#include "global.h"

extern void *GetWindowBgConfig(void *window);
extern u8 GetWindowBgId(void *window);
extern u8 GetWindowX(void *window);
extern u8 GetWindowY(void *window);
extern u8 CalculateHpBarPixelsLength(u32 hp, u32 maxHp, u32 pixels);
extern u8 CalculateHpBarColor(u32 hp, u32 maxHp, u32 pixels);
extern void FillBgTilemapRect(void *bgConfig, u8 bgId, u16 tile, u8 x, u8 y, u8 w, u8 h, u8 pal);
extern void ScheduleBgTilemapBufferTransfer(void *bgConfig, u8 bgId);
extern void GF_AssertFail(void);

void ov111_021E5D2C(void *window, u32 hp, u32 maxHp) {
    u32 callerR6;
    /* the asm's default case uses r6 without setting it: the caller's r6, read here before anything else runs */
    __asm__ volatile("movs %0, r6" : "=l"(callerR6) : : "cc");
    void *bgConfig = GetWindowBgConfig(window);
    u8 bgId = GetWindowBgId(window);
    u8 x = GetWindowX(window);
    u8 y = GetWindowY(window);
    u8 pixels = CalculateHpBarPixelsLength(hp, maxHp, 0x30);
    u32 base;
    u8 i;

    switch (CalculateHpBarColor(hp, maxHp, 0x30)) {
    case 0:
    case 3:
    case 4:
        base = 1;
        break;
    case 2:
        base = 10;
        break;
    case 1:
        base = 0x13;
        break;
    default:
        GF_AssertFail();
        base = callerR6;
        break;
    }

    for (i = 0; i < 6; i++) {
        u16 tile;
        if (pixels >= 8) {
            tile = (u16)(base + 8);
        } else {
            tile = (u16)(base + pixels);
        }
        FillBgTilemapRect(bgConfig, bgId, tile, (u8)(x + i), y, 1, 1, 0x11);
        if (pixels < 8) {
            pixels = 0;
        } else {
            pixels = (u8)(pixels - 8);
        }
    }
    ScheduleBgTilemapBufferTransfer(bgConfig, bgId);
}
