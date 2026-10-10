#include "global.h"

extern u32 GridInputHandler_HandleInput_NoHold(void *handler);
extern u32 GridInputHandler_GetNextInput(void *handler);
extern void PlaySE(int seq);
extern u32 Options_GetFrame(void *options);
extern void ov81_02243028(void *window, u32 frame);
extern u8 ov81_0224086C(void *app, u32 a);
extern void ov81_02242218(void *app, u32 a, u32 b, u32 c);
extern void sub_020196E8(void *p, u32 a, u32 b, u32 c);
extern void sub_0201980C(void *p, u32 a);
extern void ov81_02241D94(void *app);
extern void ov81_022424AC(void *app, u32 a);
extern void ov81_02241980(void *app);
extern void ov81_02242E08(void *p, u32 a);
extern void ov81_02242D88(void *p, u32 a);
extern void Pokepic_SetAttr(void *pic, u32 attr, u32 value);
extern void ClearWindowTilemapAndScheduleTransfer(void *window);
extern void ScheduleWindowCopyToVram(void *window);
extern void ov81_022425D8(void *app, u32 a, u32 b, u32 c);
extern void ov81_022425C4(void *app, u32 a, u32 b, u32 c);
extern void ov81_02241A7C(void *app);
extern void ov81_022419E0(void *app);
extern void ov81_02240F38(void *app, u32 a);
extern int YesNoPrompt_HandleInput(void *prompt);
extern void YesNoPrompt_Reset(void *prompt);
extern void ov81_02242694(void *app, u32 a);
extern void ov81_0223FB64(void *app);
extern void ov81_0223FB88(void *app);
extern void ov81_0223FB3C(void *app);
extern void ov81_02241A38(void *app);
extern void ov81_02241BD0(void *p, u32 a);
extern int ov80_02237254(u8 challengeType);
extern void ov81_022425EC(void *app);

