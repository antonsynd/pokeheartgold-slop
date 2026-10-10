#include "global.h"
#include "sprite_system.h"

extern void ov57_02238DAC(int idx, s16 *x, s16 *y);

void ov57_02238F48(u8 *appMan) {
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    s16 x = (s16)(callerR3 >> 16);
    s16 y = (s16)callerR3;
    int i;
    int index;
    ManagedSprite **sprites = (ManagedSprite **)(appMan + 0x324);

    for (i = 0; i < **(int **)appMan; i++) {
        ManagedSprite_SetDrawFlag(sprites[i], 0);
    }

    for (i = 0; i < 12; i++) {
        index = *(int *)(appMan + 4 + i * 8);
        if (index != 0xFF) {
            ov57_02238DAC(i, &x, &y);
            ManagedSprite_SetPositionXY(sprites[index], x - 0x10, y + 0xC);
            ManagedSprite_SetDrawFlag(sprites[index], 1);
        }
    }
}
