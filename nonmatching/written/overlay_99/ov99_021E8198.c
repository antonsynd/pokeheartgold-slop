#include "global.h"

typedef struct {
    s16 x;
    s16 y;
    s16 z;
    u16 animSeqNo;
    u32 rotation;
    int priority;
    int vram;
    int resIds[4];
    u32 extra[5];
} UnkTemplate_ov99_021E8198;

extern void *ov98_0221E6E0(void *spriteSys, const UnkTemplate_ov99_021E8198 *template);

void ov99_021E8198(u8 *data) {
    UnkTemplate_ov99_021E8198 template = { 0 };
    u32 i, j;
    int base = 0;
    int y = 0x20;

    for (i = 0; i < 5; i++) {
        s16 sy = (s16)y;
        s16 x = 0x30;
        for (j = 0; j < 6; j++) {
            int k = j + base;
            template.resIds[0] = k + 2;
            template.resIds[1] = 1;
            template.resIds[2] = 1;
            template.resIds[3] = 1;
            template.vram = 1;
            template.x = x;
            template.y = sy;
            template.extra[2] = 1;
            *(void **)(data + (k + 0x14) * 4 + 0x408) = ov98_0221E6E0(*(void **)(data + 0x404), &template);
            x += 0x20;
        }
        base += 6;
        y += 0x18;
    }
}
