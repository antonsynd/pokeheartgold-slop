#include "global.h"
#include "bg_window.h"
#include "brightness.h"
#include "gf_gfx_planes.h"
#include "math_util.h"
#include "party.h"
#include "pokemon.h"
#include "render_window.h"
#include "sav_chatot.h"
#include "sprite.h"
#include "system.h"
#include "unk_02034354.h"
#include "unk_02035900.h"
#include "unk_02037C94.h"
#include "unk_020379A0.h"

typedef struct UnkStruct_ov65_0221C5E0_Args {
    /* 0x00 */ u8 filler_00[8];
    /* 0x08 */ Party *party;
    /* 0x0C */ u8 filler_0C[0x24];
    /* 0x30 */ int tradeCount;
} UnkStruct_ov65_0221C5E0_Args;

typedef struct UnkStruct_ov65_0221C5E0_Mon {
    /* 0x00 */ u16 species;
    /* 0x02 */ u8 filler_02[0xE];
} UnkStruct_ov65_0221C5E0_Mon;

typedef struct UnkStruct_ov65_0221C5E0 {
    /* 0x000 */ u8 filler_000[0x4];
    /* 0x004 */ SaveData *saveData;
    /* 0x008 */ UnkStruct_ov65_0221C5E0_Args *args;
    /* 0x00C */ u8 filler_00C[0x4C];
    /* 0x058 */ int connectStep;
    /* 0x05C */ int partySendCount;
    /* 0x060 */ int commMilestone;
    /* 0x064 */ int partyReceiveCount;
    /* 0x068 */ u8 filler_068[0x118];
    /* 0x180 */ BgConfig *bgConfig;
    /* 0x184 */ void *unk_184;
    /* 0x188 */ u8 filler_188[0x8];
    /* 0x190 */ void *unk_190;
    /* 0x194 */ u8 filler_194[0x1B0];
    /* 0x344 */ Sprite *cursorSprites[2];
    /* 0x34C */ u8 filler_34C[0xF8];
    /* 0x444 */ Window windows[24];
    /* 0x5C4 */ u8 filler_5C4[0xD8];
    /* 0x69C */ UnkStruct_ov65_0221C5E0_Mon monDisplayData[13];
    /* 0x76C */ u8 filler_76C[0x90];
    /* 0x7FC */ u8 previewPixelBuf[0x1900];
    /* 0x20FC */ u8 previewTemplate[0x20];
    /* 0x211C */ int previewLoadSide;
    /* 0x2120 */ u8 filler_2120[0x104];
    /* 0x2224 */ Party *playerParty;
    /* 0x2228 */ Party *partnerParty;
    /* 0x222C */ u8 filler_222C[0x4];
    /* 0x2230 */ void *palPad;
    /* 0x2234 */ void *palPadNetworkObject;
    /* 0x2238 */ u8 filler_2238[0x94];
    /* 0x22CC */ int staggerCountdown;
    /* 0x22D0 */ u8 filler_22D0[0x13D8];
    /* 0x36A8 */ s32 syncSaveState;
} UnkStruct_ov65_0221C5E0;

void ov65_0221F864(UnkStruct_ov65_0221C5E0 *tr);
void ov65_0221F760(UnkStruct_ov65_0221C5E0 *tr);
void ov65_0221F780(UnkStruct_ov65_0221C5E0 *tr);
void ov65_0221F850(UnkStruct_ov65_0221C5E0 *tr);
void ov65_0221DE10(int unused, int cmd, int value);
void ov65_0221DE8C(SaveData *saveData);
void ov65_0221DE64(u32 a0, Party *party, int idx);
void ov65_0221DEA0(PlayerProfile *profile, void *palPad, void *obj);
void ov65_0221DF0C(SOUND_CHATOT *chatot);
void ov65_0221C1C4(UnkStruct_ov65_0221C5E0 *tr);
void ov65_0221C9D8(Pokemon *mon, UnkStruct_ov65_0221C5E0_Mon *dest);
void ov65_0221C46C(Party *party, int base, UnkStruct_ov65_0221C5E0 *tr);
int ov65_0221D57C(int side, Pokemon *mon, void *pixelBuf, void *tmpl);
void ov65_0221D674(Window *windows, int a1, Party *party, int a3, UnkStruct_ov65_0221C5E0 *tr);
void ov65_0221FB90(Window *window, int a1, int a2, void *a3, void *a4);

