#include "global.h"

typedef struct UnkStruct_ov07_02223EB4 {
    void *battleAnimSys;
    void *paletteData;
} UnkStruct_ov07_02223EB4;

extern void *ov07_022324D8(void *system, int size);
extern void *ov07_0221FA78(void *system);
extern int ov07_0221C4A8(void *system, int index);
extern u32 ov07_0221E6C8(void *system);
extern void PaletteData_BeginPaletteFade(void *data, int bufferId, u32 planeMask, s8 delay, u8 startAlpha, u8 endAlpha, u16 color);
extern void ov07_02223E94(void);
extern void ov07_0221C410(void *system, void (*func)(void), void *ctx);

void ov07_02223EB4(void *system) {
    u32 callerR4;
    __asm__ volatile("movs %0, r4" : "=l"(callerR4) : : "cc");

    UnkStruct_ov07_02223EB4 *ctx = ov07_022324D8(system, 8);
    u32 planes = callerR4;
    int delay;
    int startAlpha;
    int endAlpha;
    int color;

    ctx->battleAnimSys = system;
    ctx->paletteData = ov07_0221FA78(system);

    switch (ov07_0221C4A8(system, 0)) {
    case 0:
        planes = (u16)ov07_0221E6C8(system);
        break;
    case 1:
        planes = 0x100;
        break;
    case 2:
        planes = 0x200;
        break;
    default:
        GF_AssertFail();
        break;
    }

    delay = ov07_0221C4A8(system, 1);
    startAlpha = ov07_0221C4A8(system, 2);
    endAlpha = ov07_0221C4A8(system, 3);
    color = ov07_0221C4A8(system, 4);
    PaletteData_BeginPaletteFade(ctx->paletteData, 1, planes, delay, startAlpha, endAlpha, color);
    ov07_0221C410(ctx->battleAnimSys, ov07_02223E94, ctx);
}
