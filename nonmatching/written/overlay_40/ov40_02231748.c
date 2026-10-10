#include "global.h"
#include "palette.h"
#include "screen_fade.h"

typedef struct UnkStruct_ov40_02231748 {
    u8 filler_000[8];
    int unk_08;
    int unk_0C;
    u8 filler_010[0x28 - 0x10];
    PaletteData *unk_28;
    u8 filler_02C[0x54 - 0x2C];
    int unk_54;
    u8 filler_058[0x6F0 - 0x58];
    void *unk_6F0;
    void *unk_6F4;
} UnkStruct_ov40_02231748;

u32 ov40_0222DAF0(UnkStruct_ov40_02231748 *work);
void ov40_02230964(UnkStruct_ov40_02231748 *work, int a1);
void sub_020879E0(void *a0, int a1);

BOOL ov40_02231748(UnkStruct_ov40_02231748 *work) {
    switch (work->unk_08) {
    case 0:
        work->unk_54 = 0;
        work->unk_0C = 0;
        sub_020879E0(work->unk_6F0, 0);
        sub_020879E0(work->unk_6F4, 0);
        ov40_02230964(work, 1);
        work->unk_08++;
        break;
    case 1:
        if (work->unk_0C != 0x10) {
            work->unk_0C += 2;
            PaletteData_BlendPalettes(work->unk_28, PLTTBUF_MAIN_OBJ, 0xFFFE, work->unk_0C, ov40_0222DAF0(work));
            PaletteData_BlendPalettes(work->unk_28, PLTTBUF_MAIN_BG, 0xFFFF, work->unk_0C, ov40_0222DAF0(work));
            PaletteData_BlendPalettes(work->unk_28, PLTTBUF_SUB_OBJ, 0x3FFE, work->unk_0C, ov40_0222DAF0(work));
            PaletteData_BlendPalettes(work->unk_28, PLTTBUF_SUB_BG, 0xFFFF, work->unk_0C, ov40_0222DAF0(work));
        } else {
            work->unk_0C = 0x10;
            work->unk_08++;
        }
        break;
    case 2:
        if (work->unk_0C != 0) {
            work->unk_0C -= 4;
        } else {
            BeginNormalPaletteFade(0, 0, 0, 0, 6, 1, 0x6D);
            work->unk_08++;
        }
        break;
    default:
        if (IsPaletteFadeFinished() == 1) {
            ov40_02230964(work, 0);
            return TRUE;
        }
        break;
    }
    return FALSE;
}
