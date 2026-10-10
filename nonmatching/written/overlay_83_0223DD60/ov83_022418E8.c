#include "global.h"

extern const u16 ov83_02247D18[];

extern void PlaySE(int seq);
extern u8 ov83_0224776C(u8 exitSlot, u32 slotID);
extern u32 ov83_02240EF8(u16 x);
extern u16 sub_0203769C(void);
extern void ov83_02240C6C(void *app, u32 x);
extern void ov80_02237FA4(void *p, u8 x, u32 cost);
extern void ov83_022477C4(void *p, u32 x);
extern void ov83_02241770(void *app, void *x);
extern void ov83_02241730(void *app);
extern void ov83_02241B18(void *app);
extern void ov83_0224042C(void *app);
extern void ov83_022477EC(u32 a, u32 b, void *p);
extern void ov83_02241354(void *p);
extern u32 Options_GetFrame(void *options);
extern void ov83_02247944(void *p, u32 frame);
extern void ov83_022415F4(void *app, u8 slot, u32 option);
extern void ov83_022416A0(void *app, u8 slot, u16 x);
extern void ov83_02241A60(void *app, u8 slot);
extern void ov83_02241ABC(void *app, u8 slot);

void ov83_022418E8(u8 *app, u32 slotID, u32 menuOption) {
    u32 callerR6;
    __asm__ volatile("movs %0, r6" : "=l"(callerR6) : : "cc");
    u32 cost = callerR6;
    u8 exitSlot;
    u8 slot;

    PlaySE(0x5e3);
    exitSlot = app[0x15];
    slot = ov83_0224776C(exitSlot, slotID);

    switch (menuOption) {
    case 1:
    case 2:
    case 3:
        cost = ov83_02247D18[menuOption - 1];
        break;
    case 6:
    case 7:
        cost = ov83_02240EF8(*(u16 *)(app + 0x10));
        break;
    case 9:
    case 10:
        cost = 0;
        break;
    }

    if (sub_0203769C() == 0) {
        if (slotID < exitSlot) {
            ov83_02240C6C(app, 5);
            ov80_02237FA4(*(void **)(app + 4), app[9], cost);
        } else {
            ov83_022477C4(*(void **)(app + 0x24), 5);
            *(u16 *)(app + 0x802) = *(u16 *)(app + 0x802) - cost;
        }
    } else {
        if (slotID < exitSlot) {
            ov83_022477C4(*(void **)(app + 0x24), 5);
            *(u16 *)(app + 0x802) = *(u16 *)(app + 0x802) - cost;
        } else {
            ov83_02240C6C(app, 5);
            ov80_02237FA4(*(void **)(app + 4), app[9], cost);
        }
    }

    ov83_02241770(app, app + 0x50);
    ov83_02241730(app);
    ov83_02241B18(app);
    ov83_0224042C(app);
    ov83_022477EC(2, 0, app + 0x868);
    ov83_02241354(app + 0xb0);

    switch (menuOption) {
    case 1:
    case 2:
    case 3:
        ov83_02247944(app + 0xb0, Options_GetFrame(*(void **)(app + 0x508)));
        ov83_022415F4(app, slot, menuOption);
        break;
    case 6:
    case 7:
        ov83_02247944(app + 0xb0, Options_GetFrame(*(void **)(app + 0x508)));
        ov83_022416A0(app, slot, *(u16 *)(app + 0x10));
        break;
    case 9:
        ov83_02241A60(app, slot);
        break;
    case 10:
        ov83_02241ABC(app, slot);
        break;
    }
}
