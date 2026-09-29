#include "global.h"

#include "bg_window.h"
#include "brightness.h"
#include "filesystem.h"
#include "font.h"
#include "gf_gfx_loader.h"
#include "heap.h"
#include "msgdata.h"
#include "obj_char_transfer.h"
#include "palette.h"
#include "render_text.h"
#include "render_window.h"
#include "screen_fade.h"
#include "sprite.h"
#include "sprite_system.h"
#include "sys_task_api.h"
#include "systask_environment.h"
#include "text.h"
#include "unk_02013534.h"

typedef struct UnkOv80_0223A00C_Entry {
    u32 msgId;
    u8 plttFile;
    u8 charFile;
    u8 cellFile;
    u8 animFile;
    u8 bgPlttFile;
    u8 bgCharFile;
    u8 bgScrnFile;
} UnkOv80_0223A00C_Entry;

typedef struct UnkOv80_0223A00C_Interp {
    fx32 cur;
    fx32 start;
    fx32 delta;
    int t;
    int duration;
} UnkOv80_0223A00C_Interp;

typedef struct UnkOv80_0223A00C_AnimGroup {
    s16 timer;
    s16 count;
    ManagedSprite *sprites[4];
    UnkOv80_0223A00C_Interp interps[4];
} UnkOv80_0223A00C_AnimGroup;

typedef struct UnkOv80_0223A00C_TextObj {
    TextOBJ *textObj;
    UnkStruct_02021AC8 charTransferAlloc;
    u16 fontLength;
} UnkOv80_0223A00C_TextObj;

typedef struct UnkOv80_0223A00C_DisplayObj {
    Window window;
    u16 charLength;
    u16 fontLength;
} UnkOv80_0223A00C_DisplayObj;

typedef struct UnkOv80_0223A00C_Work {
    u8 filler_00[0x14];
    UnkOv80_0223A00C_AnimGroup anims;
    int timer;
    UnkOv80_0223A00C_TextObj textObj;
    ManagedSprite *sprite;
} UnkOv80_0223A00C_Work; // size: 0x94

typedef struct UnkOv80_0223A00C_Scroll {
    int left;
    int right;
    u8 done;
    u8 finished;
    u8 window[8];
} UnkOv80_0223A00C_Scroll; // size: 0x14

typedef struct UnkOv80_0223A00C_Slide {
    int pos;
    int state;
} UnkOv80_0223A00C_Slide;

typedef struct UnkOv80_0223A00C {
    int state;
    u8 filler_04[0x8];
    UnkOv80_0223A00C_Work *work;
    BgConfig *bgConfig;
    SpriteSystem *spriteSystem;
    SpriteManager *spriteManager;
    PaletteData *plttData;
    u16 *doneFlag;
    NARC *narc;
    s16 x;
    s16 y;
    u8 index;
    UnkStruct_02013534 *fontSystem;
    SysTask *vwaitTask;
    int palTimer;
    int palIdx;
    u16 palette[0x80];
    SysTask *palTask;
    UnkOv80_0223A00C_Scroll scroll;
    UnkOv80_0223A00C_Slide slide;
    int plttIdx;
    u32 plttMask;
} UnkOv80_0223A00C; // size: 0x168

