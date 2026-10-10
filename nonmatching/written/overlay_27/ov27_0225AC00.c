#include "global.h"
#include "bg_window.h"
#include "gf_gfx_loader.h"

typedef struct UnkStruct_ov27_0225CEEC {
    s32 palNarcId;
    s32 charNarcId;
    s32 scrnNarcId;
} UnkStruct_ov27_0225CEEC;

typedef struct UnkStruct_ov27_0225D074 {
    u32 x;
    u32 y;
} UnkStruct_ov27_0225D074;

extern UnkStruct_ov27_0225CEEC ov27_0225CEEC[];
extern UnkStruct_ov27_0225D074 ov27_0225D074[];

void ov27_0225AC00(BgConfig *bgConfig, int idx, Window *window0, Window *window1, Window *windows) {
    const UnkStruct_ov27_0225CEEC *entry = (const UnkStruct_ov27_0225CEEC *)((u8 *)ov27_0225CEEC + idx * 0xc);
    const UnkStruct_ov27_0225D074 *pos;
    u32 i;
    u32 tile;
    Window *window;

    GfGfxLoader_LoadCharData((NarcId)0xe, entry->charNarcId, bgConfig, 4, 0, 0, TRUE, 8);
    GfGfxLoader_LoadScrnData((NarcId)0xe, entry->scrnNarcId, bgConfig, 4, 0, 0, TRUE, 8);
    GfGfxLoader_GXLoadPal((NarcId)0xe, entry->palNarcId, 4, 0, 0x200, 8);
    AddWindowParameterized(bgConfig, window0, 5, 0x18, 0x14, 8, 2, 4, 0xd2);
    FillWindowPixelBuffer(window0, 0);
    AddWindowParameterized(bgConfig, window1, 5, 9, 0, 10, 2, 4, 0xe2);
    FillWindowPixelBuffer(window1, 0);
    pos = ov27_0225D074;
    tile = 0xf6;
    window = windows;
    for (i = 0; i < 8; i++) {
        AddWindowParameterized(bgConfig, window, 5, (u8)pos->x, (u8)pos->y, 9, 2, 4, (u16)tile);
        FillWindowPixelBuffer(window, 0);
        tile += 0x12;
        pos++;
        window = (Window *)((u8 *)window + 0x10);
    }
}
