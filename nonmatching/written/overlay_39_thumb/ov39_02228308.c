#include "global.h"
#include "overlay_manager.h"
#include "screen_fade.h"

typedef struct UnkStruct_ov39_02228308 {
    u8 filler_000[8];
    int unk_08;
    u8 filler_0C[0x94 - 0x0C];
    int unk_94;
    int unk_98;
    int unk_9C;
} UnkStruct_ov39_02228308;

typedef int (*UnkFunc_ov39_02228308)(UnkStruct_ov39_02228308 *work, void *self, u32 offset, u32 r3);

extern UnkFunc_ov39_02228308 ov39_0222AA20[];

// The call through the table is compared on all four argument registers: r1 holds the
// pointer itself, r2 the table offset and r3 whatever OverlayManager_GetData left behind.
int ov39_02228308(OverlayManager *man, int *state) {
    register u32 leftoverR3 __asm__("r3");
    UnkStruct_ov39_02228308 *work = OverlayManager_GetData(man);
    __asm__ volatile("" : "=r"(leftoverR3));
    u32 savedR3 = leftoverR3;
    int prev;
    int result;

    switch (*state) {
    case 0:
        if (IsPaletteFadeFinished() == 1) {
            *state = 1;
        }
        break;
    case 1:
        prev = work->unk_08;
        result = ov39_0222AA20[prev](work, ov39_0222AA20[prev], prev * 4, savedR3);
        if (prev != work->unk_08) {
            work->unk_94 = 0;
            work->unk_9C = 0;
            work->unk_98 = 0;
        }
        if (result == 1) {
            *state = 2;
        }
        break;
    case 2:
        if (IsPaletteFadeFinished() == 1) {
            return 1;
        }
        break;
    }
    return 0;
}