void ov80_0223A00C(int index, BgConfig *bgConfig, SpriteSystem *spriteSystem, SpriteManager *spriteManager, PaletteData *plttData, u16 *doneFlag, s16 x, s16 y);
static void ov80_0223A0C0(UnkOv80_0223A00C *ctx, SysTask *task);
static void ov80_0223A0EC(SysTask *task, void *data);
static void ov80_0223A144(SysTask *task, void *data);
static BOOL ov80_0223A174(UnkOv80_0223A00C *ctx, enum HeapID heapId, const UnkOv80_0223A00C_Entry *entry);
static void ov80_0223A62C(UnkOv80_0223A00C *ctx, UnkOv80_0223A00C_TextObj *textObj, String *str, u32 fontId, u32 textColor, int palOffset, int palId, int x, int y, int centerText, UnkOv80_0223A00C_DisplayObj *displayObj);
static void ov80_0223A748(UnkOv80_0223A00C_TextObj *textObj);
static void ov80_0223A75C(String *str, u32 fontId, int *fontLength, int *charLength);
static void ov80_0223A78C(UnkOv80_0223A00C *ctx, UnkOv80_0223A00C_AnimGroup *anims, fx32 x, fx32 y, enum HeapID heapId);
static void ov80_0223A81C(UnkOv80_0223A00C_AnimGroup *anims);
static BOOL ov80_0223A834(UnkOv80_0223A00C_AnimGroup *anims);
static void ov80_0223A8C4(UnkOv80_0223A00C_Interp *interp, fx32 start, fx32 end, int duration);
static BOOL ov80_0223A8D4(UnkOv80_0223A00C_Interp *interp);
static void ov80_0223A91C(VecFx32 *out, fx32 x, fx32 y, fx32 z);
static void ov80_0223A938(UnkOv80_0223A00C *ctx, const UnkOv80_0223A00C_Entry *entry);
static void ov80_0223AA4C(SysTask *task, void *data);
static void ov80_0223AA80(UnkOv80_0223A00C *ctx, int mode);
static void ov80_0223AAD0(SysTask *task, void *data);
static void ov80_0223AB34(SysTask *task, void *data);
static BOOL ov80_0223AB94(UnkOv80_0223A00C *ctx, UnkOv80_0223A00C_Work *work, UnkOv80_0223A00C_Slide *slide);

// MWCC emits these two equal-size const structs in reverse definition order.
static const ManagedSpriteTemplate ov80_0223DB64 = {
    0, 0, 0, 0, 10, 0, NNS_G2D_VRAM_TYPE_2DMAIN, { 0x7DB, 0x7D3, 0x7D3, 0x7D3, -1, -1 },
           0, 0
};

static const ManagedSpriteTemplate ov80_0223DB30 = {
    0, 0, 0, 0, 12, 0, NNS_G2D_VRAM_TYPE_2DMAIN, { 0x7DA, 0x7D2, 0x7D2, 0x7D2, -1, -1 },
           0, 0
};

static const UnkOv80_0223A00C_Entry ov80_0223DB98[] = {
    { 0x2C3, 0xBA, 0xB9, 0xBB, 0xBC, 0xCA, 0xC9, 0xCB },
    { 0x2C5, 0xAE, 0xAD, 0xAF, 0xB0, 0xC1, 0xC0, 0xC2 },
    { 0x2C5, 0xAE, 0xAD, 0xAF, 0xB0, 0xC1, 0xC0, 0xC2 },
    { 0x2C7, 0xAA, 0xA9, 0xAB, 0xAC, 0xBE, 0xBD, 0xBF },
    { 0x2C4, 0xB6, 0xB5, 0xB7, 0xB8, 0xC7, 0xC6, 0xC8 },
    { 0x2C6, 0xB2, 0xB1, 0xB3, 0xB4, 0xC4, 0xC3, 0xC5 },
};

void ov80_0223A00C(int index, BgConfig *bgConfig, SpriteSystem *spriteSystem, SpriteManager *spriteManager, PaletteData *plttData, u16 *doneFlag, s16 x, s16 y) {
    UnkOv80_0223A00C *ctx = SysTask_GetData(CreateSysTaskAndEnvironment(ov80_0223A144, sizeof(UnkOv80_0223A00C), 1000, HEAP_ID_101));

    ctx->bgConfig = bgConfig;
    ctx->spriteSystem = spriteSystem;
    ctx->spriteManager = spriteManager;
    ctx->plttData = plttData;
    ctx->doneFlag = doneFlag;
    ctx->x = x;
    ctx->y = y;
    ctx->narc = NARC_New(NARC_a_1_0_9, HEAP_ID_101);
    if (ctx->doneFlag != NULL) {
        *ctx->doneFlag = 0;
    }
    ctx->index = index - 1;
    MI_CpuClear32(BgGetCharPtr(GF_BG_LYR_MAIN_1), 0x8000);
    ScheduleSetBgPosText(bgConfig, GF_BG_LYR_MAIN_1, BG_POS_OP_SET_X, 0);
    ScheduleSetBgPosText(bgConfig, GF_BG_LYR_MAIN_1, BG_POS_OP_SET_Y, 0);
    ov80_0223A938(ctx, &ov80_0223DB98[ctx->index]);
    ctx->vwaitTask = SysTask_CreateOnVWaitQueue(ov80_0223A0EC, ctx, 1);
}

