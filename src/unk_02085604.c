#include "global.h"

#include "constants/sndseq.h"

#include "bg_window.h"
#include "heap.h"
#include "obj_char_transfer.h"
#include "options.h"
#include "palette.h"
#include "pm_string.h"
#include "screen_fade.h"
#include "sprite_system.h"
#include "string_util.h"
#include "system.h"
#include "touch_hitbox_controller.h"
#include "touchscreen.h"
#include "unk_02005D10.h"
#include "unk_02013534.h"

// Numeric-input app state machine and input handling.
// UnkStruct_020850F4 mirrors the layout used by src/unk_020863F4.c.

void *sub_0203A4AC(enum HeapID heapID);

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

typedef struct UnkStruct_020850F4_Range {
    u16 lo;
    u16 hi;
} UnkStruct_020850F4_Range;

typedef struct UnkStruct_020850F4 {
    UnkStruct_020850F4_Entry digits[16];
    UnkStruct_020850F4_Entry seps[3];
    UnkStruct_020850F4_Entry cursors[3];
    UnkStruct_020850F4_Entry buttons[2];
    s16 unk2A0;
    s16 unk2A2[4];
    UnkStruct_020850F4_Range groupRanges[5];
    u8 unk2BE[2];
    int state;
    int unk2C4;
    int subState;
    int timer;
    int numDigitSlots;
    int curGroup;
    int prevGroup;
    int curLo;
    int curHi;
    int prevLo;
    int prevHi;
    NARC *narc;
    SpriteSystem *spriteSystem;
    SpriteManager *spriteManager;
    BgConfig *bgConfig;
    PaletteData *pltt;
    TouchHitboxController *hitboxController;
    TouchscreenHitbox hitboxes[28];
    int unk374;
    UnkStruct_02013534 *fontSystem;
    TextOBJ *textObjs[2];
    UnkStruct_02021AC8 unk384[2];
    Window window;
    int pendingAction;
    int pendingArg;
    int pendingFlag;
    int unk3B8;
    int groupSizes[5];
    int unk3D0;
    String *outStr;
    Options *options;
    int startGroup;
    u32 number;
    int msgId;
    int unk3E8;
    int numSeps;
    int numDigits;
} UnkStruct_020850F4;

typedef struct UnkStruct_020850F4_HitRect {
    s16 x;
    s16 y;
    s16 w;
    s16 h;
} UnkStruct_020850F4_HitRect;

typedef struct UnkStruct_020850F4_HitRects {
    UnkStruct_020850F4_HitRect rects[12];
} UnkStruct_020850F4_HitRects;

typedef struct UnkStruct_020850F4_KeyGrid {
    int sel[3][5];
} UnkStruct_020850F4_KeyGrid;

void sub_02086490(UnkStruct_020850F4 *ctx);
void sub_02086758(UnkStruct_020850F4 *ctx);
void sub_020868A0(UnkStruct_020850F4 *ctx);
void sub_020869BC(UnkStruct_020850F4 *ctx);
void sub_02086AB4(UnkStruct_020850F4 *ctx, int idx, int flag);
void sub_02086AE4(UnkStruct_020850F4 *ctx, int idx);
void sub_02086B2C(UnkStruct_020850F4 *ctx, int idx);
void sub_02086B6C(UnkStruct_020850F4 *ctx, int hitboxIdx, int spriteIdx);
void sub_02086BB4(UnkStruct_020850F4 *ctx);
void sub_02086C8C(UnkStruct_020850F4 *ctx);
int sub_02086D98(int anim, int flag);
void sub_02086DA4(UnkStruct_020850F4 *ctx);
void sub_02086DE4(UnkStruct_020850F4 *ctx, BOOL animate);
void sub_02086F44(UnkStruct_020850F4 *ctx);
void sub_02086FCC(UnkStruct_020850F4 *ctx);
void sub_02087064(UnkStruct_020850F4 *ctx);
void sub_020871C4(BgConfig *bgConfig, Window *window, int bgId, int x, int y, int width, int height, int baseTile, int msgId);

