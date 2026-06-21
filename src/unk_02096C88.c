#include "global.h"

#include "heap.h"
#include "unk_02033AE0.h"
#include "unk_02034354.h"
#include "unk_02035900.h"
#include "unk_02037C94.h"
#include "unk_0205A44C.h"
#include "unk_02091564.h"

extern u32 sub_02033250(void);
extern void sub_02038C1C(int);
extern void sub_0205AD24(void *);
extern int MATH_CountPopulation(u32 x);
extern void ov85_021E85C4(void *, int);
extern void ov85_021E85CC(void *, void *);
extern void ov85_021E8680(void *, void *);
extern void ov85_021E86AC(void *, int);
extern void ov85_021E8740(void *, int, int);
extern void ov85_021E8748(void *, void *);
extern void ov85_021E9C84(void *, int, int);
extern void ov85_021E9D9C(void *, int, int);

void *sub_02096C88(void *work, enum HeapID heapId);
void sub_02096CC8(void *work);
void sub_02096CE0(void *arg);
void sub_02096CF4(void *work);
int sub_02096D4C(void *w, int cmd, void *data, int len);
void *sub_02097018(void *w, int index);

typedef void (*CommHandler)(int, int, void *, void *);
typedef u32 (*CommGetSize)(void);
typedef void *(*CommGetBuf)(int, void *);

typedef struct CommCommand {
    CommHandler handler;
    CommGetSize getSize;
    CommGetBuf getBuf;
} CommCommand;

typedef struct UnkWork_02096C88 {
    void *unk00;
    u32 unk04;
    u32 unk08;
    u32 unk0c;
    u32 unk10;
    u32 unk14;
    u32 unk18;
    u32 unk1c;
    u32 unk20;
    u32 unk24;
    u32 unk28;
    u32 unk2c;
    u32 unk30;
    u32 unk34;
    u16 unk38;
    u8 unk3a[6];
    u16 unk40;
    u16 unk42;
    u16 unk44;
    s16 unk46;
    u16 unk48;
    u16 unk4a;
    void *unk4c;
    void *unk50;
    u32 unk54;
} UnkWork_02096C88;

static int sub_02096D14(void *w, u32 cmd, void *data, u32 len);
static void sub_02096D60(int a0, int a1, void *a2, void *a3);
static void sub_02096D80(int playerIdx, int a1, void *data, void *w);
static void sub_02096DA8(int a0, int a1, void *a2, void *a3);
static void sub_02096DB4(int a0, int a1, void *a2, void *a3);
static void sub_02096DBC(int a0, int a1, void *a2, void *a3);
static void sub_02096DE4(int a0, int a1, void *a2, void *a3);
static void sub_02096DF4(int a0, int a1, void *a2, void *a3);
static void sub_02096ED0(int a0, int a1, void *a2, void *a3);
static void sub_02096EF0(int a0, int a1, void *a2, void *a3);
static void sub_02096F0C(int a0, int a1, void *a2, void *a3);
static void sub_02096F2C(int a0, int a1, void *a2, void *a3);
static void sub_02096F3C(int a0, int a1, void *a2, void *a3);
static void sub_02096F50(int a0, int a1, void *a2, void *a3);
static void sub_02096F60(int a0, int a1, void *a2, void *a3);
static void sub_02096F70(int a0, int a1, void *a2, void *a3);
static void sub_02096F80(int a0, int a1, void *a2, void *a3);
static void sub_02096F9C(int a0, int a1, void *a2, void *a3);
static void sub_02096FAC(int a0, int a1, void *a2, void *a3);
static void sub_02096FBC(int a0, int a1, void *a2, void *a3);
static void sub_02096FD0(int a0, int a1, void *a2, void *a3);
static u32 sub_02096FE4(void);
static u32 sub_02096FE8(void);
static void *sub_02096FF0(int index, void *w);
static int sub_02096FFC(void);

static const CommHandler sHandlers[18] = {
    sub_02096ED0,
    sub_02096DE4,
    sub_02096DF4,
    sub_02096EF0,
    sub_02096F0C,
    sub_02096DBC,
    sub_02096DB4,
    sub_02096DA8,
    sub_02096F2C,
    sub_02096F3C,
    sub_02096F70,
    sub_02096F80,
    sub_02096F50,
    sub_02096F60,
    sub_02096F9C,
    sub_02096FAC,
    sub_02096FBC,
    sub_02096FD0,
};

