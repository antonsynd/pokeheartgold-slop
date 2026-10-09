#include "global.h"

#include "bg_window.h"
#include "heap.h"
#include "overlay_18.h"
#include "pokemon.h"
#include "unk_02013FDC.h"

typedef struct PokedexAppData {
    PokedexArgs *args;
    BgConfig *bgConfig;
    u8 filler_0008[0x18A2 - 0x8];
    u16 curSpecies;
} PokedexAppData;

typedef struct UnkOv18Flags {
    u8 low : 5;
    u8 bit5 : 1;
    u8 bit6 : 1;
    u8 bit7 : 1;
} UnkOv18Flags;

#define UNK_OV18_FLAGS(app) ((UnkOv18Flags *)((u8 *)(app) + 0x18C7))

extern const UnkStruct_02014E30 ov18_021FA338;
extern const u8 ov18_021FB5B4[];

void ov18_021F118C(PokedexAppData *pokedexApp, int a1, int a2);
void ov18_021F11C0(PokedexAppData *pokedexApp, int a1, int a2);
void ov18_021F3CA8(PokedexAppData *pokedexApp, int a1, u8 *form, u8 *gender);
void ov18_021F1294(PokedexAppData *pokedexApp, int a1, int x, int y, BOOL a4);
void ov18_021F1A7C(PokedexAppData *pokedexApp, u16 species, u8 form, u8 gender, u8 facing, int a5, int a6);
void ov18_021F5FFC(PokedexAppData *pokedexApp, int a1, int a2);

void ov18_021F684C(PokedexAppData *pokedexApp, int a1, int a2, int a3);
void ov18_021F69C0(PokedexAppData *pokedexApp, int a1);
void ov18_021F69E8(PokedexAppData *pokedexApp, u16 species, u8 form, u8 gender, u8 facing);

void ov18_021F67D0(PokedexAppData *pokedexApp) {
    ov18_021F11C0(pokedexApp, 9, 0);
    ov18_021F11C0(pokedexApp, 10, 0);
    ov18_021F11C0(pokedexApp, 11, 0);
    ov18_021F11C0(pokedexApp, 12, 0);
    ov18_021F11C0(pokedexApp, 13, 0);
    ov18_021F11C0(pokedexApp, 14, 0);
    ov18_021F11C0(pokedexApp, 15, 0);
    ov18_021F11C0(pokedexApp, 1, 0);
    ov18_021F11C0(pokedexApp, 2, 0);
    ov18_021F11C0(pokedexApp, 3, 0);
    ov18_021F11C0(pokedexApp, 4, 0);
}

void ov18_021F6844(PokedexAppData *pokedexApp, int a1, int a2) {
    ov18_021F5FFC(pokedexApp, a1, a2);
}

void ov18_021F684C(PokedexAppData *pokedexApp, int a1, int a2, int a3) {
    u8 form;
    u8 gender;
    int facing;
    u8 height;
    int x;
    u8 y;
    UnkOv18Flags *flags = UNK_OV18_FLAGS(pokedexApp);

    ov18_021F3CA8(pokedexApp, a2, &form, &gender);
    if (flags->bit7 == 0) {
        facing = 2;
        height = 0;
    } else {
        facing = 0;
        height = GetMonPicHeightBySpeciesGenderForm(pokedexApp->curSpecies, gender, 0, form, 0);
    }
    if (a1 == 1) {
        y = height + 0x78;
        x = 0x40;
        if (flags->bit5 == 1) {
            a1 = 3;
            ov18_021F11C0(pokedexApp, 1, 0);
            ov18_021F11C0(pokedexApp, a1, 1);
        } else {
            ov18_021F11C0(pokedexApp, 1, 1);
            ov18_021F11C0(pokedexApp, 3, 0);
        }
        flags->bit5 = !flags->bit5;
    } else if (a1 == 2) {
        y = height + 0x78;
        x = 0xC0;
        if (flags->bit6 == 1) {
            a1 = 4;
            ov18_021F11C0(pokedexApp, 2, 0);
            ov18_021F11C0(pokedexApp, a1, 1);
        } else {
            ov18_021F11C0(pokedexApp, 2, 1);
            ov18_021F11C0(pokedexApp, 4, 0);
        }
        flags->bit6 = !flags->bit6;
    }
    ov18_021F1A7C(pokedexApp, pokedexApp->curSpecies, form, gender, facing, a1, a3);
    ov18_021F1294(pokedexApp, a1, x, y, TRUE);
}

void ov18_021F6984(PokedexAppData *pokedexApp, int a1, int a2) {
    ov18_021F684C(pokedexApp, a1, a2, 0);
}

void ov18_021F6990(PokedexAppData *pokedexApp) {
    if (UNK_OV18_FLAGS(pokedexApp)->low == 0) {
        ov18_021F1294(pokedexApp, 13, 0x40, 0x58, FALSE);
    } else {
        ov18_021F1294(pokedexApp, 13, 0xC0, 0x58, FALSE);
    }
}

void ov18_021F69C0(PokedexAppData *pokedexApp, int a1) {
    int gender = PlayerProfile_GetTrainerGender(pokedexApp->args->playerProfile) != 0;
    if (a1 == 1) {
        gender += 2;
    }
    ov18_021F118C(pokedexApp, 2, gender);
}

void ov18_021F69E8(PokedexAppData *pokedexApp, u16 species, u8 form, u8 gender, u8 facing) {
    PokepicTemplate template;
    UnkStruct_02014E30 rect;
    void *buf;
    u8 *converted;
    u32 personality;

    rect = ov18_021FA338;
    buf = Heap_AllocAtEnd(HEAP_ID_POKEDEX_APP, 0xC80);
    if (species == SPECIES_SPINDA) {
        personality = Pokedex_GetSeenSpindaPersonality(pokedexApp->args->pokedex, 0);
    } else {
        personality = 0;
    }
    GetMonSpriteCharAndPlttNarcIdsEx(&template, species, gender, facing, 0, form, personality);
    sub_02014510(template.narcID, template.charDataID, HEAP_ID_POKEDEX_APP, &rect, buf, personality, FALSE, 2, species);
    converted = Convert4bppTo8bpp(buf, 0xC80, 0xF, HEAP_ID_POKEDEX_APP);
    BG_LoadCharTilesData(pokedexApp->bgConfig, 7, converted, 0x1900, 1);
    Heap_Free(converted);
    Heap_Free(buf);
    LoadRectToBgTilemapRect(pokedexApp->bgConfig, 7, ov18_021FB5B4, 0xB, 0xA, 0xA, 0xA);
    ScheduleBgTilemapBufferTransfer(pokedexApp->bgConfig, 7);
}
