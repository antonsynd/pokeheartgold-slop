#include "unk_02013534.h"

#include "global.h"

#include "gf_gfx_loader.h"
#include "obj_char_transfer.h"

static const struct {
    u8 unk_00[1];
    u8 unk_01[23];
} sRodata = {
    { 0x08 },
    { 0x08, 0x08, 0x04, 0x04, 0x08, 0x04, 0x04, 0x04, 0x02, 0x04, 0x01, 0x02, 0x04, 0x02, 0x02, 0x02, 0x01, 0x01, 0x04, 0x01, 0x02, 0x01, 0x01 }
};

typedef struct FontOAMQuad {
    s32 a, b, c, d;
} FontOAMQuad;

typedef struct FontOAMNode {
    s32 unk_00;
    s32 unk_04;
    int unk_08;
    struct FontOAMNode *unk_0c;
    struct FontOAMNode *unk_10;
} FontOAMNode;

typedef struct FontOAMSpriteEntry {
    Sprite *sprite;
    s32 unk_04;
    s32 unk_08;
} FontOAMSpriteEntry;

typedef struct FontOAMBuildState {
    s32 unk_00;
    s32 unk_04;
    s32 unk_08;
    s32 unk_0c;
    s32 unk_10;
    s32 unk_14;
    s32 unk_18;
    s32 unk_1c;
    u8 unk_20;
    u8 pad[3];
    s32 unk_24;
    s32 unk_28;
    s32 unk_2c;
    s32 unk_30;
} FontOAMBuildState;

struct UnkStruct_02013534 {
    void *unk_00[12];
    NNSG2dCellDataBank *unk_30[12];
    TextOBJ *unk_60;
    int unk_64;
};

struct UnkStruct_02013910 {
    u8 unk_00[12];
    FontOAMNode *unk_0c;
    FontOAMNode *unk_10;
    int unk_14;
};

void sub_02013728(TextOBJ *textOBJ);
void sub_020137F0(TextOBJ *textOBJ, u8 a1);
void sub_02013880(TextOBJ *textOBJ, int a1);
void sub_020138B0(TextOBJ *textOBJ, u8 a1);
void sub_02013FD0(TextOBJ *a0, const Sprite *a1);

static void sub_02013AC0(TextOBJ *a0);
static TextOBJ *sub_02013AD0(UnkStruct_02013534 *fontSys);
static int sub_02013AF8(int w, int h);
static int sub_02013B24(FontOAMBuildState *state, UnkStruct_02013910 *list, enum HeapID heapID);
static int sub_02013BD4(int width, int height, enum HeapID heapID, UnkStruct_02013910 *list);
static void sub_02013C5C(Window *window, UnkStruct_02013910 *list, NNSG2dImageProxy *charBuf, u32 offset, NNS_G2D_VRAM_TYPE vramType, enum HeapID heapID);
static u32 sub_02013CD0(Window *window, FontOAMNode *node, NNSG2dImageProxy *imgProxy, int blockSize, GXOBJVRamModeChar vramMode, u32 vramOffset, NNS_G2D_VRAM_TYPE vramType, enum HeapID heapID);
static void sub_02013D88(Window *window, void *buf, UnkStruct_02013910 *list, NNS_G2D_VRAM_TYPE vramType, enum HeapID heapID);
static u32 sub_02013DE0(Window *window, FontOAMNode *node, void *buf, u32 bufOffset, int blockSize, GXOBJVRamModeChar mode, enum HeapID heapID);
static u32 sub_02013E24(UnkStruct_02013910 *list, NNS_G2D_VRAM_TYPE vramType);
static void sub_02013E78(const TextOBJTemplate *tmpl, UnkStruct_02013910 *list, NNSG2dImageProxy *charBuf, TextOBJ *textObj);
static void sub_02013ECC(TextOBJ *textObj);
static Sprite *sub_02013EF0(const TextOBJTemplate *tmpl, FontOAMNode *node, NNSG2dImageProxy *charBuf);
static FontOAMNode *sub_02013F78(enum HeapID heapID);
static void sub_02013F94(FontOAMNode *node);
static void sub_02013FA8(UnkStruct_02013910 *head);
static void sub_02013FC0(FontOAMNode *node, FontOAMNode *prev);

UnkStruct_02013534 *FontSystem_NewInit(int a0, enum HeapID heapId) {
    UnkStruct_02013534 *fontSys;
    int i;
    void *raw;
    int count;

    count = a0;
    fontSys = Heap_Alloc(heapId, 0x68);
    if (fontSys == NULL) {
        GF_AssertFail();
    }
    for (i = 0; i < 12; i++) {
        raw = GfGfxLoader_GetCellBank((NarcId)0x23, i, FALSE, &fontSys->unk_30[i], heapId);
        fontSys->unk_00[i] = raw;
        if (raw == NULL) {
            GF_AssertFail();
        }
    }
    fontSys->unk_60 = Heap_Alloc(heapId, count * 0x14);
    if (fontSys->unk_60 == NULL) {
        GF_AssertFail();
    }
    fontSys->unk_64 = count;
    memset(fontSys->unk_60, 0, count * 0x14);
    return fontSys;
}

