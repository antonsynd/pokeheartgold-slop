#include "global.h"
#include "bg_window.h"
#include "party.h"
#include "pokemon.h"

typedef struct UnkStruct_ov65_0221CADC_Mon {
    /* 0x00 */ u8 filler_00[4];
    /* 0x04 */ u8 pokeBall;
    /* 0x05 */ u8 filler_05[0xB];
} UnkStruct_ov65_0221CADC_Mon;

typedef struct UnkStruct_ov65_0221CADC {
    /* 0x000 */ u8 filler_000[0x444];
    /* 0x444 */ Window windows[24];
    /* 0x5C4 */ u8 filler_5C4[0xD8];
    /* 0x69C */ UnkStruct_ov65_0221CADC_Mon monDisplayData[13];
    /* 0x76C */ u8 filler_76C[0x90];
    /* 0x7FC */ u8 previewPixelBuf[2][0xC80];
    /* 0x20FC */ u8 filler_20FC[0x2224 - 0x20FC];
    /* 0x2224 */ Party *playerParty;
    /* 0x2228 */ Party *partnerParty;
} UnkStruct_ov65_0221CADC;

int ov65_0221D57C(int side, Pokemon *mon, void *pixelBuf, void *tmpl);
void ov65_0221D674(Window *windows, int a1, Party *party, int a3, UnkStruct_ov65_0221CADC *tr);
void ov65_0221CA64(UnkStruct_ov65_0221CADC *tr, int a1, u8 a2);

void ov65_0221CADC(UnkStruct_ov65_0221CADC *tr, int slot) {
    int rem = slot % 6;
    Pokemon *mon = Party_GetMonByIndex(tr->partnerParty, rem);
    int quot = slot / 6;
    *(int *)((u8 *)tr + 0x211C) = ov65_0221D57C(1, mon, tr->previewPixelBuf[quot], (u8 *)tr + 0x20FC + quot * 0x10);
    ov65_0221D674(tr->windows, 1, tr->partnerParty, rem, tr);
    ov65_0221CA64(tr, 3, tr->monDisplayData[slot].pokeBall);
}
