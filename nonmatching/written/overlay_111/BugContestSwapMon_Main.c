#include "global.h"

typedef struct UnkStruct_BugContestSwapMon {
    u8 pad_00[0x2c];
    u32 state;
} UnkStruct_BugContestSwapMon;

typedef int (*UnkStateFunc_BugContestSwapMon)(void *data, void *fn, int index, int junk);

extern int ov111_021E59E4(void *data);
extern int ov111_021E5AA0(void *data);

int (*const _021E6D40[])(void *) = {
    ov111_021E59E4,
    ov111_021E5AA0,
};

extern void *OverlayManager_GetData(void *man);

s32 BugContestSwapMon_Main(void *man, int *state) {
    UnkStruct_BugContestSwapMon *data = OverlayManager_GetData(man);
    int (*fn)(void *);
    u32 leftoverR3;

    if (data == NULL) {
        GF_AssertFail();
    }
    /* The asm calls the handler with r1 = handler, r2 = state * 4 and r3 = whatever the previous call left. */
    __asm__ volatile("movs %0, r3" : "=l"(leftoverR3) : : "cc");
    fn = _021E6D40[data->state];
    if (((UnkStateFunc_BugContestSwapMon)fn)(data, (void *)fn, data->state * 4, leftoverR3) != 0) {
        return 1;
    }
    return 0;
}