static void sub_02085604(UnkStruct_020850F4 *ctx, int group);
void sub_02085688(UnkStruct_020850F4 *ctx);
static void sub_02085808(UnkStruct_020850F4 *ctx, int state);
static BOOL sub_02085820(UnkStruct_020850F4 *ctx);
static BOOL sub_020858DC(UnkStruct_020850F4 *ctx);
static BOOL sub_02085938(UnkStruct_020850F4 *ctx);
static BOOL sub_02085974(UnkStruct_020850F4 *ctx);
BOOL sub_02085BEC(UnkStruct_020850F4 *ctx);
static void sub_02085C20(UnkStruct_020850F4 *ctx);
static void sub_02085F80(UnkStruct_020850F4 *ctx);
static void sub_02085FFC(UnkStruct_020850F4 *ctx);
void sub_020860B8(UnkStruct_020850F4 *ctx);
static void sub_02086180(u32 idx, u32 event, void *arg);
static void sub_02086328(UnkStruct_020850F4 *ctx);
static void sub_02086384(UnkStruct_020850F4 *ctx);
static int sub_02086398(UnkStruct_020850F4 *ctx, int group);
static int sub_020863C0(UnkStruct_020850F4 *ctx, int group);

static const UnkStruct_020850F4_HitRects sHitRects = {
    {
     { 0x20, 0x50, 0x14, 0x14 },
     { 0x50, 0x50, 0x14, 0x14 },
     { 0x80, 0x50, 0x14, 0x14 },
     { 0xB0, 0x50, 0x14, 0x14 },
     { 0xE0, 0x50, 0x14, 0x14 },
     { 0x20, 0x80, 0x14, 0x14 },
     { 0x50, 0x80, 0x14, 0x14 },
     { 0x80, 0x80, 0x14, 0x14 },
     { 0xB0, 0x80, 0x14, 0x14 },
     { 0xE0, 0x80, 0x14, 0x14 },
     { 0x40, 0xB0, 0x3C, 0x0C },
     { 0xC0, 0xB0, 0x3C, 0x0C },
     }
};

static const UnkStruct_020850F4_KeyGrid sKeyGrid = {
    {
     { 0, 1, 2, 3, 4 },
     { 5, 6, 7, 8, 9 },
     { 10, 10, 10, 11, 11 },
     }
};

static BOOL (*const sStateFuncs[])(UnkStruct_020850F4 *ctx) = {
    sub_02085820,
    sub_02085938,
    sub_02085974,
    sub_020858DC,
};

static f32 sScaleGrow[] = { 0.5f, 0.2f, 0.5f, 1.0f, 1.2f, 1.0f, 1.0f };
static f32 sScaleShrink[] = { 0.8f, 0.6f, 0.4f, 0.2f, 0.8f, 1.0f, 1.0f };

static void sub_02085604(UnkStruct_020850F4 *ctx, int group) {
    ctx->prevGroup = ctx->curGroup;
    ctx->curGroup = group;
    ctx->curLo = 0;
    ctx->curHi = 0;
    ctx->prevLo = 0;
    ctx->prevHi = 0;
    if (ctx->curGroup != 0) {
        ctx->curLo = ctx->groupRanges[ctx->curGroup - 1].lo;
        ctx->curHi = ctx->groupRanges[ctx->curGroup - 1].hi;
    }
    if (ctx->prevGroup != 0) {
        ctx->prevLo = ctx->groupRanges[ctx->prevGroup - 1].lo;
        ctx->prevHi = ctx->groupRanges[ctx->prevGroup - 1].hi;
    }
}

