#include "global.h"
#include "bg_window.h"
#include "party.h"
#include "pokemon.h"
#include "sprite.h"

typedef struct UnkStruct_ov65_0221CB5C {
    /* 0x000 */ u8 filler_000[0x94];
    /* 0x094 */ int selectedSlot;
    /* 0x098 */ u8 filler_098[0x414 - 0x98];
    /* 0x414 */ Sprite *sprite414;
    /* 0x418 */ Sprite *sprite418;
    /* 0x41C */ u8 filler_41C[0x444 - 0x41C];
    /* 0x444 */ Window windows[24];
    /* 0x5C4 */ u8 filler_5C4[0x7FC - 0x5C4];
    /* 0x7FC */ u8 previewPixelBuf[2][0xC80];
    /* 0x20FC */ u8 previewTemplate[2][0x10];
    /* 0x211C */ int previewLoadSide;
    /* 0x2120 */ u8 filler_2120[0x2224 - 0x2120];
    /* 0x2224 */ Party *playerParty;
} UnkStruct_ov65_0221CB5C;

int ov65_0221D57C(int side, Pokemon *mon, void *pixelBuf, void *tmpl);
void ov65_0221D674(Window *windows, int a1, Party *party, int a3, UnkStruct_ov65_0221CB5C *tr);
void ov65_0221D8C4(Window *windows, int a1, UnkStruct_ov65_0221CB5C *tr);
void ov65_0221CADC(UnkStruct_ov65_0221CB5C *tr, int slot);

void ov65_0221CB5C(UnkStruct_ov65_0221CB5C *tr) {
    if (tr->selectedSlot == 12) {
        return;
    }
    if (tr->selectedSlot < 6) {
        Pokemon *mon = Party_GetMonByIndex(tr->playerParty, tr->selectedSlot);
        int quot = tr->selectedSlot / 6;
        tr->previewLoadSide = ov65_0221D57C(0, mon, tr->previewPixelBuf[quot], tr->previewTemplate[quot]);
        ov65_0221D674(tr->windows, 0, tr->playerParty, tr->selectedSlot, tr);
        ov65_0221D8C4(tr->windows, 1, tr);
        Sprite_SetDrawFlag(tr->sprite418, FALSE);
    } else {
        ov65_0221CADC(tr, tr->selectedSlot);
        ov65_0221D8C4(tr->windows, 0, tr);
        Sprite_SetDrawFlag(tr->sprite414, FALSE);
    }
}
