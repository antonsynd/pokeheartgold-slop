#include "global.h"

extern void PlaySE(int seq);
extern u8 ov83_0224776C(u8 exitSlot, u32 slotID);
extern u32 ov83_02245068(u8 x);
extern u16 sub_0203769C(void);
extern void ov83_02244ABC(void *app, u32 x);
extern void ov80_02237FA4(void *p, u8 x, u32 cost);
extern void ov83_022477C4(void *p, u32 x);
extern void ov83_022453DC(void *app, void *x);
extern void ov83_02245390(void *app);
extern void ov83_02245824(void *app, u8 slot);
extern void ov83_02245838(void *app, u8 slot, u8 x);
extern void ov83_02245288(void *app, u8 slot);
extern void ov83_02245318(void *app, u8 slot);

void ov83_0224563C(u8 *app, u32 slotID, u32 option) {
    u32 callerR5;
    __asm__ volatile("movs %0, r5" : "=l"(callerR5) : : "cc");
    u32 cost = callerR5;
    u8 exitSlot;
    u8 slot;

    PlaySE(0x5e3);
    exitSlot = app[0x15];
    slot = ov83_0224776C(exitSlot, slotID);

    switch (option) {
    case 0:
        cost = 1;
        break;
    case 1:
        cost = ov83_02245068(app[0x12]);
        break;
    case 3:
        cost = 2;
        break;
    case 4:
        cost = 5;
        break;
    }

    if (sub_0203769C() == 0) {
        if (slotID < exitSlot) {
            ov83_02244ABC(app, 5);
            ov80_02237FA4(*(void **)(app + 4), app[9], cost);
        } else {
            ov83_022477C4(*(void **)(app + 0x24), 5);
            *(u16 *)(app + 0x5ba) = *(u16 *)(app + 0x5ba) - cost;
        }
    } else {
        if (slotID < exitSlot) {
            ov83_022477C4(*(void **)(app + 0x24), 5);
            *(u16 *)(app + 0x5ba) = *(u16 *)(app + 0x5ba) - cost;
        } else {
            ov83_02244ABC(app, 5);
            ov80_02237FA4(*(void **)(app + 4), app[9], cost);
        }
    }

    ov83_022453DC(app, app + 0x50);
    ov83_02245390(app);

    switch (option) {
    case 0:
        ov83_02245824(app, slot);
        break;
    case 1:
        ov83_02245838(app, slot, app[0x12]);
        break;
    case 3:
        ov83_02245288(app, slot);
        break;
    case 4:
        ov83_02245318(app, slot);
        break;
    }
}
