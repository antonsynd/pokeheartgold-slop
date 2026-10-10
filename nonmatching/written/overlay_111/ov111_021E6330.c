#include "global.h"

typedef struct UnkStruct_ov111_021E6330 {
    s16 x;
    s16 y;
    s16 z;
    u16 animSeqNo;
    int priority;
    int pal;
    int vram;
    int resIds[6];
    int bgPriority;
    int vramTransfer;
} UnkStruct_ov111_021E6330;

extern void *SpriteSystem_NewSpriteWithYOffset(void *spriteSystem, void *spriteManager, const UnkStruct_ov111_021E6330 *tmpl, s32 yOffset);
extern void ManagedSprite_SetAnimateFlag(void *sprite, u32 flag);

const u32 ov111_021E6C34[13] = { 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 2, 0 };

void *ov111_021E6330(void *spriteSystem, void *spriteManager, u16 x, u16 y, u8 anim, u8 priority) {
    UnkStruct_ov111_021E6330 tmpl;
    void *sprite;
    const u32 *src = ov111_021E6C34;
    u32 *dst = (u32 *)&tmpl;
    int i;

    for (i = 0; i < 13; i++) {
        dst[i] = src[i];
    }
    tmpl.x = x;
    tmpl.y = y;
    tmpl.priority = priority;
    tmpl.animSeqNo = anim;
    sprite = SpriteSystem_NewSpriteWithYOffset(spriteSystem, spriteManager, &tmpl, 0x20C000);
    ManagedSprite_SetAnimateFlag(sprite, 1);
    return sprite;
}
