#include "global.h"
#include "overlay_manager.h"
#include "screen_fade.h"
#include "sprite.h"
#include "unk_02032844.h"
#include "unk_02035900.h"

typedef struct UnkStruct_ov37_021E5A84 {
    u8 filler_000[0x34];
    SpriteList *spriteList;
    u8 filler_038[0x278 - 0x38];
    u8 unk_278[0x300 - 0x278];
    int unk_300;
    int unk_304;
    u8 filler_308[0x4374 - 0x308];
    u8 unk_4374[0x93B4 - 0x4374];
    u32 unk_93B4;
} UnkStruct_ov37_021E5A84;

typedef struct UnkStruct_ov37_021E7D20 {
    int (*func)(UnkStruct_ov37_021E5A84 *work, int state, void *r2, u32 r3);
    int unk_04;
} UnkStruct_ov37_021E7D20;

extern UnkStruct_ov37_021E7D20 ov37_021E7D20[];

void ov37_021E741C(void *arg);
void ov37_021E7478(void *arg0, int arg1, u32 color, UnkStruct_ov37_021E5A84 *work);
int ov37_021E75C4(void);
int ov37_021E76F0(UnkStruct_ov37_021E5A84 *work);
void ov37_021E784C(UnkStruct_ov37_021E5A84 *work, int state);

// The call through the table's function pointer is compared on all four argument registers:
// r1 still holds the state, r2 the pointer itself and r3 either the table offset (state 2)
// or whatever ov37_021E784C left behind (state 1).
#define CAPTURE_R3(a)                                  \
    do {                                               \
        register u32 captured3 __asm__("r3");          \
        __asm__ volatile("" : "=r"(captured3));        \
        (a) = captured3;                               \
    } while (0)

int ov37_021E5A84(OverlayManager *man, int *state) {
    UnkStruct_ov37_021E5A84 *work = OverlayManager_GetData(man);
    u32 leftoverR3;

    if (sub_0203769C() == 0 && work->unk_93B4 != 0) {
        work->unk_93B4 &= sub_02033250();
    }

    work->unk_300 = *state;
    ov37_021E784C(work, *state);
    CAPTURE_R3(leftoverR3);

    switch (*state) {
    case 0:
        if (IsPaletteFadeFinished()) {
            if (sub_0203769C() == 0) {
                *state = 1;
            } else if (ov37_021E75C4() >= 2) {
                sub_02037030(0x80, NULL, 0);
                *state = 1;
            }
        }
        break;
    case 1:
        if (ov37_021E7D20[work->unk_304].func != NULL) {
            *state = ov37_021E7D20[work->unk_304].func(work, 1, ov37_021E7D20[work->unk_304].func, leftoverR3);
        }
        ov37_021E7478(work->unk_278, 0, 0xE0D0F, work);
        if (sub_0203769C() == 0) {
            int next = ov37_021E76F0(work);
            if (*state == 1) {
                *state = next;
            }
        }
        ov37_021E741C(work->unk_4374);
        break;
    case 2:
        if (ov37_021E7D20[work->unk_304].func != NULL && ov37_021E7D20[work->unk_304].unk_04 != 0) {
            *state = ov37_021E7D20[work->unk_304].func(work, 2, ov37_021E7D20[work->unk_304].func, work->unk_304 * 8);
        }
        break;
    case 3:
        if (IsPaletteFadeFinished()) {
            return 1;
        }
        break;
    }

    SpriteList_RenderAndAnimateSprites(work->spriteList);
    return 0;
}