void sub_020135AC(UnkStruct_02013534 *a0) {
    int i;

    if (a0 == NULL) {
        GF_AssertFail();
    }
    for (i = 0; i < 12; i++) {
        Heap_Free(a0->unk_00[i]);
    }
    Heap_Free(a0->unk_60);
    Heap_Free(a0);
}

TextOBJ *sub_020135D8(TextOBJTemplate *tmpl) {
    TextOBJ *slot;
    int count;
    NNSG2dImageProxy *charBuf;
    FontOAMNode head;

    if (tmpl == NULL) {
        GF_AssertFail();
    }
    slot = sub_02013AD0(tmpl->fontSystem);
    if (slot == NULL) {
        GF_AssertFail();
    }
    slot->unk_08 = tmpl->sprite;
    slot->unk_0C = tmpl->x;
    slot->unk_10 = tmpl->y;
    head.unk_0c = &head;
    head.unk_10 = &head;
    count = sub_02013BD4(tmpl->window->width, tmpl->window->height, tmpl->heapID, (UnkStruct_02013910 *)&head);
    charBuf = Heap_AllocAtEnd(tmpl->heapID, 0x24 * count);
    slot->unk_00 = Heap_Alloc(tmpl->heapID, 0xc * count);
    slot->unk_04 = count;
    sub_02013C5C(tmpl->window, (UnkStruct_02013910 *)&head, charBuf, tmpl->offset, (NNS_G2D_VRAM_TYPE)tmpl->vram, tmpl->heapID);
    sub_02013E78(tmpl, (UnkStruct_02013910 *)&head, charBuf, slot);
    Heap_Free(charBuf);
    sub_02013FA8((UnkStruct_02013910 *)&head);
    return slot;
}

void FontOAM_Delete(TextOBJ *textObj) {
    if (textObj == NULL) {
        GF_AssertFail();
    }
    if (textObj->unk_00 == NULL) {
        GF_AssertFail();
    }
    sub_02013ECC(textObj);
    Heap_Free(textObj->unk_00);
    sub_02013AC0(textObj);
}

int sub_02013688(Window *window, NNS_G2D_VRAM_TYPE vramType, int a2) {
    FontOAMNode head;
    int ret;

    head.unk_0c = &head;
    head.unk_10 = &head;
    sub_02013BD4(window->width, window->height, (enum HeapID)a2, (UnkStruct_02013910 *)&head);
    ret = (int)sub_02013E24((UnkStruct_02013910 *)&head, vramType);
    sub_02013FA8((UnkStruct_02013910 *)&head);
    return ret;
}

void sub_020136B4(TextOBJ *textOBJ, int a1, int a2) {
    VecFx32 pos;
    int i;

    if (textOBJ == NULL) {
        GF_AssertFail();
    }
    textOBJ->unk_0C = a1;
    textOBJ->unk_10 = a2;
    a1 <<= 12;
    a2 <<= 12;
    if (textOBJ->unk_08 != NULL) {
        VecFx32 *mat = Sprite_GetMatrixPtr((Sprite *)textOBJ->unk_08);
        a1 += mat->x;
        a2 += mat->y;
    }
    pos.z = 0;
    for (i = 0; i < textOBJ->unk_04; i++) {
        pos.x = a1 + (((FontOAMSpriteEntry *)textOBJ->unk_00)[i].unk_04 << 12);
        pos.y = a2 + (((FontOAMSpriteEntry *)textOBJ->unk_00)[i].unk_08 << 12);
        Sprite_SetMatrix(((FontOAMSpriteEntry *)textOBJ->unk_00)[i].sprite, &pos);
    }
}