int ov65_0221C5E0(UnkStruct_ov65_0221C5E0 *tr) {
    int i;
    int count;
    u16 rem;

    ov65_0221F864(tr);

    switch (tr->connectStep) {
    case 0:
        sub_02037AC0(0x50);
        sub_0201A728(2);
        ov65_0221F760(tr);
        for (i = 0; i < Party_GetCount(tr->args->party); i++) {
            Pokemon *mon = Party_GetMonByIndex(tr->args->party, i);
            if (GetMonData(mon, MON_DATA_SPECIES_OR_EGG, NULL) == SPECIES_SHAYMIN) {
                if (GetMonData(mon, MON_DATA_FORM, NULL) != 0) {
                    Mon_UpdateShayminForm(mon, 0);
                }
            }
        }
        tr->connectStep++;
        break;
    case 1:
        if (sub_02037B38(0x50)) {
            if (tr->args->tradeCount == 0) {
                tr->connectStep = 6;
            } else {
                tr->connectStep = 2;
            }
            if (sub_0203769C() == 0) {
                rem = LCRandom() % 60;
                ov65_0221DE10(sub_0203769C(), 0x1F, rem + 3);
            }
            ov65_0221DE8C(tr->saveData);
            ov65_0221F850(tr);
        }
        break;
    case 2:
        if (tr->staggerCountdown != 0) {
            tr->connectStep++;
        }
        break;
    case 3:
        tr->staggerCountdown--;
        if (tr->staggerCountdown == 0) {
            tr->connectStep = 4;
        }
        break;
    case 4:
        sub_02039EAC(&tr->syncSaveState);
        tr->connectStep++;
        break;
    case 5:
        if (sub_02039EB4(tr->saveData, 2, (u32 *)&tr->syncSaveState)) {
            tr->connectStep++;
        }
        break;
    case 6:
        sub_020378E4(1);
        sub_02037AC0(0x51);
        tr->connectStep++;
        break;
    case 7:
        if (sub_02037B38(0x51)) {
            tr->connectStep++;
        }
        break;
    case 8:
        tr->partySendCount = 0;
        tr->commMilestone = 0;
        tr->partyReceiveCount = 0;
        if (sub_0203769C() == 1) {
            ov65_0221DE64(sub_0203769C(), tr->playerParty, tr->partySendCount);
            tr->partySendCount++;
        }
        tr->connectStep++;
        break;
    case 9:
        if (tr->commMilestone != 0) {
            tr->connectStep = 10;
        }
        break;
    case 10:
        tr->connectStep++;
        ov65_0221C1C4(tr);
        break;
    case 11:
        for (i = 0; i < 13; i++) {
            tr->monDisplayData[i].species = 0;
        }
        for (i = 0; i < Party_GetCount(tr->playerParty); i++) {
            Pokemon *mon = Party_GetMonByIndex(tr->playerParty, i);
            ov65_0221C9D8(mon, &tr->monDisplayData[i]);
        }
        for (i = 0; i < Party_GetCount(tr->partnerParty); i++) {
            Pokemon *mon = Party_GetMonByIndex(tr->partnerParty, i);
            ov65_0221C9D8(mon, &tr->monDisplayData[i + 6]);
        }
        tr->monDisplayData[12].species = 1;
        tr->connectStep++;
        break;
    case 12:
        ov65_0221DEA0(sub_02034818(sub_0203769C()), tr->palPad, &tr->palPadNetworkObject);
        tr->connectStep++;
        break;
    case 13:
        if (tr->commMilestone == 3) {
            tr->connectStep++;
        }
        break;
    case 14:
        ov65_0221DF0C(Save_Chatot_Get(tr->saveData));
        tr->connectStep++;
        break;
    case 15:
        if (tr->commMilestone == 4) {
            tr->connectStep++;
            GfGfx_EngineATogglePlanes(0x10, 0);
            ov65_0221C46C(tr->playerParty, 0, tr);
            ov65_0221C46C(tr->partnerParty, 6, tr);
            for (i = 0; i < 2; i++) {
                Sprite_SetDrawFlag(tr->cursorSprites[i], TRUE);
            }
        }
        break;
    case 16:
        StartBrightnessTransition(8, 0, -16, 0x1E, 1);
        ToggleBgLayer(1, 1);
        ToggleBgLayer(2, 1);
        ToggleBgLayer(3, 1);
        GfGfx_EngineATogglePlanes(0x10, 1);
        tr->connectStep++;
        break;
    case 17:
        if (IsBrightnessTransitionActive(1)) {
            Pokemon *mon = Party_GetMonByIndex(tr->playerParty, 0);
            tr->previewLoadSide = ov65_0221D57C(0, mon, tr->previewPixelBuf, tr->previewTemplate);
            ov65_0221D674(tr->windows, 0, tr->playerParty, 0, tr);
            tr->connectStep++;
        }
        break;
    case 18:
        StartBrightnessTransition(8, 0, -16, 0x17, 2);
        ToggleBgLayer(4, 1);
        ToggleBgLayer(5, 1);
        ToggleBgLayer(6, 1);
        GfGfx_EngineBTogglePlanes(0x10, 1);
        tr->connectStep++;
        ov65_0221F780(tr);
        break;
    case 19:
        if (IsBrightnessTransitionActive(2)) {
            ClearFrameAndWindow2(&tr->windows[23], TRUE);
            FillBgTilemapRect(tr->bgConfig, 0, 0, 0, 0, 32, 24, 0);
            ov65_0221FB90(&tr->windows[21], 0xF, 1, tr->unk_190, tr->unk_184);
            sub_0201A738(2);
            return 1;
        }
        break;
    }
    return 0;
}
