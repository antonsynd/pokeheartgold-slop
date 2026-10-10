#include "global.h"
#include "overlay_manager.h"
#include "player_data.h"
#include "screen_fade.h"
#include "sprite.h"
#include "unk_02034B0C.h"

struct UnkStruct_ov70_022385C0;

typedef int (*UnkScreenFunc_ov70_022385C0)(struct UnkStruct_ov70_022385C0 *, int, void *, int);

typedef struct UnkStruct_ov70_022385C0_Args {
    /* 0x00 */ u8 filler_00[0x1C];
    /* 0x1C */ PlayerProfile *trainerInfo;
} UnkStruct_ov70_022385C0_Args;

typedef struct UnkStruct_ov70_022385C0 {
    /* 0x000 */ UnkStruct_ov70_022385C0_Args *args;
    /* 0x004 */ u8 filler_004[0x14 - 0x4];
    /* 0x014 */ int screenId;
    /* 0x018 */ u8 filler_018[0x50 - 0x18];
    /* 0x050 */ int dwcHeapHandle;
    /* 0x054 */ u8 filler_054[0x114 - 0x54];
    /* 0x114 */ int appManActive;
    /* 0x118 */ u8 filler_118[0x128 - 0x118];
    /* 0x128 */ int searchResultCount;
    /* 0x12C */ u8 filler_12C[0xBF4 - 0x12C];
    /* 0xBF4 */ SpriteList *spriteList;
} UnkStruct_ov70_022385C0;

extern UnkScreenFunc_ov70_022385C0 ov70_022463EC[][3];
extern int ov70_02246944;

void ov00_021ECB40(void);
void ov00_021EC294(void (*alloc)(void), void (*free)(void));
void ov70_02238DF8(void);
void ov70_02238E20(void);
void ov70_022378DC(void);
void ov70_02238880(void);
void ov70_02238E98(UnkStruct_ov70_022385C0 *state);
void ov70_02238E70(UnkStruct_ov70_022385C0 *state);
void ov70_02240D74(UnkStruct_ov70_022385C0 *state, u32 gender);
void ov70_02241184(UnkStruct_ov70_022385C0 *state, int count, int a2);
void ov70_02239C6C(UnkStruct_ov70_022385C0 *state);
void ov70_02239CF8(UnkStruct_ov70_022385C0 *state);
void ov70_02238F04(UnkStruct_ov70_022385C0 *state);
void ov70_02238F24(UnkStruct_ov70_022385C0 *state);

int ov70_022385C0(OverlayManager *man, int *loopState) {
    UnkStruct_ov70_022385C0 *state = OverlayManager_GetData(man);
    UnkScreenFunc_ov70_022385C0 fn;
    u32 gender;

    ov00_021ECB40();
    ov70_022378DC();
    switch (*loopState) {
    case 0:
        if (sub_02034DB8()) {
            ov70_02246944 = state->dwcHeapHandle;
            ov00_021EC294(ov70_02238DF8, ov70_02238E20);
            *loopState = 1;
        }
        break;
    case 1:
        fn = ov70_022463EC[state->screenId][0];
        *loopState = fn(state, *loopState, fn, state->screenId);
        ov70_02238880();
        if (state->appManActive != 0) {
            ov70_02238E98(state);
        }
        break;
    case 2:
        if (IsPaletteFadeFinished()) {
            *loopState = 3;
        }
        break;
    case 3:
        fn = ov70_022463EC[state->screenId][1];
        *loopState = fn(state, *loopState, fn, state->screenId);
        break;
    case 4:
        if (IsPaletteFadeFinished()) {
            if (state->appManActive != 0) {
                ov70_02238E70(state);
                gender = PlayerProfile_GetTrainerGender(state->args->trainerInfo);
                ov70_02240D74(state, gender);
                ov70_02241184(state, state->searchResultCount, 0);
                ov70_02239C6C(state);
                ov70_02239CF8(state);
                state->appManActive = 0;
            }
            fn = ov70_022463EC[state->screenId][2];
            *loopState = fn(state, *loopState, fn, state->screenId);
        }
        break;
    case 5:
        return 1;
    }
    ov70_02238F04(state);
    ov70_02238F24(state);
    if (state->spriteList != NULL) {
        SpriteList_RenderAndAnimateSprites(state->spriteList);
    }
    return 0;
}
