#include "global.h"

extern char gOverlayTemplate_PokemonSummary[];

extern u32 GridInputHandler_HandleInput_NoHold(void *handler);
extern u32 GridInputHandler_GetNextInput(void *handler);
extern void PlaySE(int seq);
extern void ov81_02240F38(void *app, u32 a);
extern void ov81_02242218(void *app, u32 a, u32 b, u32 c);
extern void ov81_02241D38(void *app);
extern void sub_020196E8(void *p, u32 a, u32 b, u32 c);
extern void sub_0201980C(void *p, u32 a);
extern void ov81_0224174C(void *app);
extern void ov81_02242E08(void *p, u32 a);
extern void ov81_02242D88(void *p, u32 a);
extern void ClearWindowTilemapAndScheduleTransfer(void *window);
extern void ScheduleWindowCopyToVram(void *window);
extern void ov81_022425D8(void *app, u32 a, u32 b, u32 c);
extern void ov81_022425C4(void *app, u32 a, u32 b, u32 c);
extern void ov81_02241840(void *app);
extern void ov81_022417B4(void *app);
extern void ov81_022425EC(void *app);
extern void ov81_0223F684(void *app);
extern int IsPaletteFadeFinished(void);
extern u16 PaletteData_GetSelectedBuffersBitmask(void *palette);
extern void PaletteData_ScheduleFadeTaskEndIfNoSelectedBuffers(void *palette);
extern void ov81_02240E78(void *app);
extern void ov81_02240BB0(void *app);
extern void *OverlayManager_New(void *tmpl, void *arg, u32 heapId);
extern void BeginNormalPaletteFade(u32 a, u32 b, u32 c, u32 d, u32 e, u32 f, u32 heapId);

int ov81_0223F38C(u8 *app) {
    u32 input;
    u32 next;

    switch (app[8]) {
    case 0:
        ov81_02240F38(app, 0);
        app[8] = 1;
        app[0x13] = app[0x13] & ~2;
        break;
    case 1:
        input = GridInputHandler_HandleInput_NoHold(*(void **)(app + 0x464));
        if (input > 0xfffffffd) {
            if (input == 0xfffffffe) {
                next = GridInputHandler_GetNextInput(*(void **)(app + 0x464));
                if (next < 4) {
                    PlaySE(0x5dc);
                    ov81_02241840(app);
                    ov81_02242E08(*(void **)(app + 0x388), 1);
                    ov81_02240F38(app, 1);
                    return 1;
                }
                PlaySE(0x5dc);
                ov81_022417B4(app);
                ov81_02242E08(*(void **)(app + 0x388), 0);
            }
            break;
        }
        if (input == 0xfffffffd) {
            PlaySE(0x5dc);
            next = GridInputHandler_GetNextInput(*(void **)(app + 0x464));
            if (next == 3) {
                ov81_02242D88(*(void **)(app + 0x394), 0);
                ov81_02242D88(*(void **)(app + 0x398), 0);
                ClearWindowTilemapAndScheduleTransfer(app + 0xd0);
                sub_0201980C(*(void **)(app + 0x474), 0);
            } else {
                ov81_02242218(app, *(u32 *)(app + 0x3c0), next, 3);
                ScheduleWindowCopyToVram(app + 0xd0);
                sub_020196E8(*(void **)(app + 0x474), 0, 7, 0);
            }
            ov81_02241D38(app);
            break;
        }
        if (input > 6) {
            break;
        }
        switch (input) {
        case 0:
        case 1:
        case 2:
            PlaySE(0x5dc);
            *(u32 *)(app + 0x468) = input;
            ov81_02242218(app, *(u32 *)(app + 0x3c0), *(u32 *)(app + 0x468), 4);
            ov81_02241D38(app);
            sub_020196E8(*(void **)(app + 0x474), 0, 7, 0);
            ov81_0224174C(app);
            ov81_02242E08(*(void **)(app + 0x388), 1);
            break;
        case 3:
            PlaySE(0x5dc);
            ov81_02242D88(*(void **)(app + 0x394), 0);
            ov81_02242D88(*(void **)(app + 0x398), 0);
            ClearWindowTilemapAndScheduleTransfer(app + 0xd0);
            sub_0201980C(*(void **)(app + 0x474), 0);
            ov81_02241D38(app);
            ov81_022425D8(app, 0x17, 0xf, 6);
            app[8] = 2;
            break;
        case 4:
            PlaySE(0x5dc);
            ov81_022425C4(app, 2, 0xc, 7);
            app[8] = 2;
            break;
        case 5:
            PlaySE(0x5dc);
            ov81_022425C4(app, 0x12, 0xc, 8);
            app[8] = 2;
            break;
        case 6:
            PlaySE(0x5dc);
            ov81_022425C4(app, 10, 0xf, 9);
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
        ov81_02241840(app);
        ov81_02240F38(app, 1);
        return 1;
    case 7:
        BeginNormalPaletteFade(0, 0, 0, 0, 6, 1, 0x64);
        app[0x13] = app[0x13] | 0x40;
        app[8] = 3;
        break;
    case 8:
        ov81_0223F684(app);
        ov81_022417B4(app);
        ov81_02241840(app);
        return 1;
    case 9:
        ov81_022417B4(app);
        ov81_02242E08(*(void **)(app + 0x388), 0);
        app[8] = 1;
        break;
    }
    return 0;
}