void sub_02085688(UnkStruct_020850F4 *ctx) {
    int i;
    int j;
    int k;
    int m;
    u16 sum;

    ctx->unk374 = 1;
    sum = 0;
    for (i = 0; i < 5; i++) {
        ctx->groupRanges[i].lo = sum;
        sum += ctx->groupSizes[i];
        ctx->groupRanges[i].hi = sum;
    }
    sub_02085604(ctx, ctx->startGroup + 1);
    for (i = 0; i < 4; i++) {
        if (ctx->groupSizes[i] == 0) {
            break;
        }
        ctx->numDigitSlots += ctx->groupSizes[i];
        ctx->numSeps++;
    }
    ctx->numSeps--;
    ctx->unk2A0 = 0x70 - ((ctx->numDigitSlots + ctx->numSeps) * 8) / 2;
    for (i = 0; i < 4; i++) {
        ctx->unk2A2[i] = 0x70 - (ctx->numSeps * 8 + ((ctx->numDigitSlots - ctx->groupSizes[i]) * 8 + ctx->groupSizes[i] * 32)) / 2;
    }
    ctx->unk2A2[0] += 12;
    j = 0;
    for (i = 0; i < ctx->numSeps; i++) {
        j += ctx->groupSizes[i];
        ctx->seps[i].unk0 = j - 1;
    }
    j = 0;
    k = 0;
    do {
        for (m = 0; m < ctx->groupSizes[k]; m++) {
            ctx->digits[j].unk4 = k + 1;
            j++;
        }
        k++;
    } while (j < ctx->numDigitSlots);
    for (i = 0; i < ctx->startGroup; i++) {
        ctx->numDigits += ctx->groupSizes[i];
    }
}

static void sub_02085808(UnkStruct_020850F4 *ctx, int state) {
    ctx->state = state;
    ctx->unk2C4 = 0;
    ctx->subState = 0;
    ctx->timer = 0;
}

static BOOL sub_02085820(UnkStruct_020850F4 *ctx) {
    void *nclr;
    NNSG2dPaletteData *plttData;

    sub_02086490(ctx);
    sub_02086DA4(ctx);
    sub_02086758(ctx);
    sub_02086DE4(ctx, FALSE);
    sub_020868A0(ctx);
    sub_020869BC(ctx);
    sub_02086F44(ctx);
    sub_02086FCC(ctx);
    sub_02087064(ctx);
    sub_020871C4(ctx->bgConfig, &ctx->window, 4, 2, 0x15, 0x1B, 2, 0x64, ctx->msgId);
    if (ctx->unk3E8) {
        nclr = sub_0203A4AC(HEAP_ID_108);
        NNS_G2dGetUnpackedPaletteData(nclr, &plttData);
        PaletteData_LoadPalette(ctx->pltt, plttData->pRawData, PLTTBUF_SUB_OBJ, 0xE0, 0x20);
        Heap_Free(nclr);
    }
    sub_02085808(ctx, 1);
    BeginNormalPaletteFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, RGB_BLACK, 6, 1, HEAP_ID_108);
    return FALSE;
}

static BOOL sub_020858DC(UnkStruct_020850F4 *ctx) {
    switch (ctx->subState) {
    case 0:
        BeginNormalPaletteFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, RGB_BLACK, 6, 1, HEAP_ID_108);
        ctx->subState++;
        break;
    case 1:
        if (IsPaletteFadeFinished() == TRUE) {
            ctx->subState++;
        }
        break;
    default:
        return TRUE;
    }
    return FALSE;
}

static BOOL sub_02085938(UnkStruct_020850F4 *ctx) {
    if (ctx->subState == 0) {
        if (IsPaletteFadeFinished() == TRUE) {
            ctx->subState++;
        }
    } else {
        sub_02086328(ctx);
        TouchHitboxController_IsTriggered(ctx->hitboxController);
        sub_02085C20(ctx);
    }
    return FALSE;
}

