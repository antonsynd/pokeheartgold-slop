#include "global.h"
#include "assert.h"
#include "screen_fade.h"
#include "sound.h"
#include "pokeathlon/pokeathlon.h"

void ov96_021ED0C8(u32 param0);

BOOL ov96_021EC1B0(PokeathlonCourseData *param0, u8 *param1) {
    u8 *alloc = (u8 *)PokeathlonCourse_GetHeapAllocPtr4(param0);

    ov96_021ED0C8(*(u32 *)(alloc + 0x90));
    switch (*param1) {
    case 0:
        BeginNormalPaletteFade((enum FadeMode)0, (enum FadeType)0, (enum FadeType)0, 0x7fff, 0x1e, 1, PokeathlonCourse_GetHeapID(param0));
        GF_SndStartFadeOutBGM(0, 0x1e);
        (*param1)++;
        break;
    case 1:
        if (IsPaletteFadeFinished()) {
            return TRUE;
        }
        break;
    default:
        GF_AssertFail();
        break;
    }
    return FALSE;
}
