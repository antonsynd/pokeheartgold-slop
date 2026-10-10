#include "global.h"

typedef struct {
    s16 x;
    s16 y;
    s16 z;
    u16 animSeqNo;
    int priority;
    u32 unk_08;
    int vram;
    int resIds[4];
    u32 extra[5];
} UnkTemplate_ov99_021E8EBC;

extern void *ov98_0221E6E0(void *spriteSys, const UnkTemplate_ov99_021E8EBC *template);
extern void ManagedSprite_SetAnimateFlag(void *managedSprite, int flag);

void ov99_021E8EBC(u8 *data) {
    UnkTemplate_ov99_021E8EBC template = { 0 };
    u32 i, j;
    int base = 0;
    int xOffset = 0;
    int y = 0x2c;

    for (i = 0; i < 5; i++) {
        s16 sy = (s16)y;
        int x = 0x3c;
        for (j = 0; j < 3; j++) {
            int k = j + base;
            void *sprite;
            template.resIds[0] = k + 2;
            template.resIds[1] = 2;
            template.resIds[2] = 2;
            template.resIds[3] = 2;
            template.vram = 2;
            template.x = x + xOffset;
            template.y = sy;
            template.unk_08 = 3 - j;
            sprite = ov98_0221E6E0(*(void **)(data + 0x14), &template);
            *(void **)(data + (k + 0x16) * 4 + 0x18) = sprite;
            ManagedSprite_SetAnimateFlag(sprite, 1);
            x += 0x18;
        }
        base += 3;
        xOffset += 8;
        y += 0x20;
    }
}
