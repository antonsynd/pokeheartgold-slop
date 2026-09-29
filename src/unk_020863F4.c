#include "global.h"

#include "bg_window.h"
#include "filesystem.h"
#include "font.h"
#include "gf_gfx_loader.h"
#include "heap.h"
#include "msgdata.h"
#include "obj_char_transfer.h"
#include "options.h"
#include "palette.h"
#include "pm_string.h"
#include "render_window.h"
#include "sprite_system.h"
#include "touchscreen.h"
#include "unk_02013534.h"

u32 sub_0200E640(u32 frame);
extern u32 _u32_div_f(u32, u32);
int AddTextPrinterParameterized(Window *window, u32 fontId, String *text, u32 x, u32 y, u32 textSpeed, void *callback);
int AddTextPrinterParameterizedWithColor(Window *window, u32 fontId, String *string, u32 x, u32 y, u32 textSpeed, u32 color, void *callback);

typedef struct UnkStruct_020850F4_Entry {
    int unk0;
    int unk4;
    int unk8;
    ManagedSprite *sprite;
    TouchscreenHitbox *hitbox;
    s16 dx;
    s16 dy;
    u8 counter;
    u8 scaleIdx;
    u8 unk1A[2];
} UnkStruct_020850F4_Entry;

typedef struct UnkStruct_020850F4 {
    UnkStruct_020850F4_Entry digits[16];
    UnkStruct_020850F4_Entry seps[3];
    UnkStruct_020850F4_Entry cursors[3];
    UnkStruct_020850F4_Entry buttons[2];
    s16 unk2A0[24];
    int numDigitSlots;
    int unk2D4;
    u8 unk2D8[4];
    int rangeLo;
    int rangeHi;
    u8 unk2E4[8];
    NARC *narc;
    SpriteSystem *spriteSystem;
    SpriteManager *spriteManager;
    BgConfig *bgConfig;
    PaletteData *pltt;
    u8 unk300[4];
    TouchscreenHitbox hitboxes[28];
    int unk374;
    UnkStruct_02013534 *fontSystem;
    TextOBJ *textObjs[2];
    UnkStruct_02021AC8 unk384[2];
    Window window;
    u8 unk3AC[0x2C];
    Options *options;
    u8 unk3DC[4];
    u32 number;
    int msgId;
    int unk3E8;
    int numSeps;
    int numDigits;
} UnkStruct_020850F4;

void sub_020863F4(UnkStruct_020850F4 *ctx);
void sub_02086490(UnkStruct_020850F4 *ctx);
void sub_020866CC(UnkStruct_020850F4 *ctx);
void sub_02086758(UnkStruct_020850F4 *ctx);
void sub_020868A0(UnkStruct_020850F4 *ctx);
void sub_020869BC(UnkStruct_020850F4 *ctx);
void sub_02086AB4(UnkStruct_020850F4 *ctx, int idx, int flag);
void sub_02086AE4(UnkStruct_020850F4 *ctx, int idx);
void sub_02086B2C(UnkStruct_020850F4 *ctx, int idx);
void sub_02086B6C(UnkStruct_020850F4 *ctx, int hitboxIdx, int spriteIdx);
void sub_02086BB4(UnkStruct_020850F4 *ctx);
static void sub_02086C80(TextOBJ *obj, int x, int y);
void sub_02086C8C(UnkStruct_020850F4 *ctx);
int sub_02086D98(int anim, int flag);
void sub_02086DA4(UnkStruct_020850F4 *ctx);
void sub_02086DE4(UnkStruct_020850F4 *ctx, BOOL animate);
void sub_02086F44(UnkStruct_020850F4 *ctx);
void sub_02086FCC(UnkStruct_020850F4 *ctx);
static void sub_02086FE8(UnkStruct_020850F4 *ctx);
static void sub_02087028(UnkStruct_020850F4 *ctx);
void sub_02087064(UnkStruct_020850F4 *ctx);
static void sub_02087090(UnkStruct_020850F4 *ctx, int idx, int unusedX, int unusedY, int a4);
void sub_020871C4(BgConfig *bgConfig, Window *window, int bgId, int x, int y, int width, int height, int baseTile, int msgId);
static void sub_02087230(Window *window, int msgId);

static const OamCharTransferParam sOamCharTransferParam = {
    0x60,
    0x10000,
    0x4000,
    GX_OBJVRAMMODE_CHAR_1D_64K,
    GX_OBJVRAMMODE_CHAR_1D_32K,
};

static const SpriteResourceCountsListUnion sSpriteResourceCounts = {
    { 0x60, 0x20, 0x40, 0x40, 0x10, 0x10 }
};

static const OamManagerParam sOamManagerParam = {
    0, 0x80, 0, 0x20, 0, 0x80, 0, 0x20
};