static BOOL sub_02085974(UnkStruct_020850F4 *ctx) {
    int i;

    switch (ctx->subState) {
    case 0:
        sub_02086AB4(ctx, 0, 0);
        for (i = 0; i < ctx->numDigitSlots; i++) {
            if (ctx->digits[i].counter != 0) {
                ManagedSprite_OffsetPositionXY(ctx->digits[i].sprite, ctx->digits[i].dx, ctx->digits[i].dy);
                ctx->digits[i].counter--;
                if (i >= ctx->curLo && i < ctx->curHi) {
                    ManagedSprite_SetAffineScale(ctx->digits[i].sprite, sScaleGrow[ctx->digits[i].scaleIdx], sScaleGrow[ctx->digits[i].scaleIdx]);
                    ctx->digits[i].scaleIdx++;
                }
                if (i >= ctx->prevLo && i < ctx->prevHi) {
                    ManagedSprite_SetAffineScale(ctx->digits[i].sprite, sScaleShrink[ctx->digits[i].scaleIdx], sScaleShrink[ctx->digits[i].scaleIdx]);
                    ctx->digits[i].scaleIdx++;
                }
            }
        }
        for (i = 0; i < ctx->numSeps; i++) {
            if (ctx->seps[i].counter != 0) {
                ManagedSprite_OffsetPositionXY(ctx->seps[i].sprite, ctx->seps[i].dx, ctx->seps[i].dy);
                ctx->seps[i].counter--;
            }
        }
        if (ctx->digits[0].counter == 0) {
            for (i = ctx->curLo; i < ctx->curHi; i++) {
                ManagedSprite_SetAnim(ctx->digits[i].sprite, sub_02086D98(ctx->digits[i].unk0, ctx->digits[i].unk8));
                ManagedSprite_TickFrame(ctx->digits[i].sprite);
            }
            for (i = ctx->prevLo; i < ctx->prevHi; i++) {
                ManagedSprite_SetAnim(ctx->digits[i].sprite, sub_02086D98(ctx->digits[i].unk0, ctx->digits[i].unk8));
                ManagedSprite_TickFrame(ctx->digits[i].sprite);
            }
            ctx->subState++;
        }
        ctx->timer++;
        break;
    case 1:
        for (i = ctx->curLo; i < ctx->curHi; i++) {
            if (ctx->digits[i].scaleIdx != 6) {
                ManagedSprite_SetAffineScale(ctx->digits[i].sprite, sScaleGrow[ctx->digits[i].scaleIdx], sScaleGrow[ctx->digits[i].scaleIdx]);
                ctx->digits[i].scaleIdx++;
            }
        }
        for (i = ctx->prevLo; i < ctx->prevHi; i++) {
            if (ctx->digits[i].scaleIdx != 6) {
                ManagedSprite_SetAffineScale(ctx->digits[i].sprite, sScaleShrink[ctx->digits[i].scaleIdx], sScaleShrink[ctx->digits[i].scaleIdx]);
                ctx->digits[i].scaleIdx++;
            }
        }
        ctx->timer++;
        if (ctx->timer == 6) {
            ctx->subState++;
        }
        break;
    default:
        sub_02086F44(ctx);
        if (ctx->pendingFlag == 0) {
            sub_02086AE4(ctx, sub_02086398(ctx, ctx->pendingArg));
        } else {
            sub_02086AE4(ctx, sub_020863C0(ctx, ctx->pendingArg));
        }
        if (ctx->curGroup != 0) {
            sub_02086AB4(ctx, 0, 1);
        }
        sub_02086384(ctx);
        sub_02085808(ctx, 1);
        break;
    }
    return FALSE;
}

BOOL sub_02085BEC(UnkStruct_020850F4 *ctx) {
    BOOL ret = sStateFuncs[ctx->state](ctx);
    sub_02086BB4(ctx);
    sub_02086C8C(ctx);
    SpriteSystem_DrawSprites(ctx->spriteManager);
    return ret;
}

