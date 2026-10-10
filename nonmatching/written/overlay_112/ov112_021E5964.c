#include "global.h"

extern void CARD_SpiWaitInit(void);
extern void CARD_SetSpiWriteWaitCycles(u32 cycles);
extern void CARD_SetSpiReadWaitCycles(u32 cycles);
extern void CARD_SpiWaitReadRange(void *p);
extern void ov112_021E594C(void);
extern u64 OS_GetTick(void);
extern u8 ov112_021FFA18[];
extern u8 _021FF500[];
extern u32 _021FF9E0[];

void ov112_021E5964(void) {
    u32 tick;
    CARD_SpiWaitInit();
    CARD_SetSpiWriteWaitCycles(0x32);
    CARD_SetSpiReadWaitCycles(0x32);
    CARD_SpiWaitReadRange(ov112_021FFA18);
    ov112_021E594C();
    _021FF500[0] = 0xFF;
    _021FF500[1] = 0xFF;
    tick = (u32)OS_GetTick();
    _021FF9E0[0x20 / 4] = tick;
    _021FF9E0[0x04 / 4] = tick;
    _021FF9E0[0x0C / 4] = 0;
    _021FF9E0[0x1C / 4] = 0;
}
