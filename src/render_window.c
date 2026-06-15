#include "render_window.h"

#include "global.h"

#include "field/ov01_021E7FDC.h"

#include "bg_window.h"
#include "filesystem.h"
#include "gf_gfx_loader.h"
#include "gf_gfx_planes.h"
#include "heap.h"
#include "pokemon.h"
#include "pokepic.h"
#include "render_text.h"
#include "sprite.h"
#include "sys_task.h"
#include "sys_task_api.h"
#include "systask_environment.h"
#include "unk_02009D48.h"
#include "unk_0200A090.h"
#include "unk_0200ACF0.h"
#include "unk_02013FDC.h"

// rodata
static const u32 _020F5C40[4] = { 0x0000000A, 0x00000000, 0x0000000A, 0x0000000A };
static const u32 _020F5C50[4] = { 0x00000000, 0x00000000, 0x0000000A, 0x0000000A };
static const u32 _020F5C60[6] = { 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000000, 0x00000000 };
static const u32 _020F5C78[13] = {
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x015CD5D5, 0x015CD5D5, 0x015CD5D5, 0x015CD5D5, 0x00000000, 0x00000000, 0x00000000, 0x00000000
};

// External overlay_01 functions
void ov01_021E8298(UnkStruct_ov01_021E7FDC *a0, void *a1, enum HeapID heapID, int a3);
void ov01_021E8378(UnkStruct_ov01_021E7FDC *a0, NarcId narcId, int memberNo, enum HeapID heapID, int a4, int a5, int a6);
void ov01_021E83F0(UnkStruct_ov01_021E7FDC *a0, NarcId narcId, int memberNo, enum HeapID heapID, int a4, int a5);
void ov01_021E8404(UnkStruct_ov01_021E7FDC *a0, NarcId narcId, int memberNo, enum HeapID heapID, int a4, int a5);
void ov01_021E8418(UnkStruct_ov01_021E7FDC *a0, NarcId narcId, int memberNo, enum HeapID heapID, int a4, int a5, int a6, enum HeapID heapID2);
Sprite *ov01_021E851C(UnkStruct_ov01_021E7FDC *a0, void *a1);
void ov01_021E86F4(UnkStruct_ov01_021E7FDC *a0);

struct WaitingIcon {
    Window *window;     // 0x000
    u8 frames[8][0x80]; // 0x004
    // 0x404 used transiently in New
    // 0x484
    u16 tileNum;     // 0x484
    u8 frameCounter; // 0x486
    u8 flags;        // 0x487
    u8 state;        // 0x488
    u8 animIndex;    // 0x489
    u8 flags2;       // 0x48A
    u8 pad;          // 0x48B
}; // 0x48C

// Static forward declarations
static void sub_0200E448(BgConfig *bgConfig, u8 bgId, u16 baseTile, u8 x, u8 y, u8 width, u8 height, u8 palette);
static void sub_0200E6B4(BgConfig *bgConfig, u8 bgId, u16 baseTile, u8 x, u8 y, u8 width, u8 height, u8 palette);
static void sub_0200EA24(const Bitmap *a0, Bitmap *a1, u16 a2, u16 a3, u16 a4, u16 a5, u16 a6, u16 a7, u16 colorKey);
static void sub_0200EA68(Window *window, u8 bgId, u8 tileOffset, u8 numTiles, u8 unused);
static void sub_0200EC84(BgConfig *bgConfig, u8 bgId, u16 charStart, u8 x, enum HeapID heapID);
static void sub_0200ECBC(BgConfig *bgConfig, u8 bgId, u16 baseTile, u8 x, u8 y, u8 width, u8 height, u8 palette);
static void sub_0200EF84(Window *window, u16 baseTile, enum HeapID heapID);
static void sub_0200F1D4(WaitingIcon *icon, int mode);
static void sub_0200F3D0(SysTask *task, void *data);
static void sub_0200F43C(SysTask *task, WaitingIcon *icon);
static void sub_0200F54C(SysTask *task, void *data);
static WaitingIcon *sub_0200F5C4(BgConfig *bgConfig, u8 bgId, u8 paletteNum, u8 tileOffset, enum HeapID heapID);
static void sub_0200F600(UnkStruct_ov01_021E7FDC *spriteEnv, void *spriteResHdrList);
static void sub_0200F62C(UnkStruct_ov01_021E7FDC *spriteEnv);
static void sub_0200F684(UnkStruct_ov01_021E7FDC *spriteEnv, int x, int y);
static void sub_0200F6D4(UnkStruct_ov01_021E7FDC *spriteEnv, u16 species, u8 gender);
static void sub_0200F714(UnkStruct_ov01_021E7FDC *spriteEnv, Pokemon *mon);
static void sub_0200F748(UnkStruct_ov01_021E7FDC *spriteEnv, PokepicTemplate *pokepicTemplate);
static void sub_0200F82C(UnkStruct_ov01_021E7FDC *spriteEnv, u8 bgId, u16 baseTile);
static void sub_0200F9DC(UnkStruct_ov01_021E7FDC *spriteEnv);

void sub_0200E398(BgConfig *bgConfig, GFBgLayer layer, u32 a2, u32 a3, enum HeapID heapID) {
    if (a3 == 0) {
        GfGfxLoader_LoadCharData((NarcId)0x26, 0, bgConfig, layer, a2, 0, FALSE, heapID);
    } else {
        GfGfxLoader_LoadCharData((NarcId)0x26, 0, bgConfig, layer, a2, 0, TRUE, heapID);
    }
}

u32 sub_0200E3D8(void) {
    return 0x19;
}

void LoadUserFrameGfx1(BgConfig *bg_config, GFBgLayer layer, u16 baseTile, u8 palette_num, u8 frame, enum HeapID heapID) {
    BOOL isCompressed;
    u32 palMember;

    if (frame != 0) {
        isCompressed = TRUE;
    } else {
        isCompressed = FALSE;
    }
    GfGfxLoader_LoadCharData((NarcId)0x26, (s32)layer, bg_config, layer, baseTile, 0, isCompressed, heapID);

    if (frame == 2) {
        palMember = 0x2e;
    } else {
        palMember = 0x19;
    }

    if (layer < 4) {
        GfGfxLoader_GXLoadPal((NarcId)0x26, palMember, GF_PAL_LOCATION_MAIN_BG, (enum GFPalSlotOffset)(palette_num << 5), 0x20, heapID);
    } else {
        GfGfxLoader_GXLoadPal((NarcId)0x26, palMember, GF_PAL_LOCATION_SUB_BG, (enum GFPalSlotOffset)(palette_num << 5), 0x20, heapID);
    }
}

