#include "global.h"

#include <string.h>

#include "bg_window.h"
#include "font.h"
#include "heap.h"
#include "msgdata.h"
#include "pm_string.h"
#include "render_window.h"
#include "sprite.h"

typedef struct {
    u8 unk0[8];
    Sprite *unk8;
} UnkOv81_SpriteHolder;

typedef struct {
    u16 unk0;
    int unk4;
    int unk8;
    Sprite *unkC;
} UnkOv81_SpriteData;

extern const WindowTemplate ov81_022435A8[];

extern Sprite *ov81_02242A8C(void *a0, int a1, int a2, int a3, int a4, int a5);
extern u8 AddTextPrinterParameterizedWithColor(Window *window, u32 fontId, String *string, u32 x, u32 y, u32 textSpeed, u32 color, void *callback);

void ov81_02242DAC(UnkOv81_SpriteHolder *holder, int x, int y);
void ov81_02242DCC(UnkOv81_SpriteHolder *holder, VecFx32 *position);
int ov81_02242DD8(UnkOv81_SpriteHolder *holder);
void ov81_02242DE4(UnkOv81_SpriteHolder *holder, int seq);
void ov81_02242DFC(UnkOv81_SpriteHolder *holder, int index);
void ov81_02242E08(UnkOv81_SpriteHolder *holder, int index);
void ov81_02242E14(UnkOv81_SpriteHolder *holder, void *src, u32 size, NNS_G2D_VRAM_TYPE type);
UnkOv81_SpriteData *ov81_02242E50(void *a0, int x, int y, enum HeapID heapId);
int ov81_02242EA4(UnkOv81_SpriteData *data);
void ov81_02242EB8(UnkOv81_SpriteData *data, BOOL flag);
VecFx32 ov81_02242EC4(UnkOv81_SpriteData *data, int dx, int dy);
void ov81_02242F10(UnkOv81_SpriteData *data, int x, int y);
VecFx32 *ov81_02242F30(UnkOv81_SpriteData *data);
void ov81_02242F3C(UnkOv81_SpriteData *data, u16 flag);
u8 ov81_02242F40(UnkOv81_SpriteData *data);
void ov81_02242F48(UnkOv81_SpriteData *data);
void ov81_02242F54(UnkOv81_SpriteData *data);
void ov81_02242F60(UnkOv81_SpriteData *data);
int ov81_02242F8C(UnkOv81_SpriteData *data);
int ov81_02242F90(UnkOv81_SpriteData *data);
void ov81_02242F94(UnkOv81_SpriteData *data, int seq);
void ov81_02242FB0(UnkOv81_SpriteData *data, int index);
void ov81_02242FBC(UnkOv81_SpriteData *data, GXOamMode mode);
int ov81_02242FC8(UnkOv81_SpriteData *data);
void ov81_02242FDC(BgConfig *bgConfig, Window *windows);
void ov81_0224300C(Window *windows);
void ov81_02243028(Window *window, u8 frame);
void ov81_02243068(Window *window, String *string, int x, int y, u32 fontId, u32 color, int align);
void ov81_022430B4(Window *window, MsgData *msgData, int msgNo, int x, int y, u32 fontId, u32 color, int align);
void ov81_022430E8(Window *windows);

void ov81_02242DAC(UnkOv81_SpriteHolder *holder, int x, int y) {
    VecFx32 position;
    position.x = x << 12;
    position.y = (y << 12) + (2 << 20);
    Sprite_SetMatrix(holder->unk8, &position);
}

void ov81_02242DCC(UnkOv81_SpriteHolder *holder, VecFx32 *position) {
    Sprite_SetMatrix(holder->unk8, position);
}

int ov81_02242DD8(UnkOv81_SpriteHolder *holder) {
    return Sprite_IsAnimated(holder->unk8);
}

void ov81_02242DE4(UnkOv81_SpriteHolder *holder, int seq) {
    Sprite_SetAnimationFrame(holder->unk8, 0);
    Sprite_SetAnimCtrlSeq(holder->unk8, seq);
}

void ov81_02242DFC(UnkOv81_SpriteHolder *holder, int index) {
    Sprite_SetPaletteOverride(holder->unk8, index);
}

void ov81_02242E08(UnkOv81_SpriteHolder *holder, int index) {
    Sprite_SetPalIndexRespectVramOffset(holder->unk8, index);
}

void ov81_02242E14(UnkOv81_SpriteHolder *holder, void *src, u32 size, NNS_G2D_VRAM_TYPE type) {
    u32 location = NNS_G2dGetImageLocation(Sprite_GetImageProxy(holder->unk8), type);
    DC_FlushRange(src, size);
    if (type == NNS_G2D_VRAM_TYPE_2DMAIN) {
        GX_LoadOBJ(src, location, size);
    } else {
        GXS_LoadOBJ(src, location, size);
    }
}