void sub_020863F4(UnkStruct_020850F4 *ctx) {
    OamManagerParam oam;
    OamCharTransferParam xfer;
    SpriteResourceCountsListUnion counts;

    ctx->spriteSystem = SpriteSystem_Alloc(HEAP_ID_108);
    oam = sOamManagerParam;
    xfer = sOamCharTransferParam;
    SpriteSystem_Init(ctx->spriteSystem, &oam, &xfer, 0x20);
    counts = sSpriteResourceCounts;
    ctx->spriteManager = SpriteManager_New(ctx->spriteSystem);
    if (!SpriteSystem_InitSprites(ctx->spriteSystem, ctx->spriteManager, 0x80)) {
        GF_AssertFail();
    }
    if (!SpriteSystem_InitManagerWithCapacities(ctx->spriteSystem, ctx->spriteManager, &counts)) {
        GF_AssertFail();
    }
}

void sub_02086490(UnkStruct_020850F4 *ctx) {
    SpriteSystem *sys;
    NARC *narc;
    BgConfig *bg;
    PaletteData *pltt;
    SpriteManager *mgr;
    u32 frame;

    sys = ctx->spriteSystem;
    mgr = ctx->spriteManager;
    pltt = ctx->pltt;
    bg = ctx->bgConfig;
    narc = ctx->narc;

    GfGfxLoader_LoadCharDataFromOpenNarc(narc, 0xC, bg, GF_BG_LYR_MAIN_1, 0, 0, FALSE, HEAP_ID_108);
    GfGfxLoader_LoadScrnDataFromOpenNarc(narc, 0xE, bg, GF_BG_LYR_MAIN_1, 0, 0, FALSE, HEAP_ID_108);
    PaletteData_LoadNarc(pltt, NARC_a_1_9_0, 0xD, HEAP_ID_108, PLTTBUF_MAIN_BG, 0x20, 0);
    GfGfxLoader_LoadCharDataFromOpenNarc(narc, 0xF, bg, GF_BG_LYR_SUB_1, 0, 0, FALSE, HEAP_ID_108);
    GfGfxLoader_LoadScrnDataFromOpenNarc(narc, 0x11, bg, GF_BG_LYR_SUB_1, 0, 0, FALSE, HEAP_ID_108);
    PaletteData_LoadNarc(pltt, NARC_a_1_9_0, 0x10, HEAP_ID_108, PLTTBUF_SUB_BG, 0x20, 0);
    SpriteSystem_LoadPaletteBufferFromOpenNarc(pltt, PLTTBUF_MAIN_OBJ, sys, mgr, narc, 1, FALSE, 1, 1, 1000);
    SpriteSystem_LoadCharResObjFromOpenNarc(sys, mgr, narc, 0, FALSE, 1, 1000);
    SpriteSystem_LoadCellResObjFromOpenNarc(sys, mgr, narc, 2, FALSE, 1000);
    SpriteSystem_LoadAnimResObjFromOpenNarc(sys, mgr, narc, 3, FALSE, 1000);
    SpriteSystem_LoadPaletteBufferFromOpenNarc(pltt, PLTTBUF_MAIN_OBJ, sys, mgr, narc, 5, FALSE, 1, 1, 1001);
    SpriteSystem_LoadCharResObjFromOpenNarc(sys, mgr, narc, 4, FALSE, 1, 1001);
    SpriteSystem_LoadCellResObjFromOpenNarc(sys, mgr, narc, 6, FALSE, 1001);
    SpriteSystem_LoadAnimResObjFromOpenNarc(sys, mgr, narc, 7, FALSE, 1001);
    SpriteSystem_LoadPaletteBufferFromOpenNarc(pltt, PLTTBUF_MAIN_OBJ, sys, mgr, narc, 9, FALSE, 2, 1, 1002);
    SpriteSystem_LoadCharResObjFromOpenNarc(sys, mgr, narc, 8, FALSE, 1, 1002);
    SpriteSystem_LoadCellResObjFromOpenNarc(sys, mgr, narc, 0xA, FALSE, 1002);
    SpriteSystem_LoadAnimResObjFromOpenNarc(sys, mgr, narc, 0xB, FALSE, 1002);
    frame = Options_GetFrame(ctx->options);
    LoadUserFrameGfx2(bg, GF_BG_LYR_SUB_0, 1, 0xA, frame, HEAP_ID_108);
    PaletteData_LoadNarc(pltt, NARC_a_0_3_8, sub_0200E640(frame), HEAP_ID_108, PLTTBUF_SUB_BG, 0x20, 0xB0);
    PaletteData_LoadNarc(pltt, NARC_graphic_font, 8, HEAP_ID_108, PLTTBUF_SUB_BG, 0x20, 0xC0);
}

