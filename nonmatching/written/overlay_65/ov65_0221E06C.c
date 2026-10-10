#include "global.h"
#include "overlay_manager.h"
#include "party.h"
#include "unk_02034354.h"
#include "unk_02035900.h"
#include "unk_02088288.h"

typedef struct UnkStruct_ov65_0221E06C_Args {
    /* 0x00 */ u8 filler_00[8];
    /* 0x08 */ Party *party;
    /* 0x0C */ u8 filler_0C[4];
    /* 0x10 */ SaveData *saveData;
    /* 0x14 */ u8 filler_14[4];
    /* 0x18 */ Options *options;
    /* 0x1C */ u8 filler_1C[0x10];
    /* 0x2C */ BOOL natDexEnabled;
} UnkStruct_ov65_0221E06C_Args;

typedef struct UnkStruct_ov65_0221E06C {
    /* 0x000 */ u8 filler_000[8];
    /* 0x008 */ UnkStruct_ov65_0221E06C_Args *args;
    /* 0x00C */ PokemonSummaryArgs summary;
    /* 0x048 */ int summarySide;
    /* 0x04C */ OverlayManager *appMan;
    /* 0x050 */ u8 filler_050[0x94 - 0x50];
    /* 0x094 */ int selectedSlot;
    /* 0x098 */ u8 filler_098[0x2224 - 0x98];
    /* 0x2224 */ Party *playerParty;
    /* 0x2228 */ Party *partnerParty;
    /* 0x222C */ u8 filler_222C[0x2E20 - 0x222C];
    /* 0x2E20 */ u8 chatotCry[2][0x3EC];
} UnkStruct_ov65_0221E06C;

extern const u8 _0221FD34[];

void ov65_0221E06C(UnkStruct_ov65_0221E06C *tr, int side) {
    if (side == 0) {
        tr->summary.party = tr->playerParty;
        tr->summary.partyCount = Party_GetCount(tr->args->party);
        tr->summary.unk28 = 0;
        sub_0208AD34(&tr->summary, sub_02034818(sub_0203769C()));
    } else {
        tr->summary.party = tr->partnerParty;
        tr->summary.partyCount = Party_GetCount(tr->partnerParty);
        tr->summary.unk28 = (int)tr->chatotCry[sub_0203769C() ^ 1];
        sub_0208AD34(&tr->summary, sub_02034818(sub_0203769C() ^ 1));
    }
    tr->summary.unk11 = 1;
    tr->summary.partySlot = tr->selectedSlot % 6;
    tr->summary.unk12 = 1;
    tr->summary.moveToLearn = 0;
    tr->summary.unk2C = sub_02088288(tr->args->saveData);
    tr->summary.natDexEnabled = tr->args->natDexEnabled;
    tr->summary.options = tr->args->options;
    tr->summary.ribbons = Save_SpecialRibbons_Get(tr->args->saveData);
    sub_02089D40(&tr->summary, _0221FD34);
    tr->appMan = OverlayManager_New(&gOverlayTemplate_PokemonSummary, &tr->summary, 0x1A);
    tr->summarySide = side;
}
