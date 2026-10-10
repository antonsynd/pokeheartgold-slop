#include "global.h"
#include "overlay_manager.h"
#include "screen_fade.h"

typedef struct {
    u8 filler_00[8];
    int mode;
    u8 filler_0C[0x94 - 0x0C];
    int unk_94;
    int unk_98;
    int unk_9C;
} UnkStruct_ov75_02247118;

typedef int (*UnkFn_ov75_02247118)(void *, void *, u32, u32);

extern UnkFn_ov75_02247118 ov75_02249B30[];

int ov75_02247118(OverlayManager *man, int *state) {
    UnkStruct_ov75_02247118 *work = OverlayManager_GetData(man);
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");

    switch (*state) {
    case 0:
        if (IsPaletteFadeFinished() == TRUE) {
            *state = 1;
        }
        break;
    case 1: {
        int oldMode = work->mode;
        UnkFn_ov75_02247118 fn = ov75_02249B30[oldMode];
        int result = fn(work, (void *)fn, oldMode << 2, callerR3);

        if (oldMode != work->mode) {
            work->unk_94 = 0;
            work->unk_9C = 0;
            work->unk_98 = 0;
        }
        if (result == 1) {
            *state = 2;
        }
        break;
    }
    case 2:
        if (IsPaletteFadeFinished() == TRUE) {
            return 1;
        }
        break;
    }

    return 0;
}