UnkOv81_SpriteData *ov81_02242E50(void *a0, int x, int y, enum HeapID heapId) {
    UnkOv81_SpriteData *data = Heap_Alloc(heapId, sizeof(UnkOv81_SpriteData));
    memset(data, 0, sizeof(UnkOv81_SpriteData));
    data->unk0 = 0;
    data->unk4 = x;
    data->unk8 = y;
    data->unkC = ov81_02242A8C(a0, 0, 0, 10, 0, 1);
    ov81_02242F10(data, x, y);
    Sprite_SetPaletteOverride(data->unkC, 1);
    return data;
}

int ov81_02242EA4(UnkOv81_SpriteData *data) {
    Sprite_Delete(data->unkC);
    Heap_Free(data);
    return 0;
}

void ov81_02242EB8(UnkOv81_SpriteData *data, BOOL flag) {
    Sprite_SetDrawFlag(data->unkC, flag);
}

VecFx32 ov81_02242EC4(UnkOv81_SpriteData *data, int dx, int dy) {
    VecFx32 position = *Sprite_GetMatrixPtr(data->unkC);
    position.x += dx << 12;
    position.y += dy << 12;
    Sprite_SetMatrix(data->unkC, &position);
    return *Sprite_GetMatrixPtr(data->unkC);
}

void ov81_02242F10(UnkOv81_SpriteData *data, int x, int y) {
    VecFx32 position;
    position.x = x << 12;
    position.y = (y << 12) + (2 << 20);
    Sprite_SetMatrix(data->unkC, &position);
}

VecFx32 *ov81_02242F30(UnkOv81_SpriteData *data) {
    return Sprite_GetMatrixPtr(data->unkC);
}

void ov81_02242F3C(UnkOv81_SpriteData *data, u16 flag) {
    data->unk0 = flag;
}

u8 ov81_02242F40(UnkOv81_SpriteData *data) {
    return data->unk0;
}

void ov81_02242F48(UnkOv81_SpriteData *data) {
    ov81_02242F3C(data, 1);
}

void ov81_02242F54(UnkOv81_SpriteData *data) {
    ov81_02242F3C(data, 0);
}

void ov81_02242F60(UnkOv81_SpriteData *data) {
    VecFx32 position;
    VecFx32 *current = ov81_02242F30(data);
    position.x = (current->x / FX32_ONE + 248) << 12;
    position.y = current->y;
    Sprite_SetMatrix(data->unkC, &position);
}

int ov81_02242F8C(UnkOv81_SpriteData *data) {
    return data->unk4;
}

int ov81_02242F90(UnkOv81_SpriteData *data) {
    return data->unk8;
}

void ov81_02242F94(UnkOv81_SpriteData *data, int seq) {
    Sprite_SetAnimSpeed(data->unkC, FX32_ONE);
    Sprite_SetAnimCtrlSeq(data->unkC, seq);
}

void ov81_02242FB0(UnkOv81_SpriteData *data, int index) {
    Sprite_SetPaletteOverride(data->unkC, index);
}

void ov81_02242FBC(UnkOv81_SpriteData *data, GXOamMode mode) {
    Sprite_SetOamMode(data->unkC, mode);
}

int ov81_02242FC8(UnkOv81_SpriteData *data) {
    Sprite_Delete(data->unkC);
    Heap_Free(data);
    return 0;
}

void ov81_02242FDC(BgConfig *bgConfig, Window *windows) {
    u8 i;
    for (i = 0; i < 0x12; i++) {
        AddWindow(bgConfig, &windows[i], &ov81_022435A8[i]);
        FillWindowPixelBuffer(&windows[i], 0);
    }
}

void ov81_0224300C(Window *windows) {
    u16 i;
    for (i = 0; i < 0x12; i++) {
        RemoveWindow(&windows[i]);
    }
}

void ov81_02243028(Window *window, u8 frame) {
    LoadUserFrameGfx2(window->bgConfig, GetWindowBgId(window), 0x3E2, 0xB, frame, HEAP_ID_100);
    FillWindowPixelBuffer(window, 0xF);
    DrawFrameAndWindow2(window, TRUE, 0x3E2, 0xB);
}

void ov81_02243068(Window *window, String *string, int x, int y, u32 fontId, u32 color, int align) {
    if (align == 1) {
        x -= FontID_String_GetWidth(fontId, string, 0);
    } else if (align == 2) {
        x -= FontID_String_GetWidth(fontId, string, 0) / 2;
    }
    AddTextPrinterParameterizedWithColor(window, fontId, string, x, y, 0xFF, color, NULL);
}

void ov81_022430B4(Window *window, MsgData *msgData, int msgNo, int x, int y, u32 fontId, u32 color, int align) {
    String *string = NewString_ReadMsgData(msgData, msgNo);
    ov81_02243068(window, string, x, y, fontId, color, align);
    String_Delete(string);
}

void ov81_022430E8(Window *windows) {
    SetWindowX(&windows[0], 4);
    SetWindowX(&windows[1], 0x12);
}
