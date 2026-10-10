#include "global.h"
#include "sprite_system.h"
#include "unk_02019BA4.h"
#include "unk_02020A0C.h"

void ov18_021F118C(void *app, int a1, int a2);

void ov18_021F7018(u8 *param0, int idx) {
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    union { u32 w; u8 b[4]; } pos;
    pos.w = callerR3;

    DpadMenuBox_GetPosition(GridInputHandler_GetDpadBox(*(GridInputHandler **)(param0 + 0x1864), idx), &pos.b[1], &pos.b[0]);
    ManagedSprite_SetPositionXY(*(ManagedSprite **)(param0 + 0x670), pos.b[1], pos.b[0]);
    if (idx >= 0x1b) {
        ov18_021F118C(param0, 0, 0x23);
    } else {
        ov18_021F118C(param0, 0, 0x28);
    }
}
