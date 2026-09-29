#include "global.h"

#include "bg_window.h"
#include "filesystem.h"
#include "gf_gfx_loader.h"
#include "heap.h"
#include "msgdata.h"
#include "pm_string.h"
#include "pokemon_storage_system.h"
#include "text.h"
#include "unk_0201956C.h"

typedef struct UnkStruct_ov14_args {
    u8 unk0[8];
    int unk8;
} UnkStruct_ov14_args;

typedef struct UnkStruct_ov14_boxsys {
    u8 unk0[0x14];
    BgConfig *bgConfig;
    u8 unk18[8];
    MsgData *msgData;
    u8 unk24[0xC];
    Window windows[0x2C];
    UnkStruct_0201956C *unk2F0;
    u8 unk2F4[0x44D - 0x2F4];
    u8 unk44D;
} UnkStruct_ov14_boxsys;

typedef struct UnkStruct_ov14_boxapp {
    UnkStruct_ov14_args *args;
    PCStorage *storage;
    u8 unk8[0x2C];
    UnkStruct_ov14_boxsys *sys;
} UnkStruct_ov14_boxapp;

typedef struct UnkStruct_ov14_021F7D3C {
    u16 msgId;
    u16 type;
} UnkStruct_ov14_021F7D3C;

void ov14_021F4EA0(UnkStruct_ov14_boxsys *sys, Window *window, int index);
void ov14_021F4F24(Window *window, String *str, int x, int y, int fontId, u32 color, int align);
void ov14_021F4F84(UnkStruct_ov14_boxsys *sys, MsgData *msgData, int winIndex, int msgId, u8 x, int y, int fontId, u32 color, int align);
void sub_02019A60(UnkStruct_0201956C *mgr, int index, Window *window);

void ov14_021F58B8(UnkStruct_ov14_boxapp *work);
void ov14_021F5C84(UnkStruct_ov14_boxapp *work, int flag);
void ov14_021F5E94(UnkStruct_ov14_boxapp *work);
void ov14_021F5EB4(UnkStruct_ov14_boxapp *work, int flag);
void ov14_021F5EC4(UnkStruct_ov14_boxapp *work, int flag);
void ov14_021F5EE4(UnkStruct_ov14_boxapp *work, const UnkStruct_ov14_021F7D3C *entries, u32 count);
void ov14_021F5FBC(UnkStruct_ov14_boxapp *work, int flag);
void ov14_021F604C(UnkStruct_ov14_boxapp *work);
void ov14_021F6070(UnkStruct_ov14_boxapp *work);
void ov14_021F6094(UnkStruct_ov14_boxapp *work);
void ov14_021F60A8(UnkStruct_ov14_boxapp *work);
void ov14_021F6244(UnkStruct_ov14_boxsys *sys);
void ov14_021F62CC(UnkStruct_ov14_boxsys *sys);
void ov14_021F62E4(UnkStruct_ov14_boxsys *sys);
void ov14_021F62FC(UnkStruct_ov14_boxsys *sys);
void ov14_021F6314(UnkStruct_ov14_boxapp *work);
void ov14_021F638C(UnkStruct_ov14_boxsys *sys);
void ov14_021F63A8(UnkStruct_ov14_boxsys *sys);
void ov14_021F63B8(UnkStruct_ov14_boxsys *sys);
void ov14_021F63C8(UnkStruct_ov14_boxsys *sys);
void ov14_021F63F0(UnkStruct_ov14_boxsys *sys);
void ov14_021F6408(UnkStruct_ov14_boxapp *work);

static void ov14_021F5950(UnkStruct_ov14_boxapp *work, int winIdx, int msgId, int flag);
static void ov14_021F5BD8(UnkStruct_ov14_boxapp *work, int winIdx, int msgId, int flag, u8 align);
static void ov14_021F5C94(UnkStruct_ov14_boxapp *work, int winIdx, int msgId);
static void ov14_021F5ED4(UnkStruct_ov14_boxapp *work, int flag);
static void ov14_021F605C(UnkStruct_ov14_boxapp *work);
static void ov14_021F60BC(UnkStruct_0201956C *mgr, int index, Window *window);
static void ov14_021F6208(UnkStruct_0201956C *mgr, int index, Window *window);
static void ov14_021F6338(UnkStruct_ov14_boxsys *sys, int winIdx, int msgId, int unused);

void ov14_021F58B8(UnkStruct_ov14_boxapp *work) {
    Window window;
    String *str;

    InitWindow(&window);
    AddTextWindowTopLeftCorner(work->sys->bgConfig, &window, 12, 2, 0, 0);
    if (work->sys->unk44D >= 0x10) {
        if (!PCStorage_IsBonusWallpaperUnlocked(work->storage, work->sys->unk44D - 0x10)) {
            str = NewString_ReadMsgData(work->sys->msgData, 0x3B);
        } else {
            str = NewString_ReadMsgData(work->sys->msgData, work->sys->unk44D + 0x23);
        }
    } else {
        str = NewString_ReadMsgData(work->sys->msgData, work->sys->unk44D + 0x23);
    }
    ov14_021F4F24(&window, str, 0x30, 0, 0, MAKE_TEXT_COLOR(1, 2, 0), 2);
    String_Delete(str);
    ov14_021F4EA0(work->sys, &window, 0);
    RemoveWindow(&window);
}

