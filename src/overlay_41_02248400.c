#include "global.h"

#include "bg_window.h"
#include "fashion_case.h"
#include "heap.h"
#include "math_util.h"
#include "sys_task.h"
#include "systask_environment.h"
#include "system.h"
#include "touchscreen.h"

typedef struct UnkOv41Node UnkOv41Node;

struct UnkOv41Node {
    void *obj;
    int type;
    UnkOv41Node *next;
    UnkOv41Node *prev;
};

typedef struct UnkOv41NodeList {
    UnkOv41Node *nodes;
    int count;
    int sel;
} UnkOv41NodeList;

typedef struct UnkOv41FashionTable {
    u32 counts[100];
    int slotToId[18];
} UnkOv41FashionTable;

typedef struct UnkOv41ScrollBgTemplate {
    BgConfig *unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    int unk_20;
    int unk_24;
    int unk_28;
    int unk_2C;
} UnkOv41ScrollBgTemplate;

typedef struct UnkOv41ScrollBg {
    u8 unk_00[0x2c];
} UnkOv41ScrollBg;

typedef struct UnkOv41Board {
    int curList;
    UnkOv41FashionTable *fashionTable;
    void *pool;
    UnkOv41NodeList lists[4];
    BOOL busy;
    int page;
    void *unk_44;
    void **unk_48;
    void **unk_4C;
    u8 *unk_50;
    BgConfig *bgConfig;
    void *unk_58;
    UnkOv41ScrollBg unk_5C;
    u8 padding_88[4];
} UnkOv41Board;

typedef struct UnkOv41BoardTemplate {
    void *unk_00;
    void **unk_04;
    void **unk_08;
    u8 *unk_0C;
    BgConfig *unk_10;
    void *unk_14;
    void *pool;
    int count0;
    int count1;
    int count2;
    UnkOv41FashionTable *fashionTable;
} UnkOv41BoardTemplate;

typedef struct UnkOv41ObjTemplate {
    void *unk_00;
    void *unk_04;
    void *unk_08;
    void *unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
} UnkOv41ObjTemplate;

typedef struct UnkOv41Anim {
    UnkOv41Node *node;
    int frames;
    int dy;
} UnkOv41Anim;

typedef struct UnkOv41SwapTask {
    UnkOv41Board *board;
    int fromType;
    int fromSlot;
    int toType;
    int toSlot;
    int done;
    int counter;
    int state;
    int cntFrom;
    int cntTo;
    UnkOv41Anim *anims;
    int animCount;
} UnkOv41SwapTask;

typedef struct UnkOv41TouchCtx UnkOv41TouchCtx;

struct UnkOv41TouchCtx {
    void *data;
    void (*unk_04)(UnkOv41TouchCtx *);
    void (*unk_08)(UnkOv41TouchCtx *);
    void (*unk_0C)(UnkOv41TouchCtx *);
    u32 unk_10;
    u16 x;
    u16 y;
    u8 prevHeld;
};

u8 sub_0202BAB0(FashionCase *fashionCase, int id);
extern int _s32_div_f(int a, int b);

int ov41_02248EF4(UnkOv41FashionTable *tbl, int id);
void *ov41_02245EE0(UnkOv41ObjTemplate *tmpl);
void ov41_02246008(void *obj, BOOL visible);
void ov41_02246014(void *obj, int priority);
UnkOv41Node *ov41_022499F0(void *pool, void *obj, int type);
void ov41_02249A50(UnkOv41Node *node, UnkOv41Node *after);
void ov41_02249A60(UnkOv41Node *node);
void ov41_02249A70(UnkOv41Node *head);
BOOL ov41_02249AA8(UnkOv41Node *node, int x, int y, void *table);
void ov41_02249AF4(UnkOv41Node *node, int x, int y);
void ov41_02249B44(UnkOv41Node *node, int *x, int *y);
void ov41_02249B94(UnkOv41Node *node, int *w, int *h);
void ov41_02249BAC(UnkOv41Node *node, int *m0, int *m1, int *m2, int *m3);
void ov41_02249BE8(UnkOv41Node *head, int dx, int dy);
void ov41_02249C7C(UnkOv41ScrollBg *bg, const UnkOv41ScrollBgTemplate *tmpl);
void ov41_02249CC4(UnkOv41ScrollBg *bg);
void ov41_02249DB4(UnkOv41ScrollBg *bg, UnkOv41ScrollBgTemplate *tmpl, int dx, int dy, int frames, int *doneFlag);

