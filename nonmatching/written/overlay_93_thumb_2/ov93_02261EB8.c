#include "global.h"
#include "bg_window.h"
#include "font.h"
#include "obj_char_transfer.h"
#include "sprite_system.h"
#include "text.h"
#include "unk_02013534.h"

typedef struct UnkStruct_ov93_02261EB8 {
    TextOBJ *unk_00;
    UnkStruct_02021AC8 unk_04;
    u16 unk_10;
} UnkStruct_ov93_02261EB8;

// sub_020138B0 is called with the stack argument as it was passed (not narrowed to u8).
extern void sub_020138B0(TextOBJ *textOBJ, int a1);

void ov93_02261EB8(BgConfig *param0, SpriteManager *param1, UnkStruct_02013534 *param2, UnkStruct_ov93_02261EB8 *param3, String *param4, u32 param5, u32 param6, int param7, int param8, int param9, int param10, int param11, int param12, int param13, int param14) {
    TextOBJTemplate v0;
    Window v1;
    UnkStruct_02021AC8 v2;
    int v3;
    TextOBJ *v4;
    int v5, v6;
    u32 *src;
    u32 *dst;
    int x = param9;

    v5 = FontID_String_GetWidthMultiline(param5, param4, 0);
    v6 = v5 / 8;

    if (FX_ModS32(v5, 8) != 0) {
        v6++;
    }

    InitWindow(&v1);
    AddTextWindowTopLeftCorner(param0, &v1, v6, param14, 0, 0);
    AddTextPrinterParameterizedWithColorAndSpacing(&v1, param5, param4, 0, 0, 0xff, param6, 0, 0, NULL);

    v3 = sub_02013688(&v1, 1, 0x75);
    sub_02021AC8(v3, 1, 1, &v2);

    if (param11 == 1) {
        x -= v5 / 2;
    }

    v0.fontSystem = param2;
    v0.window = &v1;
    v0.spriteList = SpriteManager_GetSpriteList(param1);
    v0.plttResourceProxy = SpriteManager_FindPlttResourceProxy(param1, param8);
    v0.sprite = NULL;
    v0.offset = v2.offset;
    v0.x = x;
    v0.y = param10;
    v0.unk_20 = param12;
    v0.unk_24 = param13;
    v0.vram = 1;
    v0.heapID = 0x75;

    v4 = sub_020135D8(&v0);

    if (param7 != 0) {
        sub_020138B0(v4, param7);
    }

    sub_020136B4(v4, x, param10);
    RemoveWindow(&v1);

    param3->unk_00 = v4;
    src = (u32 *)&v2;
    dst = (u32 *)&param3->unk_04;
    dst[0] = src[0];
    dst[1] = src[1];
    dst[2] = src[2];
    param3->unk_10 = v5;
}
