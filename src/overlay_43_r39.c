#include "global.h"

#include "sprite.h"

typedef struct Ov43_0222AC28 {
    u8 filler_000[4];
    SpriteList *spriteList;
    u8 filler_008[0x80];
    SpriteResourcesHeader header;
    u8 filler_0AC[0x148];
    Sprite *sprites[2];
    Sprite *cursorSprite;
} Ov43_0222AC28;

// The cursor template is ov43_0222F14C[2]. Retail writes its fields through the
// anchor the compiler picked (ov43_0222F14C + 0x14), which the data file labels
// ov43_0222F160, and passes it to Sprite_CreateAffine as ov43_0222F1AC.
typedef struct Ov43TemplateAnchor {
    u8 filler_00[0x4C];
    SpriteTemplate cursor;
} Ov43TemplateAnchor;

extern SpriteTemplate ov43_0222F14C[2];
extern Ov43TemplateAnchor ov43_0222F160;
extern SpriteTemplate ov43_0222F1AC;

void ov43_0222AC28(Ov43_0222AC28 *a0, enum HeapID heapId) {
    int i;

    for (i = 0; i < 2; i++) {
        ov43_0222F14C[i].spriteList = a0->spriteList;
        ov43_0222F14C[i].header = &a0->header;
        ov43_0222F14C[i].heapID = heapId;
        a0->sprites[i] = Sprite_CreateAffine(&ov43_0222F14C[i]);
        Sprite_SetAnimActiveFlag(a0->sprites[i], TRUE);
        Sprite_SetDrawFlag(a0->sprites[i], FALSE);
        Sprite_SetAnimCtrlSeq(a0->sprites[i], i * 2 + 5);
    }
    ov43_0222F160.cursor.spriteList = a0->spriteList;
    ov43_0222F160.cursor.header = &a0->header;
    ov43_0222F160.cursor.heapID = heapId;
    a0->cursorSprite = Sprite_CreateAffine(&ov43_0222F1AC);
    Sprite_SetDrawFlag(a0->cursorSprite, FALSE);
    Sprite_SetAnimCtrlSeq(a0->cursorSprite, 1);
}