static void ov80_0223A0C0(UnkOv80_0223A00C *ctx, SysTask *task) {
    SysTask_Destroy(ctx->palTask);
    SysTask_Destroy(ctx->vwaitTask);
    NARC_Delete(ctx->narc);
    Heap_FreeExplicit(HEAP_ID_101, ctx->work);
    DestroySysTaskAndEnvironment(task);
}

static void ov80_0223A0EC(SysTask *task, void *data) {
    UnkOv80_0223A00C *ctx = data;
    G2_SetWnd0Position(ctx->scroll.window[0], ctx->scroll.window[1], ctx->scroll.window[2], ctx->scroll.window[3]);
    G2_SetWnd1Position(ctx->scroll.window[4], ctx->scroll.window[5], ctx->scroll.window[6], ctx->scroll.window[7]);
}

static void ov80_0223A144(SysTask *task, void *data) {
    UnkOv80_0223A00C *ctx = data;
    if (ov80_0223A174(ctx, HEAP_ID_101, &ov80_0223DB98[ctx->index]) == TRUE) {
        ov80_0223A0C0(ctx, task);
    }
}

static BOOL ov80_0223A174(UnkOv80_0223A00C *ctx, enum HeapID heapId, const UnkOv80_0223A00C_Entry *entry) {
    UnkOv80_0223A00C_Work *work = ctx->work;
    MsgData *msgData;
    String *str;
    u8 plttIdx;

    switch (ctx->state) {
    case 0:
        ctx->work = Heap_Alloc(heapId, sizeof(UnkOv80_0223A00C_Work));
        memset(ctx->work, 0, sizeof(UnkOv80_0223A00C_Work));
        work = ctx->work;
        plttIdx = SpriteSystem_LoadPaletteBufferFromOpenNarc(ctx->plttData, PLTTBUF_MAIN_OBJ, ctx->spriteSystem, ctx->spriteManager, ctx->narc, 16, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x7D4);
        ctx->plttMask |= 1 << plttIdx;
        ctx->fontSystem = FontSystem_NewInit(4, HEAP_ID_101);
        msgData = NewMsgDataFromNarc(MSGDATA_LOAD_LAZY, NARC_msgdata_msg, 0x2D9, heapId);
        str = NewString_ReadMsgData(msgData, entry->msgId);
        ov80_0223A62C(ctx, &work->textObj, str, 0, MAKE_TEXT_COLOR(1, 2, 0), 0, 0x7D4, ctx->x + 116, ctx->y + 88, 0, NULL);
        TextOBJ_SetSpritesDrawFlag(work->textObj.textObj, FALSE);
        String_Delete(str);
        DestroyMsgData(msgData);
        ctx->plttIdx = SpriteSystem_LoadPaletteBufferFromOpenNarc(ctx->plttData, PLTTBUF_MAIN_OBJ, ctx->spriteSystem, ctx->spriteManager, ctx->narc, entry->plttFile, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x7D2);
        ctx->plttMask |= 1 << ctx->plttIdx;
        SpriteSystem_LoadCharResObjFromOpenNarc(ctx->spriteSystem, ctx->spriteManager, ctx->narc, entry->charFile, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 0x7DA);
        SpriteSystem_LoadCellResObjFromOpenNarc(ctx->spriteSystem, ctx->spriteManager, ctx->narc, entry->cellFile, FALSE, 0x7D2);
        SpriteSystem_LoadAnimResObjFromOpenNarc(ctx->spriteSystem, ctx->spriteManager, ctx->narc, entry->animFile, FALSE, 0x7D2);
        PaletteData_BlendPalette(ctx->plttData, PLTTBUF_MAIN_OBJ, ctx->plttIdx * 16, 16, 14, RGB_BLACK);
        plttIdx = SpriteSystem_LoadPaletteBufferFromOpenNarc(ctx->plttData, PLTTBUF_MAIN_OBJ, ctx->spriteSystem, ctx->spriteManager, ctx->narc, 59, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x7D3);
        ctx->plttMask |= 1 << plttIdx;
        SpriteSystem_LoadCharResObjFromOpenNarc(ctx->spriteSystem, ctx->spriteManager, ctx->narc, 204, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 0x7DB);
        SpriteSystem_LoadCellResObjFromOpenNarc(ctx->spriteSystem, ctx->spriteManager, ctx->narc, 205, FALSE, 0x7D3);
        SpriteSystem_LoadAnimResObjFromOpenNarc(ctx->spriteSystem, ctx->spriteManager, ctx->narc, 206, FALSE, 0x7D3);
        work->sprite = SpriteSystem_NewSprite(ctx->spriteSystem, ctx->spriteManager, &ov80_0223DB30);
        ManagedSprite_SetDrawFlag(work->sprite, FALSE);
        Sprite_TickFrame(work->sprite->sprite);
        ov80_0223A78C(ctx, &work->anims, FX32_CONST(ctx->x) + FX32_CONST(72), FX32_CONST(ctx->y) + FX32_CONST(82), heapId);
        ctx->state++;
        break;
    case 1:
        BeginNormalPaletteFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, RGB_WHITE, 3, 1, heapId);
        ctx->state++;
        break;
    case 2:
        if (IsPaletteFadeFinished()) {
            ctx->state++;
        }
        break;
    case 3:
        BeginNormalPaletteFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, RGB_WHITE, 3, 1, heapId);
        ctx->state++;
        break;
    case 4:
        if (IsPaletteFadeFinished()) {
            ctx->state++;
        }
        break;
    case 5:
        ov80_0223AA80(ctx, 0);
        ctx->state++;
        break;
    case 6:
        if (ctx->scroll.done == TRUE) {
            ctx->state++;
            work->timer = 10;
        }
        break;
    case 7:
        if (--work->timer < 0) {
            if (ov80_0223A834(&work->anims) == TRUE) {
                ctx->state++;
            }
        }
        break;
    case 8:
        ctx->state++;
        break;
    case 9:
        if (ov80_0223AB94(ctx, work, &ctx->slide) == TRUE) {
            ctx->state++;
        }
        break;
    case 10:
        work->timer = 10;
        ctx->state++;
        break;
    case 11:
        if (--work->timer < 0) {
            BeginNormalPaletteFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, RGB_WHITE, 3, 1, heapId);
            ctx->state++;
        }
        break;
    case 12:
        if (IsPaletteFadeFinished()) {
            PaletteData_BlendPalettes(ctx->plttData, PLTTBUF_MAIN_OBJ, 0x3FFF ^ ctx->plttMask, 14, RGB_BLACK);
            PaletteData_BlendPalette(ctx->plttData, PLTTBUF_MAIN_OBJ, ctx->plttIdx * 16, 16, 0, RGB_BLACK);
            SetBlendBrightness(-14, (GXBlendPlaneMask)(GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), SCREEN_MASK_MAIN);
            TextOBJ_SetSpritesDrawFlag(work->textObj.textObj, TRUE);
            ctx->state++;
        }
        break;
    case 13:
        BeginNormalPaletteFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, RGB_WHITE, 3, 1, heapId);
        ctx->state++;
        break;
    case 14:
        if (IsPaletteFadeFinished()) {
            work->timer = 26;
            ctx->state++;
        }
        break;
    case 15:
        if (--work->timer < 0) {
            ctx->state++;
        }
        break;
    case 16:
        BeginNormalPaletteFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, RGB_WHITE, 15, 1, HEAP_ID_101);
        ctx->state++;
        break;
    case 17:
        if (IsPaletteFadeFinished()) {
            ctx->state++;
        }
        break;
    case 18:
        sub_0200FBF4(PM_LCD_BOTTOM, RGB_WHITE);
        if (ctx->doneFlag != NULL) {
            *ctx->doneFlag = 1;
        }
        ov80_0223A748(&work->textObj);
        sub_020135AC(ctx->fontSystem);
        Sprite_DeleteAndFreeResources(work->sprite);
        ov80_0223A81C(&work->anims);
        return TRUE;
    }
    return FALSE;
}

