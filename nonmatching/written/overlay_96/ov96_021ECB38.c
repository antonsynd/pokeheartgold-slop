#include "global.h"
#include "assert.h"
#include "pokeathlon/pokeathlon.h"

void ov96_021E8424(u32 param0);
u32 ov96_021EEDCC(void);
void ov96_021EEA88(u32 param0, u32 param1, u32 param2, u32 param3);
void ov96_021EEB74(u32 param0, PokeathlonCourseData *param1, u32 param2, u32 param3);

void ov96_021ECB38(u32 *param0, PokeathlonCourseData *param1, u32 idx, int mode, u32 param4) {
    // The asm leaves r4 as the caller's on the assert path. The prologue clang emits for the stack argument
    // clobbers r4, so take its caller value from the slot the prologue saved it in (two words below the frame pointer).
    u32 r4 = *(u32 *)((u8 *)__builtin_frame_address(0) - 8);
    int value = *(int *)PokeathlonCourse_GetParticipantData(param1, idx);
    BOOL positive = value > 0;

    switch (mode) {
    case 1:
        r4 = 0;
        break;
    case 2:
        if (positive) {
            r4 = 0xb;
        } else {
            r4 = 0x1b;
        }
        break;
    default:
        GF_AssertFail();
        break;
    }
    if (positive) {
        u32 *p = (u32 *)PokeathlonCourse_GetParticipantData(param1, idx);
        ov96_021E8424((u8)p[0]);
        ov96_021EEA88(param0[idx], ov96_021EEDCC(), (u8)r4, param4);
    } else {
        ov96_021EEB74((u32)param0, param1, (u8)idx, r4);
    }
}
