#include "global.h"
#include "sprite_system.h"

extern const u8 ov80_0223BD4C[0x34];

typedef struct UnkStruct_ov80_0222F3FC {
    s16 x;
    s16 y;
    int unk_04;
    int priority;
    u8 filler_0C[0x28];
} UnkStruct_ov80_0222F3FC;

typedef struct UnkStruct_ov80_0222F3FC_Gfx {
    u8 filler_00[0x34];
    SpriteSystem *unk_34;
    SpriteManager *unk_38;
} UnkStruct_ov80_0222F3FC_Gfx;

ManagedSprite *ov80_0222F3FC(UnkStruct_ov80_0222F3FC_Gfx *gfx, int x, int y) {
    UnkStruct_ov80_0222F3FC tmpl;
    ManagedSprite *sprite;
    int i;

    for (i = 0; i < 0x34; i++) {
        ((u8 *)&tmpl)[i] = ov80_0223BD4C[i];
    }
    tmpl.x = x;
    tmpl.y = y;
    tmpl.priority = 300;
    sprite = SpriteSystem_NewSprite(gfx->unk_34, gfx->unk_38, (const ManagedSpriteTemplate *)&tmpl);
    ManagedSprite_TickFrame(sprite);
    return sprite;
}