static void ov80_0223A62C(UnkOv80_0223A00C *ctx, UnkOv80_0223A00C_TextObj *textObj, String *str, u32 fontId, u32 textColor, int palOffset, int palId, int x, int y, int centerText, UnkOv80_0223A00C_DisplayObj *displayObj) {
    TextOBJTemplate textObjTemplate;
    Window window;
    UnkStruct_02021AC8 charTransferAlloc;
    int fontLength, charLength;
    TextOBJ *obj;
    BgConfig *bgConfig;
    SpriteManager *spriteManager;

    GF_ASSERT(textObj->textObj == NULL);

    bgConfig = ctx->bgConfig;
    spriteManager = ctx->spriteManager;

    if (displayObj == NULL) {
        ov80_0223A75C(str, fontId, &fontLength, &charLength);
    } else {
        fontLength = displayObj->fontLength;
        charLength = displayObj->charLength;
    }

    if (displayObj == NULL) {
        InitWindow(&window);
        AddTextWindowTopLeftCorner(bgConfig, &window, charLength, 16 / 8, 0, 0);
        AddTextPrinterParameterizedWithColorAndSpacing(&window, fontId, str, 0, 0, 0xFF, textColor, 0, 0, NULL);
    } else {
        window = displayObj->window;
    }

    sub_02021AC8(sub_02013688(&window, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_101), TRUE, NNS_G2D_VRAM_TYPE_2DMAIN, &charTransferAlloc);

    if (centerText == 1) {
        x -= fontLength / 2;
    }

    textObjTemplate.fontSystem = ctx->fontSystem;
    textObjTemplate.window = &window;
    textObjTemplate.spriteList = SpriteManager_GetSpriteList(spriteManager);
    textObjTemplate.plttResourceProxy = SpriteManager_FindPlttResourceProxy(spriteManager, palId);
    textObjTemplate.sprite = NULL;
    textObjTemplate.offset = charTransferAlloc.offset;
    textObjTemplate.x = x;
    textObjTemplate.y = y - 8;
    textObjTemplate.unk_20 = 0;
    textObjTemplate.unk_24 = 11;
    textObjTemplate.vram = NNS_G2D_VRAM_TYPE_2DMAIN;
    textObjTemplate.heapID = HEAP_ID_101;

    obj = sub_020135D8(&textObjTemplate);

    sub_020138E0(obj, palOffset);
    sub_020136B4(obj, x, y - 8);

    if (displayObj == NULL) {
        RemoveWindow(&window);
    }

    textObj->textObj = obj;
    textObj->charTransferAlloc = charTransferAlloc;
    textObj->fontLength = fontLength;
}