#ifdef NONMATCHING
void sub_02013728(TextOBJ *textOBJ) {
    VecFx32 pos;
    int i;
    int x;
    int y;

    if (textOBJ == NULL) {
        GF_AssertFail();
    }
    if (textOBJ->unk_08 != NULL) {
        VecFx32 *mat;
        x = textOBJ->unk_0C << 12;
        y = textOBJ->unk_10 << 12;
        mat = Sprite_GetMatrixPtr((Sprite *)textOBJ->unk_08);
        x += mat->x;
        y += mat->y;
        pos.z = 0;
        for (i = 0; i < textOBJ->unk_04; i++) {
            pos.x = x + (((FontOAMSpriteEntry *)textOBJ->unk_00)[i].unk_04 << 12);
            pos.y = y + (((FontOAMSpriteEntry *)textOBJ->unk_00)[i].unk_08 << 12);
            Sprite_SetMatrix(((FontOAMSpriteEntry *)textOBJ->unk_00)[i].sprite, &pos);
        }
    }
}
#else
// clang-format off
asm void sub_02013728(TextOBJ *textOBJ) {
    push {r3, r4, r5, r6, r7, lr}
    sub sp, #0x10
    add r5, r0, #0
    bne _02013734
    bl GF_AssertFail
_02013734:
    ldr r0, [r5, #8]
    cmp r0, #0
    beq _0201378E
    ldr r1, [r5, #0xc]
    lsl r1, r1, #0xc
    str r1, [sp, #0]
    ldr r1, [r5, #0x10]
    lsl r7, r1, #0xc
    bl Sprite_GetMatrixPtr
    ldr r2, [r0, #0]
    ldr r0, [r0, #4]
    mov r6, #0
    ldr r1, [sp, #0]
    str r6, [sp, #0xc]
    add r7, r7, r0
    add r1, r1, r2
    ldr r0, [r5, #4]
    str r1, [sp, #0]
    cmp r0, #0
    ble _0201378E
    add r4, r6, #0
_02013760:
    ldr r0, [r5, #0]
    add r0, r0, r4
    ldr r0, [r0, #4]
    lsl r1, r0, #0xc
    ldr r0, [sp, #0]
    add r0, r0, r1
    str r0, [sp, #4]
    ldr r0, [r5, #0]
    add r1, sp, #4
    add r0, r0, r4
    ldr r0, [r0, #8]
    lsl r0, r0, #0xc
    add r0, r7, r0
    str r0, [sp, #8]
    ldr r0, [r5, #0]
    ldr r0, [r0, r4]
    bl Sprite_SetMatrix
    ldr r0, [r5, #4]
    add r6, r6, #1
    add r4, #0xc
    cmp r6, r0
    blt _02013760
_0201378E:
    add sp, #0x10
    pop {r3, r4, r5, r6, r7, pc}
}
// clang-format on
#endif

void sub_02013794(void *a0, u32 *a1, u32 *a2) {
    TextOBJ *textOBJ = (TextOBJ *)a0;

    if (a0 == NULL) {
        GF_AssertFail();
    }
    if (a1 == NULL) {
        GF_AssertFail();
    }
    if (a2 == NULL) {
        GF_AssertFail();
    }
    *a1 = (u32)textOBJ->unk_0C;
    *a2 = (u32)textOBJ->unk_10;
}

void TextOBJ_SetSpritesDrawFlag(TextOBJ *textOBJ, BOOL draw) {
    int i;

    if (textOBJ == NULL) {
        GF_AssertFail();
    }
    for (i = 0; i < textOBJ->unk_04; i++) {
        Sprite_SetDrawFlag(((FontOAMSpriteEntry *)textOBJ->unk_00)[i].sprite, draw);
    }
}

void sub_020137F0(TextOBJ *textOBJ, u8 a1) {
    int i;

    if (textOBJ == NULL) {
        GF_AssertFail();
    }
    for (i = 0; i < textOBJ->unk_04; i++) {
        Sprite_SetPriority(((FontOAMSpriteEntry *)textOBJ->unk_00)[i].sprite, a1);
    }
}

void sub_02013820(TextOBJ *textOBJ, int a1) {
    int i;

    if (textOBJ == NULL) {
        GF_AssertFail();
    }
    for (i = 0; i < textOBJ->unk_04; i++) {
        Sprite_SetDrawPriority(((FontOAMSpriteEntry *)textOBJ->unk_00)[i].sprite, a1);
    }
}

void TextOBJ_SetPaletteNum(TextOBJ *textOBJ, int pltt) {
    int i;

    if (textOBJ == NULL) {
        GF_AssertFail();
    }
    for (i = 0; i < textOBJ->unk_04; i++) {
        Sprite_SetPaletteOverride(((FontOAMSpriteEntry *)textOBJ->unk_00)[i].sprite, pltt);
    }
}

void sub_02013880(TextOBJ *textOBJ, int a1) {
    int i;

    if (textOBJ == NULL) {
        GF_AssertFail();
    }
    for (i = 0; i < textOBJ->unk_04; i++) {
        Sprite_SetPalIndexRespectVramOffset(((FontOAMSpriteEntry *)textOBJ->unk_00)[i].sprite, a1);
    }
}

void sub_020138B0(TextOBJ *textOBJ, u8 a1) {
    int i;

    if (textOBJ == NULL) {
        GF_AssertFail();
    }
    for (i = 0; i < textOBJ->unk_04; i++) {
        Sprite_SetPalOffset(((FontOAMSpriteEntry *)textOBJ->unk_00)[i].sprite, a1);
    }
}

#ifdef NONMATCHING
void sub_020138E0(TextOBJ *textObj, int a1) {
    int i;

    if (textObj == NULL) {
        GF_AssertFail();
    }
    for (i = 0; i < textObj->unk_04; i++) {
        Sprite_SetPalOffsetRespectVramOffset(((FontOAMSpriteEntry *)textObj->unk_00)[i].sprite, a1);
    }
}
#else
// clang-format off
asm void sub_020138E0(TextOBJ *textObj, int a1) {
    push {r3, r4, r5, r6, r7, lr}
    add r5, r0, #0
    add r7, r1, #0
    cmp r5, #0
    bne _020138EE
    bl GF_AssertFail
_020138EE:
    ldr r0, [r5, #4]
    mov r6, #0
    cmp r0, #0
    ble _0201390C
    add r4, r6, #0
_020138F8:
    ldr r0, [r5, #0]
    add r1, r7, #0
    ldr r0, [r0, r4]
    bl Sprite_SetPalOffsetRespectVramOffset
    ldr r0, [r5, #4]
    add r6, r6, #1
    add r4, #0xc
    cmp r6, r0
    blt _020138F8
_0201390C:
    pop {r3, r4, r5, r6, r7, pc}
}
// clang-format on
#endif

UnkStruct_02013910 *sub_02013910(Window *window, enum HeapID heapID) {
    UnkStruct_02013910 *head;

    head = Heap_Alloc(heapID, 0x18);
    head->unk_0c = (FontOAMNode *)head;
    head->unk_10 = (FontOAMNode *)head;
    head->unk_14 = sub_02013BD4(window->width, window->height, heapID, head);
    return head;
}

void sub_02013938(UnkStruct_02013910 *a0) {
    sub_02013FA8(a0);
    Heap_Free(a0);
}

u32 sub_02013948(UnkStruct_02013910 *a0, NNS_G2D_VRAM_TYPE vramType) {
    return sub_02013E24(a0, vramType);
}

TextOBJ *TextOBJ_Create(const TextOBJTemplate *tmpl, UnkStruct_02013910 *a1) {
    TextOBJ *slot;
    NNSG2dImageProxy *charBuf;

    if (tmpl == NULL) {
        GF_AssertFail();
    }
    slot = sub_02013AD0(tmpl->fontSystem);
    if (slot == NULL) {
        GF_AssertFail();
    }
    slot->unk_08 = tmpl->sprite;
    slot->unk_0C = tmpl->x;
    slot->unk_10 = tmpl->y;
    charBuf = Heap_AllocAtEnd(tmpl->heapID, 0x24 * a1->unk_14);
    slot->unk_00 = Heap_Alloc(tmpl->heapID, 0xc * a1->unk_14);
    slot->unk_04 = a1->unk_14;
    sub_02013C5C(tmpl->window, a1, charBuf, tmpl->offset, (NNS_G2D_VRAM_TYPE)tmpl->vram, tmpl->heapID);
    sub_02013E78(tmpl, a1, charBuf, slot);
    Heap_Free(charBuf);
    return slot;
}

void TextOBJ_Destroy(TextOBJ *textOBJ) {
    FontOAM_Delete(textOBJ);
}

void TextOBJ_CopyFromBGWindow(TextOBJ *textOBJ, UnkStruct_02013910 *a1, Window *window, enum HeapID heapID) {
    Sprite *sprite;
    NNS_G2D_VRAM_TYPE vramType;
    u32 size;
    void *buf;
    NNSG2dImageProxy *imgProxy;

    sprite = (Sprite *)((FontOAMSpriteEntry *)textOBJ->unk_00)->sprite;
    vramType = Sprite_GetVramType(sprite);
    size = sub_02013948(a1, vramType);
    buf = Heap_AllocAtEnd(heapID, size);
    memset(buf, 0, size);
    sub_02013D88(window, buf, a1, vramType, heapID);
    DC_FlushRange(buf, size);
    imgProxy = Sprite_GetImageProxy(sprite);
    if (vramType == NNS_G2D_VRAM_TYPE_2DMAIN) {
        GX_LoadOBJ(buf, (u32)NNS_G2dGetImageLocation(imgProxy, NNS_G2D_VRAM_TYPE_2DMAIN), size);
    } else {
        GXS_LoadOBJ(buf, (u32)NNS_G2dGetImageLocation(imgProxy, NNS_G2D_VRAM_TYPE_2DSUB), size);
    }
    Heap_Free(buf);
}

#ifdef NONMATCHING
void sub_02013A50(Window *window, int a1, int a2, int a3, int a4, void *charBuf) {
    int row;
    int col_stride;

    if (window->width < a1 + a3) {
        GF_AssertFail();
    }
    if (window->height < a2 + a4) {
        GF_AssertFail();
    }
    if (a2 <= 0) {
        return;
    }
    col_stride = a1 * 32;
    row = 0;
    do {
        memcpy((u8 *)charBuf + row * a1 * 32, (u8 *)window->pixelBuffer + (window->width * (row + a4) + a3) * 32, col_stride);
        row++;
    } while (row < a2);
}
#else
// clang-format off
asm void sub_02013A50(Window *window, int a1, int a2, int a3, int a4, void *charBuf) {
    push {r4, r5, r6, r7, lr}
    sub sp, #0xc
    add r6, r0, #0
    ldr r0, [sp, #0x20]
    add r7, r1, #0
    str r0, [sp, #0x20]
    ldr r0, [sp, #0x24]
    ldrb r1, [r6, #7]
    str r0, [sp, #0x24]
    add r0, r3, #0
    add r0, r7, r0
    str r2, [sp, #0]
    str r3, [sp, #4]
    cmp r1, r0
    bge _02013A72
    bl GF_AssertFail
_02013A72:
    ldrb r2, [r6, #8]
    ldr r1, [sp, #0]
    ldr r0, [sp, #0x20]
    add r0, r1, r0
    cmp r2, r0
    bge _02013A82
    bl GF_AssertFail
_02013A82:
    ldr r0, [sp, #0]
    mov r4, #0
    cmp r0, #0
    ble _02013ABA
    lsl r0, r7, #5
    add r5, r4, #0
    str r0, [sp, #8]
_02013A90:
    ldrb r1, [r6, #7]
    ldr r0, [sp, #0x20]
    add r2, r1, #0
    add r0, r4, r0
    mul r2, r0
    ldr r0, [sp, #4]
    lsl r1, r5, #5
    add r2, r2, r0
    ldr r0, [sp, #0x24]
    lsl r2, r2, #5
    add r0, r0, r1
    ldr r1, [r6, #0xc]
    add r1, r1, r2
    ldr r2, [sp, #8]
    bl memcpy
    ldr r0, [sp, #0]
    add r4, r4, #1
    add r5, r5, r7
    cmp r4, r0
    blt _02013A90
_02013ABA:
    add sp, #0xc
    pop {r4, r5, r6, r7, pc}
}
// clang-format on
#endif

static void sub_02013AC0(TextOBJ *a0) {
    u32 n = 0x14;
    u8 *p = (u8 *)a0;
    do {
        *p++ = 0;
        n--;
    } while (n != 0);
}

#ifdef NONMATCHING
static TextOBJ *sub_02013AD0(UnkStruct_02013534 *fontSys) {
    int i;

    for (i = 0; i < fontSys->unk_64; i++) {
        if (((TextOBJ *)fontSys->unk_60)[i].unk_00 == NULL) {
            return (TextOBJ *)((u8 *)fontSys->unk_60 + 0x14 * i);
        }
    }
    return NULL;
}
#else
// clang-format off
static asm TextOBJ *sub_02013AD0(UnkStruct_02013534 *fontSys) {
    ldr r1, [r0, #0x64]
    mov r2, #0
    cmp r1, #0
    ble _02013AF4
    ldr r3, [r0, #0x60]
_02013ADA:
    ldr r1, [r3, #0]
    cmp r1, #0
    bne _02013AEA
    ldr r1, [r0, #0x60]
    mov r0, #0x14
    mul r0, r2
    add r0, r1, r0
    bx lr
_02013AEA:
    ldr r1, [r0, #0x64]
    add r2, r2, #1
    add r3, #0x14
    cmp r2, r1
    blt _02013ADA
_02013AF4:
    mov r0, #0
    bx lr
}
// clang-format on
#endif

static int sub_02013AF8(int w, int h) {
    int i = 0;
    const u8 *p = sRodata.unk_00;
    while (i < 12) {
        if (p[0] <= w && p[1] <= h) {
            return i;
        }
        i++;
        p += 2;
    }
    return 12;
}

static int sub_02013B24(FontOAMBuildState *state, UnkStruct_02013910 *list, enum HeapID heapID) {
    FontOAMNode *node;
    int shapeType;
    int shapeW;
    int shapeH;
    int remW;
    int remH;

    node = sub_02013F78(heapID);
    sub_02013FC0(node, list->unk_10);
    shapeType = sub_02013AF8(state->unk_08, state->unk_0c);
    node->unk_08 = shapeType;
    node->unk_00 = state->unk_04;
    node->unk_04 = state->unk_00;
    shapeW = sRodata.unk_00[node->unk_08 * 2];
    shapeH = sRodata.unk_01[node->unk_08 * 2];
    remW = state->unk_08 - shapeW;
    remH = state->unk_0c - shapeH;
    if (remW > 0) {
        state->unk_1c = state->unk_0c;
        state->unk_18 = remW;
        state->unk_10 = state->unk_00;
        state->unk_14 = state->unk_04 + sRodata.unk_00[node->unk_08 * 2];
        if (state->unk_20 == 1) {
            GF_AssertFail();
        }
        state->unk_20 = 1;
    }
    if (remH > 0) {
        state->unk_00 += sRodata.unk_01[node->unk_08 * 2];
        state->unk_0c = remH;
    } else if (state->unk_20 == 1) {
        *(FontOAMQuad *)&state->unk_00 = *(const FontOAMQuad *)&state->unk_10;
        state->unk_20 = 0;
    } else {
        return 1;
    }
    return 0;
}

static int sub_02013BD4(int width, int height, enum HeapID heapID, UnkStruct_02013910 *list) {
    FontOAMBuildState state;
    int count;
    int remaining;

    if (width == 0) {
        GF_AssertFail();
    }
    if (height == 0) {
        GF_AssertFail();
    }
    remaining = height;
    count = 0;
    state.unk_00 = 0;
    state.unk_04 = 0;
    state.unk_08 = width;
    state.unk_0c = height;
    state.unk_20 = 0;
    state.unk_28 = 0;
    state.unk_2c = width;
    while (remaining != 0) {
        int shapeType = sub_02013AF8(state.unk_08, remaining);
        int spriteH = sRodata.unk_00[shapeType * 2 + 1];
        state.unk_24 = state.unk_00 + spriteH;
        state.unk_30 = state.unk_0c - spriteH;
        state.unk_0c = spriteH;
        do {
            count++;
        } while (sub_02013B24(&state, list, heapID) == 0);
        *(FontOAMQuad *)&state.unk_00 = *(const FontOAMQuad *)&state.unk_24;
        remaining = state.unk_0c;
    }
    return count;
}

static void sub_02013C5C(Window *window, UnkStruct_02013910 *list, NNSG2dImageProxy *charBuf, u32 offset, NNS_G2D_VRAM_TYPE vramType, enum HeapID heapID) {
    GXOBJVRamModeChar vramMode;
    int blockSize;
    FontOAMNode *node;
    NNSG2dImageProxy *proxy;

    if (vramType == NNS_G2D_VRAM_TYPE_2DMAIN) {
        vramMode = (GXOBJVRamModeChar)(*(vu32 *)0x04000000 & 0x00300010);
    } else {
        vramMode = (GXOBJVRamModeChar)(*(vu32 *)0x04001000 & 0x00300010);
    }
    blockSize = ObjCharTransfer_GetBlockSizeFromMode(vramMode);
    node = list->unk_0c;
    proxy = charBuf;
    if (node == (FontOAMNode *)list) {
        return;
    }
    do {
        NNS_G2dInitImageProxy(proxy);
        offset = sub_02013CD0(window, node, proxy, blockSize, vramMode, offset, vramType, heapID);
        node = node->unk_0c;
        proxy = (NNSG2dImageProxy *)((u8 *)proxy + 0x24);
    } while (node != (FontOAMNode *)list);
}

#ifdef NONMATCHING
static u32 sub_02013CD0(Window *window, FontOAMNode *node, NNSG2dImageProxy *imgProxy, int blockSize, GXOBJVRamModeChar vramMode, u32 vramOffset, NNS_G2D_VRAM_TYPE vramType, enum HeapID heapID) {
    int shapeW;
    int shapeH;
    int area;
    void *tmpBuf;
    GXOBJVRamModeChar mode2;

    shapeW = sRodata.unk_00[node->unk_08 * 2];
    shapeH = sRodata.unk_01[node->unk_08 * 2];
    area = shapeW * shapeH;
    if (area < blockSize) {
        area = blockSize;
    }
    area <<= 5;
    tmpBuf = Heap_AllocAtEnd(heapID, (u32)area);
    sub_02013A50(window, shapeW, shapeH, node->unk_00, node->unk_04, tmpBuf);
    DC_FlushRange(tmpBuf, (u32)area);
    if (vramType == NNS_G2D_VRAM_TYPE_2DMAIN) {
        GX_LoadOBJ(tmpBuf, vramOffset, (u32)area);
        imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN] = vramOffset;
        mode2 = (GXOBJVRamModeChar)(*(vu32 *)0x04000000 & 0x00300010);
    } else {
        GXS_LoadOBJ(tmpBuf, vramOffset, (u32)area);
        imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DSUB] = vramOffset;
        mode2 = (GXOBJVRamModeChar)(*(vu32 *)0x04001000 & 0x00300010);
    }
    imgProxy->attr.mappingType = mode2;
    imgProxy->attr.sizeS = (GXTexSizeS)0x0000FFFF;
    imgProxy->attr.sizeT = (GXTexSizeT)0x0000FFFF;
    imgProxy->attr.fmt = (GXTexFmt)3;
    imgProxy->attr.bExtendedPlt = FALSE;
    imgProxy->attr.plttUse = (GXTexPlttColor0)1;
    imgProxy->attr.mappingType = vramMode;
    Heap_Free(tmpBuf);
    return vramOffset + (u32)area;
}
#else
// clang-format off
static asm u32 sub_02013CD0(Window *window, FontOAMNode *node, NNSG2dImageProxy *imgProxy, int blockSize, GXOBJVRamModeChar vramMode, u32 vramOffset, NNS_G2D_VRAM_TYPE vramType, enum HeapID heapID) {
    push {r4, r5, r6, r7, lr}
    sub sp, #0x14
    add r6, r1, #0
    str r0, [sp, #8]
    ldr r0, [r6, #8]
    add r5, r2, #0
    lsl r1, r0, #1
    ldr r0, =sRodata
    ldrb r0, [r0, r1]
    str r0, [sp, #0x10]
    ldr r0, =sRodata+1
    ldrb r0, [r0, r1]
    ldr r1, [sp, #0x10]
    add r4, r1, #0
    mul r4, r0
    str r0, [sp, #0xc]
    cmp r4, r3
    bge _02013CF6
    add r4, r3, #0
_02013CF6:
    lsl r4, r4, #5
    ldr r0, [sp, #0x34]
    add r1, r4, #0
    bl Heap_AllocAtEnd
    add r7, r0, #0
    ldr r0, [r6, #4]
    ldr r1, [sp, #0x10]
    str r0, [sp, #0]
    str r7, [sp, #4]
    ldr r0, [sp, #8]
    ldr r2, [sp, #0xc]
    ldr r3, [r6, #0]
    bl sub_02013A50
    add r0, r7, #0
    add r1, r4, #0
    bl DC_FlushRange
    ldr r0, [sp, #0x30]
    cmp r0, #1
    bne _02013D38
    ldr r6, [sp, #0x2c]
    add r0, r7, #0
    add r1, r6, #0
    add r2, r4, #0
    bl GX_LoadOBJ
    mov r0, #1
    str r6, [r5, #4]
    lsl r0, r0, #0x1a
    ldr r1, [r0, #0]
    b _02013D4A
_02013D38:
    ldr r6, [sp, #0x2c]
    add r0, r7, #0
    add r1, r6, #0
    add r2, r4, #0
    bl GXS_LoadOBJ
    ldr r0, =0x04001000
    str r6, [r5, #8]
    ldr r1, [r0, #0]
_02013D4A:
    ldr r0, =0x00300010
    and r0, r1
    str r0, [r5, #0x20]
    ldr r0, =0x0000FFFF
    str r0, [r5, #0xc]
    str r0, [r5, #0x10]
    mov r0, #3
    str r0, [r5, #0x14]
    mov r0, #0
    str r0, [r5, #0x18]
    mov r0, #1
    str r0, [r5, #0x1c]
    ldr r0, [sp, #0x28]
    str r0, [r5, #0x20]
    add r0, r7, #0
    bl Heap_Free
    ldr r0, [sp, #0x2c]
    add r0, r0, r4
    add sp, #0x14
    pop {r4, r5, r6, r7, pc}
}
// clang-format on
#endif

static void sub_02013D88(Window *window, void *buf, UnkStruct_02013910 *list, NNS_G2D_VRAM_TYPE vramType, enum HeapID heapID) {
    GXOBJVRamModeChar vramMode;
    int blockSize;
    FontOAMNode *node;
    u32 bufOffset;

    if (vramType == NNS_G2D_VRAM_TYPE_2DMAIN) {
        vramMode = (GXOBJVRamModeChar)(*(vu32 *)0x04000000 & 0x00300010);
    } else {
        vramMode = (GXOBJVRamModeChar)(*(vu32 *)0x04001000 & 0x00300010);
    }
    blockSize = ObjCharTransfer_GetBlockSizeFromMode(vramMode);
    node = list->unk_0c;
    bufOffset = 0;
    if (node == (FontOAMNode *)list) {
        return;
    }
    do {
        bufOffset = sub_02013DE0(window, node, buf, bufOffset, blockSize, vramMode, heapID);
        node = node->unk_0c;
    } while (node != (FontOAMNode *)list);
}

static u32 sub_02013DE0(Window *window, FontOAMNode *node, void *buf, u32 bufOffset, int blockSize, GXOBJVRamModeChar mode, enum HeapID heapID) {
    int shapeW;
    int shapeH;
    int area;

    shapeW = sRodata.unk_00[node->unk_08 * 2];
    shapeH = sRodata.unk_01[node->unk_08 * 2];
    area = shapeW * shapeH;
    if (area < blockSize) {
        area = blockSize;
    }
    sub_02013A50(window, shapeW, shapeH, node->unk_00, node->unk_04, (u8 *)buf + bufOffset);
    return bufOffset + (u32)(area << 5);
}

static u32 sub_02013E24(UnkStruct_02013910 *list, NNS_G2D_VRAM_TYPE vramType) {
    GXOBJVRamModeChar vramMode;
    int blockSize;
    FontOAMNode *node;
    u32 total;

    if (vramType == NNS_G2D_VRAM_TYPE_2DMAIN) {
        vramMode = (GXOBJVRamModeChar)(*(vu32 *)0x04000000 & 0x00300010);
    } else {
        vramMode = (GXOBJVRamModeChar)(*(vu32 *)0x04001000 & 0x00300010);
    }
    blockSize = ObjCharTransfer_GetBlockSizeFromMode(vramMode);
    node = list->unk_0c;
    total = 0;
    while (node != (FontOAMNode *)list) {
        int shapeType = node->unk_08;
        int idx = shapeType * 2;
        int shapeW = sRodata.unk_00[idx];
        int shapeH = sRodata.unk_01[idx];
        int area = shapeW * shapeH;
        if (area < blockSize) {
            area = blockSize;
        }
        total += (u32)(area << 5);
        node = node->unk_0c;
    }
    return total;
}

static void sub_02013E78(const TextOBJTemplate *tmpl, UnkStruct_02013910 *list, NNSG2dImageProxy *charBuf, TextOBJ *textObj) {
    FontOAMNode *node;
    int i;

    node = list->unk_0c;
    if (node == (FontOAMNode *)list) {
        return;
    }
    i = 0;
    do {
        ((FontOAMSpriteEntry *)textObj->unk_00)[i].sprite = sub_02013EF0(tmpl, node, charBuf);
        if (((FontOAMSpriteEntry *)textObj->unk_00)[i].sprite == NULL) {
            GF_AssertFail();
        }
        ((FontOAMSpriteEntry *)textObj->unk_00)[i].unk_04 = node->unk_00 << 3;
        ((FontOAMSpriteEntry *)textObj->unk_00)[i].unk_08 = node->unk_04 << 3;
        node = node->unk_0c;
        charBuf = (NNSG2dImageProxy *)((u8 *)charBuf + 0x24);
        i++;
    } while (node != (FontOAMNode *)list);
}

static void sub_02013ECC(TextOBJ *textObj) {
    int i;

    for (i = 0; i < textObj->unk_04; i++) {
        Sprite_Delete(((FontOAMSpriteEntry *)textObj->unk_00)[i].sprite);
    }
}

static Sprite *sub_02013EF0(const TextOBJTemplate *tmpl, FontOAMNode *node, NNSG2dImageProxy *charBuf) {
    SimpleSpriteTemplate spTmpl;
    SpriteResourcesHeader hdr;

    hdr.imageProxy = (NNSG2dImageProxy *)charBuf;
    hdr.charData = NULL;
    hdr.plttProxy = tmpl->plttResourceProxy;
    hdr.cellData = tmpl->fontSystem->unk_30[node->unk_08];
    hdr.cellAnim = NULL;
    hdr.multiCellData = NULL;
    hdr.multiCellAnim = NULL;
    hdr.flag = 0;
    hdr.priority = (u8)tmpl->unk_20;

    spTmpl.spriteList = tmpl->spriteList;
    spTmpl.header = &hdr;
    spTmpl.priority = (u32)tmpl->unk_24;
    spTmpl.whichScreen = (NNS_G2D_VRAM_TYPE)tmpl->vram;
    spTmpl.heapID = tmpl->heapID;
    spTmpl.position.x = 0;
    spTmpl.position.y = 0;
    spTmpl.position.z = 0;

    if (tmpl->sprite != NULL) {
        VecFx32 *mat = Sprite_GetMatrixPtr((Sprite *)tmpl->sprite);
        spTmpl.position = *mat;
    }

    spTmpl.position.x += (fx32)((tmpl->x + node->unk_00 * 8) << 12);
    spTmpl.position.y += (fx32)((tmpl->y + node->unk_04 * 8) << 12);

    return Sprite_Create(&spTmpl);
}

static FontOAMNode *sub_02013F78(enum HeapID heapID) {
    FontOAMNode *node;

    node = Heap_AllocAtEnd(heapID, 0x14);
    if (node == NULL) {
        GF_AssertFail();
    }
    node->unk_0c = NULL;
    node->unk_10 = NULL;
    return node;
}

static void sub_02013F94(FontOAMNode *node) {
    if (node == NULL) {
        GF_AssertFail();
    }
    Heap_Free(node);
}

static void sub_02013FA8(UnkStruct_02013910 *head) {
    FontOAMNode *node;
    FontOAMNode *next;

    node = head->unk_0c;
    if (node != (FontOAMNode *)head) {
        do {
            next = node->unk_0c;
            sub_02013F94(node);
            node = next;
        } while (node != (FontOAMNode *)head);
    }
}

static void sub_02013FC0(FontOAMNode *node, FontOAMNode *prev) {
    node->unk_0c = prev->unk_0c;
    node->unk_10 = prev;
    prev->unk_0c->unk_10 = node;
    prev->unk_0c = node;
}

void sub_02013FD0(TextOBJ *a0, const Sprite *a1) {
    a0->unk_08 = a1;
    sub_02013728(a0);
}
