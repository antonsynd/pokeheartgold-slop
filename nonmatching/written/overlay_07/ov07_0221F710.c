#include "global.h"

typedef struct {
    s16 x;
    s16 y;
    s16 z;
    s16 unk6;
    u32 unk8;
    u32 unkC;
    u32 unk10;
    u32 resIds[6];
    u32 unk2C;
    u32 unk30;
} UnkStruct_ov07_0221F710_Template;

extern u16 ov07_0221C470(void *animSys);
extern s16 ov07_02221F80(void *animSys, int battler, int coord);
extern void *SpriteSystem_NewSprite(void *spriteSystem, void *spriteManager, const void *tmpl);
extern void GF_AssertFail(void);

void ov07_0221F710(u8 *p) {
    u32 **script = (u32 **)(p + 0x18);
    u32 idx, slot;
    int battler, i;
    UnkStruct_ov07_0221F710_Template tmpl;
    void *sprite;

    *script += 1;
    idx = **script;
    *script += 1;
    slot = **script;
    *script += 1;

    battler = ov07_0221C470(p);
    tmpl.x = ov07_02221F80(p, battler, 0);
    tmpl.y = ov07_02221F80(p, battler, 1);
    tmpl.z = 0;
    tmpl.unk6 = 0;
    tmpl.unk8 = 100;
    tmpl.unk10 = 1;
    tmpl.unk2C = 1;
    tmpl.unkC = 0;
    tmpl.unk30 = 0;
    for (i = 0; i < 6; i++) {
        tmpl.resIds[i] = **script + 5000;
        *script += 1;
    }
    *(UnkStruct_ov07_0221F710_Template *)(p + 0x104) = tmpl;

    sprite = SpriteSystem_NewSprite(*(void **)(*(u8 **)(p + 0xc0) + 0xac), ((void **)(p + 0xcc))[idx], &tmpl);

    if (((void **)(p + 0xdc))[slot] != NULL) {
        GF_AssertFail();
    }
    ((void **)(p + 0xdc))[slot] = sprite;
}