static void ov80_0223A748(UnkOv80_0223A00C_TextObj *textObj) {
    FontOAM_Delete(textObj->textObj);
    sub_02021B5C(&textObj->charTransferAlloc);
}

static void ov80_0223A75C(String *str, u32 fontId, int *fontLength, int *charLength) {
    int width = FontID_String_GetWidth(fontId, str, 0);
    int tiles = width / 8;
    if (FX_ModS32(width, 8) != 0) {
        tiles++;
    }
    *fontLength = width;
    *charLength = tiles;
}

static void ov80_0223A78C(UnkOv80_0223A00C *ctx, UnkOv80_0223A00C_AnimGroup *anims, fx32 x, fx32 y, enum HeapID heapId) {
    ManagedSpriteTemplate template = ov80_0223DB64;
    int i;

    template.x = x >> FX32_SHIFT;
    template.y = y >> FX32_SHIFT;
    anims->timer = 0;
    anims->count = 0;
    for (i = 0; i < 4; i++) {
        anims->sprites[i] = SpriteSystem_NewSprite(ctx->spriteSystem, ctx->spriteManager, &template);
        ManagedSprite_SetDrawFlag(anims->sprites[i], FALSE);
        if (i != 3) {
            Sprite_SetAffineOverwriteMode(anims->sprites[i]->sprite, NNS_G2D_RND_AFFINE_OVERWRITE_DOUBLE);
            Sprite_SetAnimCtrlSeq(anims->sprites[i]->sprite, 1);
            ov80_0223A8C4(&anims->interps[i], FX32_CONST(2), FX32_CONST(1), 6);
        } else {
            ov80_0223A8C4(&anims->interps[i], FX32_ONE, FX32_ONE, 6);
        }
    }
}