void ov41_02248400(UnkOv41Node *node, int *outDx, int *outDy);
void ov41_02248488(UnkOv41Board *board, UnkOv41BoardTemplate *tmpl);
void ov41_022484C0(UnkOv41Board *board);
int ov41_022484E8(int type, int idx, UnkOv41FashionTable *tbl);
void ov41_022485DC(UnkOv41Board *board, int type, int idx);
void ov41_022486C4(UnkOv41Board *board, int type, int slot, UnkOv41Node *node);
void ov41_022486F0(UnkOv41Node *node);
void ov41_022486F8(UnkOv41Board *board);
void ov41_02248724(UnkOv41Board *board);
BOOL ov41_02248750(UnkOv41Board *board, int type, int slot);
BOOL ov41_02248790(UnkOv41Board *board, int type, int dir);
void ov41_022487F8(UnkOv41Board *board, int type, int slot);
BOOL ov41_02248820(void *unused);
BOOL ov41_0224883C(void *unused, u32 x, u32 y);
UnkOv41Node *ov41_02248858(UnkOv41Board *board, int x, int y, void *table);
void ov41_0224888C(UnkOv41Board *board, int page);
void ov41_022488D8(UnkOv41Board *board, int page, u32 flags, int frames, int *doneFlag);
void ov41_02248940(UnkOv41Board *board);
int ov41_0224894C(UnkOv41Board *board);
int ov41_0224895C(UnkOv41Board *board, int type);
BOOL ov41_02248998(UnkOv41Board *board);
void ov41_02248E28(UnkOv41TouchCtx *ctx);
void ov41_02248E44(UnkOv41TouchCtx *ctx);
void ov41_02248E84(FashionCase *fashionCase, UnkOv41FashionTable *tbl);

static void ov41_02248584(int type, int idx, int *outX, int *outY, int w, int h, UnkOv41FashionTable *tbl);
static void ov41_02248984(UnkOv41Board *board, int type, int slot, int dx, int dy);
static void ov41_022489A8(UnkOv41Board *board, UnkOv41BoardTemplate *tmpl);
static void ov41_022489E4(UnkOv41Node *head, int visible);
static void ov41_02248A08(UnkOv41Board *board, int type, int slot, int visible);
static void ov41_02248A18(UnkOv41Board *board, int visible);
static void ov41_02248A28(UnkOv41NodeList *list, int count);
static void ov41_02248A6C(UnkOv41NodeList *list);
static UnkOv41Node *ov41_02248A94(UnkOv41Board *board);
static UnkOv41Node *ov41_02248ABC(UnkOv41Board *board, int type, int slot);
static int ov41_02248AE0(UnkOv41Board *board, int type, int slot);
static UnkOv41Node *ov41_02248AFC(UnkOv41Board *board, int type, int slot, int index);
static void ov41_02248B20(UnkOv41Board *board, void *obj, int type, int slot);
static void ov41_02248B48(int value, int *outX, int *outY);
static void ov41_02248B84(UnkOv41Board *board, int fromType, int fromSlot, int toType, int toSlot);
static void ov41_02248BFC(SysTask *task, void *taskData);
static void ov41_02248D64(UnkOv41Node *node, UnkOv41Anim *anims, int count);
static UnkOv41Anim *ov41_02248D7C(UnkOv41Anim *anims, int count);
static void ov41_02248DA4(UnkOv41Anim *anims, int count);
static void ov41_02248DC8(UnkOv41Anim *anim);
static int ov41_02248E10(int a, int b);
static void ov41_02248E80(UnkOv41TouchCtx *ctx);