static void sub_02085C20(UnkStruct_020850F4 *ctx) {
    int sel;
    int moved;
    int row;
    int col;
    int cur;
    int group;
    int next;
    int nextGroup;
    UnkStruct_020850F4_KeyGrid grid;

    grid = sKeyGrid;
    col = ctx->cursors[1].dx;
    row = ctx->cursors[1].dy;
    moved = FALSE;
    sel = grid.sel[row][col];
    if (ctx->state != 1 || ctx->pendingAction == 1) {
        return;
    }
    if (ctx->unk374 == 1) {
        if (gSystem.newKeys != 0 && !System_GetTouchHeld()) {
            ctx->unk374 = 0;
            sub_02086B2C(ctx, sel);
            if (sel == 10 || sel == 11) {
                if (ctx->cursors[1].unk0 != 2) {
                    ctx->cursors[1].unk0 = 2;
                }
            } else {
                if (ctx->cursors[1].unk0 != 1) {
                    ctx->cursors[1].unk0 = 1;
                }
            }
        }
        return;
    }
    if (gSystem.newAndRepeatedKeys & PAD_KEY_UP) {
        if (row > 0) {
            ctx->cursors[1].dy--;
        } else {
            ctx->cursors[1].dy = 2;
        }
        moved = TRUE;
    } else if (gSystem.newAndRepeatedKeys & PAD_KEY_DOWN) {
        ctx->cursors[1].dy++;
        ctx->cursors[1].dy %= 3;
        moved = TRUE;
    } else if (gSystem.newAndRepeatedKeys & PAD_KEY_RIGHT) {
        if (sel == 10) {
            ctx->cursors[1].dx = 3;
        } else if (sel == 11) {
            ctx->cursors[1].dx = 0;
        } else {
            ctx->cursors[1].dx = col + 1;
            ctx->cursors[1].dx %= 5;
        }
        moved = TRUE;
    } else if (gSystem.newAndRepeatedKeys & PAD_KEY_LEFT) {
        if (sel == 10) {
            ctx->cursors[1].dx = 3;
        } else if (sel == 11) {
            ctx->cursors[1].dx = 0;
        } else if (col > 0) {
            ctx->cursors[1].dx = col - 1;
        } else {
            ctx->cursors[1].dx = 4;
        }
        moved = TRUE;
    } else if (gSystem.newKeys & PAD_BUTTON_A) {
        if (sel == 10) {
            sub_02085FFC(ctx);
            PlaySE(SEQ_SE_DP_BUTTON3);
        } else if (sel == 11) {
            sub_02085F80(ctx);
            PlaySE(SEQ_SE_DP_PIRORIRO);
        } else {
            if (ctx->curGroup == 0) {
                return;
            }
            cur = ctx->cursors[0].unk0;
            ctx->digits[cur].unk0 = sel + 1;
            sub_02086AB4(ctx, 1, 0);
            sub_02086AB4(ctx, 2, 1);
            sub_02086B6C(ctx, sel, 2);
            ManagedSprite_SetAnim(ctx->digits[cur].sprite, sub_02086D98(ctx->digits[cur].unk0, ctx->digits[cur].unk8));
            ManagedSprite_SetAnim(ctx->cursors[2].sprite, 3);
            group = ctx->digits[cur].unk4;
            next = cur + 1;
            if (next == ctx->numDigitSlots) {
                ctx->pendingAction = 1;
                ctx->pendingArg = 0;
                ctx->cursors[1].dx = 3;
                ctx->cursors[1].dy = 2;
                moved = TRUE;
            } else {
                nextGroup = ctx->digits[next].unk4;
                if (group != nextGroup) {
                    ctx->pendingAction = 1;
                    ctx->pendingArg = nextGroup;
                } else {
                    ctx->pendingAction = 2;
                    ctx->pendingArg = next;
                }
                PlaySE(SEQ_SE_DP_BUTTON3);
            }
        }
    } else if (gSystem.newKeys & PAD_BUTTON_B) {
        sub_02085FFC(ctx);
        PlaySE(SEQ_SE_DP_BUTTON3);
    } else if (gSystem.newAndRepeatedKeys & PAD_BUTTON_L) {
        if (ctx->cursors[0].unk0 == ctx->numDigits) {
            ctx->cursors[0].unk0 = ctx->numDigitSlots - 1;
        } else {
            ctx->cursors[0].unk0--;
        }
        cur = ctx->cursors[0].unk0;
        if (ctx->digits[cur].unk8 == 1) {
            ctx->pendingAction = 2;
            ctx->pendingArg = cur;
        } else {
            ctx->pendingAction = 1;
            ctx->pendingArg = ctx->digits[cur].unk4;
            ctx->pendingFlag = 1;
        }
        PlaySE(SEQ_SE_DP_SELECT78);
    } else if (gSystem.newAndRepeatedKeys & PAD_BUTTON_R) {
        if (ctx->cursors[0].unk0 == ctx->numDigitSlots - 1) {
            ctx->cursors[0].unk0 = ctx->numDigits;
        } else {
            ctx->cursors[0].unk0++;
        }
        cur = ctx->cursors[0].unk0;
        if (ctx->digits[cur].unk8 == 1) {
            ctx->pendingAction = 2;
            ctx->pendingArg = cur;
        } else {
            ctx->pendingAction = 1;
            ctx->pendingArg = ctx->digits[cur].unk4;
        }
        PlaySE(SEQ_SE_DP_SELECT78);
    }
    if (moved == TRUE) {
        PlaySE(SEQ_SE_DP_SELECT78);
        sel = grid.sel[ctx->cursors[1].dy][ctx->cursors[1].dx];
        sub_02086B2C(ctx, sel);
        if (sel == 10 || sel == 11) {
            if (ctx->cursors[1].unk0 != 2) {
                ctx->cursors[1].unk0 = 2;
            }
        } else {
            if (ctx->cursors[1].unk0 != 1) {
                ctx->cursors[1].unk0 = 1;
            }
        }
    }
}

