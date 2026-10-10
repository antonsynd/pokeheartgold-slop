#include "global.h"

typedef struct UnkTemplate_ov07_0223476C {
    u16 narcID;
    u16 character;
    u16 palette;
    u16 spindaSpots;
    u32 pad_08[2];
} UnkTemplate_ov07_0223476C;

typedef struct UnkSpriteData_ov07_0223476C {
    void *tiles;
    u32 narcID;
    u32 palette;
    u32 yOffset;
} UnkSpriteData_ov07_0223476C;

typedef struct UnkStruct_ov07_0223476C {
    s32 targetBattler;
    s32 sourceBattler;
    UnkSpriteData_ov07_0223476C *spriteData[4];
    void *sprites[4];
    u16 species[4];
    u8 genders[4];
    u8 shinyFlags[4];
    u8 forms[4];
    u32 personalities[4];
    u8 types[4];
} UnkStruct_ov07_0223476C;

void Pokepic_Push(void *pic);
void GetMonSpriteCharAndPlttNarcIdsEx(UnkTemplate_ov07_0223476C *out, u16 species, u8 gender, u8 face, u8 shiny, u8 form, u32 personality);
UnkTemplate_ov07_0223476C *Pokepic_GetTemplate(void *pic);
void Pokepic_ScheduleReloadFromNarc(void *pic);
void sub_02014540(u32 narcID, u32 character, int heapID, void *tiles, u32 personality, int a5, int face, u32 spots);
int GetMonPicHeightBySpeciesGenderForm(u16 species, u8 gender, u8 face, u8 form, u32 personality);
int ov07_02234B5C(int type, int a1);
void Pokepic_SetAttr(void *pic, int attr, int value);
void *NARC_New(int narcID, int heapID);
void sub_020729D8(void *narc, s8 *out, u16 species);
void sub_020729FC(void *narc, s8 *out, u16 species);
void sub_02072A20(void *narc, u8 *out, u16 species);
void NARC_Delete(void *narc);

void ov07_0223476C(UnkStruct_ov07_0223476C *ctx, int param1, int param2, int heapID) {
    UnkTemplate_ov07_0223476C v0;
    UnkTemplate_ov07_0223476C *v1;
    u16 species;
    u8 gender, shiny, form;
    u32 personality;
    int face;
    int v8;
    s8 v11;
    s8 v9, v10;
    u8 v12;
    u32 *dst, *src;
    int i;

    Pokepic_Push(ctx->sprites[ctx->targetBattler]);

    species = ctx->species[ctx->sourceBattler];
    gender = ctx->genders[ctx->sourceBattler];
    shiny = ctx->shinyFlags[ctx->sourceBattler];
    form = ctx->forms[ctx->sourceBattler];
    personality = ctx->personalities[ctx->sourceBattler];

    if (param2) {
        if (ctx->types[param1] & 1) {
            face = 0;
        } else {
            face = 2;
        }
    } else {
        if (ctx->types[param1] & 1) {
            face = 2;
        } else {
            face = 0;
        }
    }

    GetMonSpriteCharAndPlttNarcIdsEx(&v0, species, gender, face, shiny, form, personality);

    v1 = Pokepic_GetTemplate(ctx->sprites[ctx->targetBattler]);
    dst = (u32 *)v1;
    src = (u32 *)&v0;
    for (i = 0; i < 4; i++) {
        dst[i] = src[i];
    }

    Pokepic_ScheduleReloadFromNarc(ctx->sprites[ctx->targetBattler]);
    sub_02014540(v1->narcID, v1->character, heapID, ctx->spriteData[ctx->targetBattler]->tiles, personality, 0, face, v1->spindaSpots);

    ctx->spriteData[ctx->targetBattler]->narcID = v1->narcID;
    ctx->spriteData[ctx->targetBattler]->palette = v1->palette;

    ctx->spriteData[ctx->targetBattler]->yOffset = GetMonPicHeightBySpeciesGenderForm(species, gender, face, form, personality);
    v11 = (s8)ctx->spriteData[ctx->targetBattler]->yOffset;
    v8 = ov07_02234B5C(ctx->types[ctx->targetBattler], 1);

    Pokepic_SetAttr(ctx->sprites[ctx->targetBattler], 1, v8 + v11);

    if (face == 2) {
        void *narc = NARC_New(0xb4, heapID);

        sub_020729D8(narc, &v9, species);
        sub_020729FC(narc, &v10, species);
        sub_02072A20(narc, &v12, species);
        NARC_Delete(narc);

        Pokepic_SetAttr(ctx->sprites[ctx->targetBattler], 0x2e, v12);
        Pokepic_SetAttr(ctx->sprites[ctx->targetBattler], 0x14, v8 + 0x24);
        Pokepic_SetAttr(ctx->sprites[ctx->targetBattler], 0x15, v10);
        Pokepic_SetAttr(ctx->sprites[ctx->targetBattler], 0x16, 0x24 - v11);
        Pokepic_SetAttr(ctx->sprites[ctx->targetBattler], 0x29, v9);
    }
}