static void ov80_0223A81C(UnkOv80_0223A00C_AnimGroup *anims) {
    int i;
    for (i = 0; i < 4; i++) {
        Sprite_DeleteAndFreeResources(anims->sprites[i]);
    }
}

static BOOL ov80_0223A834(UnkOv80_0223A00C_AnimGroup *anims) {
    int i;
    BOOL done = TRUE;
    BOOL finished;
    VecFx32 scale;

    if (anims->count < 4) {
        done = FALSE;
        anims->timer--;
        if (anims->timer <= 0) {
            anims->timer = 3;
            anims->count++;
        }
    }
    for (i = 0; i < anims->count; i++) {
        finished = ov80_0223A8D4(&anims->interps[i]);
        ov80_0223A91C(&scale, anims->interps[i].cur, anims->interps[i].cur, anims->interps[i].cur);
        Sprite_SetAffineScale(anims->sprites[i]->sprite, &scale);
        Sprite_SetDrawFlag(anims->sprites[i]->sprite, TRUE);
        if (finished == FALSE) {
            done = FALSE;
        }
    }
    return done;
}

static void ov80_0223A8C4(UnkOv80_0223A00C_Interp *interp, fx32 start, fx32 end, int duration) {
    interp->cur = start;
    interp->start = start;
    interp->delta = end - start;
    interp->duration = duration;
    interp->t = 0;
}

static BOOL ov80_0223A8D4(UnkOv80_0223A00C_Interp *interp) {
    fx32 val = FX_Div(FX_Mul(interp->delta, interp->t << FX32_SHIFT), interp->duration << FX32_SHIFT);
    interp->cur = val + interp->start;
    if (interp->t + 1 <= interp->duration) {
        interp->t++;
        return FALSE;
    }
    interp->t = interp->duration;
    return TRUE;
}

static void ov80_0223A91C(VecFx32 *out, fx32 x, fx32 y, fx32 z) {
    VecFx32 vec = { x, y, z };
    *out = vec;
}

static void ov80_0223A938(UnkOv80_0223A00C *ctx, const UnkOv80_0223A00C_Entry *entry) {
    NNSG2dPaletteData *plttData;
    void *data;

    GX_SetVisibleWnd(GX_WNDMASK_W0 | GX_WNDMASK_W1);
    G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, TRUE);
    G2_SetWnd1InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, TRUE);
    G2_SetWndOutsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, TRUE);
    G2_SetWnd0Position(0, 0, 0, 0);
    G2_SetWnd1Position(0, 0, 0, 0);
    PaletteData_LoadNarc(ctx->plttData, NARC_a_1_0_9, entry->bgPlttFile, HEAP_ID_101, PLTTBUF_MAIN_BG, 0x20, 0xC0);
    GfGfxLoader_LoadCharDataFromOpenNarc(ctx->narc, entry->bgCharFile, ctx->bgConfig, GF_BG_LYR_MAIN_1, 0, 0, FALSE, HEAP_ID_101);
    GfGfxLoader_LoadScrnDataFromOpenNarc(ctx->narc, entry->bgScrnFile, ctx->bgConfig, GF_BG_LYR_MAIN_1, 0, 0, FALSE, HEAP_ID_101);
    BgTilemapRectChangePalette(ctx->bgConfig, GF_BG_LYR_MAIN_1, 0, 0, 32, 32, 12);
    ScheduleBgTilemapBufferTransfer(ctx->bgConfig, GF_BG_LYR_MAIN_1);
    data = GfGfxLoader_GetPlttData(NARC_a_1_0_9, entry->bgPlttFile, &plttData, HEAP_ID_101);
    MI_CpuCopy16(plttData->pRawData, ctx->palette, sizeof(ctx->palette));
    Heap_Free(data);
    ctx->palTask = SysTask_CreateOnMainQueue(ov80_0223AA4C, ctx, 1100);
}

