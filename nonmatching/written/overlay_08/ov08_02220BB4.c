#include "global.h"

typedef struct UnkStruct_ov08_02220BB4 {
    u8 pad_0000[0x2004];
    void *typeSprite1;
    void *typeSprite2;
} UnkStruct_ov08_02220BB4;

typedef struct UnkPokemon_ov08_02220BB4 {
    u8 pad_00[0x14];
    u8 type1;
    u8 type2;
} UnkPokemon_ov08_02220BB4;

void ov08_02220AEC(UnkStruct_ov08_02220BB4 *ctx, void *sprite, int resId, int type);
void ov08_02220A8C(void *sprite, int x, int y);

void ov08_02220BB4(UnkStruct_ov08_02220BB4 *ctx, UnkPokemon_ov08_02220BB4 *pokemon, int *coordinates) {
    ov08_02220AEC(ctx, ctx->typeSprite1, 0xb00e, pokemon->type1);
    ov08_02220A8C(ctx->typeSprite1, coordinates[0], coordinates[1]);

    if (pokemon->type1 != pokemon->type2) {
        ov08_02220AEC(ctx, ctx->typeSprite2, 0xb00f, pokemon->type2);
        ov08_02220A8C(ctx->typeSprite2, coordinates[2], coordinates[3]);
    }
}
