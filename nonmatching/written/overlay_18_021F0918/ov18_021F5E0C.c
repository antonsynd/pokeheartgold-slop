#include "global.h"
#include "sprite_system.h"

extern u8 ov18_021FAC28[];
extern u8 ov18_021FA348[];

void ov18_021F11C0(void *app, int a1, int a2);
void ov18_021F5EFC(void *app, int a1, int a2);
void ov18_021F6038(void *app);
void ov18_021F61DC(void *app, int a1, int a2, const void *tbl, int a4);
void ov18_021F65AC(void *app);
void ov18_021F619C(void *app, int a1, int a2, int a3);

void ov18_021F5E0C(u8 *app) {
    ManagedSprite **sprites = (ManagedSprite **)(app + 0x670);
    u32 i;

    for (i = 1; i < 5; i++) {
        sprites[i] = SpriteSystem_NewSpriteWithYOffset(*(SpriteSystem **)(app + 0x668), *(SpriteManager **)(app + 0x66c), (const ManagedSpriteTemplate *)(ov18_021FAC28 + (i - 1) * 0x34), 0x200000);
    }
    for (i = 5; i < 0x14; i++) {
        sprites[i] = SpriteSystem_NewSprite(*(SpriteSystem **)(app + 0x668), *(SpriteManager **)(app + 0x66c), (const ManagedSpriteTemplate *)(ov18_021FAC28 + (i - 1) * 0x34));
    }
    ov18_021F11C0(app, 9, 0);
    ov18_021F11C0(app, 10, 0);
    ov18_021F11C0(app, 11, 0);
    ov18_021F11C0(app, 12, 0);
    ov18_021F11C0(app, 13, 0);
    ov18_021F5EFC(app, 0, 0);
    ov18_021F6038(app);
    ov18_021F61DC(app, 5, *(s8 *)(app + 0x18c4), ov18_021FA348, 9);
    ov18_021F65AC(app);
    ov18_021F619C(app, *(s8 *)(app + 0x18c5), *(s8 *)(app + 0x18c4), 6);
}