static void sub_02085F80(UnkStruct_020850F4 *ctx) {
    String *str;
    int i;

    str = String_New(100, HEAP_ID_108);
    ctx->buttons[1].unk0 = 1;
    ctx->buttons[1].counter = 0;
    for (i = 0; i < ctx->numDigitSlots; i++) {
        if (ctx->digits[i].unk0 == 0) {
            ctx->digits[i].unk0 = 1;
            ManagedSprite_SetAnim(ctx->digits[i].sprite, sub_02086D98(ctx->digits[i].unk0, ctx->digits[i].unk8));
        }
        String16_FormatInteger(str, ctx->digits[i].unk0 - 1, 1, PRINTING_MODE_RIGHT_ALIGN, TRUE);
        String_Cat(ctx->outStr, str);
    }
    String_Delete(str);
    sub_02085808(ctx, 3);
}

static void sub_02085FFC(UnkStruct_020850F4 *ctx) {
    int cur;
    int group;
    int prevGroup;

    ctx->buttons[0].unk0 = 1;
    ctx->buttons[0].counter = 0;
    if (ctx->curGroup == 0) {
        ctx->cursors[0].unk0 = ctx->numDigitSlots - 1;
        prevGroup = ctx->digits[ctx->cursors[0].unk0].unk4;
        ctx->pendingAction = 1;
        ctx->pendingArg = prevGroup;
        ctx->pendingFlag = 1;
        return;
    }
    cur = ctx->cursors[0].unk0;
    ctx->digits[cur].unk0 = 0;
    ManagedSprite_SetAnim(ctx->digits[cur].sprite, sub_02086D98(ctx->digits[cur].unk0, ctx->digits[cur].unk8));
    group = ctx->digits[cur].unk4;
    if (cur > ctx->numDigits) {
        ManagedSprite_SetAnim(ctx->digits[cur - 1].sprite, sub_02086D98(ctx->digits[cur - 1].unk0, ctx->digits[cur - 1].unk8));
        prevGroup = ctx->digits[cur - 1].unk4;
        if (group != prevGroup) {
            ctx->pendingAction = 1;
            ctx->pendingArg = prevGroup;
            ctx->pendingFlag = 1;
        } else {
            ctx->pendingAction = 2;
            ctx->pendingArg = cur - 1;
        }
    }
}

void sub_020860B8(UnkStruct_020850F4 *ctx) {
    int i;
    UnkStruct_020850F4_HitRects rects;

    for (i = 0; i < 16; i++) {
        ctx->digits[i].hitbox = &ctx->hitboxes[i];
    }
    rects = sHitRects;
    for (; i < 28; i++) {
        ctx->hitboxes[i].rect.top = rects.rects[i - 16].y - rects.rects[i - 16].h;
        ctx->hitboxes[i].rect.left = rects.rects[i - 16].x - rects.rects[i - 16].w;
        ctx->hitboxes[i].rect.bottom = rects.rects[i - 16].y + rects.rects[i - 16].h;
        ctx->hitboxes[i].rect.right = rects.rects[i - 16].x + rects.rects[i - 16].w;
    }
    ctx->hitboxController = TouchHitboxController_Create(ctx->hitboxes, 28, sub_02086180, ctx, HEAP_ID_108);
}

