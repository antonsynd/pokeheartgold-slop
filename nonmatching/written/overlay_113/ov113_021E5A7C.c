#include "global.h"
#include "menu_input_state.h"
#include "options.h"
#include "player_data.h"
#include "pokedex.h"
#include "save_vars_flags.h"

extern u8 ov113_021E5D80(void *data);
extern u8 ov113_021E5A48(Pokedex *pokedex, u8 *out);

typedef struct UnkStruct_ov113_021E5A7C_Args {
    MenuInputStateMgr *menuInputStateMgr;
    SaveData *saveData;
} UnkStruct_ov113_021E5A7C_Args;

typedef struct UnkStruct_ov113_021E5A7C {
    u32 unk0;
    UnkStruct_ov113_021E5A7C_Args *args;
    u8 filler8[4];
    Pokedex *pokedex;
    u8 filler10[4];
    MenuInputState menuInputState;
    u8 textFrameDelay;
    u8 frame;
    u8 filler1A;
    u8 unk1B;
    u8 unk1C;
    u8 unk1D;
    u8 filler1E;
    u8 unk1F;
    u8 unk20[0x1A];
    u8 unk3A[2];
    u8 unk3C;
} UnkStruct_ov113_021E5A7C;

void ov113_021E5A7C(UnkStruct_ov113_021E5A7C *data) {
    Options *options;
    u8 buf[4];
    u32 saved[5]; // r3, r4, r5, r6, lr as the original's prologue pushes them
    register u32 *savedPtr __asm__("r2") = saved;
    u8 *entrySp = (u8 *)__builtin_frame_address(0) + 8;
    int i;
    int n;

    __asm__ volatile("stmia %0!, {r3, r4, r5, r6}\n\tmov r3, lr\n\tstr r3, [%0]" : "+r"(savedPtr) : : "r3", "memory");

    data->menuInputState = MenuInputStateMgr_GetState(data->args->menuInputStateMgr);
    options = Save_PlayerData_GetOptionsAddr(data->args->saveData);
    data->textFrameDelay = Options_GetTextFrameDelay(options);
    data->frame = Options_GetFrame(options);
    data->pokedex = Save_Pokedex_Get(data->args->saveData);
    data->unk3C = Save_VarsFlags_GetUnownReportLevel(Save_VarsFlags_Get(data->args->saveData));
    data->unk1D = ov113_021E5D80(data);
    data->unk1F = Pokedex_GetSeenFormNum_Unown(data->pokedex, TRUE);
    if (data->unk3C >= 4) {
        for (i = 0; i <= 0x19; i++) {
            data->unk20[i] = i;
        }
        n = ov113_021E5A48(data->pokedex, buf);
        for (i = 0; i < n; i++) {
            // The original copies from its stack pointer: buf, then the pushed r3-r6/lr, then the caller's frame.
            if (i < 4) {
                data->unk3A[i] = buf[i];
            } else if (i < 24) {
                data->unk3A[i] = ((u8 *)saved)[i - 4];
            } else {
                data->unk3A[i] = entrySp[i - 24];
            }
        }
    } else {
        for (i = 0; i < data->unk1F; i++) {
            data->unk20[i] = Pokedex_GetSeenFormByIdx_Unown(data->pokedex, i, TRUE);
        }
    }
    data->unk1C = (s32)data->unk1F / 14;
    if (data->unk1F != 0 && (s32)data->unk1F % 14 != 0) {
        data->unk1C++;
    }
    data->unk1B = data->unk1C + data->unk1D + 1;
}
