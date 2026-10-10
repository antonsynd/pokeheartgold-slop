#include "global.h"

extern const u16 ov83_02248054[];

extern void ov80_02237B24(u8 challengeType, u32 x);
extern u8 ov83_0224776C(u8 exitSlot, u32 slotID);
extern u16 sub_0203769C(void);
extern void ov83_02244ABC(void *app, u32 x);
extern u8 ov83_0224777C(void *p, u8 challengeType, u32 x);
extern void ov80_02237FA4(void *p, u8 x, u32 cost);
extern void *Save_Frontier_GetStatic(void *saveData);
extern u32 sub_0205C174(u8 challengeType, u32 x);
extern u32 sub_0205C268(u32 x);
extern void sub_02031108(void *frontier, u32 a, u32 b, u16 c);
extern int ov80_02237D8C(u8 challengeType);
extern void ov83_022477C4(void *p, u32 x);
extern void ov83_02245390(void *app);
extern void ov83_022453DC(void *app, void *x);
extern u32 Options_GetFrame(void *options);
extern void ov83_02247944(void *p, u32 frame);
extern u8 ov83_022448AC(void *app, u16 x, u32 y);

void ov83_02245ACC(u8 *app, u32 slotID, u32 option) {
    u32 callerR6;
    __asm__ volatile("movs %0, r6" : "=l"(callerR6) : : "cc");
    u32 type = callerR6;
    u8 exitSlot;
    u32 count;
    u32 first;
    u32 second;
    void *frontier;
    u8 *counts;

    ov80_02237B24(app[9], 0);
    if (option == 5) {
        type = 2;
    } else {
        GF_AssertFail();
    }

    exitSlot = app[0x15];
    ov83_0224776C(exitSlot, slotID);

    if (sub_0203769C() == 0) {
        if (slotID < exitSlot) {
            goto spend;
        } else {
            goto count_up;
        }
    } else {
        if (slotID < exitSlot) {
            goto count_up;
        } else {
            goto spend;
        }
    }

spend:
    ov83_02244ABC(app, 5);
    ov83_0224777C(*(void **)(app + 0x2bc), app[9], type);
    ov80_02237FA4(*(void **)(app + 4), app[9], 0x32);
    count = ov83_0224777C(*(void **)(app + 0x2bc), app[9], type);
    frontier = Save_Frontier_GetStatic(*(void **)(app + 0x2bc));
    first = sub_0205C174(app[9], type);
    second = sub_0205C268(sub_0205C174(app[9], type));
    sub_02031108(frontier, first, second, count + 1);
    if (ov80_02237D8C(app[9]) == 1) {
        app[0xf] = (app[0xf] & ~0xf8) | 0x10;
    }
    goto done;

count_up:
    ov83_022477C4(*(void **)(app + 0x24), 5);
    counts = app + 0x5b7;
    {
        u32 w = *(u16 *)(app + 0x5ba);
        count = counts[type];
        *(u16 *)(app + 0x5ba) = w - 0x32;
    }
    counts[type] = counts[type] + 1;

done:
    ov83_02245390(app);
    ov83_022453DC(app, app + 0x50);
    ov83_02247944(app + 0xc0, Options_GetFrame(*(void **)(app + 0x2b8)));
    app[0xa] = ov83_022448AC(app, *(u16 *)((u8 *)ov83_02248054 + type * 6 + count * 2), 1);
}
