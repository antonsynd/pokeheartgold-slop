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
} UnkTemplate_ov99_021E810C;

extern void *ov98_0221E6E0(void *spriteSys, const UnkTemplate_ov99_021E810C *template);
extern void ManagedSprite_SetAnimateFlag(void *managedSprite, int flag);
extern void ManagedSprite_SetDrawFlag(void *managedSprite, int flag);
extern const int ov99_021E9FB0[5];

void ov99_021E810C(u8 *data) {
    UnkTemplate_ov99_021E810C template = { 0 };
    int i;
    const int *table = ov99_021E9FB0;
    s16 y = 0x30;

    for (i = 0; i < 5; i++) {
        void **slot;
        template.animSeqNo = i;
        template.resIds[0] = 0x20;
        template.resIds[1] = 3;
        template.resIds[2] = 3;
        template.resIds[3] = 3;
        template.vram = 2;
        template.priority = i;
        template.x = *table * 8 + 0x68;
        template.y = y;
        slot = (void **)(data + (i + 0xf) * 4 + 0x408);
        *slot = ov98_0221E6E0(*(void **)(data + 0x404), &template);
        ManagedSprite_SetAnimateFlag(*slot, 1);
        ManagedSprite_SetDrawFlag(*slot, 0);
        table++;
        y += 0x20;
    }
}