static void ov80_0223AA4C(SysTask *task, void *data) {
    UnkOv80_0223A00C *ctx = data;

    if (++ctx->palTimer >= 0) {
        ctx->palTimer = 0;
        if (++ctx->palIdx >= 8) {
            ctx->palIdx = 0;
        }
        PaletteData_LoadPalette(ctx->plttData, &ctx->palette[ctx->palIdx * 16], PLTTBUF_MAIN_BG, 0xC0, 0x20);
    }
}

static void ov80_0223AA80(UnkOv80_0223A00C *ctx, int mode) {
    UnkOv80_0223A00C_Scroll *scroll = &ctx->scroll;

    MI_CpuFill8(scroll, 0, sizeof(UnkOv80_0223A00C_Scroll));
    if (mode == 0) {
        scroll->left = 0x5000;
        scroll->right = 0x5000;
        SysTask_CreateOnMainQueue(ov80_0223AAD0, scroll, 1000);
    } else {
        scroll->left = 0x2E00;
        scroll->right = 0x7200;
        SysTask_CreateOnMainQueue(ov80_0223AB34, scroll, 1000);
    }
}

static void ov80_0223AAD0(SysTask *task, void *data) {
    UnkOv80_0223A00C_Scroll *scroll = data;

    if (scroll->finished == 0) {
        scroll->left -= 0x800;
        scroll->right += 0x800;
        if (scroll->left <= 0x2E00) {
            scroll->left = 0x2E00;
            scroll->right = 0x7200;
            scroll->finished++;
        }
        scroll->window[0] = 0;
        scroll->window[1] = scroll->left >> 8;
        scroll->window[2] = 0xFF;
        scroll->window[3] = scroll->right >> 8;
        scroll->window[4] = 1;
        scroll->window[5] = scroll->left >> 8;
        scroll->window[6] = 0;
        scroll->window[7] = scroll->right >> 8;
    } else {
        scroll->done = TRUE;
        SysTask_Destroy(task);
    }
}

static void ov80_0223AB34(SysTask *task, void *data) {
    UnkOv80_0223A00C_Scroll *scroll = data;

    if (scroll->finished == 0) {
        scroll->left += 0x800;
        scroll->right -= 0x800;
        if (scroll->left >= 0x5000) {
            scroll->left = 0x5000;
            scroll->right = 0x5000;
            scroll->finished++;
        }
        scroll->window[0] = 0;
        scroll->window[1] = scroll->left >> 8;
        scroll->window[2] = 0xFF;
        scroll->window[3] = scroll->right >> 8;
        scroll->window[4] = 1;
        scroll->window[5] = scroll->left >> 8;
        scroll->window[6] = 0;
        scroll->window[7] = scroll->right >> 8;
    } else {
        scroll->done = TRUE;
        SysTask_Destroy(task);
    }
}

static BOOL ov80_0223AB94(UnkOv80_0223A00C *ctx, UnkOv80_0223A00C_Work *work, UnkOv80_0223A00C_Slide *slide) {
    switch (slide->state) {
    case 0:
        ManagedSprite_SetPositionXYWithSubscreenOffset(work->sprite, ctx->x + 256, ctx->y + 80, FX32_CONST(512));
        ManagedSprite_SetDrawFlag(work->sprite, TRUE);
        slide->pos = 256 << 8;
        slide->state++;
        break;
    case 1:
        slide->pos -= 0xF00;
        if (slide->pos <= 208 << 8) {
            slide->pos = 208 << 8;
            slide->state++;
        }
        ManagedSprite_SetPositionXYWithSubscreenOffset(work->sprite, slide->pos >> 8, ctx->y + 80, FX32_CONST(512));
        break;
    default:
        return TRUE;
    }
    return FALSE;
}
