#include "global.h"

typedef struct UnkStruct_ov07_022344B4 {
    u8 pad_00[0x30];
    void *sprite;
} UnkStruct_ov07_022344B4;

int ManagedSprite_SetAffineZRotation(void *sprite, int rotation);

int ov07_022344B4(UnkStruct_ov07_022344B4 *ctx, int rotation) {
    return ManagedSprite_SetAffineZRotation(ctx->sprite, rotation);
}