void ov41_02248400(UnkOv41Node *node, int *outDx, int *outDy) {
    int w, h;
    int x, y;
    int m0, m2, m1, m3;
    int dxL, dxR, dyT, dyB;

    ov41_02249B94(node, &w, &h);
    ov41_02249B44(node, &x, &y);
    ov41_02249BAC(node, &m0, &m1, &m2, &m3);

    dxL = 0x8a - (x + m0);
    dxR = (x + w) - m1 - 0xf6;
    dyT = 0x12 - (y + m2);
    dyB = (y + h) - m3 - 0x8f;

    if (dxL > 0) {
        *outDx = dxL;
    } else if (dxR > 0) {
        *outDx = -dxR;
    } else {
        *outDx = 0;
    }

    if (dyT > 0) {
        *outDy = dyT;
    } else if (dyB > 0) {
        *outDy = -dyB;
    } else {
        *outDy = 0;
    }
}

void ov41_02248488(UnkOv41Board *board, UnkOv41BoardTemplate *tmpl) {
    board->unk_44 = tmpl->unk_00;
    board->unk_48 = tmpl->unk_04;
    board->unk_4C = tmpl->unk_08;
    board->unk_50 = tmpl->unk_0C;
    board->bgConfig = tmpl->unk_10;
    board->unk_58 = tmpl->unk_14;
    board->pool = tmpl->pool;
    board->fashionTable = tmpl->fashionTable;
    ov41_0224888C(board, 0);
    ov41_022489A8(board, tmpl);
}

void ov41_022484C0(UnkOv41Board *board) {
    int i;

    ov41_022486F8(board);
    for (i = 0; i < 4; i++) {
        ov41_02248A6C(&board->lists[i]);
    }
    memset(board, 0, 0x8c);
}

int ov41_022484E8(int type, int idx, UnkOv41FashionTable *tbl) {
    switch (type) {
    case 0:
        if (idx <= 5) {
            return 0;
        }
        if (idx <= 0xb) {
            return 1;
        }
        if (idx <= 0x11) {
            return 2;
        }
        if (idx <= 0x15) {
            return 3;
        }
        if (idx <= 0x1c) {
            return 4;
        }
        if (idx <= 0x21) {
            return 5;
        }
        if (idx <= 0x26) {
            return 6;
        }
        if (idx <= 0x2a) {
            return 7;
        }
        if (idx <= 0x31) {
            return 8;
        }
        if (idx <= 0x37) {
            return 9;
        }
        if (idx <= 0x3c) {
            return 10;
        }
        if (idx <= 0x47) {
            return 11;
        }
        if (idx <= 0x5b) {
            return 12;
        }
        if (idx <= 0x63) {
            return 13;
        }
        break;
    case 1:
        return ov41_02248EF4(tbl, idx) / 9;
    case 2:
        return ov41_02248EF4(tbl, idx) / 9;
    }
}

static void ov41_02248584(int type, int idx, int *outX, int *outY, int w, int h, UnkOv41FashionTable *tbl) {
    switch (type) {
    case 0:
        *outX = 10;
        *outY = 0x12;
        *outX += MTRandom() % (u32)(0x6c - w);
        *outY += MTRandom() % (u32)(0x7d - h);
        break;
    case 1:
    case 2:
        ov41_02248B48(ov41_02248EF4(tbl, idx), outX, outY);
        break;
    }
}