static const CommCommand sProtocolTable[135] = {
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { (CommHandler)sub_02091570, (CommGetSize)sub_020342C0, NULL         },
    { sub_02096D60,              sub_02096FE4,              NULL         },
    { sub_02096D80,              sub_02096FE8,              sub_02096FF0 },
    { NULL,                      NULL,                      NULL         },
    { NULL,                      NULL,                      NULL         },
    { NULL,                      NULL,                      NULL         },
    { NULL,                      NULL,                      NULL         },
    { NULL,                      NULL,                      NULL         },
    { NULL,                      NULL,                      NULL         },
    { NULL,                      NULL,                      NULL         },
    { NULL,                      NULL,                      NULL         },
    { NULL,                      NULL,                      NULL         },
    { NULL,                      NULL,                      NULL         },
    { NULL,                      NULL,                      NULL         },
    { NULL,                      NULL,                      NULL         },
    { NULL,                      NULL,                      NULL         },
    { NULL,                      NULL,                      NULL         },
    { NULL,                      NULL,                      NULL         },
    { NULL,                      NULL,                      NULL         },
    { NULL,                      NULL,                      NULL         },
    { NULL,                      NULL,                      NULL         },
    { NULL,                      NULL,                      NULL         },
    { NULL,                      NULL,                      NULL         },
    { NULL,                      NULL,                      NULL         },
    { NULL,                      NULL,                      NULL         },
    { NULL,                      NULL,                      NULL         },
    { NULL,                      NULL,                      NULL         },
    { NULL,                      NULL,                      NULL         },
};

void *sub_02096C88(void *work, enum HeapID heapId) {
    UnkWork_02096C88 *w = Heap_Alloc(heapId, 0x58);
    if (w == NULL) {
        GF_AssertFail();
    }
    memset(w, 0, 0x58);
    w->unk00 = work;
    w->unk4c = Heap_Alloc(heapId, 0x1BD0);
    w->unk50 = Heap_Alloc(heapId, 0x1BD0);
    return w;
}

void sub_02096CC8(void *work) {
    UnkWork_02096C88 *w = work;
    Heap_Free(w->unk4c);
    Heap_Free(w->unk50);
    Heap_Free(w);
}

void sub_02096CE0(void *arg) {
    sub_0203410C(sProtocolTable, 0x87, arg);
}

void sub_02096CF4(void *work) {
    UnkWork_02096C88 *w = work;
    sub_02038C1C(2);
    sub_02037FF0();
    sub_0205AD24(*(void **)((u8 *)w->unk00 + 0x20));
    sub_0205A904(0);
}

static int sub_02096D14(void *w, u32 cmd, void *data, u32 len) {
    u8 *p;
    GF_ASSERT(cmd < 0x12);
    GF_ASSERT(len + 4 <= 0x18);
    p = (u8 *)w + 4;
    *(u32 *)((u8 *)w + 4) = cmd;
    memcpy(p + 4, data, len);
    return sub_02037030(0x82, p, 0x18);
}

int sub_02096D4C(void *w, int cmd, void *data, int len) {
    UnkWork_02096C88 *wk = w;
    if (wk->unk1c == 1) {
        return 0;
    }
    return sub_02096D14(w, cmd, data, len);
}

static void sub_02096D60(int a0, int a1, void *a2, void *a3) {
    u8 *data = a2;
    u32 cmd = *(u32 *)data;
    if (cmd >= 0x12) {
        GF_AssertFail();
        return;
    }
    sHandlers[cmd](a0, a1, data + 4, a3);
}

static void sub_02096D80(int playerIdx, int a1, void *data, void *w) {
    UnkWork_02096C88 *wk = w;
    wk->unk46 |= (1 << playerIdx);
    memcpy(sub_02097018(w, playerIdx), data, 0x590);
}

static void sub_02096DA8(int a0, int a1, void *a2, void *a3) {
    UnkWork_02096C88 *wk = a3;
    if (a0 == 0) {
        wk->unk28 = *(u8 *)a2;
    }
}

static void sub_02096DB4(int a0, int a1, void *a2, void *a3) {
    UnkWork_02096C88 *wk = a3;
    wk->unk20 += 1;
}

static void sub_02096DBC(int a0, int a1, void *a2, void *a3) {
    UnkWork_02096C88 *wk = a3;
    if (sub_0203769C()) {
        wk->unk20 = 0;
        wk->unk24 = 1;
        ov85_021E9C84(*(void **)((u8 *)wk->unk00 + 0x38), 0x1f, (u8)a0);
    }
}

static void sub_02096DE4(int a0, int a1, void *a2, void *a3) {
    UnkWork_02096C88 *wk = a3;
    ov85_021E9C84(*(void **)((u8 *)wk->unk00 + 0x38), 2, 0);
}

