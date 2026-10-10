#include "global.h"

typedef struct UnkContext_ov08_0222171C {
    u8 pad_00[0x11];
    u8 selectedPartyIndex;
    u8 pad_12[0x22];
    u8 selectedMoveSlot;
} UnkContext_ov08_0222171C;

typedef struct UnkStruct_ov08_0222171C {
    UnkContext_ov08_0222171C *context;
    u8 pad_0004[0x2084];
    void *cursor;
    u8 selectPokemonPreviousScreenButton;
    u8 pad_208D[0];
    u8 learnMovePreviousScreenButton;
    u8 confirmLearnMovePreviousScreenButton;
} UnkStruct_ov08_0222171C;

extern const u32 ov08_022254BC[];

void ov08_02224BCC(void *cursor, const u32 positions);
void ov08_02224B98(void *cursor, int slot);
void ov08_022216CC(void *ctx);
void ov08_022216F4(void *ctx);

void ov08_0222171C(UnkStruct_ov08_0222171C *ctx, int screen) {
    ov08_02224BCC(ctx->cursor, ov08_022254BC[screen]);

    switch (screen) {
    case 0:
        ov08_02224B98(ctx->cursor, ctx->context->selectedPartyIndex);
        ctx->selectPokemonPreviousScreenButton = 0;
        ctx->context->selectedMoveSlot = 0;
        break;
    case 1:
        ov08_02224B98(ctx->cursor, ctx->selectPokemonPreviousScreenButton);
        ctx->context->selectedMoveSlot = 0;
        break;
    case 3:
    case 4:
        ov08_02224B98(ctx->cursor, ctx->context->selectedMoveSlot);
        break;
    case 6:
    case 8:
        ov08_022216CC(ctx);
        ov08_02224B98(ctx->cursor, ctx->learnMovePreviousScreenButton);
        break;
    case 7:
    case 9:
        ov08_022216F4(ctx);
        ov08_02224B98(ctx->cursor, ctx->confirmLearnMovePreviousScreenButton);
        break;
    }
}
