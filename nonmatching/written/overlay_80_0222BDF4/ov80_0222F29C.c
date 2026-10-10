#include "global.h"
#include "assert.h"
#include "error_handling.h"
#include "pokemon.h"
#include "pokemon_icon_idx.h"
#include "sprite.h"
#include "sprite_system.h"

extern const u8 ov80_0223BD80[0x34];

typedef struct UnkStruct_ov80_0222F29C {
    s16 x;
    s16 y;
    int unk_04;
    int priority;
    int unk_0C;
    int unk_10;
    int resource0;
    u8 filler_18[0x1C];
} UnkStruct_ov80_0222F29C;

typedef struct UnkStruct_ov80_0222F29C_Gfx {
    u8 filler_00[0x34];
    SpriteSystem *unk_34;
    SpriteManager *unk_38;
} UnkStruct_ov80_0222F29C_Gfx;

typedef struct UnkStruct_ov80_0222F29C_Sprite {
    Sprite *sprite;
} UnkStruct_ov80_0222F29C_Sprite;

ManagedSprite *ov80_0222F29C(UnkStruct_ov80_0222F29C_Gfx *gfx, Pokemon *mon, int resourceID, int x, int y) {
    UnkStruct_ov80_0222F29C tmpl;
    ManagedSprite *sprite;
    int i;

    if (resourceID >= 8) {
        GF_AssertFail();
    }

    SpriteSystem_LoadCharResObjAtEndWithHardwareMappingType(gfx->unk_34, gfx->unk_38, 0x14, Pokemon_GetIconNaix(mon), FALSE, 1, 2000 + resourceID);

    for (i = 0; i < 0x34; i++) {
        ((u8 *)&tmpl)[i] = ov80_0223BD80[i];
    }
    tmpl.resource0 += resourceID;
    tmpl.x = x;
    tmpl.y = y;
    tmpl.priority = 200;

    sprite = SpriteSystem_NewSprite(gfx->unk_34, gfx->unk_38, (const ManagedSpriteTemplate *)&tmpl);

    Sprite_SetPalOffsetRespectVramOffset(((UnkStruct_ov80_0222F29C_Sprite *)sprite)->sprite, Pokemon_GetIconPalette(mon));
    ManagedSprite_TickFrame(sprite);
    return sprite;
}
