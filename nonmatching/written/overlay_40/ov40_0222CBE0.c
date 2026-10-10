#include "global.h"
#include "sprite_system.h"

void ov40_0222D288(void *sprite, s16 x, s16 y);
void ov40_0222D294(void *sprite, s16 *x, s16 *y);
void sub_020136B4(void *a, int b, int c);

void ov40_0222CBE0(u8 *param0) {
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    union { u32 w; s16 h[2]; } pos;
    int i;
    int d;
    pos.w = callerR3;

    for (i = 0; i < 5; i++) {
        ov40_0222D288(*(void **)(param0 + 0x534 + i * 0x28), 0x32, (s16)((5 - *(int *)(param0 + 0x6E0)) * 16 + 0xd9));
        sub_020136B4(*(void **)(param0 + 0x548 + i * 0x28), 0x24, -8);
    }
    i = 0;
    do {
        if (*(int *)(param0 + 0x6D8) == 0) {
            break;
        }
        ov40_0222D294(*(void **)(param0 + 0x534 + i * 0x28), &pos.h[1], &pos.h[0]);
        if (*(int *)(param0 + 0x6D8) - 1 == i) {
            pos.h[0] = 0xa9;
            ManagedSprite_SetPaletteOverrideOffset(*(ManagedSprite **)(param0 + 0x534 + i * 0x28), 1);
        } else {
            pos.h[1] = pos.h[1] - ((*(int *)(param0 + 0x6D8) - i) << 2);
            d = *(int *)(param0 + 0x6D8) - i;
            pos.h[0] = (d - 1) * 16 + (5 - d) * 0x24 + 0x19;
            ManagedSprite_SetPaletteOverrideOffset(*(ManagedSprite **)(param0 + 0x534 + i * 0x28), 2);
        }
        ov40_0222D288(*(void **)(param0 + 0x534 + i * 0x28), pos.h[1], pos.h[0]);
        i++;
    } while (i < *(int *)(param0 + 0x6D8));
}