#ifdef NONMATCHING
static void ov14_021F5950(UnkStruct_ov14_boxapp *work, int winIdx, int msgId, int flag) {
    Window *windows = work->sys->windows;
    Window *window = &windows[winIdx];
    int width;
    int height;
    NNSG2dCharacterData *charData;
    void *data;
    u8 *pixels;
    int off;
    u32 color;
    String *str;
    u8 i;

    GetWindowBgId(window);
    GetWindowX(window);
    GetWindowY(window);
    width = GetWindowWidth(window);
    height = GetWindowHeight(window);
    if (flag == 1) {
        FillWindowPixelBuffer(window, 11);
        color = MAKE_TEXT_COLOR(14, 15, 0);
        off = 0x180;
    } else {
        FillWindowPixelBuffer(window, 4);
        color = MAKE_TEXT_COLOR(14, 15, 0);
        off = 0;
    }
    data = GfGfxLoader_GetCharData(NARC_a_0_1_9, 0x40, TRUE, &charData, HEAP_ID_10);
    pixels = charData->pRawData;
    BlitBitmapRect(window, pixels + off, 0, 0, 8, 8, 0, 0, 8, 8, 0xFF);
    BlitBitmapRect(window, pixels + (off + 0x40), 0, 0, 8, 8, (width - 1) * 8, 0, 8, 8, 0xFF);
    BlitBitmapRect(window, pixels + (off + 0x120), 0, 0, 8, 8, 0, (height - 1) * 8, 8, 8, 0xFF);
    BlitBitmapRect(window, pixels + (off + 0x160), 0, 0, 8, 8, (width - 1) * 8, (height - 1) * 8, 8, 8, 0xFF);
    for (i = 1; i < height - 1; i++) {
        BlitBitmapRect(window, pixels + (off + 0x60), 0, 0, 8, 8, 0, i * 8, 8, 8, 0xFF);
        BlitBitmapRect(window, pixels + (off + 0xA0), 0, 0, 8, 8, (width - 1) * 8, i * 8, 8, 8, 0xFF);
    }
    for (i = 1; i < width - 1; i++) {
        BlitBitmapRect(window, pixels + (off + 0x20), 0, 0, 8, 8, i * 8, 0, 8, 8, 0xFF);
        BlitBitmapRect(window, pixels + (off + 0x140), 0, 0, 8, 8, i * 8, (height - 1) * 8, 8, 8, 0xFF);
    }
    Heap_Free(data);
    str = NewString_ReadMsgData(work->sys->msgData, msgId);
    ov14_021F4F24(window, str, width * 8 / 2, 4, 4, color, 2);
    String_Delete(str);
    CopyWindowPixelsToVram_TextMode(window);
}
#else
// clang-format off
static asm void ov14_021F5950(UnkStruct_ov14_boxapp *work, int winIdx, int msgId, int flag) {
    push {r3, r4, r5, r6, r7, lr}
    sub sp, #0x70
    ldr r5, [r0, #0x34]
    lsl r4, r1, #4
    add r5, #0x30
    str r0, [sp, #0x1c]
    add r0, r5, r4
    str r2, [sp, #0x20]
    add r6, r3, #0
    bl GetWindowBgId
    add r0, r5, r4
    bl GetWindowX
    add r0, r5, r4
    bl GetWindowY
    add r0, r5, r4
    bl GetWindowWidth
    str r0, [sp, #0x30]
    add r0, r5, r4
    bl GetWindowHeight
    str r0, [sp, #0x3c]
    cmp r6, #1
    bne _021F599A
    add r0, r5, r4
    mov r1, #0xb
    bl FillWindowPixelBuffer
    ldr r0, =0x000E0F00
    str r0, [sp, #0x4c]
    mov r0, #6
    lsl r0, r0, #6
    str r0, [sp, #0x40]
    b _021F59AA
_021F599A:
    add r0, r5, r4
    mov r1, #4
    bl FillWindowPixelBuffer
    ldr r0, =0x000E0F00
    str r0, [sp, #0x4c]
    mov r0, #0
    str r0, [sp, #0x40]
_021F59AA:
    mov r0, #0xa
    str r0, [sp, #0]
    mov r0, #0x13
    mov r1, #0x40
    mov r2, #1
    add r3, sp, #0x6c
    bl GfGfxLoader_GetCharData
    str r0, [sp, #0x50]
    ldr r0, [sp, #0x6c]
    mov r2, #0
    ldr r6, [r0, #0x14]
    mov r0, #8
    str r0, [sp, #0]
    str r0, [sp, #4]
    str r2, [sp, #8]
    str r2, [sp, #0xc]
    str r0, [sp, #0x10]
    ldr r1, [sp, #0x40]
    str r0, [sp, #0x14]
    mov r0, #0xff
    str r0, [sp, #0x18]
    add r0, r5, r4
    add r1, r6, r1
    add r3, r2, #0
    bl BlitBitmapRect
    ldr r0, [sp, #0x30]
    mov r2, #0
    sub r0, r0, #1
    lsl r7, r0, #3
    str r0, [sp, #0x2c]
    mov r0, #8
    str r0, [sp, #0]
    lsl r1, r7, #0x10
    str r0, [sp, #4]
    lsr r1, r1, #0x10
    str r1, [sp, #8]
    str r2, [sp, #0xc]
    ldr r1, [sp, #0x40]
    str r0, [sp, #0x10]
    str r0, [sp, #0x14]
    mov r0, #0xff
    add r1, #0x40
    str r0, [sp, #0x18]
    add r0, r5, r4
    add r1, r6, r1
    add r3, r2, #0
    bl BlitBitmapRect
    ldr r0, [sp, #0x3c]
    mov r3, #0
    sub r0, r0, #1
    str r0, [sp, #0x38]
    lsl r0, r0, #3
    str r0, [sp, #0x34]
    mov r0, #8
    ldr r1, [sp, #0x34]
    str r0, [sp, #0]
    str r0, [sp, #4]
    lsl r1, r1, #0x10
    str r3, [sp, #8]
    lsr r1, r1, #0x10
    str r1, [sp, #0xc]
    str r0, [sp, #0x10]
    str r0, [sp, #0x14]
    mov r2, #0xff
    str r2, [sp, #0x18]
    ldr r1, [sp, #0x40]
    add r2, #0x21
    add r1, r1, r2
    add r0, r5, r4
    add r1, r6, r1
    add r2, r3, #0
    bl BlitBitmapRect
    mov r0, #8
    str r0, [sp, #0]
    lsl r1, r7, #0x10
    str r0, [sp, #4]
    lsr r1, r1, #0x10
    str r1, [sp, #8]
    ldr r1, [sp, #0x34]
    mov r2, #0xff
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    str r1, [sp, #0xc]
    str r0, [sp, #0x10]
    str r0, [sp, #0x14]
    str r2, [sp, #0x18]
    ldr r1, [sp, #0x40]
    add r2, #0x61
    add r1, r1, r2
    mov r2, #0
    add r0, r5, r4
    add r1, r6, r1
    add r3, r2, #0
    bl BlitBitmapRect
    ldr r0, [sp, #0x38]
    mov r7, #1
    cmp r0, #1
    ble _021F5AFE
    ldr r0, [sp, #0x40]
    ldr r1, [sp, #0x40]
    str r0, [sp, #0x54]
    add r0, #0x60
    str r0, [sp, #0x54]
    ldr r0, [sp, #0x30]
    str r1, [sp, #0x58]
    sub r0, r0, #1
    add r1, #0xa0
    lsl r0, r0, #3
    str r1, [sp, #0x58]
    ldr r1, [sp, #0x3c]
    lsl r0, r0, #0x10
    sub r1, r1, #1
    lsr r0, r0, #0x10
    str r1, [sp, #0x44]
    str r0, [sp, #0x5c]
_021F5A9A:
    lsl r0, r7, #3
    str r0, [sp, #0x28]
    mov r0, #8
    str r0, [sp, #0]
    str r0, [sp, #4]
    mov r0, #0
    str r0, [sp, #8]
    ldr r0, [sp, #0x28]
    ldr r1, [sp, #0x54]
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    str r0, [sp, #0xc]
    mov r0, #8
    str r0, [sp, #0x10]
    str r0, [sp, #0x14]
    mov r0, #0xff
    mov r2, #0
    str r0, [sp, #0x18]
    add r0, r5, r4
    add r1, r6, r1
    add r3, r2, #0
    bl BlitBitmapRect
    mov r0, #8
    str r0, [sp, #0]
    str r0, [sp, #4]
    ldr r0, [sp, #0x5c]
    ldr r1, [sp, #0x58]
    str r0, [sp, #8]
    ldr r0, [sp, #0x28]
    mov r2, #0
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    str r0, [sp, #0xc]
    mov r0, #8
    str r0, [sp, #0x10]
    str r0, [sp, #0x14]
    mov r0, #0xff
    str r0, [sp, #0x18]
    add r0, r5, r4
    add r1, r6, r1
    add r3, r2, #0
    bl BlitBitmapRect
    add r0, r7, #1
    lsl r0, r0, #0x18
    lsr r7, r0, #0x18
    ldr r0, [sp, #0x44]
    cmp r7, r0
    blt _021F5A9A
_021F5AFE:
    ldr r0, [sp, #0x2c]
    mov r7, #1
    cmp r0, #1
    ble _021F5B8E
    ldr r0, [sp, #0x40]
    mov r2, #5
    str r0, [sp, #0x60]
    add r0, #0x20
    str r0, [sp, #0x60]
    ldr r0, [sp, #0x3c]
    ldr r1, [sp, #0x40]
    lsl r2, r2, #6
    sub r0, r0, #1
    add r1, r1, r2
    lsl r0, r0, #3
    str r1, [sp, #0x64]
    ldr r1, [sp, #0x30]
    lsl r0, r0, #0x10
    sub r1, r1, #1
    lsr r0, r0, #0x10
    str r1, [sp, #0x48]
    str r0, [sp, #0x68]
_021F5B2A:
    lsl r0, r7, #3
    str r0, [sp, #0x24]
    mov r0, #8
    str r0, [sp, #0]
    str r0, [sp, #4]
    ldr r0, [sp, #0x24]
    ldr r1, [sp, #0x60]
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    str r0, [sp, #8]
    mov r0, #0
    str r0, [sp, #0xc]
    mov r0, #8
    str r0, [sp, #0x10]
    str r0, [sp, #0x14]
    mov r0, #0xff
    mov r2, #0
    str r0, [sp, #0x18]
    add r0, r5, r4
    add r1, r6, r1
    add r3, r2, #0
    bl BlitBitmapRect
    mov r0, #8
    str r0, [sp, #0]
    str r0, [sp, #4]
    ldr r0, [sp, #0x24]
    ldr r1, [sp, #0x64]
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    str r0, [sp, #8]
    ldr r0, [sp, #0x68]
    mov r2, #0
    str r0, [sp, #0xc]
    mov r0, #8
    str r0, [sp, #0x10]
    str r0, [sp, #0x14]
    mov r0, #0xff
    str r0, [sp, #0x18]
    add r0, r5, r4
    add r1, r6, r1
    add r3, r2, #0
    bl BlitBitmapRect
    add r0, r7, #1
    lsl r0, r0, #0x18
    lsr r7, r0, #0x18
    ldr r0, [sp, #0x48]
    cmp r7, r0
    blt _021F5B2A
_021F5B8E:
    ldr r0, [sp, #0x50]
    bl Heap_Free
    ldr r0, [sp, #0x1c]
    ldr r1, [sp, #0x20]
    ldr r0, [r0, #0x34]
    ldr r0, [r0, #0x20]
    bl NewString_ReadMsgData
    add r6, r0, #0
    ldr r2, [sp, #0x30]
    mov r7, #4
    lsl r3, r2, #3
    lsr r2, r3, #0x1f
    add r2, r3, r2
    ldr r0, [sp, #0x4c]
    str r7, [sp, #0]
    str r0, [sp, #4]
    mov r0, #2
    str r0, [sp, #8]
    add r0, r5, r4
    add r1, r6, #0
    asr r2, r2, #1
    add r3, r7, #0
    bl ov14_021F4F24
    add r0, r6, #0
    bl String_Delete
    add r0, r5, r4
    bl CopyWindowPixelsToVram_TextMode
    add sp, #0x70
    pop {r3, r4, r5, r6, r7, pc}
}
// clang-format on
#endif

#ifdef NONMATCHING
static void ov14_021F5BD8(UnkStruct_ov14_boxapp *work, int winIdx, int msgId, int flag, u8 align) {
    Window *windows = work->sys->windows;
    int width;
    u32 color;
    String *str;

    GetWindowBgId(&windows[winIdx]);
    GetWindowX(&windows[winIdx]);
    GetWindowY(&windows[winIdx]);
    width = GetWindowWidth(&windows[winIdx]);
    GetWindowHeight(&windows[winIdx]);
    if (flag == 1) {
        FillWindowPixelBuffer(&windows[winIdx], 11);
        color = MAKE_TEXT_COLOR(14, 15, 0);
    } else {
        FillWindowPixelBuffer(&windows[winIdx], 4);
        color = MAKE_TEXT_COLOR(14, 15, 0);
    }
    str = NewString_ReadMsgData(work->sys->msgData, msgId);
    if (align == 2 || align == 3) {
        ov14_021F4F24(&windows[winIdx], str, width * 8 / 2, 0, 4, color, align);
    } else {
        ov14_021F4F24(&windows[winIdx], str, 0, 0, 4, color, align);
    }
    String_Delete(str);
    CopyWindowPixelsToVram_TextMode(&windows[winIdx]);
}
#else
// clang-format off
static asm void ov14_021F5BD8(UnkStruct_ov14_boxapp *work, int winIdx, int msgId, int flag, u8 align) {
    push {r4, r5, r6, r7, lr}
    sub sp, #0x14
    add r7, r0, #0
    ldr r5, [r7, #0x34]
    lsl r4, r1, #4
    add r5, #0x30
    add r0, r5, r4
    str r2, [sp, #0xc]
    add r6, r3, #0
    bl GetWindowBgId
    add r0, r5, r4
    bl GetWindowX
    add r0, r5, r4
    bl GetWindowY
    add r0, r5, r4
    bl GetWindowWidth
    str r0, [sp, #0x10]
    add r0, r5, r4
    bl GetWindowHeight
    cmp r6, #1
    bne _021F5C16
    add r0, r5, r4
    mov r1, #0xb
    bl FillWindowPixelBuffer
    b _021F5C1E
_021F5C16:
    add r0, r5, r4
    mov r1, #4
    bl FillWindowPixelBuffer
_021F5C1E:
    ldr r0, [r7, #0x34]
    ldr r1, [sp, #0xc]
    ldr r0, [r0, #0x20]
    ldr r6, =0x000E0F00
    bl NewString_ReadMsgData
    add r7, r0, #0
    add r0, sp, #0x18
    ldrb r0, [r0, #0x10]
    add r1, r0, #0
    add r1, #0xfe
    lsl r1, r1, #0x18
    lsr r1, r1, #0x18
    cmp r1, #1
    bhi _021F5C5A
    mov r1, #4
    str r1, [sp, #0]
    str r6, [sp, #4]
    str r0, [sp, #8]
    ldr r2, [sp, #0x10]
    add r0, r5, r4
    lsl r3, r2, #3
    lsr r2, r3, #0x1f
    add r2, r3, r2
    add r1, r7, #0
    asr r2, r2, #1
    mov r3, #0
    bl ov14_021F4F24
    b _021F5C6E
_021F5C5A:
    mov r1, #4
    str r1, [sp, #0]
    str r6, [sp, #4]
    mov r2, #0
    str r0, [sp, #8]
    add r0, r5, r4
    add r1, r7, #0
    add r3, r2, #0
    bl ov14_021F4F24
_021F5C6E:
    add r0, r7, #0
    bl String_Delete
    add r0, r5, r4
    bl CopyWindowPixelsToVram_TextMode
    add sp, #0x14
    pop {r4, r5, r6, r7, pc}
}
// clang-format on
#endif

void ov14_021F5C84(UnkStruct_ov14_boxapp *work, int flag) {
    ov14_021F5950(work, 0x18, 0x3C, flag);
}

#ifdef NONMATCHING
static void ov14_021F5C94(UnkStruct_ov14_boxapp *work, int winIdx, int msgId) {
    Window *windows = work->sys->windows;
    Window *window = &windows[winIdx];
    int width;
    NNSG2dCharacterData *charData;
    void *data;
    u8 *pixels;
    String *str;
    u8 i;

    width = GetWindowWidth(window);
    data = GfGfxLoader_GetCharData(NARC_a_0_1_9, 0xE, TRUE, &charData, HEAP_ID_10);
    pixels = charData->pRawData;
    BlitBitmapRect(window, pixels + 0xAE0, 0, 0, 0x18, 8, 0, 0, 0x18, 8, 0xFF);
    BlitBitmapRect(window, pixels + 0xB60, 0, 0, 0x18, 8, 0, 8, 0x18, 8, 0xFF);
    BlitBitmapRect(window, pixels + 0xB20, 0, 0, 0x18, 8, 0, 0x10, 0x18, 8, 0xFF);
    BlitBitmapRect(window, pixels + 0xD60, 0, 0, 8, 8, (width - 1) * 8, 0, 8, 8, 0xFF);
    BlitBitmapRect(window, pixels + 0xD20, 0, 0, 8, 8, (width - 1) * 8, 8, 8, 8, 0xFF);
    BlitBitmapRect(window, pixels + 0xD40, 0, 0, 8, 8, (width - 1) * 8, 0x10, 8, 8, 0xFF);
    for (i = 1; i < width - 1; i++) {
        BlitBitmapRect(window, pixels + 0xB00, 0, 0, 8, 8, i * 8, 0, 8, 8, 0xFF);
        BlitBitmapRect(window, pixels + 0xB80, 0, 0, 8, 8, i * 8, 8, 8, 8, 0xFF);
        BlitBitmapRect(window, pixels + 0xB40, 0, 0, 8, 8, i * 8, 0x10, 8, 8, 0xFF);
    }
    Heap_Free(data);
    str = NewString_ReadMsgData(work->sys->msgData, msgId);
    ov14_021F4F24(window, str, width * 8 / 2, 4, 4, MAKE_TEXT_COLOR(9, 10, 0), 2);
    String_Delete(str);
    CopyWindowPixelsToVram_TextMode(window);
}
#else
// clang-format off
static asm void ov14_021F5C94(UnkStruct_ov14_boxapp *work, int winIdx, int msgId) {
    push {r4, r5, r6, r7, lr}
    sub sp, #0x3c
    ldr r5, [r0, #0x34]
    lsl r4, r1, #4
    add r5, #0x30
    str r0, [sp, #0x1c]
    add r0, r5, r4
    str r2, [sp, #0x20]
    bl GetWindowWidth
    str r0, [sp, #0x2c]
    mov r0, #0xa
    str r0, [sp, #0]
    mov r0, #0x13
    mov r1, #0xe
    mov r2, #1
    add r3, sp, #0x38
    bl GfGfxLoader_GetCharData
    str r0, [sp, #0x34]
    ldr r0, [sp, #0x38]
    mov r2, #0
    ldr r6, [r0, #0x14]
    mov r1, #0x18
    str r1, [sp, #0]
    mov r0, #8
    str r0, [sp, #4]
    str r2, [sp, #8]
    str r2, [sp, #0xc]
    str r1, [sp, #0x10]
    mov r1, #0xae
    str r0, [sp, #0x14]
    mov r0, #0xff
    lsl r1, r1, #4
    str r0, [sp, #0x18]
    add r0, r5, r4
    add r1, r6, r1
    add r3, r2, #0
    bl BlitBitmapRect
    mov r1, #0x18
    mov r2, #0
    str r1, [sp, #0]
    mov r0, #8
    str r0, [sp, #4]
    str r2, [sp, #8]
    str r0, [sp, #0xc]
    str r1, [sp, #0x10]
    mov r1, #0xb6
    str r0, [sp, #0x14]
    mov r0, #0xff
    lsl r1, r1, #4
    str r0, [sp, #0x18]
    add r0, r5, r4
    add r1, r6, r1
    add r3, r2, #0
    bl BlitBitmapRect
    mov r3, #0x18
    str r3, [sp, #0]
    mov r1, #8
    str r1, [sp, #4]
    mov r2, #0
    str r2, [sp, #8]
    mov r0, #0x10
    str r0, [sp, #0xc]
    str r3, [sp, #0x10]
    str r1, [sp, #0x14]
    mov r1, #0xb2
    mov r0, #0xff
    lsl r1, r1, #4
    str r0, [sp, #0x18]
    add r0, r5, r4
    add r1, r6, r1
    add r3, r2, #0
    bl BlitBitmapRect
    ldr r0, [sp, #0x2c]
    sub r0, r0, #1
    str r0, [sp, #0x28]
    lsl r7, r0, #3
    mov r0, #8
    str r0, [sp, #0]
    lsl r1, r7, #0x10
    mov r2, #0
    str r0, [sp, #4]
    lsr r1, r1, #0x10
    str r1, [sp, #8]
    str r2, [sp, #0xc]
    str r0, [sp, #0x10]
    mov r1, #0xd6
    str r0, [sp, #0x14]
    mov r0, #0xff
    lsl r1, r1, #4
    str r0, [sp, #0x18]
    add r0, r5, r4
    add r1, r6, r1
    add r3, r2, #0
    bl BlitBitmapRect
    mov r1, #8
    str r1, [sp, #0]
    lsl r0, r7, #0x10
    mov r2, #0
    str r1, [sp, #4]
    lsr r0, r0, #0x10
    str r0, [sp, #8]
    str r1, [sp, #0xc]
    str r1, [sp, #0x10]
    str r1, [sp, #0x14]
    mov r1, #0xd2
    mov r0, #0xff
    lsl r1, r1, #4
    str r0, [sp, #0x18]
    add r0, r5, r4
    add r1, r6, r1
    add r3, r2, #0
    bl BlitBitmapRect
    mov r0, #8
    str r0, [sp, #0]
    lsl r1, r7, #0x10
    mov r2, #0
    str r0, [sp, #4]
    lsr r1, r1, #0x10
    str r1, [sp, #8]
    mov r1, #0x10
    str r1, [sp, #0xc]
    str r0, [sp, #0x10]
    mov r1, #0x35
    str r0, [sp, #0x14]
    mov r0, #0xff
    lsl r1, r1, #6
    str r0, [sp, #0x18]
    add r0, r5, r4
    add r1, r6, r1
    add r3, r2, #0
    bl BlitBitmapRect
    ldr r0, [sp, #0x28]
    mov r7, #1
    cmp r0, #1
    ble _021F5E4A
    ldr r0, [sp, #0x2c]
    sub r0, r0, #1
    str r0, [sp, #0x30]
_021F5DB8:
    lsl r0, r7, #3
    str r0, [sp, #0x24]
    mov r0, #8
    str r0, [sp, #0]
    str r0, [sp, #4]
    ldr r0, [sp, #0x24]
    mov r1, #0xb
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    str r0, [sp, #8]
    mov r0, #0
    str r0, [sp, #0xc]
    mov r0, #8
    str r0, [sp, #0x10]
    str r0, [sp, #0x14]
    mov r0, #0xff
    lsl r1, r1, #8
    mov r2, #0
    str r0, [sp, #0x18]
    add r0, r5, r4
    add r1, r6, r1
    add r3, r2, #0
    bl BlitBitmapRect
    mov r0, #8
    str r0, [sp, #0]
    str r0, [sp, #4]
    ldr r0, [sp, #0x24]
    mov r1, #0x2e
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    str r0, [sp, #8]
    mov r0, #8
    str r0, [sp, #0xc]
    str r0, [sp, #0x10]
    str r0, [sp, #0x14]
    mov r0, #0xff
    lsl r1, r1, #6
    mov r2, #0
    str r0, [sp, #0x18]
    add r0, r5, r4
    add r1, r6, r1
    add r3, r2, #0
    bl BlitBitmapRect
    mov r0, #8
    str r0, [sp, #0]
    str r0, [sp, #4]
    ldr r0, [sp, #0x24]
    mov r1, #0x2d
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    str r0, [sp, #8]
    mov r0, #0x10
    str r0, [sp, #0xc]
    mov r0, #8
    str r0, [sp, #0x10]
    str r0, [sp, #0x14]
    mov r0, #0xff
    lsl r1, r1, #6
    mov r2, #0
    str r0, [sp, #0x18]
    add r0, r5, r4
    add r1, r6, r1
    add r3, r2, #0
    bl BlitBitmapRect
    add r0, r7, #1
    lsl r0, r0, #0x18
    lsr r7, r0, #0x18
    ldr r0, [sp, #0x30]
    cmp r7, r0
    blt _021F5DB8
_021F5E4A:
    ldr r0, [sp, #0x34]
    bl Heap_Free
    ldr r0, [sp, #0x1c]
    ldr r1, [sp, #0x20]
    ldr r0, [r0, #0x34]
    ldr r0, [r0, #0x20]
    bl NewString_ReadMsgData
    add r6, r0, #0
    ldr r2, [sp, #0x2c]
    mov r7, #4
    lsl r3, r2, #3
    lsr r2, r3, #0x1f
    add r2, r3, r2
    ldr r0, =0x00090A00
    str r7, [sp, #0]
    str r0, [sp, #4]
    mov r0, #2
    str r0, [sp, #8]
    add r0, r5, r4
    add r1, r6, #0
    asr r2, r2, #1
    add r3, r7, #0
    bl ov14_021F4F24
    add r0, r6, #0
    bl String_Delete
    add r0, r5, r4
    bl CopyWindowPixelsToVram_TextMode
    add sp, #0x3c
    pop {r4, r5, r6, r7, pc}
}
// clang-format on
#endif

void ov14_021F5E94(UnkStruct_ov14_boxapp *work) {
    if (work->args->unk8 == 3) {
        ov14_021F5C94(work, 0x19, 0x40);
    } else {
        ov14_021F5C94(work, 0x19, 0x3D);
    }
}

void ov14_021F5EB4(UnkStruct_ov14_boxapp *work, int flag) {
    ov14_021F5950(work, 0x1A, 0x3E, flag);
}

void ov14_021F5EC4(UnkStruct_ov14_boxapp *work, int flag) {
    ov14_021F5950(work, 0x1B, 0x4C, flag);
}

static void ov14_021F5ED4(UnkStruct_ov14_boxapp *work, int flag) {
    ov14_021F5950(work, 0x1C, 0x47, flag);
}

void ov14_021F5EE4(UnkStruct_ov14_boxapp *work, const UnkStruct_ov14_021F7D3C *entries, u32 count) {
    u16 w;
    u16 h;
    u32 i;

    sub_02019B44(work->sys->unk2F0, 3, &w, &h);
    for (i = 0; i < count; i++) {
        const UnkStruct_ov14_021F7D3C *e = &entries[count - 1 - i];
        if (e->type == 0) {
            ov14_021F5950(work, 0x21 - i, e->msgId, 0);
            sub_020199F4(work->sys->unk2F0, 7 - i, 0, 0, w, h, 0xC);
        } else {
            ov14_021F5C94(work, 0x21 - i, e->msgId);
            sub_020199F4(work->sys->unk2F0, 7 - i, 0, 0, w, h, 2);
        }
    }
    for (; count < 5; count++) {
        FillWindowPixelBuffer(&work->sys->windows[0x21 - count], 0);
        CopyWindowPixelsToVram_TextMode(&work->sys->windows[0x21 - count]);
    }
}

void ov14_021F5FBC(UnkStruct_ov14_boxapp *work, int flag) {
    FillWindowPixelBuffer(&work->sys->windows[0x1D], 0);
    FillWindowPixelBuffer(&work->sys->windows[0x1E], 0);
    FillWindowPixelBuffer(&work->sys->windows[0x1F], 0);
    FillWindowPixelBuffer(&work->sys->windows[0x20], 0);
    CopyWindowPixelsToVram_TextMode(&work->sys->windows[0x1D]);
    CopyWindowPixelsToVram_TextMode(&work->sys->windows[0x1E]);
    CopyWindowPixelsToVram_TextMode(&work->sys->windows[0x1F]);
    CopyWindowPixelsToVram_TextMode(&work->sys->windows[0x20]);
    if (flag == 0) {
        ov14_021F5950(work, 0x21, 0x51, 0);
    } else {
        ov14_021F5950(work, 0x21, 0x50, 0);
    }
}

void ov14_021F604C(UnkStruct_ov14_boxapp *work) {
    ov14_021F5950(work, 0x2A, 0x3F, 0);
}

static void ov14_021F605C(UnkStruct_ov14_boxapp *work) {
    ov14_021F5BD8(work, 0x29, 0x4D, 0, 3);
}

void ov14_021F6070(UnkStruct_ov14_boxapp *work) {
    ov14_021F605C(work);
    ov14_021F5950(work, 0x20, 0x1A, 0);
    ov14_021F5950(work, 0x21, 0x1B, 0);
}

void ov14_021F6094(UnkStruct_ov14_boxapp *work) {
    ov14_021F5BD8(work, 0x29, 0x4E, 0, 3);
}

void ov14_021F60A8(UnkStruct_ov14_boxapp *work) {
    ov14_021F5BD8(work, 0x29, 0x4F, 0, 3);
}

#ifdef NONMATCHING
static void ov14_021F60BC(UnkStruct_0201956C *mgr, int index, Window *window) {
    u16 w;
    u16 h;
    u16 *buf;
    u16 tile;
    u16 pal;
    u16 i;
    u16 j;

    buf = sub_02019B08(mgr, index);
    sub_02019B44(mgr, index, &w, &h);
    tile = GetWindowBaseTile(window);
    pal = window->paletteNum << 12;
    buf[0] = pal + 0x3E8;
    buf[w - 1] = pal + 0x3EA;
    buf[(h - 1) * w] = pal + 0x3F1;
    buf[w * h - 1] = pal + 0x3F3;
    for (i = 0; i < w - 2; i++) {
        buf[i + 1] = pal + 0x3E9;
        buf[i + (h - 1) * w + 1] = pal + 0x3F2;
    }
    for (i = 0; i < h - 2; i++) {
        buf[w * (i + 1)] = pal + 0x3EB;
        buf[w * (i + 2) - 1] = pal + 0x3ED;
    }
    for (i = 0; i < h - 2; i++) {
        for (j = 0; j < w - 2; j++) {
            buf[j + w * (i + 1) + 1] = pal + tile;
            tile++;
        }
    }
}
#else
// clang-format off
static asm void ov14_021F60BC(UnkStruct_0201956C *mgr, int index, Window *window) {
    push {r3, r4, r5, r6, r7, lr}
    sub sp, #0x10
    add r5, r0, #0
    add r6, r1, #0
    add r4, r2, #0
    bl sub_02019B08
    add r2, sp, #0xc
    add r7, r0, #0
    add r0, r5, #0
    add r1, r6, #0
    add r2, #2
    add r3, sp, #0xc
    bl sub_02019B44
    add r0, r4, #0
    bl GetWindowBaseTile
    add r2, r0, #0
    ldrb r0, [r4, #9]
    add r3, sp, #0xc
    lsl r0, r0, #0x1c
    lsr r5, r0, #0x10
    mov r0, #0xfa
    lsl r0, r0, #2
    add r1, r5, r0
    strh r1, [r7, #0]
    ldrh r4, [r3, #2]
    add r1, r0, #2
    add r1, r5, r1
    sub r4, r4, #1
    lsl r4, r4, #1
    strh r1, [r7, r4]
    ldrh r4, [r3, #0]
    add r1, r0, #0
    add r1, #9
    ldrh r6, [r3, #2]
    sub r4, r4, #1
    add r1, r5, r1
    mul r4, r6
    lsl r4, r4, #1
    strh r1, [r7, r4]
    add r1, r0, #0
    add r1, #0xb
    add r6, r5, r1
    ldrh r4, [r3, #2]
    ldrh r1, [r3, #0]
    mul r1, r4
    sub r1, r1, #1
    lsl r1, r1, #1
    strh r6, [r7, r1]
    ldrh r4, [r3, #2]
    mov r1, #0
    sub r4, r4, #2
    cmp r4, #0
    ble _021F6164
    add r4, r0, #1
    add r0, #0xa
    add r0, r5, r0
    add r4, r5, r4
    lsl r0, r0, #0x10
    lsl r4, r4, #0x10
    lsr r0, r0, #0x10
    lsr r6, r4, #0x10
    str r0, [sp, #4]
_021F613E:
    lsl r0, r1, #1
    add r0, r7, r0
    strh r6, [r0, #2]
    ldrh r4, [r3, #0]
    ldrh r0, [r3, #2]
    sub r4, r4, #1
    mul r4, r0
    add r0, r1, r4
    lsl r0, r0, #1
    add r4, r7, r0
    ldr r0, [sp, #4]
    strh r0, [r4, #2]
    add r0, r1, #1
    lsl r0, r0, #0x10
    lsr r1, r0, #0x10
    ldrh r0, [r3, #2]
    sub r0, r0, #2
    cmp r1, r0
    blt _021F613E
_021F6164:
    add r6, sp, #0xc
    ldrh r1, [r6, #0]
    mov r0, #0
    sub r1, r1, #2
    cmp r1, #0
    ble _021F61AE
    ldr r1, =0x000003EB
    add r3, r5, r1
    add r1, r1, #2
    add r1, r5, r1
    lsl r3, r3, #0x10
    lsl r1, r1, #0x10
    lsr r3, r3, #0x10
    lsr r1, r1, #0x10
    str r3, [sp, #8]
    mov ip, r1
_021F6184:
    ldrh r1, [r6, #2]
    add r4, r0, #1
    add r0, r0, #2
    add r3, r1, #0
    mul r3, r4
    ldr r1, [sp, #8]
    lsl r3, r3, #1
    strh r1, [r7, r3]
    ldrh r1, [r6, #2]
    mul r0, r1
    lsl r0, r0, #1
    add r0, r7, r0
    sub r1, r0, #2
    mov r0, ip
    strh r0, [r1, #0]
    ldrh r1, [r6, #0]
    lsl r0, r4, #0x10
    lsr r0, r0, #0x10
    sub r1, r1, #2
    cmp r0, r1
    blt _021F6184
_021F61AE:
    mov r0, #0
    str r0, [sp, #0]
    cmp r1, #0
    ble _021F6200
_021F61B6:
    add r0, sp, #0xc
    ldrh r6, [r0, #2]
    mov r3, #0
    sub r0, r6, #2
    cmp r0, #0
    ble _021F61EA
    ldr r0, [sp, #0]
    add r4, r0, #1
_021F61C6:
    add r0, r6, #0
    mul r0, r4
    add r0, r3, r0
    lsl r0, r0, #1
    add r1, r5, r2
    add r0, r7, r0
    strh r1, [r0, #2]
    add r0, r2, #1
    lsl r0, r0, #0x10
    lsr r2, r0, #0x10
    add r0, r3, #1
    lsl r0, r0, #0x10
    lsr r3, r0, #0x10
    add r0, sp, #0xc
    ldrh r6, [r0, #2]
    sub r0, r6, #2
    cmp r3, r0
    blt _021F61C6
_021F61EA:
    ldr r0, [sp, #0]
    add r0, r0, #1
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    str r0, [sp, #0]
    add r0, sp, #0xc
    ldrh r0, [r0, #0]
    sub r1, r0, #2
    ldr r0, [sp, #0]
    cmp r0, r1
    blt _021F61B6
_021F6200:
    add sp, #0x10
    pop {r3, r4, r5, r6, r7, pc}
}
// clang-format on
#endif

static void ov14_021F6208(UnkStruct_0201956C *mgr, int index, Window *window) {
    int bgId = GetWindowBgId(window);
    int width = GetWindowWidth(window);
    int height = GetWindowHeight(window);

    sub_020195F4(mgr, index, bgId, width, height);
    sub_02019A60(mgr, index, window);
}

void ov14_021F6244(UnkStruct_ov14_boxsys *sys) {
    ov14_021F6208(sys->unk2F0, 3, &sys->windows[0x1D]);
    ov14_021F6208(sys->unk2F0, 4, &sys->windows[0x1E]);
    ov14_021F6208(sys->unk2F0, 5, &sys->windows[0x1F]);
    ov14_021F6208(sys->unk2F0, 6, &sys->windows[0x20]);
    ov14_021F6208(sys->unk2F0, 7, &sys->windows[0x21]);
    ov14_021F60BC(sys->unk2F0, 0xC, &sys->windows[0x29]);
    ov14_021F6208(sys->unk2F0, 0xE, &sys->windows[0x2A]);
    ov14_021F6208(sys->unk2F0, 0xF, &sys->windows[0x2B]);
}

void ov14_021F62CC(UnkStruct_ov14_boxsys *sys) {
    ov14_021F6208(sys->unk2F0, 8, &sys->windows[0x18]);
}

void ov14_021F62E4(UnkStruct_ov14_boxsys *sys) {
    ov14_021F6208(sys->unk2F0, 9, &sys->windows[0x19]);
}

void ov14_021F62FC(UnkStruct_ov14_boxsys *sys) {
    ov14_021F6208(sys->unk2F0, 0xA, &sys->windows[0x1A]);
}

void ov14_021F6314(UnkStruct_ov14_boxapp *work) {
    UnkStruct_ov14_boxsys *sys = work->sys;

    ov14_021F6208(sys->unk2F0, 0xB, &sys->windows[0x1C]);
    ov14_021F5ED4(work, 0);
}

static void ov14_021F6338(UnkStruct_ov14_boxsys *sys, int winIdx, int msgId, int unused) {
    Window *windows = sys->windows;

    FillWindowPixelBuffer(&windows[winIdx], 13);
    ov14_021F4F84(sys, sys->msgData, winIdx, msgId, GetWindowWidth(&windows[winIdx]) * 8 / 2, 0, 4, MAKE_TEXT_COLOR(9, 10, 13), 2);
    CopyWindowPixelsToVram_TextMode(&windows[winIdx]);
}

void ov14_021F638C(UnkStruct_ov14_boxsys *sys) {
    ov14_021F6338(sys, 0x22, 0x48, 0);
    ov14_021F6338(sys, 0x23, 0x49, 0);
}

void ov14_021F63A8(UnkStruct_ov14_boxsys *sys) {
    ov14_021F6338(sys, 0x24, 0x4A, 0);
}

void ov14_021F63B8(UnkStruct_ov14_boxsys *sys) {
    ov14_021F6338(sys, 0x24, 0x4B, 0);
}

void ov14_021F63C8(UnkStruct_ov14_boxsys *sys) {
    sub_02019A60(sys->unk2F0, 2, &sys->windows[0x22]);
    sub_02019A60(sys->unk2F0, 2, &sys->windows[0x23]);
}

void ov14_021F63F0(UnkStruct_ov14_boxsys *sys) {
    sub_02019A60(sys->unk2F0, 1, &sys->windows[0x24]);
}

#ifdef NONMATCHING
void ov14_021F6408(UnkStruct_ov14_boxapp *work) {
    UnkStruct_ov14_boxsys *sys = work->sys;
    int width;
    NNSG2dCharacterData *charData;
    void *data;
    u8 *pixels;
    String *str;
    u8 i;

    width = GetWindowWidth(&sys->windows[0x2B]);
    data = GfGfxLoader_GetCharData(NARC_a_0_1_9, 0xE, TRUE, &charData, HEAP_ID_10);
    pixels = charData->pRawData;
    BlitBitmapRect(&sys->windows[0x2B], pixels + 0x7A0, 0, 0, 0x18, 8, 0, 0, 0x18, 8, 0xFF);
    BlitBitmapRect(&sys->windows[0x2B], pixels + 0xBA0, 0, 0, 0x18, 8, 0, 8, 0x18, 8, 0xFF);
    BlitBitmapRect(&sys->windows[0x2B], pixels + 0xFA0, 0, 0, 0x18, 8, 0, 0x10, 0x18, 8, 0xFF);
    BlitBitmapRect(&sys->windows[0x2B], pixels + 0xD00, 0, 0, 8, 8, (width - 1) * 8, 0, 8, 8, 0xFF);
    BlitBitmapRect(&sys->windows[0x2B], pixels + 0xCE0, 0, 0, 8, 8, (width - 1) * 8, 8, 8, 8, 0xFF);
    BlitBitmapRect(&sys->windows[0x2B], pixels + 0xCC0, 0, 0, 8, 8, (width - 1) * 8, 0x10, 8, 8, 0xFF);
    for (i = 3; i < width - 1; i++) {
        BlitBitmapRect(&sys->windows[0x2B], pixels + 0xC20, 0, 0, 8, 8, i * 8, 0, 8, 8, 0xFF);
        BlitBitmapRect(&sys->windows[0x2B], pixels + 0xCA0, 0, 0, 8, 8, i * 8, 8, 8, 8, 0xFF);
        BlitBitmapRect(&sys->windows[0x2B], pixels + 0xC80, 0, 0, 8, 8, i * 8, 0x10, 8, 8, 0xFF);
    }
    Heap_Free(data);
    str = NewString_ReadMsgData(work->sys->msgData, 0x41);
    ov14_021F4F24(&sys->windows[0x2B], str, width * 8 / 2, 4, 4, MAKE_TEXT_COLOR(9, 10, 0), 2);
    String_Delete(str);
    CopyWindowPixelsToVram_TextMode(&sys->windows[0x2B]);
}
#else
// clang-format off
asm void ov14_021F6408(UnkStruct_ov14_boxapp *work) {
    push {r4, r5, r6, r7, lr}
    sub sp, #0x34
    str r0, [sp, #0x1c]
    ldr r4, [r0, #0x34]
    mov r0, #0x2e
    lsl r0, r0, #4
    add r0, r4, r0
    bl GetWindowWidth
    str r0, [sp, #0x20]
    mov r0, #0xa
    str r0, [sp, #0]
    mov r0, #0x13
    mov r1, #0xe
    mov r2, #1
    add r3, sp, #0x30
    bl GfGfxLoader_GetCharData
    str r0, [sp, #0x28]
    ldr r0, [sp, #0x30]
    mov r2, #0
    ldr r5, [r0, #0x14]
    mov r1, #0x18
    str r1, [sp, #0]
    mov r0, #8
    str r0, [sp, #4]
    str r2, [sp, #8]
    str r2, [sp, #0xc]
    str r1, [sp, #0x10]
    str r0, [sp, #0x14]
    mov r0, #0xff
    str r0, [sp, #0x18]
    mov r0, #0x2e
    mov r1, #0x7a
    lsl r0, r0, #4
    lsl r1, r1, #4
    add r0, r4, r0
    add r1, r5, r1
    add r3, r2, #0
    bl BlitBitmapRect
    mov r1, #0x18
    mov r2, #0
    str r1, [sp, #0]
    mov r0, #8
    str r0, [sp, #4]
    str r2, [sp, #8]
    str r0, [sp, #0xc]
    str r1, [sp, #0x10]
    str r0, [sp, #0x14]
    mov r0, #0xff
    str r0, [sp, #0x18]
    mov r0, #0x2e
    mov r1, #0xba
    lsl r0, r0, #4
    lsl r1, r1, #4
    add r0, r4, r0
    add r1, r5, r1
    add r3, r2, #0
    bl BlitBitmapRect
    mov r3, #0x18
    str r3, [sp, #0]
    mov r1, #8
    str r1, [sp, #4]
    mov r2, #0
    str r2, [sp, #8]
    mov r0, #0x10
    str r0, [sp, #0xc]
    str r3, [sp, #0x10]
    str r1, [sp, #0x14]
    mov r0, #0xff
    str r0, [sp, #0x18]
    mov r0, #0x2e
    mov r1, #0xfa
    lsl r0, r0, #4
    lsl r1, r1, #4
    add r0, r4, r0
    add r1, r5, r1
    add r3, r2, #0
    bl BlitBitmapRect
    ldr r0, [sp, #0x20]
    mov r1, #8
    sub r0, r0, #1
    str r1, [sp, #0]
    mov r2, #0
    lsl r6, r0, #3
    str r0, [sp, #0x2c]
    lsl r0, r6, #0x10
    str r1, [sp, #4]
    lsr r0, r0, #0x10
    str r0, [sp, #8]
    str r2, [sp, #0xc]
    str r1, [sp, #0x10]
    str r1, [sp, #0x14]
    mov r0, #0xff
    str r0, [sp, #0x18]
    mov r0, #0x2e
    mov r1, #0xd
    lsl r0, r0, #4
    lsl r1, r1, #8
    add r0, r4, r0
    add r1, r5, r1
    add r3, r2, #0
    bl BlitBitmapRect
    mov r1, #8
    str r1, [sp, #0]
    lsl r0, r6, #0x10
    str r1, [sp, #4]
    lsr r0, r0, #0x10
    str r0, [sp, #8]
    str r1, [sp, #0xc]
    str r1, [sp, #0x10]
    str r1, [sp, #0x14]
    mov r0, #0xff
    str r0, [sp, #0x18]
    mov r0, #0x2e
    mov r1, #0xce
    lsl r0, r0, #4
    lsl r1, r1, #4
    mov r2, #0
    add r0, r4, r0
    add r1, r5, r1
    add r3, r2, #0
    bl BlitBitmapRect
    mov r1, #8
    str r1, [sp, #0]
    lsl r0, r6, #0x10
    mov r2, #0
    str r1, [sp, #4]
    lsr r0, r0, #0x10
    str r0, [sp, #8]
    mov r0, #0x10
    str r0, [sp, #0xc]
    str r1, [sp, #0x10]
    str r1, [sp, #0x14]
    mov r0, #0xff
    str r0, [sp, #0x18]
    mov r0, #0x2e
    mov r1, #0x33
    lsl r0, r0, #4
    lsl r1, r1, #6
    add r0, r4, r0
    add r1, r5, r1
    add r3, r2, #0
    bl BlitBitmapRect
    ldr r0, [sp, #0x2c]
    mov r7, #3
    cmp r0, #3
    ble _021F65D8
    ldr r0, [sp, #0x20]
    sub r0, r0, #1
    str r0, [sp, #0x24]
_021F6542:
    mov r0, #8
    str r0, [sp, #0]
    lsl r6, r7, #3
    str r0, [sp, #4]
    lsl r0, r6, #0x10
    lsr r0, r0, #0x10
    str r0, [sp, #8]
    mov r0, #0
    str r0, [sp, #0xc]
    mov r0, #8
    str r0, [sp, #0x10]
    str r0, [sp, #0x14]
    mov r0, #0xff
    str r0, [sp, #0x18]
    mov r0, #0x2e
    mov r1, #0xc2
    lsl r0, r0, #4
    lsl r1, r1, #4
    mov r2, #0
    add r0, r4, r0
    add r1, r5, r1
    add r3, r2, #0
    bl BlitBitmapRect
    mov r0, #8
    str r0, [sp, #0]
    str r0, [sp, #4]
    lsl r0, r6, #0x10
    lsr r0, r0, #0x10
    str r0, [sp, #8]
    mov r0, #8
    str r0, [sp, #0xc]
    str r0, [sp, #0x10]
    str r0, [sp, #0x14]
    mov r0, #0xff
    str r0, [sp, #0x18]
    mov r0, #0x2e
    mov r1, #0xca
    lsl r0, r0, #4
    lsl r1, r1, #4
    mov r2, #0
    add r0, r4, r0
    add r1, r5, r1
    add r3, r2, #0
    bl BlitBitmapRect
    mov r0, #8
    str r0, [sp, #0]
    str r0, [sp, #4]
    lsl r0, r6, #0x10
    lsr r0, r0, #0x10
    str r0, [sp, #8]
    mov r0, #0x10
    str r0, [sp, #0xc]
    mov r0, #8
    str r0, [sp, #0x10]
    str r0, [sp, #0x14]
    mov r0, #0xff
    str r0, [sp, #0x18]
    mov r0, #0x2e
    mov r1, #0x32
    lsl r0, r0, #4
    lsl r1, r1, #6
    mov r2, #0
    add r0, r4, r0
    add r1, r5, r1
    add r3, r2, #0
    bl BlitBitmapRect
    add r0, r7, #1
    lsl r0, r0, #0x18
    lsr r7, r0, #0x18
    ldr r0, [sp, #0x24]
    cmp r7, r0
    blt _021F6542
_021F65D8:
    ldr r0, [sp, #0x28]
    bl Heap_Free
    ldr r0, [sp, #0x1c]
    mov r1, #0x41
    ldr r0, [r0, #0x34]
    ldr r0, [r0, #0x20]
    bl NewString_ReadMsgData
    add r5, r0, #0
    mov r3, #4
    ldr r2, [sp, #0x20]
    ldr r0, =0x00090A00
    str r3, [sp, #0]
    str r0, [sp, #4]
    mov r0, #2
    lsl r6, r2, #3
    str r0, [sp, #8]
    mov r0, #0x2e
    lsr r2, r6, #0x1f
    lsl r0, r0, #4
    add r2, r6, r2
    add r0, r4, r0
    add r1, r5, #0
    asr r2, r2, #1
    bl ov14_021F4F24
    add r0, r5, #0
    bl String_Delete
    mov r0, #0x2e
    lsl r0, r0, #4
    add r0, r4, r0
    bl CopyWindowPixelsToVram_TextMode
    add sp, #0x34
    pop {r4, r5, r6, r7, pc}
}
// clang-format on
#endif