#ifdef NONMATCHING
static void sub_0200E448(BgConfig *bgConfig, u8 bgId, u16 baseTile, u8 x, u8 y, u8 width, u8 height, u8 palette) {
    u8 widthM1 = width - 1;
    u8 heightM1 = height - 1;
    // ... see asm for full logic
    (void)bgConfig;
    (void)bgId;
    (void)baseTile;
    (void)x;
    (void)y;
    (void)palette;
    (void)widthM1;
    (void)heightM1;
}
#else
asm static void sub_0200E448(BgConfig *bgConfig, u8 bgId, u16 baseTile, u8 x, u8 y, u8 width, u8 height, u8 palette) {
    // clang-format off
    push {r4, r5, r6, r7, lr}
    sub sp, #0x24
    str r1, [sp, #0x14]
    str r2, [sp, #0x18]
    str r3, [sp, #0x1c]
    ldr r2, [sp, #0x1c]
    ldr r5, [sp, #0x40]
    sub r7, r2, #1
    ldr r2, [sp, #0x18]
    str r0, [sp, #0x10]
    sub r6, r2, #1
    lsl r2, r7, #0x18
    lsr r2, r2, #0x18
    str r2, [sp]
    mov r2, #1
    str r2, [sp, #4]
    str r2, [sp, #8]
    lsl r3, r6, #0x18
    str r5, [sp, #0xc]
    add r2, sp, #0x28
    ldrh r2, [r2, #0x1c]
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    add r1, sp, #0x28
    ldrh r4, [r1, #0x1c]
    lsl r0, r7, #0x18
    lsr r0, r0, #0x18
    str r0, [sp]
    ldrb r0, [r1, #0x10]
    add r2, r4, #1
    lsl r2, r2, #0x10
    str r0, [sp, #4]
    mov r0, #1
    str r0, [sp, #8]
    str r5, [sp, #0xc]
    ldr r0, [sp, #0x10]
    ldr r1, [sp, #0x14]
    ldr r3, [sp, #0x18]
    lsr r2, r2, #0x10
    bl FillBgTilemapRect
    add r0, sp, #0x28
    ldrb r1, [r0, #0x10]
    ldr r0, [sp, #0x18]
    add r2, r4, #2
    add r0, r0, r1
    str r0, [sp, #0x20]
    lsl r0, r7, #0x18
    lsr r0, r0, #0x18
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    str r0, [sp, #8]
    ldr r3, [sp, #0x20]
    str r5, [sp, #0xc]
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    ldr r0, [sp, #0x10]
    ldr r1, [sp, #0x14]
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    ldr r0, [sp, #0x1c]
    add r2, r4, #3
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    add r0, sp, #0x28
    ldrb r0, [r0, #0x14]
    lsl r2, r2, #0x10
    lsl r3, r6, #0x18
    str r0, [sp, #8]
    str r5, [sp, #0xc]
    ldr r0, [sp, #0x10]
    ldr r1, [sp, #0x14]
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    ldr r0, [sp, #0x1c]
    ldr r3, [sp, #0x20]
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    add r0, sp, #0x28
    ldrb r0, [r0, #0x14]
    add r2, r4, #5
    lsl r2, r2, #0x10
    str r0, [sp, #8]
    str r5, [sp, #0xc]
    lsl r3, r3, #0x18
    ldr r0, [sp, #0x10]
    ldr r1, [sp, #0x14]
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    add r0, sp, #0x28
    ldrb r1, [r0, #0x14]
    ldr r0, [sp, #0x1c]
    add r2, r4, #6
    add r7, r0, r1
    lsl r0, r7, #0x18
    lsr r0, r0, #0x18
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    str r0, [sp, #8]
    str r5, [sp, #0xc]
    lsl r2, r2, #0x10
    lsl r3, r6, #0x18
    ldr r0, [sp, #0x10]
    ldr r1, [sp, #0x14]
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    lsl r0, r7, #0x18
    lsr r0, r0, #0x18
    str r0, [sp]
    add r0, sp, #0x28
    ldrb r0, [r0, #0x10]
    add r2, r4, #7
    lsl r2, r2, #0x10
    str r0, [sp, #4]
    mov r0, #1
    str r0, [sp, #8]
    str r5, [sp, #0xc]
    ldr r0, [sp, #0x10]
    ldr r1, [sp, #0x14]
    ldr r3, [sp, #0x18]
    lsr r2, r2, #0x10
    bl FillBgTilemapRect
    lsl r0, r7, #0x18
    lsr r0, r0, #0x18
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    str r0, [sp, #8]
    ldr r3, [sp, #0x20]
    str r5, [sp, #0xc]
    add r4, #8
    lsl r2, r4, #0x10
    lsl r3, r3, #0x18
    ldr r0, [sp, #0x10]
    ldr r1, [sp, #0x14]
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    add sp, #0x24
    pop {r4, r5, r6, r7, pc}
    // clang-format on
}
#endif

void DrawFrameAndWindow1(Window *window, BOOL dont_copy_to_vram, u16 baseTile, u8 palette_num) {
    u8 bgId;
    u8 wx;
    u8 wy;
    u8 wwidth;
    u8 wheight;

    bgId = GetWindowBgId(window);
    wx = GetWindowX(window);
    wy = GetWindowY(window);
    wwidth = GetWindowWidth(window);
    wheight = GetWindowHeight(window);
    sub_0200E448(window->bgConfig, bgId, baseTile, wx, wy, wwidth, wheight, palette_num);
    if (dont_copy_to_vram == FALSE) {
        CopyWindowToVram(window);
    }
}

void sub_0200E5D4(Window *window, BOOL dont_copy_to_vram) {
    u8 bgId;
    u8 wx;
    u8 wy;
    u8 wwidth;
    u8 wheight;

    bgId = GetWindowBgId(window);
    wx = GetWindowX(window);
    wy = GetWindowY(window);
    wwidth = GetWindowWidth(window);
    wheight = GetWindowHeight(window);
    FillBgTilemapRect(window->bgConfig, bgId, 0, wx - 1, wy - 1, wwidth + 2, wheight + 2, 0);
    if (dont_copy_to_vram == FALSE) {
        ClearWindowTilemapAndCopyToVram(window);
    }
}

u32 sub_0200E63C(u32 a0) {
    return a0 + 2;
}

u32 sub_0200E640(u32 a0) {
    return a0 + 0x1a;
}

void LoadUserFrameGfx2(BgConfig *bgConfig, GFBgLayer layer, u16 baseTile, u8 paletteNum, u8 frame, enum HeapID heapID) {
    u32 charStart;
    u32 palMember;

    charStart = sub_0200E63C(frame);
    GfGfxLoader_LoadCharData((NarcId)0x26, charStart, bgConfig, layer, baseTile, 0, FALSE, heapID);

    if (layer < 4) {
        palMember = sub_0200E640(frame);
        GfGfxLoader_GXLoadPal((NarcId)0x26, palMember, GF_PAL_LOCATION_MAIN_BG, (enum GFPalSlotOffset)(paletteNum << 5), 0x20, heapID);
    } else {
        palMember = sub_0200E640(frame);
        GfGfxLoader_GXLoadPal((NarcId)0x26, palMember, GF_PAL_LOCATION_SUB_BG, (enum GFPalSlotOffset)(paletteNum << 5), 0x20, heapID);
    }
}

#ifdef NONMATCHING
static void sub_0200E6B4(BgConfig *bgConfig, u8 bgId, u16 baseTile, u8 x, u8 y, u8 width, u8 height, u8 palette) {
    (void)bgConfig;
    (void)bgId;
    (void)baseTile;
    (void)x;
    (void)y;
    (void)width;
    (void)height;
    (void)palette;
}
#else
asm static void sub_0200E6B4(BgConfig *bgConfig, u8 bgId, u16 baseTile, u8 x, u8 y, u8 width, u8 height, u8 palette) {
    // clang-format off
    push {r3, r4, r5, r6, r7, lr}
    sub sp, #0x30
    str r1, [sp, #0x10]
    str r2, [sp, #0x14]
    str r3, [sp, #0x18]
    ldr r2, [sp, #0x4c]
    add r7, r0, #0
    str r2, [sp, #0x4c]
    ldr r2, [sp, #0x18]
    ldr r5, [sp, #0x50]
    sub r6, r2, #1
    ldr r2, [sp, #0x14]
    sub r2, r2, #2
    str r2, [sp, #0x28]
    lsl r2, r6, #0x18
    lsr r2, r2, #0x18
    str r2, [sp]
    mov r2, #1
    str r2, [sp, #4]
    str r2, [sp, #8]
    ldr r3, [sp, #0x28]
    str r5, [sp, #0xc]
    add r2, sp, #0x38
    lsl r3, r3, #0x18
    ldrh r2, [r2, #0x1c]
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    ldr r0, [sp, #0x14]
    sub r0, r0, #1
    str r0, [sp, #0x24]
    add r0, sp, #0x38
    ldrh r4, [r0, #0x1c]
    lsl r0, r6, #0x18
    lsr r0, r0, #0x18
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    str r0, [sp, #8]
    ldr r3, [sp, #0x24]
    str r5, [sp, #0xc]
    add r2, r4, #1
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    ldr r1, [sp, #0x10]
    add r0, r7, #0
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    lsl r0, r6, #0x18
    lsr r0, r0, #0x18
    str r0, [sp]
    add r0, sp, #0x38
    ldrb r0, [r0, #0x10]
    add r2, r4, #2
    lsl r2, r2, #0x10
    str r0, [sp, #4]
    mov r0, #1
    str r0, [sp, #8]
    str r5, [sp, #0xc]
    ldr r1, [sp, #0x10]
    ldr r3, [sp, #0x14]
    add r0, r7, #0
    lsr r2, r2, #0x10
    bl FillBgTilemapRect
    add r0, sp, #0x38
    ldrb r1, [r0, #0x10]
    ldr r0, [sp, #0x14]
    add r2, r4, #3
    add r0, r0, r1
    str r0, [sp, #0x2c]
    lsl r0, r6, #0x18
    lsr r0, r0, #0x18
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    str r0, [sp, #8]
    ldr r3, [sp, #0x2c]
    str r5, [sp, #0xc]
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    ldr r1, [sp, #0x10]
    add r0, r7, #0
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    ldr r0, [sp, #0x2c]
    add r2, r4, #4
    add r0, r0, #1
    str r0, [sp, #0x20]
    lsl r0, r6, #0x18
    lsr r0, r0, #0x18
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    str r0, [sp, #8]
    ldr r3, [sp, #0x20]
    str r5, [sp, #0xc]
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    ldr r1, [sp, #0x10]
    add r0, r7, #0
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    ldr r0, [sp, #0x2c]
    add r2, r4, #5
    add r0, r0, #2
    str r0, [sp, #0x1c]
    lsl r0, r6, #0x18
    lsr r0, r0, #0x18
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    str r0, [sp, #8]
    ldr r3, [sp, #0x1c]
    str r5, [sp, #0xc]
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    ldr r1, [sp, #0x10]
    add r0, r7, #0
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    ldr r0, [sp, #0x18]
    ldr r3, [sp, #0x28]
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    ldr r0, [sp, #0x4c]
    add r2, r4, #6
    str r0, [sp, #8]
    str r5, [sp, #0xc]
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    ldr r1, [sp, #0x10]
    add r0, r7, #0
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    ldr r0, [sp, #0x18]
    ldr r3, [sp, #0x24]
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    ldr r0, [sp, #0x4c]
    add r2, r4, #7
    str r0, [sp, #8]
    str r5, [sp, #0xc]
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    ldr r1, [sp, #0x10]
    add r0, r7, #0
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    ldr r0, [sp, #0x18]
    add r2, r4, #0
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    ldr r0, [sp, #0x4c]
    ldr r3, [sp, #0x2c]
    str r0, [sp, #8]
    str r5, [sp, #0xc]
    add r2, #9
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    ldr r1, [sp, #0x10]
    add r0, r7, #0
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    ldr r0, [sp, #0x18]
    add r2, r4, #0
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    ldr r0, [sp, #0x4c]
    ldr r3, [sp, #0x20]
    str r0, [sp, #8]
    str r5, [sp, #0xc]
    add r2, #0xa
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    ldr r1, [sp, #0x10]
    add r0, r7, #0
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    ldr r0, [sp, #0x18]
    add r2, r4, #0
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    ldr r0, [sp, #0x4c]
    ldr r3, [sp, #0x1c]
    str r0, [sp, #8]
    str r5, [sp, #0xc]
    add r2, #0xb
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    ldr r1, [sp, #0x10]
    add r0, r7, #0
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    add r2, r4, #0
    ldr r3, [sp, #0x28]
    add r2, #0xc
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    ldr r1, [sp, #0x18]
    ldr r0, [sp, #0x4c]
    lsr r2, r2, #0x10
    add r6, r1, r0
    lsl r0, r6, #0x18
    lsr r0, r0, #0x18
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    str r0, [sp, #8]
    str r5, [sp, #0xc]
    ldr r1, [sp, #0x10]
    add r0, r7, #0
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    lsl r0, r6, #0x18
    lsr r0, r0, #0x18
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    str r0, [sp, #8]
    add r2, r4, #0
    ldr r3, [sp, #0x24]
    str r5, [sp, #0xc]
    add r2, #0xd
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    ldr r1, [sp, #0x10]
    add r0, r7, #0
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    lsl r0, r6, #0x18
    lsr r0, r0, #0x18
    str r0, [sp]
    add r0, sp, #0x38
    ldrb r0, [r0, #0x10]
    add r2, r4, #0
    add r2, #0xe
    str r0, [sp, #4]
    mov r0, #1
    str r0, [sp, #8]
    str r5, [sp, #0xc]
    lsl r2, r2, #0x10
    ldr r1, [sp, #0x10]
    ldr r3, [sp, #0x14]
    add r0, r7, #0
    lsr r2, r2, #0x10
    bl FillBgTilemapRect
    lsl r0, r6, #0x18
    lsr r0, r0, #0x18
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    str r0, [sp, #8]
    add r2, r4, #0
    ldr r3, [sp, #0x2c]
    str r5, [sp, #0xc]
    add r2, #0xf
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    ldr r1, [sp, #0x10]
    add r0, r7, #0
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    lsl r0, r6, #0x18
    lsr r0, r0, #0x18
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    str r0, [sp, #8]
    add r2, r4, #0
    ldr r3, [sp, #0x20]
    str r5, [sp, #0xc]
    add r2, #0x10
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    ldr r1, [sp, #0x10]
    add r0, r7, #0
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    lsl r0, r6, #0x18
    lsr r0, r0, #0x18
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    str r0, [sp, #8]
    ldr r3, [sp, #0x1c]
    str r5, [sp, #0xc]
    add r4, #0x11
    lsl r2, r4, #0x10
    lsl r3, r3, #0x18
    ldr r1, [sp, #0x10]
    add r0, r7, #0
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    add sp, #0x30
    pop {r3, r4, r5, r6, r7, pc}
    // clang-format on
}
#endif

#ifdef NONMATCHING
void sub_0200E948(Window *window, u16 baseTile, u8 palette) {
    (void)window;
    (void)baseTile;
    (void)palette;
}
#else
asm void sub_0200E948(Window *window, u16 baseTile, u8 palette) {
    // clang-format off
    push {r4, r5, r6, r7, lr}
    sub sp, #0x1c
    add r5, r0, #0
    add r6, r1, #0
    add r7, r2, #0
    bl GetWindowBgId
    str r0, [sp, #0x10]
    add r0, r5, #0
    bl GetWindowX
    str r0, [sp, #0x14]
    add r0, r5, #0
    bl GetWindowY
    str r0, [sp, #0x18]
    add r0, r5, #0
    bl GetWindowWidth
    add r4, r0, #0
    add r0, r5, #0
    bl GetWindowHeight
    str r4, [sp]
    str r0, [sp, #4]
    lsl r0, r7, #0x18
    lsr r0, r0, #0x18
    str r0, [sp, #8]
    lsl r0, r6, #0x10
    lsr r0, r0, #0x10
    str r0, [sp, #0xc]
    ldr r0, [r5]
    ldr r1, [sp, #0x10]
    ldr r2, [sp, #0x14]
    ldr r3, [sp, #0x18]
    bl sub_0200E6B4
    add sp, #0x1c
    pop {r4, r5, r6, r7, pc}
    // clang-format on
}
#endif

void DrawFrameAndWindow2(Window *window, BOOL dont_copy_to_vram, u16 baseTile, u8 palette_num) {
    sub_0200E948(window, baseTile, palette_num);
    if (dont_copy_to_vram == FALSE) {
        CopyWindowToVram(window);
    }
    TextPrinter_SetDownArrowBaseTile(baseTile);
}

void ClearFrameAndWindow2(Window *window, BOOL dont_copy_to_vram) {
    u8 bgId;
    u8 wx;
    u8 wy;
    u8 wwidth;
    u8 wheight;

    bgId = GetWindowBgId(window);
    wx = GetWindowX(window);
    wy = GetWindowY(window);
    wwidth = GetWindowWidth(window);
    wheight = GetWindowHeight(window);
    FillBgTilemapRect(window->bgConfig, bgId, 0, wx - 2, wy - 1, wwidth + 5, wheight + 2, 0);
    if (dont_copy_to_vram == FALSE) {
        ClearWindowTilemapAndCopyToVram(window);
    }
}

#ifdef NONMATCHING
static void sub_0200EA24(const Bitmap *a0, Bitmap *a1, u16 a2, u16 a3, u16 a4, u16 a5, u16 a6, u16 a7, u16 colorKey) {
    BlitBitmapRect4Bit(a0, a1, a2, a3, a4, a5, a6, a7, colorKey);
}
#else
asm static void sub_0200EA24(const Bitmap *a0, Bitmap *a1, u16 a2, u16 a3, u16 a4, u16 a5, u16 a6, u16 a7, u16 colorKey) {
    // clang-format off
    push {r4, r5, lr}
    sub sp, #0x24
    add r5, r1, #0
    str r0, [sp, #0x1c]
    add r1, sp, #0x14
    strh r3, [r1, #0xc]
    add r4, r2, #0
    add r0, sp, #0x20
    ldrh r2, [r0, #0x10]
    add r3, r4, #0
    strh r2, [r1, #0xe]
    ldr r2, [sp, #0x34]
    str r2, [sp, #0x14]
    ldrh r2, [r0, #0x18]
    strh r2, [r1, #4]
    ldrh r2, [r0, #0x1c]
    strh r2, [r1, #6]
    ldrh r1, [r0, #0x20]
    add r2, r5, #0
    str r1, [sp]
    ldrh r1, [r0, #0x24]
    str r1, [sp, #4]
    ldrh r1, [r0, #0x28]
    str r1, [sp, #8]
    ldrh r0, [r0, #0x2c]
    add r1, sp, #0x14
    str r0, [sp, #0xc]
    mov r0, #0
    str r0, [sp, #0x10]
    add r0, sp, #0x1c
    bl BlitBitmapRect4Bit
    add sp, #0x24
    pop {r4, r5, pc}
    // clang-format on
}
#endif

#ifdef NONMATCHING
static void sub_0200EA68(Window *window, u8 bgId, u8 tileOffset, u8 numTiles, u8 unused) {
    (void)window;
    (void)bgId;
    (void)tileOffset;
    (void)numTiles;
    (void)unused;
}
#else
asm static void sub_0200EA68(Window *window, u8 bgId, u8 tileOffset, u8 numTiles, u8 unused) {
    // clang-format off
    push {r3, r4, r5, r6, r7, lr}
    sub sp, #0x48
    str r2, [sp, #0x24]
    str r3, [sp, #0x28]
    str r0, [sp, #0x20]
    ldr r0, [r0]
    add r7, r1, #0
    bl BgConfig_GetHeapId
    add r6, r0, #0
    ldr r0, [sp, #0x20]
    bl GetWindowBgId
    str r0, [sp, #0x2c]
    ldr r0, [sp, #0x28]
    lsl r0, r0, #7
    str r0, [sp, #0x30]
    ldr r1, [sp, #0x30]
    add r0, r6, #0
    bl Heap_Alloc
    add r5, r0, #0
    ldr r0, [sp, #0x2c]
    bl BgGetCharPtr
    add r4, r0, #0
    str r6, [sp]
    mov r0, #0x26
    add r1, r7, #0
    mov r2, #0
    add r3, sp, #0x44
    bl GfGfxLoader_GetCharData
    str r0, [sp, #0x34]
    ldr r0, [sp, #0x44]
    mov r7, #0
    ldr r0, [r0, #0x14]
    str r0, [sp, #0x38]
    ldr r0, [sp, #0x28]
    cmp r0, #0
    ble _0200EB12
    ldr r0, [sp, #0x24]
    add r0, #0xa
    lsl r0, r0, #5
    str r0, [sp, #0x3c]
    ldr r0, [sp, #0x24]
    add r0, #0xb
    lsl r0, r0, #5
    str r0, [sp, #0x40]
_0200EACA:
    ldr r1, [sp, #0x3c]
    lsl r6, r7, #7
    add r0, r5, r6
    add r1, r4, r1
    mov r2, #0x20
    bl memcpy
    add r0, r6, #0
    ldr r1, [sp, #0x40]
    add r0, #0x20
    add r0, r5, r0
    add r1, r4, r1
    mov r2, #0x20
    bl memcpy
    add r0, r6, #0
    ldr r1, [sp, #0x3c]
    add r0, #0x40
    add r0, r5, r0
    add r1, r4, r1
    mov r2, #0x20
    bl memcpy
    ldr r1, [sp, #0x40]
    add r6, #0x60
    add r0, r5, r6
    add r1, r4, r1
    mov r2, #0x20
    bl memcpy
    add r0, r7, #1
    lsl r0, r0, #0x18
    lsr r7, r0, #0x18
    ldr r0, [sp, #0x28]
    cmp r7, r0
    blt _0200EACA
_0200EB12:
    add r1, sp, #0x50
    ldrb r2, [r1, #0x14]
    mov r3, #0x10
    ldr r0, [sp, #0x28]
    sub r4, r3, r2
    mul r0, r4
    ldrb r1, [r1, #0x10]
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    sub r3, r3, r1
    lsl r3, r3, #0x18
    str r0, [sp]
    lsr r3, r3, #0x18
    str r5, [sp, #4]
    str r3, [sp, #8]
    str r0, [sp, #0xc]
    mov r4, #0
    str r4, [sp, #0x10]
    str r4, [sp, #0x14]
    str r3, [sp, #0x18]
    str r0, [sp, #0x1c]
    ldr r0, [sp, #0x38]
    bl sub_0200EA24
    ldr r0, [sp, #0x24]
    ldr r3, [sp, #0x30]
    add r0, #0x12
    str r0, [sp, #0x24]
    str r0, [sp]
    ldr r0, [sp, #0x20]
    ldr r1, [sp, #0x2c]
    ldr r0, [r0]
    add r2, r5, #0
    bl BG_LoadCharTilesData
    ldr r0, [sp, #0x34]
    bl Heap_Free
    add r0, r5, #0
    bl Heap_Free
    add sp, #0x48
    pop {r3, r4, r5, r6, r7, pc}
    // clang-format on
}
#endif

void sub_0200EB68(Window *window, int a1) {
    sub_0200EA68(window, 0x16, a1, 3, 0);
}

#ifdef NONMATCHING
void sub_0200EB80(BgConfig *bgConfig, u8 bgId, u8 tileOffset, u8 numTiles, enum HeapID heapID) {
    (void)bgConfig;
    (void)bgId;
    (void)tileOffset;
    (void)numTiles;
    (void)heapID;
}
#else
asm void sub_0200EB80(BgConfig *bgConfig, u8 bgId, u8 tileOffset, u8 numTiles, enum HeapID heapID) {
    // clang-format off
    push {r4, r5, r6, r7, lr}
    sub sp, #0x14
    str r0, [sp, #4]
    str r1, [sp, #8]
    add r0, sp, #0x18
    ldrb r0, [r0, #0x10]
    add r7, r2, #0
    add r5, r3, #0
    bl sub_0200E63C
    add r1, r0, #0
    ldr r0, [sp, #0x2c]
    mov r2, #0
    str r0, [sp]
    mov r0, #0x26
    add r3, sp, #0x10
    bl GfGfxLoader_GetCharData
    str r0, [sp, #0xc]
    mov r1, #9
    ldr r0, [sp, #0x2c]
    lsl r1, r1, #6
    bl Heap_Alloc
    ldr r1, [sp, #0x10]
    mov r2, #9
    ldr r1, [r1, #0x14]
    lsl r2, r2, #6
    add r4, r0, #0
    bl memcpy
    mov r0, #9
    mov r3, #0
    lsl r0, r0, #6
    mov r1, #0xf
_0200EBC6:
    ldrb r2, [r4, r3]
    lsl r6, r2, #0x14
    and r2, r1
    lsl r2, r2, #0x18
    lsr r6, r6, #0x18
    lsr r2, r2, #0x18
    cmp r6, #0
    bne _0200EBD8
    add r6, r5, #0
_0200EBD8:
    cmp r2, #0
    bne _0200EBDE
    add r2, r5, #0
_0200EBDE:
    lsl r6, r6, #4
    orr r2, r6
    strb r2, [r4, r3]
    add r3, r3, #1
    cmp r3, r0
    blo _0200EBC6
    str r7, [sp]
    mov r3, #9
    ldr r0, [sp, #4]
    ldr r1, [sp, #8]
    add r2, r4, #0
    lsl r3, r3, #6
    bl BG_LoadCharTilesData
    ldr r0, [sp, #0xc]
    bl Heap_Free
    add r0, r4, #0
    bl Heap_Free
    add sp, #0x14
    pop {r4, r5, r6, r7, pc}
    // clang-format on
}
#endif

#ifdef NONMATCHING
void sub_0200EC0C(BgConfig *bgConfig, u8 bgId, u8 tileOffset, u8 numTiles, enum HeapID heapID) {
    (void)bgConfig;
    (void)bgId;
    (void)tileOffset;
    (void)numTiles;
    (void)heapID;
}
#else
asm void sub_0200EC0C(BgConfig *bgConfig, u8 bgId, u8 tileOffset, u8 numTiles, enum HeapID heapID) {
    // clang-format off
    push {r4, r5, r6, r7, lr}
    sub sp, #0x1c
    str r0, [sp, #0x10]
    add r5, r2, #0
    mov r0, #0xf
    add r6, r1, #0
    add r7, r3, #0
    str r5, [sp]
    lsl r0, r0, #6
    str r0, [sp, #4]
    mov r1, #0
    ldr r4, [sp, #0x38]
    str r1, [sp, #8]
    ldr r2, [sp, #0x10]
    mov r0, #0x24
    add r3, r6, #0
    str r4, [sp, #0xc]
    bl GfGfxLoader_LoadCharData
    mov r0, #0x24
    mov r1, #1
    add r2, r4, #0
    bl AllocAndReadWholeNarcMemberByIdPair
    add r1, sp, #0x18
    str r0, [sp, #0x14]
    bl NNS_G2dGetUnpackedPaletteData
    add r2, sp, #0x20
    ldr r1, [sp, #0x18]
    ldrb r2, [r2, #0x10]
    lsl r3, r7, #0x15
    ldr r1, [r1, #0xc]
    lsl r2, r2, #5
    add r1, r1, r2
    add r0, r6, #0
    mov r2, #0x20
    lsr r3, r3, #0x10
    bl BG_LoadPlttData
    ldr r1, [sp, #0x14]
    add r0, r4, #0
    bl Heap_FreeExplicit
    add r0, sp, #0x20
    ldrb r3, [r0, #0x10]
    cmp r3, #1
    bhi _0200EC80
    ldrh r0, [r0, #0x14]
    add r5, #0x1e
    lsl r2, r5, #0x10
    str r0, [sp]
    ldr r0, [sp, #0x10]
    add r1, r6, #0
    lsr r2, r2, #0x10
    str r4, [sp, #4]
    bl sub_0200EC84
_0200EC80:
    add sp, #0x1c
    pop {r4, r5, r6, r7, pc}
    // clang-format on
}
#endif

#ifdef NONMATCHING
static void sub_0200EC84(BgConfig *bgConfig, u8 bgId, u16 charStart, u8 x, enum HeapID heapID) {
    (void)bgConfig;
    (void)bgId;
    (void)charStart;
    (void)x;
    (void)heapID;
}
#else
asm static void sub_0200EC84(BgConfig *bgConfig, u8 bgId, u16 charStart, u8 x, enum HeapID heapID) {
    // clang-format off
    push {r3, r4, r5, lr}
    sub sp, #0x10
    add r4, r1, #0
    add r5, r0, #0
    ldr r1, [sp, #0x20]
    cmp r3, #0
    bne _0200EC98
    add r1, #0x21
    lsl r0, r1, #0x10
    b _0200EC9C
_0200EC98:
    add r0, r1, #2
    lsl r0, r0, #0x10
_0200EC9C:
    lsr r1, r0, #0x10
    mov r0, #3
    str r2, [sp]
    lsl r0, r0, #8
    str r0, [sp, #4]
    mov r0, #0
    str r0, [sp, #8]
    ldr r0, [sp, #0x24]
    add r2, r5, #0
    str r0, [sp, #0xc]
    mov r0, #0x24
    add r3, r4, #0
    bl GfGfxLoader_LoadCharData
    add sp, #0x10
    pop {r3, r4, r5, pc}
    // clang-format on
}
#endif

#ifdef NONMATCHING
static void sub_0200ECBC(BgConfig *bgConfig, u8 bgId, u16 baseTile, u8 x, u8 y, u8 width, u8 height, u8 palette) {
    (void)bgConfig;
    (void)bgId;
    (void)baseTile;
    (void)x;
    (void)y;
    (void)width;
    (void)height;
    (void)palette;
}
#else
asm static void sub_0200ECBC(BgConfig *bgConfig, u8 bgId, u16 baseTile, u8 x, u8 y, u8 width, u8 height, u8 palette) {
    // clang-format off
    push {r3, r4, r5, r6, r7, lr}
    sub sp, #0x40
    str r1, [sp, #0x14]
    str r2, [sp, #0x18]
    str r3, [sp, #0x1c]
    ldr r2, [sp, #0x1c]
    ldr r6, [sp, #0x5c]
    sub r7, r2, #1
    ldr r2, [sp, #0x18]
    ldr r5, [sp, #0x60]
    str r2, [sp, #0x34]
    sub r2, #9
    str r2, [sp, #0x34]
    lsl r2, r7, #0x18
    lsr r2, r2, #0x18
    str r2, [sp]
    mov r2, #1
    str r2, [sp, #4]
    str r2, [sp, #8]
    ldr r3, [sp, #0x34]
    str r5, [sp, #0xc]
    add r2, sp, #0x48
    lsl r3, r3, #0x18
    ldrh r2, [r2, #0x1c]
    lsr r3, r3, #0x18
    str r0, [sp, #0x10]
    bl FillBgTilemapRect
    ldr r0, [sp, #0x18]
    str r0, [sp, #0x30]
    sub r0, #8
    str r0, [sp, #0x30]
    add r0, sp, #0x48
    ldrh r4, [r0, #0x1c]
    lsl r0, r7, #0x18
    lsr r0, r0, #0x18
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    str r0, [sp, #8]
    ldr r3, [sp, #0x30]
    str r5, [sp, #0xc]
    add r2, r4, #1
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    ldr r0, [sp, #0x10]
    ldr r1, [sp, #0x14]
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    add r0, sp, #0x48
    ldrb r0, [r0, #0x10]
    add r2, r4, #2
    lsl r2, r2, #0x10
    str r0, [sp, #0x3c]
    add r0, r0, #7
    str r0, [sp, #0x24]
    ldr r0, [sp, #0x18]
    lsr r2, r2, #0x10
    sub r0, r0, #7
    str r0, [sp, #0x20]
    lsl r0, r7, #0x18
    lsr r0, r0, #0x18
    str r0, [sp]
    ldr r0, [sp, #0x24]
    ldr r3, [sp, #0x20]
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    str r0, [sp, #4]
    mov r0, #1
    str r0, [sp, #8]
    str r5, [sp, #0xc]
    lsl r3, r3, #0x18
    ldr r0, [sp, #0x10]
    ldr r1, [sp, #0x14]
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    add r2, r4, #3
    lsl r2, r2, #0x10
    ldr r1, [sp, #0x18]
    ldr r0, [sp, #0x3c]
    lsr r2, r2, #0x10
    add r0, r1, r0
    str r0, [sp, #0x38]
    lsl r0, r7, #0x18
    lsr r0, r0, #0x18
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    str r0, [sp, #8]
    ldr r3, [sp, #0x38]
    str r5, [sp, #0xc]
    lsl r3, r3, #0x18
    ldr r0, [sp, #0x10]
    ldr r1, [sp, #0x14]
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    ldr r0, [sp, #0x38]
    add r2, r4, #4
    add r0, r0, #1
    str r0, [sp, #0x2c]
    lsl r0, r7, #0x18
    lsr r0, r0, #0x18
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    str r0, [sp, #8]
    ldr r3, [sp, #0x2c]
    str r5, [sp, #0xc]
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    ldr r0, [sp, #0x10]
    ldr r1, [sp, #0x14]
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    ldr r0, [sp, #0x38]
    add r0, r0, #2
    str r0, [sp, #0x28]
    lsl r0, r7, #0x18
    lsr r0, r0, #0x18
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    str r0, [sp, #8]
    ldr r3, [sp, #0x28]
    str r5, [sp, #0xc]
    add r2, r4, #5
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    ldr r0, [sp, #0x10]
    ldr r1, [sp, #0x14]
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    ldr r0, [sp, #0x1c]
    ldr r3, [sp, #0x34]
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    str r6, [sp, #8]
    str r5, [sp, #0xc]
    add r2, r4, #6
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    ldr r0, [sp, #0x10]
    ldr r1, [sp, #0x14]
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    ldr r0, [sp, #0x1c]
    ldr r3, [sp, #0x30]
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    str r6, [sp, #8]
    str r5, [sp, #0xc]
    add r2, r4, #7
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    ldr r0, [sp, #0x10]
    ldr r1, [sp, #0x14]
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    ldr r0, [sp, #0x1c]
    add r2, r4, #0
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    str r6, [sp, #8]
    str r5, [sp, #0xc]
    ldr r3, [sp, #0x18]
    add r2, #8
    sub r3, r3, #1
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    ldr r0, [sp, #0x10]
    ldr r1, [sp, #0x14]
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    ldr r0, [sp, #0x1c]
    add r2, r4, #0
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    str r6, [sp, #8]
    ldr r3, [sp, #0x38]
    str r5, [sp, #0xc]
    add r2, #9
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    ldr r0, [sp, #0x10]
    ldr r1, [sp, #0x14]
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    ldr r0, [sp, #0x1c]
    add r2, r4, #0
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    str r6, [sp, #8]
    ldr r3, [sp, #0x2c]
    str r5, [sp, #0xc]
    add r2, #0xa
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    ldr r0, [sp, #0x10]
    ldr r1, [sp, #0x14]
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    ldr r0, [sp, #0x1c]
    add r2, r4, #0
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    str r6, [sp, #8]
    ldr r3, [sp, #0x28]
    str r5, [sp, #0xc]
    add r2, #0xb
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    ldr r0, [sp, #0x10]
    ldr r1, [sp, #0x14]
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    ldr r0, [sp, #0x1c]
    add r2, r4, #0
    add r6, r0, r6
    lsl r0, r6, #0x18
    lsr r0, r0, #0x18
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    str r0, [sp, #8]
    ldr r3, [sp, #0x34]
    str r5, [sp, #0xc]
    add r2, #0xc
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    ldr r0, [sp, #0x10]
    ldr r1, [sp, #0x14]
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    lsl r0, r6, #0x18
    lsr r0, r0, #0x18
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    str r0, [sp, #8]
    add r2, r4, #0
    ldr r3, [sp, #0x30]
    str r5, [sp, #0xc]
    add r2, #0xd
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    ldr r0, [sp, #0x10]
    ldr r1, [sp, #0x14]
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    lsl r0, r6, #0x18
    lsr r0, r0, #0x18
    str r0, [sp]
    ldr r0, [sp, #0x24]
    add r2, r4, #0
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    str r0, [sp, #4]
    mov r0, #1
    str r0, [sp, #8]
    ldr r3, [sp, #0x20]
    str r5, [sp, #0xc]
    add r2, #0xe
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    ldr r0, [sp, #0x10]
    ldr r1, [sp, #0x14]
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    lsl r0, r6, #0x18
    lsr r0, r0, #0x18
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    str r0, [sp, #8]
    add r2, r4, #0
    ldr r3, [sp, #0x38]
    str r5, [sp, #0xc]
    add r2, #0xf
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    ldr r0, [sp, #0x10]
    ldr r1, [sp, #0x14]
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    lsl r0, r6, #0x18
    lsr r0, r0, #0x18
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    str r0, [sp, #8]
    add r2, r4, #0
    ldr r3, [sp, #0x2c]
    str r5, [sp, #0xc]
    add r2, #0x10
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    ldr r0, [sp, #0x10]
    ldr r1, [sp, #0x14]
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    lsl r0, r6, #0x18
    lsr r0, r0, #0x18
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    str r0, [sp, #8]
    ldr r3, [sp, #0x28]
    str r5, [sp, #0xc]
    add r4, #0x11
    lsl r2, r4, #0x10
    lsl r3, r3, #0x18
    ldr r0, [sp, #0x10]
    ldr r1, [sp, #0x14]
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    add sp, #0x40
    pop {r3, r4, r5, r6, r7, pc}
    // clang-format on
}
#endif

#ifdef NONMATCHING
static void sub_0200EF84(Window *window, u16 baseTile, enum HeapID heapID) {
    (void)window;
    (void)baseTile;
    (void)heapID;
}
#else
asm static void sub_0200EF84(Window *window, u16 baseTile, enum HeapID heapID) {
    // clang-format off
    push {r3, r4, r5, r6, r7, lr}
    sub sp, #0x28
    str r1, [sp, #0x10]
    add r7, r0, #0
    str r2, [sp, #0x14]
    bl GetWindowBgId
    str r0, [sp, #0x20]
    add r0, r7, #0
    bl GetWindowX
    sub r0, r0, #7
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    str r0, [sp, #0x18]
    add r0, r7, #0
    bl GetWindowY
    str r0, [sp, #0x1c]
    mov r0, #0
    str r0, [sp, #0x24]
_0200EFAE:
    ldr r2, [sp, #0x24]
    ldr r1, [sp, #0x1c]
    ldr r0, [sp, #0x24]
    add r3, r2, #0
    add r0, r1, r0
    mov r1, #6
    mul r3, r1
    ldr r1, [sp, #0x10]
    lsl r0, r0, #0x18
    mov r4, #0
    add r5, r1, r3
    lsr r6, r0, #0x18
_0200EFC6:
    str r6, [sp]
    mov r0, #1
    str r0, [sp, #4]
    str r0, [sp, #8]
    ldr r0, [sp, #0x14]
    ldr r3, [sp, #0x18]
    str r0, [sp, #0xc]
    add r2, r4, r5
    add r3, r3, r4
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    ldr r0, [r7]
    ldr r1, [sp, #0x20]
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    add r0, r4, #1
    lsl r0, r0, #0x10
    lsr r4, r0, #0x10
    cmp r4, #6
    blo _0200EFC6
    ldr r0, [sp, #0x24]
    add r0, r0, #1
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    str r0, [sp, #0x24]
    cmp r0, #4
    blo _0200EFAE
    add sp, #0x28
    pop {r3, r4, r5, r6, r7, pc}
    // clang-format on
}
#endif

#ifdef NONMATCHING
void DrawFrameAndWindow3(Window *window, BOOL dont_copy_to_vram, u16 baseTile, u8 palette_num) {
    (void)window;
    (void)dont_copy_to_vram;
    (void)baseTile;
    (void)palette_num;
}
#else
asm void DrawFrameAndWindow3(Window *window, BOOL dont_copy_to_vram, u16 baseTile, u8 palette_num) {
    // clang-format off
    push {r3, r4, r5, r6, r7, lr}
    sub sp, #0x28
    add r4, r0, #0
    str r1, [sp, #0x10]
    add r6, r2, #0
    add r7, r3, #0
    bl GetWindowBgId
    str r0, [sp, #0x14]
    add r0, sp, #0x30
    ldrb r0, [r0, #0x10]
    cmp r0, #1
    bhi _0200F062
    add r0, r4, #0
    bl GetWindowX
    str r0, [sp, #0x18]
    add r0, r4, #0
    bl GetWindowY
    str r0, [sp, #0x1c]
    add r0, r4, #0
    bl GetWindowWidth
    add r5, r0, #0
    add r0, r4, #0
    bl GetWindowHeight
    str r5, [sp]
    str r0, [sp, #4]
    str r7, [sp, #8]
    str r6, [sp, #0xc]
    ldr r0, [r4]
    ldr r1, [sp, #0x14]
    ldr r2, [sp, #0x18]
    ldr r3, [sp, #0x1c]
    bl sub_0200ECBC
    add r1, r6, #0
    add r1, #0x1e
    lsl r1, r1, #0x10
    add r0, r4, #0
    lsr r1, r1, #0x10
    add r2, r7, #0
    bl sub_0200EF84
    b _0200F094
_0200F062:
    add r0, r4, #0
    bl GetWindowX
    str r0, [sp, #0x20]
    add r0, r4, #0
    bl GetWindowY
    str r0, [sp, #0x24]
    add r0, r4, #0
    bl GetWindowWidth
    add r5, r0, #0
    add r0, r4, #0
    bl GetWindowHeight
    str r5, [sp]
    str r0, [sp, #4]
    str r7, [sp, #8]
    str r6, [sp, #0xc]
    ldr r0, [r4]
    ldr r1, [sp, #0x14]
    ldr r2, [sp, #0x20]
    ldr r3, [sp, #0x24]
    bl sub_0200E6B4
_0200F094:
    ldr r0, [sp, #0x10]
    cmp r0, #0
    bne _0200F0A0
    add r0, r4, #0
    bl CopyWindowToVram
_0200F0A0:
    add r0, r6, #0
    bl TextPrinter_SetDownArrowBaseTile
    add sp, #0x28
    pop {r3, r4, r5, r6, r7, pc}
    // clang-format on
}
#endif

#ifdef NONMATCHING
WaitingIcon *WaitingIcon_New(Window *window, u16 tileNum) {
    (void)window;
    (void)tileNum;
    return NULL;
}
#else
asm WaitingIcon *WaitingIcon_New(Window *window, u16 tileNum) {
    // clang-format off
    push {r4, r5, r6, r7, lr}
    sub sp, #0x34
    str r0, [sp, #0x20]
    ldr r0, [r0]
    str r1, [sp, #0x24]
    bl BgConfig_GetHeapId
    str r0, [sp, #0x28]
    ldr r0, [sp, #0x20]
    bl GetWindowBgId
    bl BgGetCharPtr
    add r5, r0, #0
    ldr r0, [sp, #0x28]
    ldr r1, =0x0000048C
    bl Heap_Alloc
    ldr r1, [sp, #0x24]
    add r4, r0, #0
    ldr r0, =0x00000404
    add r1, #0x12
    lsl r1, r1, #5
    add r0, r4, r0
    add r1, r5, r1
    mov r2, #0x80
    bl memcpy
    ldr r0, [sp, #0x28]
    mov r1, #0x80
    bl Heap_Alloc
    ldr r1, [sp, #0x24]
    mov r2, #0x20
    add r1, #0xa
    lsl r1, r1, #5
    str r1, [sp, #0x2c]
    add r1, r5, r1
    add r6, r0, #0
    bl memcpy
    ldr r0, [sp, #0x24]
    mov r2, #0x20
    add r0, #0xb
    lsl r7, r0, #5
    add r0, r6, #0
    add r0, #0x20
    add r1, r5, r7
    bl memcpy
    ldr r1, [sp, #0x2c]
    add r0, r6, #0
    add r0, #0x40
    add r1, r5, r1
    mov r2, #0x20
    bl memcpy
    add r0, r6, #0
    add r0, #0x60
    add r1, r5, r7
    mov r2, #0x20
    bl memcpy
    mov r5, #0
    add r7, r4, #4
_0200F12E:
    lsl r0, r5, #7
    add r0, r7, r0
    add r1, r6, #0
    mov r2, #0x80
    bl memcpy
    add r0, r5, #1
    lsl r0, r0, #0x18
    lsr r5, r0, #0x18
    cmp r5, #8
    blo _0200F12E
    add r0, r6, #0
    bl Heap_Free
    ldr r0, [sp, #0x28]
    mov r1, #0x17
    str r0, [sp]
    mov r0, #0x26
    mov r2, #0
    add r3, sp, #0x30
    bl GfGfxLoader_GetCharData
    mov r2, #0x80
    add r5, r0, #0
    str r2, [sp]
    add r0, r4, #4
    str r0, [sp, #4]
    mov r3, #0x10
    str r3, [sp, #8]
    str r2, [sp, #0xc]
    mov r1, #0
    str r1, [sp, #0x10]
    str r1, [sp, #0x14]
    str r3, [sp, #0x18]
    str r2, [sp, #0x1c]
    ldr r0, [sp, #0x30]
    add r2, r1, #0
    ldr r0, [r0, #0x14]
    bl sub_0200EA24
    add r0, r5, #0
    bl Heap_Free
    ldr r0, [sp, #0x20]
    ldr r1, =0x00000484
    str r0, [r4]
    ldr r0, [sp, #0x24]
    mov r2, #0
    strh r0, [r4, r1]
    add r0, r1, #2
    strb r2, [r4, r0]
    add r0, r1, #3
    ldrb r3, [r4, r0]
    mov r0, #0x7f
    bic r3, r0
    add r0, r1, #3
    strb r3, [r4, r0]
    add r0, r1, #4
    ldrb r3, [r4, r0]
    mov r0, #3
    bic r3, r0
    add r0, r1, #4
    strb r3, [r4, r0]
    ldr r0, =sub_0200F3D0
    add r1, r4, #0
    bl SysTask_CreateOnVBlankQueue
    add r0, r4, #0
    mov r1, #1
    bl sub_0200F1D4
    add r0, r4, #0
    add sp, #0x34
    pop {r4, r5, r6, r7, pc}
    nop
    // clang-format on
}
#endif

#ifdef NONMATCHING
static void sub_0200F1D4(WaitingIcon *icon, int mode) {
    (void)icon;
    (void)mode;
}
#else
asm static void sub_0200F1D4(WaitingIcon *icon, int mode) {
    // clang-format off
    push {r4, r5, r6, r7, lr}
    sub sp, #0x24
    add r5, r0, #0
    ldr r0, [r5]
    add r6, r1, #0
    bl GetWindowBgId
    add r4, r0, #0
    ldr r0, [r5]
    bl GetWindowX
    str r0, [sp, #0x18]
    ldr r0, [r5]
    bl GetWindowY
    str r0, [sp, #0x1c]
    ldr r0, [r5]
    bl GetWindowWidth
    str r0, [sp, #0x20]
    cmp r6, #2
    bne _0200F2DE
    ldr r2, =0x00000484
    add r1, r4, #0
    ldrh r0, [r5, r2]
    sub r2, #0x80
    add r2, r5, r2
    add r0, #0x12
    str r0, [sp]
    ldr r0, [r5]
    mov r3, #0x80
    ldr r0, [r0]
    bl BG_LoadCharTilesData
    ldr r0, [sp, #0x1c]
    ldr r1, [sp, #0x18]
    add r7, r0, #2
    ldr r0, [sp, #0x20]
    ldr r2, =0x00000484
    add r6, r1, r0
    add r0, r6, #1
    str r0, [sp, #0x14]
    lsl r0, r7, #0x18
    lsr r0, r0, #0x18
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    str r0, [sp, #8]
    mov r0, #0x10
    str r0, [sp, #0xc]
    ldrh r2, [r5, r2]
    ldr r0, [r5]
    ldr r3, [sp, #0x14]
    add r2, #0xa
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    ldr r0, [r0]
    add r1, r4, #0
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    lsl r0, r7, #0x18
    lsr r0, r0, #0x18
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    str r0, [sp, #8]
    mov r0, #0x10
    str r0, [sp, #0xc]
    ldr r2, =0x00000484
    ldr r0, [r5]
    ldrh r2, [r5, r2]
    add r6, r6, #2
    lsl r3, r6, #0x18
    add r2, #0xb
    lsl r2, r2, #0x10
    ldr r0, [r0]
    add r1, r4, #0
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    ldr r0, [sp, #0x1c]
    ldr r3, [sp, #0x14]
    add r7, r0, #3
    lsl r0, r7, #0x18
    lsr r0, r0, #0x18
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    str r0, [sp, #8]
    mov r0, #0x10
    str r0, [sp, #0xc]
    ldr r2, =0x00000484
    ldr r0, [r5]
    ldrh r2, [r5, r2]
    lsl r3, r3, #0x18
    ldr r0, [r0]
    add r2, #0xa
    lsl r2, r2, #0x10
    add r1, r4, #0
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    lsl r0, r7, #0x18
    lsr r0, r0, #0x18
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    str r0, [sp, #8]
    mov r0, #0x10
    str r0, [sp, #0xc]
    ldr r2, =0x00000484
    ldr r0, [r5]
    ldrh r2, [r5, r2]
    lsl r3, r6, #0x18
    ldr r0, [r0]
    add r2, #0xb
    lsl r2, r2, #0x10
    add r1, r4, #0
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    ldr r0, [r5]
    add r1, r4, #0
    ldr r0, [r0]
    bl BgCommitTilemapBufferToVram
    add sp, #0x24
    pop {r4, r5, r6, r7, pc}
_0200F2DE:
    ldr r3, =0x00000484
    add r2, r5, #4
    ldrh r0, [r5, r3]
    add r3, r3, #3
    add r1, r4, #0
    add r0, #0x12
    str r0, [sp]
    ldrb r3, [r5, r3]
    ldr r0, [r5]
    lsl r3, r3, #0x19
    lsr r3, r3, #0x19
    lsl r3, r3, #7
    add r2, r2, r3
    ldr r0, [r0]
    mov r3, #0x80
    bl BG_LoadCharTilesData
    cmp r6, #0
    beq _0200F3C6
    ldr r0, [sp, #0x1c]
    ldr r1, [sp, #0x18]
    add r7, r0, #2
    ldr r0, [sp, #0x20]
    ldr r2, =0x00000484
    add r6, r1, r0
    add r0, r6, #1
    str r0, [sp, #0x10]
    lsl r0, r7, #0x18
    lsr r0, r0, #0x18
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    str r0, [sp, #8]
    mov r0, #0x10
    str r0, [sp, #0xc]
    ldrh r2, [r5, r2]
    ldr r0, [r5]
    ldr r3, [sp, #0x10]
    add r2, #0x12
    lsl r2, r2, #0x10
    lsl r3, r3, #0x18
    ldr r0, [r0]
    add r1, r4, #0
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    lsl r0, r7, #0x18
    lsr r0, r0, #0x18
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    str r0, [sp, #8]
    mov r0, #0x10
    str r0, [sp, #0xc]
    ldr r2, =0x00000484
    ldr r0, [r5]
    ldrh r2, [r5, r2]
    add r6, r6, #2
    lsl r3, r6, #0x18
    add r2, #0x13
    lsl r2, r2, #0x10
    ldr r0, [r0]
    add r1, r4, #0
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    ldr r0, [sp, #0x1c]
    ldr r3, [sp, #0x10]
    add r7, r0, #3
    lsl r0, r7, #0x18
    lsr r0, r0, #0x18
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    str r0, [sp, #8]
    mov r0, #0x10
    str r0, [sp, #0xc]
    ldr r2, =0x00000484
    ldr r0, [r5]
    ldrh r2, [r5, r2]
    lsl r3, r3, #0x18
    ldr r0, [r0]
    add r2, #0x14
    lsl r2, r2, #0x10
    add r1, r4, #0
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    lsl r0, r7, #0x18
    lsr r0, r0, #0x18
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    str r0, [sp, #8]
    mov r0, #0x10
    str r0, [sp, #0xc]
    ldr r2, =0x00000484
    ldr r0, [r5]
    ldrh r2, [r5, r2]
    lsl r3, r6, #0x18
    ldr r0, [r0]
    add r2, #0x15
    lsl r2, r2, #0x10
    add r1, r4, #0
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    ldr r0, [r5]
    add r1, r4, #0
    ldr r0, [r0]
    bl BgCommitTilemapBufferToVram
_0200F3C6:
    add sp, #0x24
    pop {r4, r5, r6, r7, pc}
    nop
    // clang-format on
}
#endif

#ifdef NONMATCHING
static void sub_0200F3D0(SysTask *task, void *data) {
    (void)task;
    (void)data;
}
#else
asm static void sub_0200F3D0(SysTask *task, void *data) {
    // clang-format off
    push {r3, r4, r5, lr}
    add r4, r0, #0
    ldr r0, =0x00000488
    ldrb r2, [r1, r0]
    lsl r2, r2, #0x1e
    lsr r2, r2, #0x1e
    beq _0200F3F2
    cmp r2, #1
    bne _0200F3EA
    add r0, r1, #0
    mov r1, #2
    bl sub_0200F1D4
_0200F3EA:
    add r0, r4, #0
    bl SysTask_Destroy
    pop {r3, r4, r5, pc}
_0200F3F2:
    sub r2, r0, #2
    ldrb r2, [r1, r2]
    add r3, r2, #1
    sub r2, r0, #2
    strb r3, [r1, r2]
    ldrb r2, [r1, r2]
    cmp r2, #0x10
    bne _0200F434
    mov r3, #0
    sub r2, r0, #2
    strb r3, [r1, r2]
    sub r2, r0, #1
    ldrb r2, [r1, r2]
    mov r4, #0x7f
    bic r2, r4
    sub r4, r0, #1
    ldrb r4, [r1, r4]
    sub r0, r0, #1
    lsl r4, r4, #0x19
    lsr r4, r4, #0x19
    add r5, r4, #1
    mov r4, #7
    and r4, r5
    lsl r4, r4, #0x18
    lsr r5, r4, #0x18
    mov r4, #0x7f
    and r4, r5
    orr r2, r4
    strb r2, [r1, r0]
    add r0, r1, #0
    add r1, r3, #0
    bl sub_0200F1D4
_0200F434:
    pop {r3, r4, r5, pc}
    nop
    // clang-format on
}
#endif

#ifdef NONMATCHING
static void sub_0200F43C(SysTask *task, WaitingIcon *icon) {
    Heap_Free(icon);
    SysTask_Destroy(task);
}
#else
asm static void sub_0200F43C(SysTask *task, WaitingIcon *icon) {
    // clang-format off
    push {r4, lr}
    add r4, r0, #0
    add r0, r1, #0
    bl Heap_Free
    add r0, r4, #0
    bl SysTask_Destroy
    pop {r4, pc}
    // clang-format on
}
#endif

#ifdef NONMATCHING
void sub_0200F450(WaitingIcon *waitingIcon) {
    (void)waitingIcon;
}
#else
asm void sub_0200F450(WaitingIcon *waitingIcon) {
    // clang-format off
    push {r4, lr}
    add r4, r0, #0
    ldr r0, =sub_0200F43C
    add r1, r4, #0
    mov r2, #0
    bl SysTask_CreateOnVWaitQueue
    ldr r1, =0x00000488
    mov r0, #3
    ldrb r2, [r4, r1]
    bic r2, r0
    mov r0, #1
    orr r0, r2
    strb r0, [r4, r1]
    pop {r4, pc}
    nop
    // clang-format on
}
#endif

void sub_0200F478(WaitingIcon *waitingIcon);

#ifdef NONMATCHING
void sub_0200F478(WaitingIcon *waitingIcon) {
    (void)waitingIcon;
}
#else
asm void sub_0200F478(WaitingIcon *waitingIcon) {
    // clang-format off
    push {r4, lr}
    add r4, r0, #0
    ldr r0, =sub_0200F43C
    add r1, r4, #0
    mov r2, #0
    bl SysTask_CreateOnVWaitQueue
    ldr r1, =0x00000488
    mov r0, #3
    ldrb r2, [r4, r1]
    bic r2, r0
    mov r0, #2
    orr r0, r2
    strb r0, [r4, r1]
    pop {r4, pc}
    nop
    // clang-format on
}
#endif

#ifdef NONMATCHING
struct PokepicManager *DrawPokemonPicFromSpecies(BgConfig *bgConfig, GFBgLayer layer, int x, int y, u8 paletteNum, u16 baseTile, u16 species, u8 gender, enum HeapID heapID) {
    (void)bgConfig;
    (void)layer;
    (void)x;
    (void)y;
    (void)paletteNum;
    (void)baseTile;
    (void)species;
    (void)gender;
    (void)heapID;
    return NULL;
}
#else
asm struct PokepicManager *DrawPokemonPicFromSpecies(BgConfig *bgConfig, GFBgLayer layer, int x, int y, u8 paletteNum, u16 baseTile, u16 species, u8 gender, enum HeapID heapID) {
    // clang-format off
    push {r4, r5, r6, r7, lr}
    sub sp, #0xc
    str r2, [sp, #4]
    ldr r5, [sp, #0x30]
    str r3, [sp, #8]
    add r6, r0, #0
    add r7, r1, #0
    str r5, [sp]
    bl sub_0200F5C4
    add r4, r0, #0
    add r1, r5, #0
    bl sub_0200F600
    add r0, r4, #0
    bl sub_0200F62C
    ldr r1, [sp, #4]
    ldr r2, [sp, #8]
    add r0, r4, #0
    bl sub_0200F684
    add r2, sp, #0x10
    ldrh r1, [r2, #0x18]
    ldrb r2, [r2, #0x1c]
    add r0, r4, #0
    bl sub_0200F6D4
    add r2, sp, #0x10
    ldrb r1, [r2, #0x10]
    ldrh r2, [r2, #0x14]
    add r0, r4, #0
    bl sub_0200F82C
    add r0, r6, #0
    add r1, r7, #0
    bl BgCommitTilemapBufferToVram
    ldr r0, =0x0000016F
    add r0, r4, r0
    add sp, #0xc
    pop {r4, r5, r6, r7, pc}
    // clang-format on
}
#endif

#ifdef NONMATCHING
struct PokepicManager *DrawPokemonPicFromMon(BgConfig *bgConfig, GFBgLayer layer, int x, int y, u8 paletteNum, u16 baseTile, Pokemon *mon, enum HeapID heapID) {
    (void)bgConfig;
    (void)layer;
    (void)x;
    (void)y;
    (void)paletteNum;
    (void)baseTile;
    (void)mon;
    (void)heapID;
    return NULL;
}
#else
asm struct PokepicManager *DrawPokemonPicFromMon(BgConfig *bgConfig, GFBgLayer layer, int x, int y, u8 paletteNum, u16 baseTile, Pokemon *mon, enum HeapID heapID) {
    // clang-format off
    push {r4, r5, r6, r7, lr}
    sub sp, #0xc
    str r2, [sp, #4]
    ldr r5, [sp, #0x2c]
    str r3, [sp, #8]
    add r6, r0, #0
    add r7, r1, #0
    str r5, [sp]
    bl sub_0200F5C4
    add r4, r0, #0
    add r1, r5, #0
    bl sub_0200F600
    add r0, r4, #0
    bl sub_0200F62C
    ldr r1, [sp, #4]
    ldr r2, [sp, #8]
    add r0, r4, #0
    bl sub_0200F684
    ldr r1, [sp, #0x28]
    add r0, r4, #0
    bl sub_0200F714
    add r2, sp, #0x10
    ldrb r1, [r2, #0x10]
    ldrh r2, [r2, #0x14]
    add r0, r4, #0
    bl sub_0200F82C
    add r0, r6, #0
    add r1, r7, #0
    bl BgCommitTilemapBufferToVram
    ldr r0, =0x0000016F
    add r0, r4, r0
    add sp, #0xc
    pop {r4, r5, r6, r7, pc}
    // clang-format on
}
#endif

#ifdef NONMATCHING
static void sub_0200F54C(SysTask *task, void *data) {
    (void)task;
    (void)data;
}
#else
asm static void sub_0200F54C(SysTask *task, void *data) {
    // clang-format off
    push {r3, r4, r5, lr}
    add r5, r0, #0
    ldr r0, =0x0000016F
    add r4, r1, #0
    ldrb r1, [r4, r0]
    cmp r1, #1
    beq _0200F564
    cmp r1, #2
    beq _0200F582
    cmp r1, #3
    beq _0200F594
    b _0200F5A8
_0200F564:
    add r0, r4, #0
    bl sub_0200F9DC
    mov r0, #0x59
    lsl r0, r0, #2
    ldr r0, [r4, r0]
    bl Sprite_DeleteAndFreeResources
    add r0, r4, #0
    bl ov01_021E86F4
    add r0, r5, #0
    bl DestroySysTaskAndEnvironment
    pop {r3, r4, r5, pc}
_0200F582:
    mov r1, #3
    strb r1, [r4, r0]
    sub r0, #0xb
    ldr r0, [r4, r0]
    mov r1, #1
    ldr r0, [r0]
    bl Sprite_SetAnimCtrlSeq
    b _0200F5A8
_0200F594:
    sub r0, #0xb
    ldr r0, [r4, r0]
    ldr r0, [r0]
    bl Sprite_GetAnimationFrame
    cmp r0, #6
    bne _0200F5A8
    ldr r0, =0x0000016F
    mov r1, #0
    strb r1, [r4, r0]
_0200F5A8:
    mov r0, #0x59
    lsl r0, r0, #2
    ldr r0, [r4, r0]
    mov r1, #1
    ldr r0, [r0]
    lsl r1, r1, #0xc
    bl Sprite_UpdateAnim
    ldr r0, [r4]
    bl SpriteList_RenderAndAnimateSprites
    pop {r3, r4, r5, pc}
    // clang-format on
}
#endif

#ifdef NONMATCHING
static WaitingIcon *sub_0200F5C4(BgConfig *bgConfig, u8 bgId, u8 paletteNum, u8 tileOffset, enum HeapID heapID) {
    (void)bgConfig;
    (void)bgId;
    (void)paletteNum;
    (void)tileOffset;
    (void)heapID;
    return NULL;
}
#else
asm static WaitingIcon *sub_0200F5C4(BgConfig *bgConfig, u8 bgId, u8 paletteNum, u8 tileOffset, enum HeapID heapID) {
    // clang-format off
    push {r3, r4, r5, r6, r7, lr}
    add r5, r0, #0
    add r4, r1, #0
    add r7, r3, #0
    mov r1, #0x17
    add r6, r2, #0
    ldr r0, =sub_0200F54C
    ldr r3, [sp, #0x18]
    lsl r1, r1, #4
    mov r2, #0
    bl CreateSysTaskAndEnvironment
    bl SysTask_GetData
    ldr r1, =0x0000016F
    mov r2, #0
    strb r2, [r0, r1]
    sub r2, r1, #7
    str r5, [r0, r2]
    sub r2, r1, #3
    strb r4, [r0, r2]
    sub r2, r1, #2
    strb r6, [r0, r2]
    sub r1, r1, #1
    strb r7, [r0, r1]
    pop {r3, r4, r5, r6, r7, pc}
    // clang-format on
}
#endif

#ifdef NONMATCHING
static void sub_0200F600(UnkStruct_ov01_021E7FDC *spriteEnv, void *spriteResHdrList) {
    (void)spriteEnv;
    (void)spriteResHdrList;
}
#else
asm static void sub_0200F600(UnkStruct_ov01_021E7FDC *spriteEnv, void *spriteResHdrList) {
    // clang-format off
    push {r4, r5, r6, lr}
    sub sp, #0x18
    ldr r5, =_020F5C60
    add r4, sp, #0
    add r6, r0, #0
    add r3, r1, #0
    add r2, r4, #0
    ldmia r5!, {r0, r1}
    stmia r4!, {r0, r1}
    ldmia r5!, {r0, r1}
    stmia r4!, {r0, r1}
    ldmia r5!, {r0, r1}
    stmia r4!, {r0, r1}
    add r1, r2, #0
    add r0, r6, #0
    mov r2, #1
    bl ov01_021E8298
    add sp, #0x18
    pop {r4, r5, r6, pc}
    // clang-format on
}
#endif

#ifdef NONMATCHING
static void sub_0200F62C(UnkStruct_ov01_021E7FDC *spriteEnv) {
    (void)spriteEnv;
}
#else
asm static void sub_0200F62C(UnkStruct_ov01_021E7FDC *spriteEnv) {
    // clang-format off
    push {r3, r4, lr}
    sub sp, #0xc
    mov r1, #1
    str r1, [sp]
    str r1, [sp, #4]
    ldr r1, =0x00015CD5
    mov r2, #0x32
    str r1, [sp, #8]
    mov r1, #0x26
    mov r3, #0
    add r4, r0, #0
    bl ov01_021E8378
    ldr r0, =0x00015CD5
    mov r1, #0x26
    str r0, [sp]
    add r0, r4, #0
    mov r2, #0x30
    mov r3, #0
    bl ov01_021E83F0
    ldr r0, =0x00015CD5
    mov r1, #0x26
    str r0, [sp]
    add r0, r4, #0
    mov r2, #0x2f
    mov r3, #0
    bl ov01_021E8404
    mov r0, #1
    str r0, [sp]
    ldr r0, =0x00015CD5
    mov r1, #0x26
    str r0, [sp, #4]
    add r0, r4, #0
    mov r2, #0x31
    mov r3, #0
    bl ov01_021E8418
    add sp, #0xc
    pop {r3, r4, pc}
    nop
    // clang-format on
}
#endif

#ifdef NONMATCHING
static void sub_0200F684(UnkStruct_ov01_021E7FDC *spriteEnv, int x, int y) {
    (void)spriteEnv;
    (void)x;
    (void)y;
}
#else
asm static void sub_0200F684(UnkStruct_ov01_021E7FDC *spriteEnv, int x, int y) {
    // clang-format off
    push {r4, r5, r6, r7, lr}
    sub sp, #0x34
    ldr r5, =_020F5C78
    add r6, r2, #0
    add r4, r0, #0
    add r7, r1, #0
    add r3, sp, #0
    mov r2, #6
_0200F694:
    ldmia r5!, {r0, r1}
    stmia r3!, {r0, r1}
    sub r2, r2, #1
    bne _0200F694
    ldr r0, [r5]
    str r0, [r3]
    add r0, r7, #5
    lsl r1, r0, #3
    add r0, sp, #0
    strh r1, [r0]
    add r1, r6, #5
    lsl r1, r1, #3
    strh r1, [r0, #2]
    add r0, r4, #0
    add r1, sp, #0
    bl ov01_021E851C
    mov r1, #0x59
    lsl r1, r1, #2
    str r0, [r4, r1]
    ldr r0, [r4]
    bl SpriteList_RenderAndAnimateSprites
    mov r0, #0x10
    mov r1, #1
    bl GfGfx_EngineBTogglePlanes
    add sp, #0x34
    pop {r4, r5, r6, r7, pc}
    nop
    // clang-format on
}
#endif

#ifdef NONMATCHING
static void sub_0200F6D4(UnkStruct_ov01_021E7FDC *spriteEnv, u16 species, u8 gender) {
    (void)spriteEnv;
    (void)species;
    (void)gender;
}
#else
asm static void sub_0200F6D4(UnkStruct_ov01_021E7FDC *spriteEnv, u16 species, u8 gender) {
    // clang-format off
    push {r4, r5, r6, r7, lr}
    sub sp, #0x1c
    add r5, r0, #0
    ldr r0, =0x00000162
    add r4, r1, #0
    ldrh r0, [r5, r0]
    add r6, r2, #0
    bl PokepicManager_Create
    add r7, r0, #0
    mov r0, #0
    str r0, [sp]
    str r0, [sp, #4]
    str r0, [sp, #8]
    add r0, sp, #0xc
    add r1, r4, #0
    add r2, r6, #0
    mov r3, #2
    bl GetMonSpriteCharAndPlttNarcIdsEx
    add r0, r5, #0
    add r1, sp, #0xc
    bl sub_0200F748
    add r0, r7, #0
    bl PokepicManager_Delete
    add sp, #0x1c
    pop {r4, r5, r6, r7, pc}
    nop
    // clang-format on
}
#endif

#ifdef NONMATCHING
static void sub_0200F714(UnkStruct_ov01_021E7FDC *spriteEnv, Pokemon *mon) {
    (void)spriteEnv;
    (void)mon;
}
#else
asm static void sub_0200F714(UnkStruct_ov01_021E7FDC *spriteEnv, Pokemon *mon) {
    // clang-format off
    push {r4, r5, r6, lr}
    sub sp, #0x10
    add r5, r0, #0
    ldr r0, =0x00000162
    add r4, r1, #0
    ldrh r0, [r5, r0]
    bl PokepicManager_Create
    add r6, r0, #0
    add r0, sp, #0
    add r1, r4, #0
    mov r2, #2
    bl GetPokemonSpriteCharAndPlttNarcIds
    add r0, r5, #0
    add r1, sp, #0
    bl sub_0200F748
    add r0, r6, #0
    bl PokepicManager_Delete
    add sp, #0x10
    pop {r4, r5, r6, pc}
    nop
    // clang-format on
}
#endif

#ifdef NONMATCHING
static void sub_0200F748(UnkStruct_ov01_021E7FDC *spriteEnv, PokepicTemplate *pokepicTemplate) {
    (void)spriteEnv;
    (void)pokepicTemplate;
}
#else
asm static void sub_0200F748(UnkStruct_ov01_021E7FDC *spriteEnv, PokepicTemplate *pokepicTemplate) {
    // clang-format off
    push {r3, r4, r5, r6, r7, lr}
    sub sp, #0x28
    add r5, r0, #0
    ldr r0, =0x00000162
    add r6, r1, #0
    mov r1, #0x19
    ldrh r0, [r5, r0]
    lsl r1, r1, #8
    bl Heap_Alloc
    add r2, sp, #0x18
    ldr r3, =_020F5C50
    add r4, r0, #0
    add r7, r2, #0
    ldmia r3!, {r0, r1}
    stmia r2!, {r0, r1}
    ldmia r3!, {r0, r1}
    stmia r2!, {r0, r1}
    str r4, [sp]
    ldr r2, =0x00000162
    ldrh r0, [r6]
    ldrh r1, [r6, #2]
    ldrh r2, [r5, r2]
    add r3, r7, #0
    bl sub_020143E0
    ldr r3, =_020F5C40
    add r2, sp, #8
    add r7, r2, #0
    ldmia r3!, {r0, r1}
    stmia r2!, {r0, r1}
    ldmia r3!, {r0, r1}
    stmia r2!, {r0, r1}
    mov r0, #0x32
    lsl r0, r0, #6
    add r0, r4, r0
    str r0, [sp]
    ldr r2, =0x00000162
    ldrh r0, [r6]
    ldrh r1, [r6, #2]
    ldrh r2, [r5, r2]
    add r3, r7, #0
    bl sub_020143E0
    mov r0, #0x13
    lsl r0, r0, #4
    ldr r0, [r5, r0]
    ldr r1, =0x00015CD5
    bl SpriteResourceCollection_Find
    bl sub_0200AF00
    mov r1, #1
    str r0, [sp, #4]
    bl NNS_G2dGetImageLocation
    mov r1, #0x19
    add r7, r0, #0
    add r0, r4, #0
    lsl r1, r1, #8
    bl DC_FlushRange
    mov r2, #0x19
    add r0, r4, #0
    add r1, r7, #0
    lsl r2, r2, #8
    bl GX_LoadOBJ
    add r0, r4, #0
    bl Heap_Free
    ldr r2, =0x00000162
    ldrh r0, [r6]
    ldrh r1, [r6, #4]
    ldrh r2, [r5, r2]
    bl sub_02014450
    add r4, r0, #0
    mov r0, #0x4d
    lsl r0, r0, #2
    ldr r0, [r5, r0]
    ldr r1, =0x00015CD5
    bl SpriteResourceCollection_Find
    ldr r1, [sp, #4]
    bl SpriteTransfer_GetPaletteProxy
    mov r1, #1
    bl NNS_G2dGetImagePaletteLocation
    add r5, r0, #0
    add r0, r4, #0
    mov r1, #0x20
    bl DC_FlushRange
    add r0, r4, #0
    add r1, r5, #0
    mov r2, #0x20
    bl GX_LoadOBJPltt
    add r0, r4, #0
    bl Heap_Free
    add sp, #0x28
    pop {r3, r4, r5, r6, r7, pc}
    nop
    // clang-format on
}
#endif

#ifdef NONMATCHING
static void sub_0200F82C(UnkStruct_ov01_021E7FDC *spriteEnv, u8 bgId, u16 baseTile) {
    (void)spriteEnv;
    (void)bgId;
    (void)baseTile;
}
#else
asm static void sub_0200F82C(UnkStruct_ov01_021E7FDC *spriteEnv, u8 bgId, u16 baseTile) {
    // clang-format off
    push {r4, r5, r6, lr}
    sub sp, #0x10
    ldr r3, =0x0000016E
    add r5, r0, #0
    ldrb r0, [r5, r3]
    add r4, r1, #0
    sub r1, r3, #2
    sub r0, r0, #1
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    str r0, [sp, #8]
    str r4, [sp, #0xc]
    sub r0, r3, #6
    sub r3, r3, #1
    ldrb r3, [r5, r3]
    ldrb r1, [r5, r1]
    ldr r0, [r5, r0]
    sub r3, r3, #1
    lsl r3, r3, #0x18
    lsr r3, r3, #0x18
    add r6, r2, #0
    bl FillBgTilemapRect
    ldr r3, =0x0000016E
    add r2, r6, #1
    ldrb r0, [r5, r3]
    sub r1, r3, #2
    lsl r2, r2, #0x10
    sub r0, r0, #1
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    str r0, [sp]
    mov r0, #0xa
    str r0, [sp, #4]
    mov r0, #1
    str r0, [sp, #8]
    str r4, [sp, #0xc]
    sub r0, r3, #6
    sub r3, r3, #1
    ldrb r1, [r5, r1]
    ldrb r3, [r5, r3]
    ldr r0, [r5, r0]
    lsr r2, r2, #0x10
    bl FillBgTilemapRect
    ldr r3, =0x0000016E
    add r2, r6, #2
    ldrb r0, [r5, r3]
    lsl r2, r2, #0x10
    sub r1, r3, #2
    sub r0, r0, #1
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    str r0, [sp, #8]
    str r4, [sp, #0xc]
    sub r0, r3, #6
    sub r3, r3, #1
    ldrb r3, [r5, r3]
    ldrb r1, [r5, r1]
    ldr r0, [r5, r0]
    add r3, #0xa
    lsl r3, r3, #0x18
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    ldr r3, =0x0000016E
    add r2, r6, #4
    ldrb r0, [r5, r3]
    lsl r2, r2, #0x10
    sub r1, r3, #2
    str r0, [sp]
    mov r0, #0xa
    str r0, [sp, #4]
    str r0, [sp, #8]
    str r4, [sp, #0xc]
    sub r0, r3, #6
    sub r3, r3, #1
    ldrb r1, [r5, r1]
    ldrb r3, [r5, r3]
    ldr r0, [r5, r0]
    lsr r2, r2, #0x10
    bl FillBgTilemapRect
    ldr r3, =0x0000016E
    add r2, r6, #3
    ldrb r0, [r5, r3]
    lsl r2, r2, #0x10
    sub r1, r3, #2
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    mov r0, #0xa
    str r0, [sp, #8]
    str r4, [sp, #0xc]
    sub r0, r3, #6
    sub r3, r3, #1
    ldrb r3, [r5, r3]
    ldrb r1, [r5, r1]
    ldr r0, [r5, r0]
    sub r3, r3, #1
    lsl r3, r3, #0x18
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    ldr r3, =0x0000016E
    add r2, r6, #5
    ldrb r0, [r5, r3]
    lsl r2, r2, #0x10
    sub r1, r3, #2
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    mov r0, #0xa
    str r0, [sp, #8]
    str r4, [sp, #0xc]
    sub r0, r3, #6
    sub r3, r3, #1
    ldrb r3, [r5, r3]
    ldrb r1, [r5, r1]
    ldr r0, [r5, r0]
    add r3, #0xa
    lsl r3, r3, #0x18
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    ldr r3, =0x0000016E
    add r2, r6, #6
    ldrb r0, [r5, r3]
    lsl r2, r2, #0x10
    sub r1, r3, #2
    add r0, #0xa
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    str r0, [sp, #8]
    str r4, [sp, #0xc]
    sub r0, r3, #6
    sub r3, r3, #1
    ldrb r3, [r5, r3]
    ldrb r1, [r5, r1]
    ldr r0, [r5, r0]
    sub r3, r3, #1
    lsl r3, r3, #0x18
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    ldr r3, =0x0000016E
    add r2, r6, #7
    ldrb r0, [r5, r3]
    sub r1, r3, #2
    lsl r2, r2, #0x10
    add r0, #0xa
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    str r0, [sp]
    mov r0, #0xa
    str r0, [sp, #4]
    mov r0, #1
    str r0, [sp, #8]
    str r4, [sp, #0xc]
    sub r0, r3, #6
    sub r3, r3, #1
    ldrb r1, [r5, r1]
    ldrb r3, [r5, r3]
    ldr r0, [r5, r0]
    lsr r2, r2, #0x10
    bl FillBgTilemapRect
    ldr r3, =0x0000016E
    add r6, #8
    ldrb r0, [r5, r3]
    lsl r2, r6, #0x10
    sub r1, r3, #2
    add r0, #0xa
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    str r0, [sp]
    mov r0, #1
    str r0, [sp, #4]
    str r0, [sp, #8]
    str r4, [sp, #0xc]
    sub r0, r3, #6
    sub r3, r3, #1
    ldrb r3, [r5, r3]
    ldrb r1, [r5, r1]
    ldr r0, [r5, r0]
    add r3, #0xa
    lsl r3, r3, #0x18
    lsr r2, r2, #0x10
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    mov r1, #0x5a
    lsl r1, r1, #2
    ldr r0, [r5, r1]
    add r1, r1, #4
    ldrb r1, [r5, r1]
    bl ScheduleBgTilemapBufferTransfer
    add sp, #0x10
    pop {r4, r5, r6, pc}
    nop
    // clang-format on
}
#endif

#ifdef NONMATCHING
static void sub_0200F9DC(UnkStruct_ov01_021E7FDC *spriteEnv) {
    (void)spriteEnv;
}
#else
asm static void sub_0200F9DC(UnkStruct_ov01_021E7FDC *spriteEnv) {
    // clang-format off
    push {r4, lr}
    sub sp, #0x10
    ldr r3, =0x0000016E
    add r4, r0, #0
    ldrb r0, [r4, r3]
    mov r2, #0
    sub r1, r3, #2
    sub r0, r0, #1
    lsl r0, r0, #0x18
    lsr r0, r0, #0x18
    str r0, [sp]
    mov r0, #0xc
    str r0, [sp, #4]
    str r0, [sp, #8]
    str r2, [sp, #0xc]
    sub r0, r3, #6
    sub r3, r3, #1
    ldrb r3, [r4, r3]
    ldrb r1, [r4, r1]
    ldr r0, [r4, r0]
    sub r3, r3, #1
    lsl r3, r3, #0x18
    lsr r3, r3, #0x18
    bl FillBgTilemapRect
    mov r1, #0x5a
    lsl r1, r1, #2
    ldr r0, [r4, r1]
    add r1, r1, #4
    ldrb r1, [r4, r1]
    bl ScheduleBgTilemapBufferTransfer
    add sp, #0x10
    pop {r4, pc}
    // clang-format on
}
#endif
