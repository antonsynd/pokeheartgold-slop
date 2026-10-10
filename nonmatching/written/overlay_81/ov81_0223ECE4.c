#include "global.h"

extern char gOverlayTemplate_PokemonSummary[];

extern u32 GridInputHandler_HandleInput_NoHold(void *handler);
extern u32 GridInputHandler_GetNextInput(void *handler);
extern void PlaySE(int seq);
extern void ov81_02241C0C(void *app);
extern void ov81_02242218(void *app, u32 a, u32 b, u32 c);
extern void ov81_02242300(void *app, u32 a, u32 b);
extern void ov81_02241450(void *app);
extern void ov81_022425C4(void *app, u32 a, u32 b, u32 c);
extern void ov81_022414E0(void *app);
extern void ov81_0223EF5C(void *app);
extern int ov80_02237254(u8 challengeType);
extern void ov81_02240FA4(void *app, u32 a, u32 b);
extern void ov81_022425EC(void *app);
extern int IsPaletteFadeFinished(void);
extern u16 PaletteData_GetSelectedBuffersBitmask(void *palette);
extern void PaletteData_ScheduleFadeTaskEndIfNoSelectedBuffers(void *palette);
extern void ov81_02240E78(void *app);
extern void ov81_02240BB0(void *app);
extern void *OverlayManager_New(void *tmpl, void *arg, u32 heapId);
extern void BeginNormalPaletteFade(u32 a, u32 b, u32 c, u32 d, u32 e, u32 f, u32 heapId);
extern int ov81_02242F40(void *x);
extern void ov81_0223F038(void *app);
extern void ov81_0223F0BC(void *app);

int ov81_0223ECE4(u8 *app) {
    u32 input;
    u32 next;

    switch (app[8]) {
    case 0:
        app[8] = 1;
        app[0x13] = app[0x13] & ~2;
        break;
    case 1:
        input = GridInputHandler_HandleInput_NoHold(*(void **)(app + 0x464));
        if (input > 0xfffffffd) {
            if (input == 0xfffffffe) {
                next = GridInputHandler_GetNextInput(*(void **)(app + 0x464));
                if (next >= 6) {
                    PlaySE(0x5dc);
                    ov81_022414E0(app);
                    return 1;
                }
                if (app[0x11] != 0) {
                    PlaySE(0x5dc);
                    ov81_0223EF5C(app);
                    if (ov80_02237254(app[9]) == 1) {
                        ov81_02240FA4(app, 8, 0);
                    }
                    return 1;
                }
            }
            break;
        }
        if (input == 0xfffffffd) {
            PlaySE(0x5dc);
            ov81_02241C0C(app);
            next = GridInputHandler_GetNextInput(*(void **)(app + 0x464));
            ov81_02242218(app, *(u32 *)(app + 0x3c0), next, 6);
            next = GridInputHandler_GetNextInput(*(void **)(app + 0x464));
            ov81_02242300(app, next, 6);
            break;
        }
        if (input > 8) {
            break;
        }
        switch (input) {
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
            PlaySE(0x5dc);
            *(u32 *)(app + 0x468) = input;
            ov81_02241C0C(app);
            ov81_02242218(app, *(u32 *)(app + 0x3c0), *(u32 *)(app + 0x468), 6);
            ov81_02242300(app, *(u32 *)(app + 0x468), 6);
            ov81_02241450(app);
            break;
        case 6:
            PlaySE(0x5dc);
            ov81_022425C4(app, 2, 0xc, 6);
            app[8] = 2;
            break;
        case 7:
            PlaySE(0x5dc);
            ov81_022425C4(app, 0x12, 0xc, 7);
            app[8] = 2;
            break;
        case 8:
            PlaySE(0x5dc);
            ov81_022425C4(app, 10, 0xf, 8);
            app[8] = 2;
            break;
        }
        break;
    case 2:
        ov81_022425EC(app);
        break;
    case 3:
        if (IsPaletteFadeFinished() == 1) {
            if (PaletteData_GetSelectedBuffersBitmask(*(void **)(app + 0x1a0)) == 0) {
                ov81_02240E78(app);
                ov81_02240BB0(app);
                *(void **)(app + 4) = OverlayManager_New(gOverlayTemplate_PokemonSummary, *(void **)(app + 0x1c0), 0x64);
                app[0x13] = app[0x13] | 2;
                return 1;
            }
            PaletteData_ScheduleFadeTaskEndIfNoSelectedBuffers(*(void **)(app + 0x1a0));
            *(u32 *)(app + 0x478) = 0xff;
        }
        break;
    case 4:
        if (*(u32 *)(app + 4) == 0) {
            return 1;
        }
        break;
    case 5:
        if (IsPaletteFadeFinished() == 1) {
            app[8] = 1;
        }
        break;
    case 6:
        BeginNormalPaletteFade(0, 0, 0, 0, 6, 1, 0x64);
        app[0x13] = app[0x13] | 0x40;
        app[8] = 3;
        break;
    case 7:
        ov81_022414E0(app);
        if (ov81_02242F40(*(void **)(app + *(u32 *)(app + 0x468) * 4 + 0x360)) == 0) {
            ov81_0223F038(app);
        } else {
            ov81_0223F0BC(app);
        }
        if (ov80_02237254(app[9]) == 1) {
            ov81_02240FA4(app, 8, 0);
        }
        return 1;
    case 8:
        ov81_022414E0(app);
        return 1;
    }
    return 0;
}
