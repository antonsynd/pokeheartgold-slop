#include "global.h"
#include "sprite_system.h"

extern u8 ov18_021FB004[];
extern u8 ov18_021FA520[];
extern u8 ov18_021FB54C[];
extern u8 ov18_021FB580[];
extern u32 ov18_021FA4EC[];

void ov18_021F118C(void *app, int a1, int a2);
void ov18_021F11C0(void *app, int a1, int a2);
void ov18_021F1424(void *app, int a1);

typedef struct UnkStruct_ov18_021F32B8_Tmpl {
    s16 x;
    s16 y;
    u32 rest[12];
} UnkStruct_ov18_021F32B8_Tmpl;

void ov18_021F32B8(u8 *app) {
    UnkStruct_ov18_021F32B8_Tmpl tmpl;
    ManagedSprite **sprites = (ManagedSprite **)(app + 0x670);
    u32 i;
    u32 j;
    u32 *dst;
    const u32 *src;
    u32 idx;

    for (i = 0; i < 0x1a; i++) {
        sprites[i] = SpriteSystem_NewSprite(*(SpriteSystem **)(app + 0x668), *(SpriteManager **)(app + 0x66c), (const ManagedSpriteTemplate *)(ov18_021FB004 + i * 0x34));
        ov18_021F11C0(app, i, 0);
    }
    *(ManagedSprite **)(app + 0x71c) = SpriteSystem_NewSpriteWithYOffset(*(SpriteSystem **)(app + 0x668), *(SpriteManager **)(app + 0x66c), (const ManagedSpriteTemplate *)ov18_021FA520, 0x200000);
    ov18_021F11C0(app, 0x2b, 0);
    *(ManagedSprite **)(app + 0x6d8) = SpriteSystem_NewSpriteWithYOffset(*(SpriteSystem **)(app + 0x668), *(SpriteManager **)(app + 0x66c), (const ManagedSpriteTemplate *)ov18_021FB54C, 0x200000);
    *(ManagedSprite **)(app + 0x6dc) = SpriteSystem_NewSpriteWithYOffset(*(SpriteSystem **)(app + 0x668), *(SpriteManager **)(app + 0x66c), (const ManagedSpriteTemplate *)ov18_021FB580, 0x200000);
    ov18_021F11C0(app, 0x1b, 0);

    dst = (u32 *)&tmpl;
    src = ov18_021FA4EC;
    for (j = 0; j < 13; j++) {
        dst[j] = src[j];
    }

    for (idx = 0x1c; idx < 0x2b; idx++) {
        if (idx == 0x1c) {
            tmpl.x = 0xe0;
            tmpl.y = 0x48;
            sprites[idx] = SpriteSystem_NewSprite(*(SpriteSystem **)(app + 0x668), *(SpriteManager **)(app + 0x66c), (const ManagedSpriteTemplate *)&tmpl);
            if (*(int *)(app + 0x188c) == 0xe) {
                ov18_021F11C0(app, idx, 0);
            } else {
                ov18_021F118C(app, idx, *(int *)(app + 0x188c));
            }
        } else {
            u32 k = (u16)(idx - 0x1d);
            tmpl.x = (k % 5) * 0x30 + 0x20;
            tmpl.y = (k / 5) * 0x28 + 0x38;
            sprites[idx] = SpriteSystem_NewSprite(*(SpriteSystem **)(app + 0x668), *(SpriteManager **)(app + 0x66c), (const ManagedSpriteTemplate *)&tmpl);
            ov18_021F118C(app, idx, k);
            ov18_021F11C0(app, idx, 0);
        }
    }
    ov18_021F1424(app, 0x3b);
}
