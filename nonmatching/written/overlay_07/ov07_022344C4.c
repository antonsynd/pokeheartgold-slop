#include "global.h"

typedef struct UnkStruct_ov07_022344C4 {
    u8 pad_00[0x30];
    void *sprite;
} UnkStruct_ov07_022344C4;

int ManagedSprite_SetDrawPriority(void *sprite, int priority);

int ov07_022344C4(UnkStruct_ov07_022344C4 *ctx, int priority) {
    return ManagedSprite_SetDrawPriority(ctx->sprite, priority);
}