void ov41_022485DC(UnkOv41Board *board, int type, int idx) {
    UnkOv41ObjTemplate tmpl;
    int resIdx;
    int j;
    int slot;
    void *obj;
    UnkOv41Node *node;
    int x, y;
    int w, h;

    tmpl.unk_00 = board->unk_58;
    tmpl.unk_18 = idx;
    tmpl.unk_04 = board->unk_44;
    tmpl.unk_10 = 0;
    tmpl.unk_14 = 0;

    switch (type) {
    case 0:
        resIdx = idx;
        j = 0;
        tmpl.unk_1C = board->unk_50[idx];
        break;
    case 1:
        resIdx = idx;
        resIdx += 100;
        j = idx + 1;
        tmpl.unk_1C = 0;
        break;
    case 2:
        resIdx = idx;
        resIdx += 100;
        j = idx + 1;
        tmpl.unk_1C = 0;
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    tmpl.unk_08 = board->unk_48[resIdx];
    tmpl.unk_0C = board->unk_4C[j];
    GF_ASSERT(tmpl.unk_08 != NULL);
    GF_ASSERT(tmpl.unk_0C != NULL);

    slot = ov41_022484E8(type, idx, board->fashionTable);
    obj = ov41_02245EE0(&tmpl);
    node = ov41_022499F0(board->pool, obj, type);
    ov41_02249A50(node, board->lists[type].nodes[slot].prev);
    ov41_02249B94(node, &w, &h);
    ov41_02248584(type, idx, &x, &y, w, h, board->fashionTable);
    ov41_02249AF4(node, x, y);
    ov41_02248B20(board, obj, type, slot);
}

void ov41_022486C4(UnkOv41Board *board, int type, int slot, UnkOv41Node *node) {
    ov41_02249A50(node, &board->lists[type].nodes[slot]);
    ov41_02248B20(board, node->obj, type, slot);
}

void ov41_022486F0(UnkOv41Node *node) {
    ov41_02249A60(node);
}

void ov41_022486F8(UnkOv41Board *board) {
    int i;
    int j;

    for (i = 0; i < 3; i++) {
        for (j = 0; j < board->lists[i].count; j++) {
            ov41_02249A70(&board->lists[i].nodes[j]);
        }
    }
}

void ov41_02248724(UnkOv41Board *board) {
    UnkOv41Node *node;
    UnkOv41Node *head;
    int prio;

    prio = -1;
    head = ov41_02248A94(board);

    for (node = head->next; node != head; node = node->next) {
        if ((u32)node->type <= 2) {
            ov41_02246014(node->obj, prio);
        }
        prio--;
    }
}

BOOL ov41_02248750(UnkOv41Board *board, int type, int slot) {
    if (board->busy == 0) {
        ov41_02248B84(board, board->curList, board->lists[board->curList].sel, type, slot);
        board->curList = type;
        board->lists[type].sel = slot;
        ov41_02248724(board);
        return TRUE;
    }
    return FALSE;
}

BOOL ov41_02248790(UnkOv41Board *board, int type, int dir) {
    int cur;
    int i;
    int next;
    UnkOv41Node *node;

    cur = ov41_0224895C(board, type);
    for (i = 1; i < board->lists[type].count; i++) {
        if (dir == 0) {
            next = (i + cur) % board->lists[type].count;
        } else {
            next = cur - i;
            if (next < 0) {
                next += board->lists[type].count;
            }
        }
        node = ov41_02248ABC(board, type, next);
        if (node->next != node) {
            return ov41_02248750(board, type, next);
        }
    }
    return FALSE;
}

void ov41_022487F8(UnkOv41Board *board, int type, int slot) {
    ov41_02248A18(board, 0);
    board->curList = type;
    board->lists[type].sel = slot;
    ov41_02248A18(board, 1);
    ov41_02248724(board);
}

BOOL ov41_02248820(void *unused) {
    TouchscreenHitbox hitbox;

    hitbox.rect.top = 0x12;
    hitbox.rect.bottom = 0x8f;
    hitbox.rect.left = 0xa;
    hitbox.rect.right = 0x76;
    return TouchscreenHitbox_TouchHeldIsIn(&hitbox);
}

BOOL ov41_0224883C(void *unused, u32 x, u32 y) {
    TouchscreenHitbox hitbox;

    hitbox.rect.top = 0x12;
    hitbox.rect.bottom = 0x8f;
    hitbox.rect.left = 0xa;
    hitbox.rect.right = 0x76;
    return TouchscreenHitbox_PointIsIn(&hitbox, x, y);
}

UnkOv41Node *ov41_02248858(UnkOv41Board *board, int x, int y, void *table) {
    UnkOv41Node *node;
    UnkOv41Node *head = ov41_02248A94(board);

    for (node = head->next; node != head; node = node->next) {
        if (ov41_02249AA8(node, x, y, table) == TRUE) {
            return node;
        }
    }
    return NULL;
}

void ov41_0224888C(UnkOv41Board *board, int page) {
    UnkOv41ScrollBgTemplate tmpl;

    tmpl.unk_00 = board->bgConfig;
    tmpl.unk_04 = 0x1a;
    tmpl.unk_08 = page * 2 + 0x81;
    tmpl.unk_0C = 0x85;
    tmpl.unk_10 = page * 2 + 0x82;
    tmpl.unk_14 = 8;
    tmpl.unk_18 = 0x81;
    tmpl.unk_1C = 3;
    tmpl.unk_20 = 1;
    tmpl.unk_24 = 2;
    tmpl.unk_28 = 0;
    tmpl.unk_2C = 0xe;
    ov41_02249C7C(&board->unk_5C, &tmpl);
    board->page = page;
}

void ov41_022488D8(UnkOv41Board *board, int page, u32 flags, int frames, int *doneFlag) {
    UnkOv41ScrollBgTemplate tmpl;
    int dx;
    int dy;

    tmpl.unk_00 = board->bgConfig;
    tmpl.unk_04 = 0x1a;
    tmpl.unk_08 = page * 2 + 0x81;
    tmpl.unk_0C = 0x85;
    tmpl.unk_10 = page * 2 + 0x82;
    tmpl.unk_14 = 8;
    tmpl.unk_18 = 0x81;
    tmpl.unk_1C = 3;
    tmpl.unk_20 = 1;
    tmpl.unk_24 = 2;
    tmpl.unk_28 = 0;
    tmpl.unk_2C = 0xe;
    dx = 0;
    if (flags & 1) {
        dx = 0x70;
    }
    if (flags & 2) {
        dy = 0x81;
    } else {
        dy = 0;
    }
    ov41_02249DB4(&board->unk_5C, &tmpl, dx, dy, frames, doneFlag);
    board->page = page;
}

void ov41_02248940(UnkOv41Board *board) {
    ov41_02249CC4(&board->unk_5C);
}

int ov41_0224894C(UnkOv41Board *board) {
    GF_ASSERT(board != NULL);
    return board->curList;
}

int ov41_0224895C(UnkOv41Board *board, int type) {
    UnkOv41NodeList list;

    GF_ASSERT(board != NULL);
    list = board->lists[type];
    return list.sel;
}

static void ov41_02248984(UnkOv41Board *board, int type, int slot, int dx, int dy) {
    ov41_02249BE8(ov41_02248ABC(board, type, slot), dx, dy);
}

BOOL ov41_02248998(UnkOv41Board *board) {
    if (board->busy == 0) {
        return TRUE;
    }
    return FALSE;
}

static void ov41_022489A8(UnkOv41Board *board, UnkOv41BoardTemplate *tmpl) {
    ov41_02248A28(&board->lists[0], tmpl->count0);
    board->curList = 0;
    ov41_022489E4(board->lists[0].nodes, 1);
    ov41_02248A28(&board->lists[1], tmpl->count1);
    ov41_02248A28(&board->lists[2], tmpl->count2);
    ov41_02248A28(&board->lists[3], 1);
}

static void ov41_022489E4(UnkOv41Node *head, int visible) {
    UnkOv41Node *node;

    for (node = head->next; node != head; node = node->next) {
        if ((u32)node->type <= 2) {
            ov41_02246008(node->obj, visible);
        }
    }
}

static void ov41_02248A08(UnkOv41Board *board, int type, int slot, int visible) {
    ov41_022489E4(ov41_02248ABC(board, type, slot), visible);
}

static void ov41_02248A18(UnkOv41Board *board, int visible) {
    ov41_022489E4(ov41_02248A94(board), visible);
}

static void ov41_02248A28(UnkOv41NodeList *list, int count) {
    int i;

    list->nodes = Heap_Alloc(HEAP_ID_14, count * 16);
    list->count = count;
    list->sel = 0;
    for (i = 0; i < list->count; i++) {
        list->nodes[i].next = &list->nodes[i];
        list->nodes[i].prev = &list->nodes[i];
        ov41_022489E4(&list->nodes[i], 0);
    }
}

static void ov41_02248A6C(UnkOv41NodeList *list) {
    Heap_Free(list->nodes);
    list->nodes = NULL;
    memset(list, 0, sizeof(UnkOv41NodeList));
}

static UnkOv41Node *ov41_02248A94(UnkOv41Board *board) {
    UnkOv41NodeList list = board->lists[board->curList];
    return &list.nodes[list.sel];
}

static UnkOv41Node *ov41_02248ABC(UnkOv41Board *board, int type, int slot) {
    UnkOv41NodeList list = board->lists[type];
    return &list.nodes[slot];
}

static int ov41_02248AE0(UnkOv41Board *board, int type, int slot) {
    int n = 0;
    UnkOv41Node *head = ov41_02248ABC(board, type, slot);
    UnkOv41Node *node;

    for (node = head->next; node != head; node = node->next) {
        n++;
    }
    return n;
}

static UnkOv41Node *ov41_02248AFC(UnkOv41Board *board, int type, int slot, int index) {
    UnkOv41Node *head;
    UnkOv41Node *node;
    int n;

    n = 0;
    head = ov41_02248ABC(board, type, slot);

    for (node = head->next; node != head; node = node->next) {
        if (n == index) {
            return node;
        }
        n++;
    }
    return NULL;
}

static void ov41_02248B20(UnkOv41Board *board, void *obj, int type, int slot) {
    if (board->curList != type || slot != board->lists[type].sel) {
        ov41_02246008(obj, FALSE);
    } else {
        ov41_02246008(obj, TRUE);
    }
}

#ifdef NONMATCHING
// Register allocation: retail keeps outY in r4 and row in r6; this C swaps them.
static void ov41_02248B48(int value, int *outX, int *outY) {
    int m;
    int row;
    int col;

    m = value % 9;
    row = m / 3;
    col = m % 3;
    *outY = (row + 1) * 8 + row * 32 + 0x10;
    *outX = (col + 1) * 8 + col * 24 + 8;
}
#else
// clang-format off
static asm void ov41_02248B48(int value, int *outX, int *outY) {
    push {r3, r4, r5, r6, r7, lr}
    add r5, r1, #0
    mov r1, #9
    add r4, r2, #0
    bl _s32_div_f
    add r7, r1, #0
    add r0, r7, #0
    mov r1, #3
    bl _s32_div_f
    add r6, r0, #0
    add r0, r7, #0
    mov r1, #3
    bl _s32_div_f
    add r0, r6, #1
    lsl r2, r0, #3
    lsl r0, r6, #5
    add r0, r2, r0
    add r0, #0x10
    str r0, [r4]
    add r0, r1, #1
    lsl r2, r0, #3
    mov r0, #0x18
    mul r0, r1
    add r0, r2, r0
    add r0, #8
    str r0, [r5]
    pop {r3, r4, r5, r6, r7, pc}
}
// clang-format on
#endif

static void ov41_02248B84(UnkOv41Board *board, int fromType, int fromSlot, int toType, int toSlot) {
    UnkOv41SwapTask *data = SysTask_GetData(CreateSysTaskAndEnvironment(ov41_02248BFC, 0x30, 0, HEAP_ID_13));

    data->board = board;
    data->fromType = fromType;
    data->fromSlot = fromSlot;
    data->toType = toType;
    data->toSlot = toSlot;
    data->state = 0;
    data->cntFrom = ov41_02248AE0(board, fromType, fromSlot);
    data->cntTo = ov41_02248AE0(board, toType, toSlot);
    data->animCount = data->cntFrom + data->cntTo;
    data->anims = Heap_Alloc(HEAP_ID_13, data->animCount * 12);
    GF_ASSERT(data->anims != NULL);
    memset(data->anims, 0, data->animCount * 12);
    board->busy = TRUE;
}

static void ov41_02248BFC(SysTask *task, void *taskData) {
    UnkOv41SwapTask *data = taskData;
    int i;

    switch (data->state) {
    case 0:
        ov41_02248984(data->board, data->toType, data->toSlot, 0, -0x84);
        ov41_02248A08(data->board, data->toType, data->toSlot, 1);
        data->done = 0;
        ov41_022488D8(data->board, (data->board->page + 1) % 2, 2, 5, &data->done);
        data->counter = ov41_02248E10(data->cntFrom, 1);
        data->state++;
        break;
    case 1:
        for (i = 0; i < data->counter; i++) {
            if (data->cntFrom - 1 >= 0) {
                data->cntFrom--;
                ov41_02248D64(ov41_02248AFC(data->board, data->fromType, data->fromSlot, data->cntFrom), data->anims, data->animCount);
            }
        }
        if (data->cntFrom == 0) {
            data->counter = ov41_02248E10(data->cntTo, 2);
            data->state++;
        }
        break;
    case 2:
        for (i = 0; i < data->counter; i++) {
            if (data->cntTo - 1 >= 0) {
                data->cntTo--;
                ov41_02248D64(ov41_02248AFC(data->board, data->toType, data->toSlot, data->cntTo), data->anims, data->animCount);
            }
        }
        if (data->cntTo == 0) {
            data->state++;
            data->counter = 0;
        }
        break;
    case 3:
        data->counter++;
        if (data->counter > 3 && data->done != 0) {
            data->state++;
        }
        break;
    case 4:
        ov41_02248A08(data->board, data->fromType, data->fromSlot, 0);
        ov41_02248984(data->board, data->fromType, data->fromSlot, 0, -0x84);
        data->board->busy = FALSE;
        Heap_Free(data->anims);
        DestroySysTaskAndEnvironment(task);
        return;
    default:
        GF_ASSERT(FALSE);
        break;
    }
    ov41_02248DA4(data->anims, data->animCount);
}

static void ov41_02248D64(UnkOv41Node *node, UnkOv41Anim *anims, int count) {
    UnkOv41Anim *anim = ov41_02248D7C(anims, count);

    anim->node = node;
    anim->frames = 3;
    anim->dy = 0x2c;
}

static UnkOv41Anim *ov41_02248D7C(UnkOv41Anim *anims, int count) {
    int i;

    for (i = 0; i < count; i++) {
        if (anims[i].node == NULL) {
            return &anims[i];
        }
    }
    return NULL;
}

static void ov41_02248DA4(UnkOv41Anim *anims, int count) {
    int i;

    for (i = 0; i < count; i++) {
        if (anims->node != NULL) {
            ov41_02248DC8(anims);
        }
        anims++;
    }
}

static void ov41_02248DC8(UnkOv41Anim *anim) {
    int x, y;

    ov41_02249B44(anim->node, &x, &y);
    y += anim->dy;
    ov41_02249AF4(anim->node, x, y);
    anim->frames--;
    if (anim->frames <= 0) {
        memset(anim, 0, sizeof(UnkOv41Anim));
    }
}

static int ov41_02248E10(int a, int b) {
    return (a + (b - a % b)) / b;
}

void ov41_02248E28(UnkOv41TouchCtx *ctx) {
    memset(ctx, 0, 0x1c);
    ctx->unk_04 = ov41_02248E80;
    ctx->unk_08 = ov41_02248E80;
    ctx->unk_0C = ov41_02248E80;
}

void ov41_02248E44(UnkOv41TouchCtx *ctx) {
    if (gSystem.touchNew) {
        ctx->unk_04(ctx);
    } else if (gSystem.touchHeld) {
        ctx->unk_0C(ctx);
    } else if (ctx->prevHeld) {
        ctx->unk_08(ctx);
    }
    ctx->x = gSystem.touchX;
    ctx->y = gSystem.touchY;
    ctx->prevHeld = gSystem.touchHeld;
}

static void ov41_02248E80(UnkOv41TouchCtx *ctx) {
}

void ov41_02248E84(FashionCase *fashionCase, UnkOv41FashionTable *tbl) {
    int i;

    for (i = 0; i < 100; i++) {
        tbl->counts[i] = sub_0202BA70(fashionCase, i);
    }
    for (i = 0; i < 18; i++) {
        tbl->slotToId[i] = 18;
    }
    for (i = 0; i < 18; i++) {
        u8 s = sub_0202BAB0(fashionCase, i);
        if (s != 18) {
            tbl->slotToId[s] = i;
        }
    }
}
