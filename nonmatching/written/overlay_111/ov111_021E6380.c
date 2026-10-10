#include "global.h"

typedef struct UnkStruct_ov111_021E6380 {
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
} UnkStruct_ov111_021E6380;

extern void *SpriteSystem_NewSpriteWithYOffset(void *spriteSystem, void *spriteManager, const UnkStruct_ov111_021E6380 *tmpl, s32 yOffset);
extern void GF_AssertFail(void);

const u32 ov111_021E6C00[13] = { 0, 0, 0, 0, 1, 0, 1, 1, 1, 0, 0, 2, 0 };

void *ov111_021E6380(void *spriteSystem, void *spriteManager, u16 x, u16 y, u8 resId) {
    UnkStruct_ov111_021E6380 tmpl;
    const u32 *src = ov111_021E6C00;
    u32 *dst = (u32 *)&tmpl;
    int i;

    for (i = 0; i < 13; i++) {
        dst[i] = src[i];
    }
    if (resId >= 2) {
        GF_AssertFail();
    }
    tmpl.resIds[0] = resId + 1;
    tmpl.x = x;
    tmpl.y = y;
    return SpriteSystem_NewSpriteWithYOffset(spriteSystem, spriteManager, &tmpl, 0x20C000);
}
