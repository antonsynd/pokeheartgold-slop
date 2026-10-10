#include "global.h"

typedef struct UnkContext_ov08_02221500 {
    u8 pad_00[0x11];
    u8 selectedPartyIndex;
} UnkContext_ov08_02221500;

typedef struct UnkPokemon_ov08_02221500 {
    u8 pad_00[0x28];
    u8 stats[5];
    u8 pad_2D[0x23];
} UnkPokemon_ov08_02221500;

typedef struct UnkStruct_ov08_02221500 {
    UnkContext_ov08_02221500 *context;
    UnkPokemon_ov08_02221500 partyPokemon[6];
    u8 pad_pad[0x2024 - 4 - 6 * 0x50];
    void *sprites[5];
} UnkStruct_ov08_02221500;

void ov08_022213E4(void *sprite, int a);
int ov08_022214BC(u8 stat, int a, int b);
void ov08_02220A8C(void *sprite, int x, int y);

void ov08_02221500(UnkStruct_ov08_02221500 *ctx) {
    UnkPokemon_ov08_02221500 *pokemon = &ctx->partyPokemon[ctx->context->selectedPartyIndex];

    ov08_022213E4(ctx->sprites[0], 0);
    ov08_022213E4(ctx->sprites[1], 1);
    ov08_022213E4(ctx->sprites[2], 3);
    ov08_022213E4(ctx->sprites[3], 4);
    ov08_022213E4(ctx->sprites[4], 2);

    {
        int x, y;
        x = ov08_022214BC(pokemon->stats[0], 0x90, 0x90);
        y = ov08_022214BC(pokemon->stats[0], 2, 0x18);
        ov08_02220A8C(ctx->sprites[0], x, y);
        x = ov08_022214BC(pokemon->stats[1], 0xa4, 0x90);
        y = ov08_022214BC(pokemon->stats[1], 0x10, 0x18);
        ov08_02220A8C(ctx->sprites[1], x, y);
        x = ov08_022214BC(pokemon->stats[2], 0x9c, 0x90);
        y = ov08_022214BC(pokemon->stats[2], 0x29, 0x18);
        ov08_02220A8C(ctx->sprites[2], x, y);
        x = ov08_022214BC(pokemon->stats[3], 0x83, 0x8f);
        y = ov08_022214BC(pokemon->stats[3], 0x29, 0x18);
        ov08_02220A8C(ctx->sprites[3], x, y);
        x = ov08_022214BC(pokemon->stats[4], 0x7b, 0x8f);
        y = ov08_022214BC(pokemon->stats[4], 0x10, 0x18);
        ov08_02220A8C(ctx->sprites[4], x, y);
    }
}