int ov81_0223F770(u8 *app) {
    u32 input;
    u32 next;
    int result;

    switch (app[8]) {
    case 0:
        ov81_02243028(app + 0xc0, Options_GetFrame(*(void **)(app + 0x1b8)));
        app[0x10] = ov81_0224086C(app, 0xd);
        app[8] = 1;
        break;
    case 1:
        input = GridInputHandler_HandleInput_NoHold(*(void **)(app + 0x464));
        if (input > 0xfffffffd) {
            if (input == 0xfffffffe) {
                next = GridInputHandler_GetNextInput(*(void **)(app + 0x464));
                if (next < 6) {
                    PlaySE(0x5dc);
                    ov81_02241A7C(app);
                    ov81_02242E08(*(void **)(app + 0x388), 1);
                    ov81_02240F38(app, 1);
                    return 1;
                }
                PlaySE(0x5dc);
                ov81_022419E0(app);
                ov81_02242E08(*(void **)(app + 0x388), 0);
            }
            break;
        }
        if (input == 0xfffffffd) {
            PlaySE(0x5dc);
            next = GridInputHandler_GetNextInput(*(void **)(app + 0x464));
            if (next - 4 <= 1) {
                ov81_02242D88(*(void **)(app + 0x394), 0);
                ov81_02242D88(*(void **)(app + 0x398), 0);
                Pokepic_SetAttr(*(void **)(app + *(u16 *)(app + 0x3c8) * 4 + 0x1ac), 6, 1);
                ClearWindowTilemapAndScheduleTransfer(app + 0xd0);
                ClearWindowTilemapAndScheduleTransfer(app + 0x50 + (*(u16 *)(app + 0x3c8) + 2) * 16);
                sub_0201980C(*(void **)(app + 0x474), 0);
            } else if (next != 6 && next != 7) {
                ov81_02242218(app, *(u32 *)(app + 0x3c4), next, 4);
                ScheduleWindowCopyToVram(app + 0xd0);
                sub_020196E8(*(void **)(app + 0x474), 0, 7, 0);
                ov81_02241D94(app);
                ov81_022424AC(app, next);
            }
            break;
        }
        if (input > 7) {
            break;
        }
        switch (input) {
        case 0:
        case 1:
        case 2:
        case 3:
            PlaySE(0x5dc);
            *(u32 *)(app + 0x468) = input;
            ov81_02242218(app, *(u32 *)(app + 0x3c4), *(u32 *)(app + 0x468), 4);
            sub_020196E8(*(void **)(app + 0x474), 0, 7, 0);
            ov81_02241D94(app);
            ov81_022424AC(app, *(u32 *)(app + 0x468));
            ov81_02241980(app);
            ov81_02242E08(*(void **)(app + 0x388), 1);
            break;
        case 4:
            PlaySE(0x5dc);
            ov81_02242D88(*(void **)(app + 0x394), 0);
            ov81_02242D88(*(void **)(app + 0x398), 0);
            Pokepic_SetAttr(*(void **)(app + *(u16 *)(app + 0x3c8) * 4 + 0x1ac), 6, 1);
            ClearWindowTilemapAndScheduleTransfer(app + 0xd0);
            ClearWindowTilemapAndScheduleTransfer(app + 0x50 + (*(u16 *)(app + 0x3c8) + 2) * 16);
            sub_0201980C(*(void **)(app + 0x474), 0);
            ov81_022425D8(app, 2, 0xf, 5);
            app[8] = 4;
            break;
        case 5:
            PlaySE(0x5dc);
            ov81_02242D88(*(void **)(app + 0x394), 0);
            ov81_02242D88(*(void **)(app + 0x398), 0);
            Pokepic_SetAttr(*(void **)(app + *(u16 *)(app + 0x3c8) * 4 + 0x1ac), 6, 1);
            ClearWindowTilemapAndScheduleTransfer(app + 0xd0);
            ClearWindowTilemapAndScheduleTransfer(app + 0x50 + (*(u16 *)(app + 0x3c8) + 2) * 16);
            sub_0201980C(*(void **)(app + 0x474), 0);
            ov81_022425D8(app, 0x17, 0xf, 6);
            app[8] = 4;
            break;
        case 6:
            PlaySE(0x5dc);
            ov81_022425C4(app, 2, 0xf, 7);
            app[8] = 4;
            break;
        case 7:
            PlaySE(0x5dc);
            ov81_022425C4(app, 0x12, 0xf, 8);
            app[8] = 4;
            break;
        }
        break;
    case 2:
        result = YesNoPrompt_HandleInput(*(void **)(app + 0x46c));
        if (result == 1) {
            YesNoPrompt_Reset(*(void **)(app + 0x46c));
            ov81_02242694(app, 0);
            ov81_0223FB64(app);
            if (ov80_02237254(app[9]) == 1) {
                app[0x10] = ov81_0224086C(app, 2);
            }
            app[8] = app[8] + 1;
        } else if (result == 2) {
            YesNoPrompt_Reset(*(void **)(app + 0x46c));
            ov81_02242694(app, 0);
            ov81_0223FB88(app);
            ov81_02241A38(app);
            ov81_02242E08(*(void **)(app + 0x388), 0);
            app[8] = 1;
        }
        break;
    case 3:
        return 1;
    case 4:
        ov81_022425EC(app);
        break;
    case 5:
        ov81_02241A7C(app);
        ov81_0223FB3C(app);
        return 1;
    case 6:
        ov81_02241A7C(app);
        ov81_02240F38(app, 1);
        return 1;
    case 7:
        ov81_022419E0(app);
        ov81_02241A7C(app);
        ov81_02241BD0(*(void **)(app + 0x46c), *(u32 *)(app + 0x4c));
        ov81_02242694(app, 1);
        app[0x10] = ov81_0224086C(app, 0xe);
        app[8] = 2;
        break;
    case 8:
        ov81_022419E0(app);
        ov81_02242E08(*(void **)(app + 0x388), 0);
        app[8] = 1;
        break;
    }
    return 0;
}