static void sub_02086180(u32 idx, u32 event, void *arg) {
    UnkStruct_020850F4 *ctx = arg;
    int cur;
    int group;
    int next;
    int nextGroup;

    if (ctx->state != 1) {
        return;
    }
    if (ctx->unk374 != 1) {
        ctx->unk374 = 1;
    }
    if (event == 0) {
        if (idx < 16) {
            if (idx >= ctx->numDigits) {
                if (ctx->digits[idx].unk8 == 1) {
                    ctx->pendingAction = 2;
                    ctx->pendingArg = idx;
                } else {
                    ctx->pendingAction = 1;
                    ctx->pendingArg = ctx->digits[idx].unk4;
                }
                PlaySE(SEQ_SE_DP_BUTTON3);
            }
            return;
        }
        if (idx == 26) {
            ctx->cursors[1].dx = 0;
            ctx->cursors[1].dy = 2;
            PlaySE(SEQ_SE_DP_BUTTON3);
        } else if (idx == 27) {
            ctx->cursors[1].dx = 3;
            ctx->cursors[1].dy = 2;
            PlaySE(SEQ_SE_DP_PIRORIRO);
        } else {
            ctx->cursors[1].dx = (idx - 16) % 5;
            ctx->cursors[1].dy = (idx - 16) / 5;
            PlaySE(SEQ_SE_DP_BUTTON3);
        }
        if (idx >= 16 && idx <= 25) {
            if (ctx->curGroup == 0) {
                return;
            }
            cur = ctx->cursors[0].unk0;
            ctx->digits[cur].unk0 = idx - 15;
            ManagedSprite_SetAnim(ctx->digits[cur].sprite, sub_02086D98(ctx->digits[cur].unk0, ctx->digits[cur].unk8));
            sub_02086AB4(ctx, 1, 1);
            sub_02086B2C(ctx, idx - 16);
            sub_02086AB4(ctx, 1, 0);
            sub_02086AB4(ctx, 2, 1);
            sub_02086B6C(ctx, idx - 16, 2);
            ManagedSprite_SetAnim(ctx->cursors[2].sprite, 3);
            group = ctx->digits[cur].unk4;
            next = cur + 1;
            if (next == ctx->numDigitSlots) {
                ctx->pendingAction = 1;
                ctx->pendingArg = 0;
                ctx->pendingFlag = 0;
            } else {
                nextGroup = ctx->digits[next].unk4;
                if (group != nextGroup) {
                    ctx->pendingAction = 1;
                    ctx->pendingArg = nextGroup;
                    ctx->pendingFlag = 0;
                } else {
                    ctx->pendingAction = 2;
                    ctx->pendingArg = next;
                }
            }
        } else if (idx == 26) {
            sub_02085FFC(ctx);
        } else {
            sub_02085F80(ctx);
        }
    }
}

static void sub_02086328(UnkStruct_020850F4 *ctx) {
    switch (ctx->pendingAction) {
    case 0:
        break;
    case 1:
        sub_02085604(ctx, ctx->pendingArg);
        sub_02086DA4(ctx);
        sub_02086DE4(ctx, TRUE);
        sub_02085808(ctx, 2);
        ctx->pendingAction = 0xFF;
        break;
    case 2:
        sub_02086AE4(ctx, ctx->pendingArg);
        sub_02086384(ctx);
        break;
    case 0xFF:
        break;
    }
}

static void sub_02086384(UnkStruct_020850F4 *ctx) {
    ctx->pendingAction = 0;
    ctx->pendingArg = 0;
    ctx->pendingFlag = 0;
}

static int sub_02086398(UnkStruct_020850F4 *ctx, int group) {
    int i;

    for (i = 0; i < ctx->numDigitSlots; i++) {
        if (group == ctx->digits[i].unk4) {
            return i;
        }
    }
    return 0;
}

static int sub_020863C0(UnkStruct_020850F4 *ctx, int group) {
    int i;
    int found;

    found = 0;
    for (i = 0; i < ctx->numDigitSlots; i++) {
        if (group == ctx->digits[i].unk4) {
            found = 1;
        } else if (found == 1) {
            return i - 1;
        }
    }
    return ctx->numDigitSlots - 1;
}
