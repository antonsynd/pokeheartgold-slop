#include "global.h"
#include "gf_gfx_loader.h"
#include "palette.h"
#include "screen_fade.h"
#include "unk_02005D10.h"

typedef struct UnkStruct_ov40_02231100 {
    int unk_00;
    u8 filler_004[4];
    int unk_08;
    int unk_0C;
    int unk_10;
    NARC *unk_14;
    u8 filler_018[0x24 - 0x18];
    BgConfig *unk_24;
    PaletteData *unk_28;
    u8 filler_02C[0x58 - 0x2C];
    u32 unk_58;
    u8 filler_05C[0x6F0 - 0x5C];
    void *unk_6F0;
    u8 filler_6F4[0x724 - 0x6F4];
    int unk_724;
    u8 filler_728[0x83C - 0x728];
    int unk_83C;
} UnkStruct_ov40_02231100;

void ov40_02230964(UnkStruct_ov40_02231100 *work, int a1);
void ov40_0222C750(UnkStruct_ov40_02231100 *work);
void ov40_0222C884(UnkStruct_ov40_02231100 *work);
void ov40_0222CAD8(UnkStruct_ov40_02231100 *work);
void ov40_0222CCAC(UnkStruct_ov40_02231100 *work);
void ov40_0222D2A0(UnkStruct_ov40_02231100 *work);
void ov40_0222CE7C(UnkStruct_ov40_02231100 *work);
void ov40_0222CF10(UnkStruct_ov40_02231100 *work);
int ov40_0222C4DC(UnkStruct_ov40_02231100 *work);
u32 ov40_0222DAF0(UnkStruct_ov40_02231100 *work);
void ov40_0222BF64(UnkStruct_ov40_02231100 *work, int a1, int a2, int a3);
void ov40_0222BF80(UnkStruct_ov40_02231100 *work, int a1);
void sub_02087948(void *a0, s16 a1, s16 a2);
BOOL sub_020878B8(void *a0, s16 a1, s16 a2);
void sub_020879E0(void *a0, int a1);
void sub_020878B0(void *a0, int a1);

BOOL ov40_02231100(UnkStruct_ov40_02231100 *work) {
    switch (work->unk_08) {
    case 0:
        ov40_02230964(work, 1);
        ov40_0222C750(work);
        ov40_0222C884(work);
        ov40_0222CAD8(work);
        ov40_0222CCAC(work);
        ov40_0222D2A0(work);
        ov40_0222CE7C(work);
        ov40_0222CF10(work);
        ov40_02230964(work, 0);
        if (ov40_0222C4DC(work) == 1) {
            if (work->unk_00 == 0) {
                GfGfxLoader_LoadScrnDataFromOpenNarc(work->unk_14, 0x45, work->unk_24, 5, 0, 0, 0, 0x6D);
            } else {
                GfGfxLoader_LoadScrnDataFromOpenNarc(work->unk_14, 0x37, work->unk_24, 5, 0, 0, 0, 0x6D);
            }
            sub_02087948(work->unk_6F0, 0x80, 0xE0);
            sub_020878B8(work->unk_6F0, 0x80, 0xE0);
            sub_020879E0(work->unk_6F0, 0);
            sub_020878B0(work->unk_6F0, 1);
            ov40_0222BF64(work, work->unk_83C, 1, work->unk_10);
            break;
        }
        PlaySE(0x573);
        work->unk_0C = 0x10;
        work->unk_08++;
        break;
    case 1:
        if (ov40_0222C4DC(work) == 1) {
            if (IsPaletteFadeFinished() == 1) {
                work->unk_08++;
            }
        } else if (work->unk_0C != 0) {
            work->unk_0C -= 2;
            PaletteData_BlendPalettes(work->unk_28, PLTTBUF_MAIN_OBJ, 0xFFFE, work->unk_0C, ov40_0222DAF0(work));
            PaletteData_BlendPalettes(work->unk_28, PLTTBUF_MAIN_BG, 0xFFFF, work->unk_0C, ov40_0222DAF0(work));
            PaletteData_BlendPalettes(work->unk_28, PLTTBUF_SUB_OBJ, 0x3FFE, work->unk_0C, ov40_0222DAF0(work));
            PaletteData_BlendPalettes(work->unk_28, PLTTBUF_SUB_BG, 0xFFFF, work->unk_0C, ov40_0222DAF0(work));
        } else {
            PaletteData_BlendPalettes(work->unk_28, PLTTBUF_SUB_BG, 2, 0x10, work->unk_58);
            PaletteData_BlendPalettes(work->unk_28, PLTTBUF_MAIN_OBJ, 0xC, 0x10, work->unk_58);
            work->unk_08++;
        }
        break;
    case 2:
        if (work->unk_00 == 0) {
            GfGfxLoader_LoadScrnDataFromOpenNarc(work->unk_14, 0x45, work->unk_24, 5, 0, 0, 0, 0x6D);
        } else {
            GfGfxLoader_LoadScrnDataFromOpenNarc(work->unk_14, 0x37, work->unk_24, 5, 0, 0, 0, 0x6D);
        }
        work->unk_08++;
        break;
    default:
        if (work->unk_724 >= 3) {
            ov40_0222BF80(work, 2);
        }
        break;
    }
    return FALSE;
}