static void sub_02096DF4(int a0, int a1, void *a2, void *a3) {
    u8 buf[4];
    u8 *data = a2;
    UnkWork_02096C88 *wk = a3;

    if (a0 != 0) {
        if (sub_0203769C() != 0) {
            return;
        }
        buf[0] = data[0];
        buf[1] = data[1];
        buf[2] = data[2];
        buf[3] = data[3];
        buf[0] = (u8)a0;
        buf[1] = (u8)wk->unk2c;
        switch (data[2]) {
        case 0:
            if (wk->unk2c != (u32)sub_02037454() || wk->unk2c != (u32)sub_02096FFC() || wk->unk2c != (u32)MATH_CountPopulation(sub_02033250())) {
                buf[3] = 0;
            } else {
                wk->unk30 |= (1 << a0);
                buf[3] = 1;
                sub_02038C1C(sub_02037454());
            }
            break;
        case 1:
        default:
            break;
        }
        sub_02096D4C(wk, 2, buf, 4);
        return;
    }

    switch (data[2]) {
    case 0: {
        u8 player = data[0];
        if (player != sub_0203769C()) {
            break;
        }
        if (data[3] == 0) {
            ov85_021E9C84(*(void **)((u8 *)wk->unk00 + 0x38), 8, player);
            return;
        }
        wk->unk38 = data[1];
        ov85_021E9C84(*(void **)((u8 *)wk->unk00 + 0x38), 7, data[0]);
        return;
    }
    case 1:
        ov85_021E9C84(*(void **)((u8 *)wk->unk00 + 0x38), 0x13, data[0]);
        break;
    }
}

static void sub_02096ED0(int a0, int a1, void *a2, void *a3) {
    UnkWork_02096C88 *wk = a3;
    ov85_021E9D9C(*(void **)((u8 *)wk->unk00 + 0x38), 1, *(u8 *)a2);
    if (sub_0203769C() == 0) {
        wk->unk34 = 0;
    }
}

static void sub_02096EF0(int a0, int a1, void *a2, void *a3) {
    UnkWork_02096C88 *wk = a3;
    if (sub_0203769C() != 0) {
        ov85_021E9C84(*(void **)((u8 *)wk->unk00 + 0x38), 0xd, 0);
    }
}

static void sub_02096F0C(int a0, int a1, void *a2, void *a3) {
    UnkWork_02096C88 *wk = a3;
    if (sub_0203769C() == 0) {
        u8 buf[1];
        buf[0] = (u8)a0;
        sub_02096D4C(wk, 0, buf, 1);
    }
}

static void sub_02096F2C(int a0, int a1, void *a2, void *a3) {
    UnkWork_02096C88 *wk = a3;
    wk->unk40 |= *(u16 *)a2;
}

static void sub_02096F3C(int a0, int a1, void *a2, void *a3) {
    UnkWork_02096C88 *wk = a3;
    wk->unk42 |= (1 << a0);
}

static void sub_02096F50(int a0, int a1, void *a2, void *a3) {
    UnkWork_02096C88 *wk = a3;
    ov85_021E8680(*(void **)((u8 *)wk->unk00 + 0x34), a2);
}

static void sub_02096F60(int a0, int a1, void *a2, void *a3) {
    UnkWork_02096C88 *wk = a3;
    ov85_021E86AC(*(void **)((u8 *)wk->unk00 + 0x34), *(int *)a2);
}

static void sub_02096F70(int a0, int a1, void *a2, void *a3) {
    UnkWork_02096C88 *wk = a3;
    ov85_021E85C4(*(void **)((u8 *)wk->unk00 + 0x34), *(u8 *)a2);
}

static void sub_02096F80(int a0, int a1, void *a2, void *a3) {
    UnkWork_02096C88 *wk = a3;
    if (sub_0203769C() != 0) {
        ov85_021E85CC(*(void **)((u8 *)wk->unk00 + 0x34), a2);
    }
}

static void sub_02096F9C(int a0, int a1, void *a2, void *a3) {
    UnkWork_02096C88 *wk = a3;
    ov85_021E8740(*(void **)((u8 *)wk->unk00 + 0x34), a0, *(int *)a2);
}

static void sub_02096FAC(int a0, int a1, void *a2, void *a3) {
    UnkWork_02096C88 *wk = a3;
    ov85_021E8748(*(void **)((u8 *)wk->unk00 + 0x34), a2);
}

static void sub_02096FBC(int a0, int a1, void *a2, void *a3) {
    UnkWork_02096C88 *wk = a3;
    wk->unk48 |= (1 << a0);
}

static void sub_02096FD0(int a0, int a1, void *a2, void *a3) {
    UnkWork_02096C88 *wk = a3;
    wk->unk4a |= (1 << a0);
}

static u32 sub_02096FE4(void) {
    return 0x18;
}

static u32 sub_02096FE8(void) {
    return 0x590;
}

static void *sub_02096FF0(int index, void *w) {
    UnkWork_02096C88 *wk = w;
    return (u8 *)wk->unk4c + index * 0x590;
}

static int sub_02096FFC(void) {
    int i;
    int count = 0;
    for (i = 0; i < 5; i++) {
        if (sub_02034818(i) != NULL) {
            count++;
        }
    }
    return count;
}

void *sub_02097018(void *w, int index) {
    UnkWork_02096C88 *wk = w;
    return (u8 *)wk->unk50 + index * 0x590;
}