void sub_020866CC(UnkStruct_020850F4 *ctx) {
    int i;

    for (i = 0; i < ctx->numDigitSlots; i++) {
        Sprite_DeleteAndFreeResources(ctx->digits[i].sprite);
    }
    for (i = 0; i < ctx->numSeps; i++) {
        Sprite_DeleteAndFreeResources(ctx->seps[i].sprite);
    }
    for (i = 0; i < 2; i++) {
        Sprite_DeleteAndFreeResources(ctx->buttons[i].sprite);
    }
    for (i = 0; i < 3; i++) {
        Sprite_DeleteAndFreeResources(ctx->cursors[i].sprite);
    }
    sub_02086FE8(ctx);
    RemoveWindow(&ctx->window);
}

#ifdef NONMATCHING
void sub_02086758(UnkStruct_020850F4 *ctx) {
    ManagedSpriteTemplate template;
    int j = 0;
    SpriteSystem *sys = ctx->spriteSystem;
    SpriteManager *mgr = ctx->spriteManager;
    u32 num;
    int i;
    int k;
    int x;

    template.x = 0;
    template.y = 0;
    template.z = 0;
    template.animation = 0;
    template.drawPriority = 10;
    template.bgPriority = 0;
    template.vramTransfer = 0;
    template.pal = 0;
    template.resIdList[0] = 1000;
    template.resIdList[1] = 1000;
    template.resIdList[2] = 1000;
    template.resIdList[3] = 1000;
    template.resIdList[4] = -1;
    template.resIdList[5] = -1;
    template.vram = NNS_G2D_VRAM_TYPE_2DMAIN;

    num = ctx->number;
    for (i = ctx->numDigits - 1; i >= 0; i--) {
        ctx->digits[i].unk0 = num % 10 + 1;
        num /= 10;
    }
    x = 0x4C;
    k = 0;
    for (i = 0; i < ctx->numSeps + ctx->numDigitSlots; i++) {
        if (ctx->numSeps != 0 && i == j + ctx->seps[j].unk0 + 1) {
            ctx->seps[j].sprite = SpriteSystem_NewSprite(sys, mgr, &template);
            ManagedSprite_SetPositionXY(ctx->seps[j].sprite, x, 0x18);
            ManagedSprite_SetAnim(ctx->seps[j].sprite, 0x16);
            ManagedSprite_TickFrame(ctx->seps[j].sprite);
            j++;
        } else {
            ctx->digits[k].sprite = SpriteSystem_NewSprite(sys, mgr, &template);
            ManagedSprite_SetPositionXY(ctx->digits[k].sprite, x, 0x18);
            ManagedSprite_SetAnim(ctx->digits[k].sprite, sub_02086D98(ctx->digits[k].unk0, ctx->digits[k].unk8));
            ManagedSprite_SetAffineOverwriteMode(ctx->digits[k].sprite, 2);
            ManagedSprite_TickFrame(ctx->digits[k].sprite);
            k++;
        }
        x += 8;
    }
}
#else
// clang-format off
asm void sub_02086758(UnkStruct_020850F4 *ctx) {
    push {r4, r5, r6, r7, lr}
    sub sp, #0x44
    str r0, [sp, #0]
    mov r0, #0
    str r0, [sp, #0xc]
    mov r0, #0x2f
    lsl r0, r0, #4
    ldr r1, [sp, #0]
    add r2, r0, #4
    ldr r1, [r1, r0]
    str r1, [sp, #8]
    ldr r1, [sp, #0]
    ldr r1, [r1, r2]
    add r2, sp, #0x10
    str r1, [sp, #4]
    ldr r1, [sp, #0xc]
    strh r1, [r2, #0]
    strh r1, [r2, #2]
    strh r1, [r2, #4]
    strh r1, [r2, #6]
    mov r1, #0xa
    str r1, [sp, #0x18]
    ldr r1, [sp, #0xc]
    mov r2, #1
    str r1, [sp, #0x3c]
    str r1, [sp, #0x40]
    str r1, [sp, #0x1c]
    add r1, r0, #0
    add r1, #0xf8
    str r1, [sp, #0x24]
    str r1, [sp, #0x28]
    str r1, [sp, #0x2c]
    str r1, [sp, #0x30]
    sub r1, r2, #2
    str r1, [sp, #0x34]
    str r1, [sp, #0x38]
    ldr r1, [sp, #0]
    str r2, [sp, #0x20]
    add r0, #0xf0
    ldr r4, [r1, r0]
    mov r1, #0x3f
    ldr r0, [sp, #0]
    lsl r1, r1, #4
    ldr r0, [r0, r1]
    sub r6, r0, #1
    bmi _020867DC
    mov r0, #0x1c
    add r1, r6, #0
    mul r1, r0
    ldr r0, [sp, #0]
    mov r7, #0xa
    add r5, r0, r1
_020867C0:
    add r0, r4, #0
    add r1, r7, #0
    bl _u32_div_f
    add r0, r1, #1
    str r0, [r5, #0]
    add r0, r4, #0
    mov r1, #0xa
    bl _u32_div_f
    add r4, r0, #0
    sub r5, #0x1c
    sub r6, r6, #1
    bpl _020867C0
_020867DC:
    mov r1, #0xfb
    ldr r0, [sp, #0]
    lsl r1, r1, #2
    ldr r0, [r0, r1]
    mov r2, #0x2d
    ldr r1, [sp, #0]
    lsl r2, r2, #4
    ldr r1, [r1, r2]
    mov r6, #0
    add r1, r1, r0
    cmp r1, #0
    ble _0208689C
    ldr r4, [sp, #0]
    mov r7, #0x4c
    add r5, r4, #0
_020867FA:
    cmp r0, #0
    beq _0208684C
    mov r0, #7
    lsl r0, r0, #6
    ldr r1, [r4, r0]
    ldr r0, [sp, #0xc]
    add r0, r0, r1
    add r0, r0, #1
    cmp r6, r0
    bne _0208684C
    ldr r0, [sp, #8]
    ldr r1, [sp, #4]
    add r2, sp, #0x10
    bl SpriteSystem_NewSprite
    mov r1, #0x73
    lsl r1, r1, #2
    str r0, [r4, r1]
    add r0, r1, #0
    lsl r1, r7, #0x10
    ldr r0, [r4, r0]
    asr r1, r1, #0x10
    mov r2, #0x18
    bl ManagedSprite_SetPositionXY
    mov r0, #0x73
    lsl r0, r0, #2
    ldr r0, [r4, r0]
    mov r1, #0x16
    bl ManagedSprite_SetAnim
    mov r0, #0x73
    lsl r0, r0, #2
    ldr r0, [r4, r0]
    bl ManagedSprite_TickFrame
    ldr r0, [sp, #0xc]
    add r4, #0x1c
    add r0, r0, #1
    str r0, [sp, #0xc]
    b _02086882
_0208684C:
    ldr r0, [sp, #8]
    ldr r1, [sp, #4]
    add r2, sp, #0x10
    bl SpriteSystem_NewSprite
    lsl r1, r7, #0x10
    str r0, [r5, #0xc]
    asr r1, r1, #0x10
    mov r2, #0x18
    bl ManagedSprite_SetPositionXY
    ldr r0, [r5, #0]
    ldr r1, [r5, #8]
    bl sub_02086D98
    add r1, r0, #0
    ldr r0, [r5, #0xc]
    bl ManagedSprite_SetAnim
    ldr r0, [r5, #0xc]
    mov r1, #2
    bl ManagedSprite_SetAffineOverwriteMode
    ldr r0, [r5, #0xc]
    bl ManagedSprite_TickFrame
    add r5, #0x1c
_02086882:
    ldr r1, [sp, #0]
    mov r0, #0xfb
    lsl r0, r0, #2
    ldr r0, [r1, r0]
    add r2, r1, #0
    mov r1, #0x2d
    lsl r1, r1, #4
    ldr r1, [r2, r1]
    add r6, r6, #1
    add r1, r1, r0
    add r7, #8
    cmp r6, r1
    blt _020867FA
_0208689C:
    add sp, #0x44
    pop {r4, r5, r6, r7, pc}
}
// clang-format on
#endif

void sub_020868A0(UnkStruct_020850F4 *ctx) {
    ManagedSpriteTemplate template;
    SpriteSystem *sys = ctx->spriteSystem;
    SpriteManager *mgr = ctx->spriteManager;

    template.x = 0;
    template.y = 0;
    template.z = 0;
    template.animation = 0;
    template.vram = NNS_G2D_VRAM_TYPE_2DMAIN;
    template.drawPriority = 0;
    template.bgPriority = 0;
    template.vramTransfer = 0;
    template.pal = 0;
    template.resIdList[0] = 1001;
    template.resIdList[1] = 1001;
    template.resIdList[2] = 1001;
    template.resIdList[3] = 1001;
    template.resIdList[4] = -1;
    template.resIdList[5] = -1;

    ctx->cursors[0].sprite = SpriteSystem_NewSprite(sys, mgr, &template);
    ctx->cursors[1].sprite = SpriteSystem_NewSprite(sys, mgr, &template);
    ctx->cursors[2].sprite = SpriteSystem_NewSprite(sys, mgr, &template);
    sub_02086AE4(ctx, ctx->numDigits);
    ManagedSprite_SetAnim(ctx->cursors[0].sprite, 0);
    ManagedSprite_TickFrame(ctx->cursors[0].sprite);
    ctx->cursors[1].dx = 0;
    ctx->cursors[1].dy = 0;
    ctx->cursors[1].unk0 = 1;
    sub_02086B2C(ctx, 0);
    ManagedSprite_SetAnim(ctx->cursors[1].sprite, ctx->cursors[1].unk0);
    ManagedSprite_TickFrame(ctx->cursors[1].sprite);
    ManagedSprite_SetOamMode(ctx->cursors[1].sprite, GX_OAM_MODE_XLU);
    ctx->cursors[2].dx = 0;
    ctx->cursors[2].dy = 0;
    ctx->cursors[2].unk0 = 1;
    sub_02086B2C(ctx, 0);
    ManagedSprite_SetAnim(ctx->cursors[2].sprite, ctx->cursors[2].unk0);
    ManagedSprite_TickFrame(ctx->cursors[2].sprite);
    ManagedSprite_SetOamMode(ctx->cursors[2].sprite, GX_OAM_MODE_XLU);
    sub_02086AB4(ctx, 1, 0);
    sub_02086AB4(ctx, 2, 0);
}

#ifdef NONMATCHING
void sub_020869BC(UnkStruct_020850F4 *ctx) {
    ManagedSpriteTemplate template;
    SpriteSystem *sys = ctx->spriteSystem;
    SpriteManager *mgr = ctx->spriteManager;

    template.x = 0;
    template.y = 0;
    template.z = 0;
    template.animation = 0;
    template.drawPriority = 10;
    template.vram = NNS_G2D_VRAM_TYPE_2DMAIN;
    template.pal = 0;
    template.bgPriority = 0;
    template.vramTransfer = 0;
    template.pal = 0;
    template.resIdList[0] = 1002;
    template.resIdList[1] = 1002;
    template.resIdList[2] = 1002;
    template.resIdList[3] = 1002;
    template.resIdList[4] = -1;
    template.resIdList[5] = -1;
    ctx->buttons[0].sprite = SpriteSystem_NewSprite(sys, mgr, &template);
    template.pal = 1;
    ctx->buttons[1].sprite = SpriteSystem_NewSprite(sys, mgr, &template);
    ManagedSprite_SetPositionXY(ctx->buttons[0].sprite,
        (ctx->hitboxes[26].rect.left + ctx->hitboxes[26].rect.right) / 2,
        (ctx->hitboxes[26].rect.top + ctx->hitboxes[26].rect.bottom) / 2);
    ManagedSprite_SetAnim(ctx->buttons[0].sprite, 0);
    ManagedSprite_TickFrame(ctx->buttons[0].sprite);
    ManagedSprite_SetPositionXY(ctx->buttons[1].sprite,
        (ctx->hitboxes[27].rect.left + ctx->hitboxes[27].rect.right) / 2,
        (ctx->hitboxes[27].rect.top + ctx->hitboxes[27].rect.bottom) / 2);
    ManagedSprite_SetAnim(ctx->buttons[1].sprite, 0);
    ManagedSprite_TickFrame(ctx->buttons[1].sprite);
}
#else
// clang-format off
asm void sub_020869BC(UnkStruct_020850F4 *ctx) {
    push {r3, r4, r5, r6, lr}
    sub sp, #0x34
    mov r2, #0x2f
    lsl r2, r2, #4
    add r5, r0, #0
    add r0, r2, #4
    ldr r6, [r5, r2]
    ldr r4, [r5, r0]
    mov r0, #0
    add r1, sp, #0
    strh r0, [r1, #0]
    strh r0, [r1, #2]
    strh r0, [r1, #4]
    strh r0, [r1, #6]
    add r2, #0xfa
    mov r1, #0xa
    str r1, [sp, #8]
    mov r1, #1
    str r1, [sp, #0x10]
    sub r1, r1, #2
    str r0, [sp, #0xc]
    str r0, [sp, #0x2c]
    str r0, [sp, #0x30]
    str r0, [sp, #0xc]
    str r2, [sp, #0x14]
    str r2, [sp, #0x18]
    str r2, [sp, #0x1c]
    str r2, [sp, #0x20]
    str r1, [sp, #0x24]
    str r1, [sp, #0x28]
    add r0, r6, #0
    add r1, r4, #0
    add r2, sp, #0
    bl SpriteSystem_NewSprite
    mov r1, #0x9d
    lsl r1, r1, #2
    str r0, [r5, r1]
    mov r0, #1
    str r0, [sp, #0xc]
    add r0, r6, #0
    add r1, r4, #0
    add r2, sp, #0
    bl SpriteSystem_NewSprite
    mov r2, #0x29
    lsl r2, r2, #4
    add r1, r2, #0
    str r0, [r5, r2]
    add r1, #0xde
    ldrb r3, [r5, r1]
    add r1, r2, #0
    add r1, #0xdf
    ldrb r1, [r5, r1]
    add r0, r2, #0
    sub r0, #0x1c
    add r3, r3, r1
    lsr r1, r3, #0x1f
    add r1, r3, r1
    add r3, r2, #0
    add r3, #0xdc
    add r2, #0xdd
    lsl r1, r1, #0xf
    ldrb r3, [r5, r3]
    ldrb r2, [r5, r2]
    ldr r0, [r5, r0]
    asr r1, r1, #0x10
    add r3, r3, r2
    lsr r2, r3, #0x1f
    add r2, r3, r2
    lsl r2, r2, #0xf
    asr r2, r2, #0x10
    bl ManagedSprite_SetPositionXY
    mov r0, #0x9d
    lsl r0, r0, #2
    ldr r0, [r5, r0]
    mov r1, #0
    bl ManagedSprite_SetAnim
    mov r0, #0x9d
    lsl r0, r0, #2
    ldr r0, [r5, r0]
    bl ManagedSprite_TickFrame
    mov r2, #0x29
    lsl r2, r2, #4
    add r1, r2, #0
    add r1, #0xe2
    ldrb r3, [r5, r1]
    add r1, r2, #0
    add r1, #0xe3
    ldrb r1, [r5, r1]
    ldr r0, [r5, r2]
    add r3, r3, r1
    lsr r1, r3, #0x1f
    add r1, r3, r1
    add r3, r2, #0
    add r3, #0xe0
    add r2, #0xe1
    lsl r1, r1, #0xf
    ldrb r3, [r5, r3]
    ldrb r2, [r5, r2]
    asr r1, r1, #0x10
    add r3, r3, r2
    lsr r2, r3, #0x1f
    add r2, r3, r2
    lsl r2, r2, #0xf
    asr r2, r2, #0x10
    bl ManagedSprite_SetPositionXY
    mov r0, #0x29
    lsl r0, r0, #4
    ldr r0, [r5, r0]
    mov r1, #0
    bl ManagedSprite_SetAnim
    mov r0, #0x29
    lsl r0, r0, #4
    ldr r0, [r5, r0]
    bl ManagedSprite_TickFrame
    add sp, #0x34
    pop {r3, r4, r5, r6, pc}
}
// clang-format on
#endif

void sub_02086AB4(UnkStruct_020850F4 *ctx, int idx, int flag) {
    if (flag == 1) {
        ManagedSprite_SetDrawFlag(ctx->cursors[idx].sprite, 1);
    } else {
        ManagedSprite_SetDrawFlag(ctx->cursors[idx].sprite, 0);
    }
}

void sub_02086AE4(UnkStruct_020850F4 *ctx, int idx) {
    s16 x;
    s16 y;
    ManagedSprite *sprite;

    if (idx >= ctx->numDigits) {
        sprite = ctx->digits[idx].sprite;
        ctx->cursors[0].unk0 = idx;
        ManagedSprite_GetPositionXY(sprite, &x, &y);
        ManagedSprite_SetPositionXY(ctx->cursors[0].sprite, x, y + 0x10);
    }
}

void sub_02086B2C(UnkStruct_020850F4 *ctx, int idx) {
    ManagedSprite_SetPositionXY(ctx->cursors[1].sprite,
        (ctx->hitboxes[idx + 16].rect.left + ctx->hitboxes[idx + 16].rect.right) / 2,
        (ctx->hitboxes[idx + 16].rect.top + ctx->hitboxes[idx + 16].rect.bottom) / 2);
}

void sub_02086B6C(UnkStruct_020850F4 *ctx, int hitboxIdx, int spriteIdx) {
    ManagedSprite_SetPositionXY(ctx->cursors[spriteIdx].sprite,
        (ctx->hitboxes[hitboxIdx + 16].rect.left + ctx->hitboxes[hitboxIdx + 16].rect.right) / 2,
        (ctx->hitboxes[hitboxIdx + 16].rect.top + ctx->hitboxes[hitboxIdx + 16].rect.bottom) / 2);
}

void sub_02086BB4(UnkStruct_020850F4 *ctx) {
    int i;
    u16 anim;

    ManagedSprite_TickFrame(ctx->cursors[0].sprite);
    ManagedSprite_TickFrame(ctx->cursors[1].sprite);
    ManagedSprite_TickFrame(ctx->cursors[2].sprite);
    for (i = 1; i < 3; i++) {
        anim = ManagedSprite_GetActiveAnim(ctx->cursors[i].sprite);
        if (anim == 3) {
            if (!ManagedSprite_IsAnimated(ctx->cursors[i].sprite)) {
                ManagedSprite_SetAnim(ctx->cursors[i].sprite, ctx->cursors[i].unk0);
                if (ctx->unk374 == 1) {
                    sub_02086AB4(ctx, 1, 0);
                } else {
                    sub_02086AB4(ctx, 1, 1);
                }
                sub_02086AB4(ctx, 2, 0);
            }
        } else {
            if (anim != ctx->cursors[i].unk0) {
                ManagedSprite_SetAnim(ctx->cursors[i].sprite, ctx->cursors[i].unk0);
            }
            if (ManagedSprite_GetActiveAnim(ctx->cursors[2].sprite) != 3) {
                if (ctx->unk374 == 1) {
                    sub_02086AB4(ctx, 1, 0);
                } else {
                    sub_02086AB4(ctx, 1, 1);
                }
            }
        }
    }
}

static void sub_02086C80(TextOBJ *obj, int x, int y) {
    if (obj != NULL) {
        sub_020136B4(obj, x, y);
    }
}

void sub_02086C8C(UnkStruct_020850F4 *ctx) {
    int i;
    s16 x;
    s16 y;

    for (i = 0; i < 2; i++) {
        x = (ctx->hitboxes[26 + i].rect.left + ctx->hitboxes[26 + i].rect.right) / 2;
        x -= 0x28;
        y = (ctx->hitboxes[26 + i].rect.top + ctx->hitboxes[26 + i].rect.bottom) / 2;
        y -= 7;
        switch (ctx->buttons[i].unk0) {
        case 0:
            ctx->buttons[i].counter = 0;
            break;
        case 1:
            ctx->buttons[i].counter++;
            if (ctx->buttons[i].counter == 1) {
                ManagedSprite_SetAnim(ctx->buttons[i].sprite, 1);
                sub_02086C80(ctx->textObjs[i], x, y);
            } else if (ctx->buttons[i].counter == 2) {
                ManagedSprite_SetAnim(ctx->buttons[i].sprite, 2);
                sub_02086C80(ctx->textObjs[i], x, y - 1);
            } else if (ctx->buttons[i].counter == 10) {
                ManagedSprite_SetAnim(ctx->buttons[i].sprite, 0);
                sub_02086C80(ctx->textObjs[i], x, y);
                ctx->buttons[i].unk0++;
            }
            break;
        default:
            ManagedSprite_SetAnim(ctx->buttons[i].sprite, 0);
            sub_02086C80(ctx->textObjs[i], x, y);
            ctx->buttons[i].unk0 = 0;
            break;
        }
    }
}

int sub_02086D98(int anim, int flag) {
    int off = 0;

    if (flag == 0) {
        off = 11;
    }
    return off + anim;
}

void sub_02086DA4(UnkStruct_020850F4 *ctx) {
    int i;

    for (i = 0; i < ctx->numDigitSlots; i++) {
        if (i >= ctx->rangeLo && i < ctx->rangeHi) {
            ctx->digits[i].unk8 = 1;
        } else {
            ctx->digits[i].unk8 = 0;
        }
    }
}

void sub_02086DE4(UnkStruct_020850F4 *ctx, BOOL animate) {
    int i;
    s16 x = ctx->unk2A0[ctx->unk2D4];
    int j = 0;
    s16 px;
    s16 py;

    for (i = 0; i < ctx->numDigitSlots; i++) {
        if (i >= ctx->rangeLo && i < ctx->rangeHi) {
            if (i == ctx->rangeLo) {
                x += 0x14;
            } else {
                x += 0x20;
            }
        } else {
            if (i == 0) {
                x += 0x14;
            } else {
                x += 8;
            }
        }
        ManagedSprite_GetPositionXY(ctx->digits[i].sprite, &px, &py);
        if (animate == 0) {
            ManagedSprite_SetPositionXY(ctx->digits[i].sprite, x, py);
        } else {
            ctx->digits[i].dx = (x - px) / 2;
            ctx->digits[i].dy = 0;
            ctx->digits[i].counter = 2;
            ctx->digits[i].scaleIdx = 0;
        }
        if (i == ctx->seps[j].unk0 && j != ctx->numSeps) {
            ManagedSprite_GetPositionXY(ctx->seps[j].sprite, &px, &py);
            if (ctx->rangeLo == ctx->rangeHi) {
                x += 8;
            } else if (i > ctx->rangeLo && i < ctx->rangeHi) {
                x += 0x14;
            } else {
                x += 8;
            }
            if (animate == 0) {
                ManagedSprite_SetPositionXY(ctx->seps[j].sprite, x, py);
            } else {
                ctx->seps[j].dx = (x - px) / 2;
                ctx->seps[j].dy = 0;
                ctx->seps[j].counter = 2;
            }
            j++;
        }
    }
}

void sub_02086F44(UnkStruct_020850F4 *ctx) {
    int i;
    int hw;
    int hh;
    s16 y;
    s16 x;

    for (i = 0; i < ctx->numDigitSlots; i++) {
        if (i >= ctx->rangeLo && i < ctx->rangeHi) {
            hw = 0x10;
            hh = 0x10;
        } else {
            hw = 4;
            hh = 8;
        }
        ManagedSprite_GetPositionXY(ctx->digits[i].sprite, &x, &y);
        ctx->digits[i].hitbox->rect.top = y - hh;
        ctx->digits[i].hitbox->rect.left = x - hw;
        ctx->digits[i].hitbox->rect.bottom = y + hh;
        ctx->digits[i].hitbox->rect.right = x + hw;
    }
}

void sub_02086FCC(UnkStruct_020850F4 *ctx) {
    ctx->fontSystem = FontSystem_NewInit(2, HEAP_ID_108);
    FontID_Alloc(2, HEAP_ID_108);
}

static void sub_02086FE8(UnkStruct_020850F4 *ctx) {
    FontID_Release(2);
    FontOAM_Delete(ctx->textObjs[0]);
    sub_02021B5C(&ctx->unk384[0]);
    FontOAM_Delete(ctx->textObjs[1]);
    sub_02021B5C(&ctx->unk384[1]);
    sub_020135AC(ctx->fontSystem);
}

static void sub_02087028(UnkStruct_020850F4 *ctx) {
    SpriteSystem_LoadPaletteBuffer(ctx->pltt, PLTTBUF_MAIN_OBJ, ctx->spriteSystem, ctx->spriteManager, NARC_graphic_font, 8, FALSE, 1, 1, 1003);
}

void sub_02087064(UnkStruct_020850F4 *ctx) {
    sub_02087028(ctx);
    sub_02087090(ctx, 0, 0x4E, 0xA5, 0);
    sub_02087090(ctx, 1, 0xAC, 0xA5, 0);
}

static void sub_02087090(UnkStruct_020850F4 *ctx, int idx, int unusedX, int unusedY, int a4) {
    TextOBJTemplate t;
    Window win;
    String *str;
    MsgData *msg;
    s16 hx;
    s16 hy;
    int size;

    msg = NewMsgDataFromNarc(MSGDATA_LOAD_DIRECT, NARC_msgdata_msg, 38, HEAP_ID_108);
    str = NewString_ReadMsgData(msg, idx + 2);
    InitWindow(&win);
    AddTextWindowTopLeftCorner(ctx->bgConfig, &win, 10, 2, 0, 0);
    AddTextPrinterParameterizedWithColor(&win, 2, str, FontID_String_GetCenterAlignmentX(2, str, 0, 0x50), 0, 0xFF, 0xF0D02, NULL);
    size = sub_02013688(&win, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_108);
    sub_02021AC8(size, TRUE, NNS_G2D_VRAM_TYPE_2DMAIN, &ctx->unk384[idx]);
    hx = (ctx->hitboxes[idx + 26].rect.left + ctx->hitboxes[idx + 26].rect.right) / 2;
    hy = (ctx->hitboxes[idx + 26].rect.top + ctx->hitboxes[idx + 26].rect.bottom) / 2;
    t.fontSystem = ctx->fontSystem;
    t.window = &win;
    t.spriteList = SpriteManager_GetSpriteList(ctx->spriteManager);
    t.plttResourceProxy = SpriteManager_FindPlttResourceProxy(ctx->spriteManager, 1003);
    t.sprite = NULL;
    t.offset = ctx->unk384[idx].offset;
    t.x = (s16)(hx - 0x28);
    t.y = (s16)(hy - 7);
    t.unk_20 = 0;
    t.unk_24 = 0;
    t.vram = 1;
    t.heapID = HEAP_ID_108;
    ctx->textObjs[idx] = sub_020135D8(&t);
    sub_020138E0(ctx->textObjs[idx], a4);
    String_Delete(str);
    DestroyMsgData(msg);
    RemoveWindow(&win);
}

void sub_020871C4(BgConfig *bgConfig, Window *window, int bgId, int x, int y, int width, int height, int baseTile, int msgId) {
    InitWindow(window);
    AddWindowParameterized(bgConfig, window, bgId, x, y, width, height, 12, baseTile);
    DrawFrameAndWindow2(window, TRUE, 1, 11);
    FillWindowPixelBuffer(window, 0xF);
    CopyWindowToVram(window);
    sub_02087230(window, msgId);
}

static void sub_02087230(Window *window, int msgId) {
    MsgData *msg;
    String *str;

    FillWindowPixelBuffer(window, 0xF);
    msg = NewMsgDataFromNarc(MSGDATA_LOAD_DIRECT, NARC_msgdata_msg, 38, HEAP_ID_108);
    str = NewString_ReadMsgData(msg, msgId);
    FillWindowPixelBuffer(window, 0xF);
    AddTextPrinterParameterized(window, 1, str, 0, 0, 0, NULL);
    CopyWindowToVram(window);
    String_Delete(str);
    DestroyMsgData(msg);
}
