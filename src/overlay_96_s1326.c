#include "global.h"

#include "sprite_system.h"

typedef struct Ov96_02219940 {
    u8 filler_00[0xBC];
    s8 timers[4];
} Ov96_02219940;

typedef struct Ov96SpriteTemplate {
    ManagedSpriteTemplate template;
} Ov96SpriteTemplate;

extern const ManagedSpriteTemplate ov96_0221D910;

void ov96_02219DD0(void *a0, u32 player, u32 index);
void ov96_02219F50(void *a0, u32 player, int a2);

BOOL ov96_02219940(Ov96_02219940 *a0, u32 player) {
    // Retail tests the index against zero here, not the pointer.
    GF_ASSERT(player != 0 && player < 4);

    a0->timers[player]++;
    if (a0->timers[player] > 12) {
        a0->timers[player] = 0;
        return TRUE;
    }
    return FALSE;
}

void ov96_0221996C(void *a0, u32 player, u32 index, int a3) {
    GF_ASSERT(a0 != NULL);
    GF_ASSERT(player < 4);
    GF_ASSERT(index < 3);

    if (a3 == 0) {
        ov96_02219DD0(a0, player, index);
    }
    ov96_02219F50(a0, player, a3);
}

ManagedSprite *ov96_022199A8(SpriteSystem *spriteSystem, SpriteManager *spriteManager, s16 x, s16 y, u16 animation, u16 priority) {
    ManagedSpriteTemplate template = ov96_0221D910;
    ManagedSprite *sprite;

    GF_ASSERT(spriteSystem != NULL);
    GF_ASSERT(spriteManager != NULL);

    template.x = x;
    template.y = y;
    template.animation = animation;
    template.drawPriority = priority;
    sprite = SpriteSystem_NewSpriteWithYOffset(spriteSystem, spriteManager, &template, FX32_CONST(480));
    ManagedSprite_SetAnimateFlag(sprite, TRUE);
    return sprite;
}
