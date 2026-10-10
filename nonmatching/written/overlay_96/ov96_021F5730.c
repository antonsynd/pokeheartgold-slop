#include "global.h"
#include "math_util.h"
#include "screen_fade.h"
#include "pokeathlon/pokeathlon.h"

u8 *ov96_021E60D8(PokeathlonCourseData *data, int index, int sub);
void ov96_021E8228(PokeathlonCourseData *data, u32 index, u32 sub, u32 kind, u32 value);

BOOL ov96_021F5730(PokeathlonCourseData *param0, u8 *param1) {
    u8 *alloc = PokeathlonCourse_GetHeapAllocPtr4(param0);
    u32 mode;
    int sum;
    int i;
    int index;
    int total;
    int sub;
    u8 *entry;
    u8 value;

    if (param1[0] == 0) {
        if (IsPaletteFadeFinished()) {
            param1[0] = 1;
        }
        return FALSE;
    }
    mode = ov96_021E5F24(param0);
    sum = 0;
    for (i = 0; i < 3; i++) {
        sum += *(u16 *)(alloc + 0xb0);
        alloc += 0x38;
    }
    if (sum > 0x3E7) {
        sum = 0x3E7;
    }
    PokeathlonCourse_SetField5E0_AtIndex(param0, (u8)mode, (u16)sum);
    if (mode == 0) {
        index = PokeathlonCourse_GetParticipantCount(param0);
        if (index < 4) {
            do {
                total = 0;
                for (sub = 0; sub < 3; sub++) {
                    entry = ov96_021E60D8(param0, index, sub);
                    if (entry[2] != 0) {
                        total += ((s32)LCRandom() % 0x15) + (entry[3] * 2 + (entry[2] * 6 + 0x50 + entry[4] * 2));
                        LCRandom();
                    }
                    ov96_021E8228(param0, (u8)index, (u8)sub, 2, 0);
                    value = (u8)((s32)LCRandom() % 0x15);
                    ov96_021E8228(param0, (u8)index, (u8)sub, 4, value);
                    ov96_021E8228(param0, (u8)index, (u8)sub, 1, value);
                }
                PokeathlonCourse_SetField5E0_AtIndex(param0, (u8)index, (u16)total);
                index = index + 1;
            } while (index < 4);
        }
    }
    return TRUE;
}
