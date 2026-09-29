#include "global.h"

#include "assert.h"
#include "heap.h"

// Frozen public header (include/unk_02033AE0.h) carries prototypes that
// callers were matched against (e.g. sub_02034044(void)); this TU uses its
// own declarations instead of including it.

typedef struct RingBuf {
    u8 *data;
    s16 readPos;
    volatile s16 writePos;
    volatile s16 pendingPos;
    s16 size;
} RingBuf;

typedef struct CommQueueNode {
    const u8 *data;
    struct CommQueueNode *prev;
    struct CommQueueNode *next;
    u16 size;
    u8 cmd;
    u8 headerSent : 1;
    u8 inRing : 1;
    u8 unused : 6;
} CommQueueNode;

typedef struct CommQueueList {
    CommQueueNode *head;
    CommQueueNode *tail;
} CommQueueList;

typedef struct CommQueueMan {
    CommQueueList list;
    CommQueueList list2;
    CommQueueNode *cur;
    RingBuf *ring;
    CommQueueNode *nodes;
    int max;
} CommQueueMan;

typedef struct CommSendBuf {
    u8 *ptr;
    int size;
} CommSendBuf;

typedef void (*CommHandler)(int, int, void *, void *);
typedef u32 (*CommGetSize)(void);
typedef void *(*CommGetBuf)(int, void *, int);

typedef struct CommCmd {
    CommHandler handler;
    CommGetSize getSize;
    CommGetBuf getBuf;
} CommCmd;

typedef struct CommRegistry {
    const CommCmd *table;
    int count;
    void *arg;
    u8 flags[8];
    u8 active;
} CommRegistry;

void sub_02037974(void);
u16 sub_0203769C(void);
BOOL sub_020373B4(u16 netId);
BOOL sub_02037108(int cmd, void *data, int size);
void sub_020376E0(int cmd, void *data);

void sub_0203776C(int, int, void *, void *);
u32 sub_02034520(void);
void sub_020345D0(int, int, void *, void *);
void sub_0203453C(int, int, void *, void *);
void sub_02034524(int, int, void *, void *);
void sub_02038B3C(int, int, void *, void *);
void sub_02038B9C(int, int, void *, void *);
u32 sub_02038C18(void);
void sub_02037618(int, int, void *, void *);
void sub_02037640(int, int, void *, void *);
void sub_02037668(int, int, void *, void *);
void sub_02037A24(int, int, void *, void *);
void sub_02037AAC(int, int, void *, void *);
void sub_02037A98(int, int, void *, void *);
void sub_02037B6C(int, int, void *, void *);
u32 sub_02037B88(void);
void sub_02037C68(int, int, void *, void *);
u32 sub_02037C94(void);
void sub_02039220(int, int, void *, void *);

void sub_02033AE0(RingBuf *rb, u8 *data, int size);
void sub_02033AF0(RingBuf *rb, const u8 *data, int size, int line);
int sub_02033B4C(RingBuf *rb, u8 *dest, int size);
u8 sub_02033B68(RingBuf *rb);
static int sub_02033B78(RingBuf *rb, u8 *dest, int size);
int sub_02033BC4(RingBuf *rb);
int sub_02033BE4(RingBuf *rb);
static int sub_02033BF4(RingBuf *rb);
static int sub_02033C14(RingBuf *rb, int index);
void sub_02033C28(RingBuf *rb);
static CommQueueNode *sub_02033C30(CommQueueMan *man);
BOOL sub_02033C50(CommQueueMan *man);
static BOOL sub_02033C70(CommQueueList *list);
static BOOL sub_02033C94(CommSendBuf *buf, u8 val);
static BOOL sub_02033CB0(CommQueueNode *node, CommSendBuf *buf);
static BOOL sub_02033D28(CommQueueNode *node, CommSendBuf *buf, RingBuf *ring, int force);
BOOL sub_02033DF0(CommQueueMan *man, int cmd, const u8 *data, int size, BOOL a4, BOOL copyToRing);
static CommQueueNode *sub_02033E88(CommQueueMan *man);
static void sub_02033EA8(CommQueueMan *man);
BOOL sub_02033ECC(CommQueueMan *man, CommSendBuf *buf, int force);
void sub_02033F44(CommQueueMan *man, int max, RingBuf *ring);
void sub_02033F70(CommQueueMan *man);
void sub_02033F90(CommQueueMan *man);
BOOL sub_02033F9C(CommQueueMan *man, int cmd);
u8 sub_02033FC4(int index);
u8 sub_02033FF0(int index);
BOOL sub_0203401C(int cmd);
BOOL sub_02034044(int cmd);
BOOL sub_02034084(int cmd);
BOOL sub_02034098(int cmd);
BOOL sub_020340C4(int cmd);
void sub_0203410C(const CommCmd *table, int count, void *arg);
void sub_02034154(void);
void sub_02034170(int netId, int cmd, int size, void *data);
u32 sub_020341DC(int cmd);
BOOL sub_02034244(int cmd);
void *sub_02034280(int cmd, int netId, int size);
u32 sub_020342B8(void);
u32 sub_020342C0(void);
u32 sub_020342C4(void);
static u32 sub_020342C8(void);
static void sub_020342CC(int netId, int size, void *data, void *arg);
static void sub_02034310(int netId, int size, void *data, void *arg);
static void sub_02034338(int netId, int size, void *data, void *arg);

static CommRegistry *sCommRegistry;

static const CommCmd sCommCmdTable[] = {
    { NULL,         sub_020342C0, NULL },
    { NULL,         sub_020342C0, NULL },
    { sub_0203776C, sub_020342C0, NULL },
    { sub_020345D0, sub_02034520, NULL },
    { sub_0203453C, sub_02034520, NULL },
    { sub_02034524, sub_020342C0, NULL },
    { sub_02038B3C, sub_02038C18, NULL },
    { sub_02038B9C, sub_02038C18, NULL },
    { NULL,         NULL,         NULL },
    { NULL,         NULL,         NULL },
    { sub_02037618, sub_020342C4, NULL },
    { sub_02037640, sub_020342C4, NULL },
    { sub_02037668, sub_020342C4, NULL },
    { sub_020342CC, sub_020342C0, NULL },
    { sub_02034310, sub_020342C0, NULL },
    { sub_02034338, sub_020342C0, NULL },
    { sub_02037A24, sub_020342C4, NULL },
    { sub_02037AAC, sub_020342C4, NULL },
    { sub_02037A98, sub_020342C8, NULL },
    { sub_02037B6C, sub_02037B88, NULL },
    { sub_02037C68, sub_02037C94, NULL },
    { sub_02039220, sub_020342C0, NULL },
};

void sub_02033AE0(RingBuf *rb, u8 *data, int size) {
    rb->data = data;
    rb->size = size;
    rb->readPos = 0;
    rb->writePos = 0;
    rb->pendingPos = 0;
}

void sub_02033AF0(RingBuf *rb, const u8 *data, int size, int line) {
    int i, j;

    if (sub_02033BF4(rb) <= size) {
        sub_02037974();
        return;
    }

    for (i = rb->pendingPos, j = 0; i < rb->pendingPos + size; i++, j++) {
        GF_ASSERT(data != NULL);
        rb->data[sub_02033C14(rb, i)] = data[j];
    }
    rb->pendingPos = sub_02033C14(rb, i);
}

int sub_02033B4C(RingBuf *rb, u8 *dest, int size) {
    int n = sub_02033B78(rb, dest, size);
    rb->readPos = sub_02033C14(rb, rb->readPos + n);
    return n;
}

u8 sub_02033B68(RingBuf *rb) {
    u8 val;
    sub_02033B4C(rb, &val, 1);
    return val;
}

static int sub_02033B78(RingBuf *rb, u8 *dest, int size) {
    int i, j;

    for (i = rb->readPos, j = 0; i < rb->readPos + size; i++, j++) {
        if (rb->writePos == sub_02033C14(rb, i)) {
            return j;
        }
        dest[j] = rb->data[sub_02033C14(rb, i)];
    }
    return j;
}

int sub_02033BC4(RingBuf *rb) {
    if (rb->readPos > rb->writePos) {
        return rb->size + rb->writePos - rb->readPos;
    }
    return rb->writePos - rb->readPos;
}

int sub_02033BE4(RingBuf *rb) {
    return rb->size - sub_02033BC4(rb);
}

static int sub_02033BF4(RingBuf *rb) {
    if (rb->readPos > rb->pendingPos) {
        return rb->readPos - rb->pendingPos;
    }
    return rb->size - (rb->pendingPos - rb->readPos);
}

static int sub_02033C14(RingBuf *rb, int index) {
    return index % rb->size;
}

void sub_02033C28(RingBuf *rb) {
    rb->writePos = rb->pendingPos;
}

static CommQueueNode *sub_02033C30(CommQueueMan *man) {
    CommQueueNode *node = man->nodes;
    int i;

    for (i = 0; i < man->max; i++) {
        if (node->cmd == 0) {
            return node;
        }
        node++;
    }
    return NULL;
}

BOOL sub_02033C50(CommQueueMan *man) {
    CommQueueNode *node = man->nodes;
    int i;

    for (i = 0; i < man->max; i++) {
        if (node->cmd != 0) {
            return FALSE;
        }
        node++;
    }
    return TRUE;
}

static BOOL sub_02033C70(CommQueueList *list) {
    CommQueueNode *next;

    if (list->head != NULL) {
        next = list->head->next;
        if (next != NULL) {
            list->head = next;
            next->prev = NULL;
        } else {
            list->head = NULL;
            list->tail = NULL;
        }
        return TRUE;
    }
    return FALSE;
}

static BOOL sub_02033C94(CommSendBuf *buf, u8 val) {
    *buf->ptr = val;
    buf->ptr++;
    buf->size--;
    if (buf->size == 0) {
        return TRUE;
    }
    return FALSE;
}

static BOOL sub_02033CB0(CommQueueNode *node, CommSendBuf *buf) {
    u32 size = sub_020341DC(node->cmd);

    if (size == 0xFFFF) {
        if (buf->size < 3) {
            node->headerSent = FALSE;
            return TRUE;
        }
    } else {
        if (buf->size < 1) {
            node->headerSent = FALSE;
            return TRUE;
        }
    }
    sub_02033C94(buf, node->cmd);
    if (size == 0xFFFF) {
        sub_02033C94(buf, node->size >> 8);
        sub_02033C94(buf, node->size);
    } else {
        node->size = size;
    }
    node->headerSent = TRUE;
    return FALSE;
}

static BOOL sub_02033D28(CommQueueNode *node, CommSendBuf *buf, RingBuf *ring, int force) {
    int headerSize;
    int i;

    if (sub_020341DC(node->cmd) == 0xFFFF) {
        headerSize = 3;
    } else {
        headerSize = 1;
    }
    if (buf->size < node->size + headerSize && force == 0) {
        return FALSE;
    }
    if (node->headerSent != TRUE) {
        if (sub_02033CB0(node, buf)) {
            return FALSE;
        }
    }
    if (buf->size < node->size) {
        if (node->inRing) {
            sub_02033B4C(ring, buf->ptr, buf->size);
        } else {
            for (i = 0; i < buf->size; i++) {
                buf->ptr[i] = node->data[i];
            }
        }
        node->data += buf->size;
        node->size -= buf->size;
        buf->size = -1;
        return TRUE;
    }
    if (node->inRing) {
        sub_02033B4C(ring, buf->ptr, node->size);
    } else {
        MI_CpuCopy8(node->data, buf->ptr, node->size);
    }
    buf->ptr += node->size;
    buf->size -= node->size;
    return TRUE;
}

BOOL sub_02033DF0(CommQueueMan *man, int cmd, const u8 *data, int size, BOOL a4, BOOL copyToRing) {
    CommQueueNode *node = sub_02033C30(man);
    int cmdSize;

    if (node == NULL) {
        return FALSE;
    }
    GF_ASSERT(size < 0xFFFE);
    cmdSize = sub_020341DC(cmd);
    if (cmdSize == 0xFFFF) {
        cmdSize = size;
    }
    if (copyToRing) {
        if (cmdSize + 3 >= sub_02033BE4(man->ring)) {
            return FALSE;
        }
        sub_02033AF0(man->ring, data, cmdSize, 265);
        sub_02033C28(man->ring);
        node->inRing = TRUE;
    }
    node->size = cmdSize;
    node->cmd = cmd;
    node->data = data;
    if (man->list.tail == NULL) {
        man->list.tail = node;
        man->list.head = node;
    } else {
        man->list.tail->next = node;
        node->prev = man->list.tail;
        man->list.tail = node;
    }
    return TRUE;
}

static CommQueueNode *sub_02033E88(CommQueueMan *man) {
    if (man->cur != NULL) {
        return man->cur;
    }
    if (man->list.head != NULL) {
        return man->list.head;
    }
    if (man->list2.head != NULL) {
        return man->list2.head;
    }
    return NULL;
}

static void sub_02033EA8(CommQueueMan *man) {
    if (man->cur != NULL) {
        man->cur = NULL;
        return;
    }
    if (sub_02033C70(&man->list) == FALSE) {
        sub_02033C70(&man->list2);
    }
}

BOOL sub_02033ECC(CommQueueMan *man, CommSendBuf *buf, int force) {
    CommQueueNode *node;
    int first = TRUE;
    int i;

    while (buf->size > 0) {
        node = sub_02033E88(man);
        if (node == NULL) {
            break;
        }
        sub_02033EA8(man);
        if (!sub_02033D28(node, buf, man->ring, first)) {
            man->cur = node;
            break;
        }
        if (buf->size == -1) {
            man->cur = node;
            return FALSE;
        }
        MI_CpuFill8(node, 0, sizeof(CommQueueNode));
        first = force;
    }
    for (i = 0; i < buf->size; i++) {
        *buf->ptr = 0xEE;
        buf->ptr++;
    }
    return TRUE;
}

void sub_02033F44(CommQueueMan *man, int max, RingBuf *ring) {
    MI_CpuFill8(man, 0, sizeof(CommQueueMan));
    man->nodes = Heap_Alloc(HEAP_ID_15, max * sizeof(CommQueueNode));
    MI_CpuFill8(man->nodes, 0, max * sizeof(CommQueueNode));
    man->max = max;
    man->ring = ring;
}

void sub_02033F70(CommQueueMan *man) {
    MI_CpuFill8(man->nodes, 0, man->max * sizeof(CommQueueNode));
    man->list.head = NULL;
    man->list.tail = NULL;
    man->list2.head = NULL;
    man->list2.tail = NULL;
    man->cur = NULL;
}

void sub_02033F90(CommQueueMan *man) {
    Heap_Free(man->nodes);
}

BOOL sub_02033F9C(CommQueueMan *man, int cmd) {
    int i;

    CommQueueNode *node = man->nodes;

    for (i = 0; i < man->max; i++) {
        if (node->cmd == cmd) {
            return TRUE;
        }
        node++;
    }
    return FALSE;
}

u8 sub_02033FC4(int index) {
    u8 table[] = {
        0x01,
        0x01,
        0x01,
        0x01,
        0x03,
        0x03,
        0x03,
        0x04,
        0x03,
        0x04,
        0x07,
        0x03,
        0x07,
        0x04,
        0x01,
        0x04,
        0x01,
        0x01,
        0x04,
        0x01,
        0x01,
        0x01,
        0x01,
        0x03,
        0x00,
        0x00,
        0x04,
        0x01,
        0x01,
        0x02,
        0x01,
        0x01,
        0x01,
        0x03,
        0x01,
        0x03,
        0x00,
        0x01,
        0x01,
        0x01,
        0x03,
    };
    GF_ASSERT(index < NELEMS(table));
    return table[index];
}

u8 sub_02033FF0(int index) {
    u8 table[] = {
        0x01,
        0x01,
        0x01,
        0x01,
        0x03,
        0x03,
        0x01,
        0x01,
        0x01,
        0x01,
        0x01,
        0x01,
        0x01,
        0x01,
        0x01,
        0x01,
        0x01,
        0x01,
        0x01,
        0x01,
        0x01,
        0x01,
        0x01,
        0x01,
        0x00,
        0x00,
        0x01,
        0x01,
        0x01,
        0x01,
        0x01,
        0x01,
        0x01,
        0x01,
        0x01,
        0x01,
        0x00,
        0x01,
        0x01,
        0x01,
        0x01,
    };
    GF_ASSERT(index < NELEMS(table));
    return table[index];
}

BOOL sub_0203401C(int cmd) {
    switch (cmd) {
    case 7:
    case 9:
    case 13:
    case 18:
    case 26:
        return TRUE;
    }
    return FALSE;
}

BOOL sub_02034044(int cmd) {
    switch (cmd) {
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 29:
    case 33:
    case 34:
    case 35:
    case 36:
        return TRUE;
    }
    return FALSE;
}

BOOL sub_02034084(int cmd) {
    if (cmd == 29 || cmd == 33 || cmd == 35) {
        return TRUE;
    }
    return FALSE;
}

BOOL sub_02034098(int cmd) {
    switch (cmd) {
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 34:
        return TRUE;
    }
    return FALSE;
}

BOOL sub_020340C4(int cmd) {
    switch (cmd) {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 8:
    case 37:
    case 38:
    case 39:
    case 40:
        return TRUE;
    }
    return FALSE;
}

void sub_0203410C(const CommCmd *table, int count, void *arg) {
    int i;

    if (sCommRegistry == NULL) {
        sCommRegistry = Heap_Alloc(HEAP_ID_15, sizeof(CommRegistry));
    }
    sCommRegistry->table = table;
    sCommRegistry->count = count;
    sCommRegistry->arg = arg;
    for (i = 0; i < 8; i++) {
        sCommRegistry->flags[i] = 0;
    }
    sCommRegistry->active = 0;
}

void sub_02034154(void) {
    if (sCommRegistry != NULL) {
        Heap_Free(sCommRegistry);
        sCommRegistry = NULL;
    }
}

void sub_02034170(int netId, int cmd, int size, void *data) {
    CommHandler func;

    if (cmd < (int)NELEMS(sCommCmdTable)) {
        func = sCommCmdTable[cmd].handler;
    } else {
        GF_ASSERT(sCommRegistry != NULL);
        if (cmd > sCommRegistry->count + (int)NELEMS(sCommCmdTable)) {
            sub_02037974();
            return;
        }
        func = sCommRegistry->table[cmd - NELEMS(sCommCmdTable)].handler;
    }
    if (func != NULL) {
        if (sCommRegistry != NULL) {
            func(netId, size, data, sCommRegistry->arg);
        } else {
            func(netId, size, data, NULL);
        }
    }
}

u32 sub_020341DC(int cmd) {
    CommGetSize func;
    u32 size = 0;

    if (cmd < (int)NELEMS(sCommCmdTable)) {
        func = sCommCmdTable[cmd].getSize;
    } else {
        GF_ASSERT(sCommRegistry != NULL);
        if (sCommRegistry == NULL) {
            sub_02037974();
            return 0;
        }
        if (cmd > sCommRegistry->count + (int)NELEMS(sCommCmdTable)) {
            GF_ASSERT(FALSE);
            sub_02037974();
            return 0;
        }
        func = sCommRegistry->table[cmd - NELEMS(sCommCmdTable)].getSize;
    }
    if (func != NULL) {
        size = func();
    }
    return size;
}

BOOL sub_02034244(int cmd) {
    if (cmd < (int)NELEMS(sCommCmdTable)) {
        if (sCommCmdTable[cmd].getBuf != NULL) {
            return TRUE;
        }
        return FALSE;
    }
    if (sCommRegistry->table[cmd - NELEMS(sCommCmdTable)].getBuf != NULL) {
        return TRUE;
    }
    return FALSE;
}

void *sub_02034280(int cmd, int netId, int size) {
    if (cmd < (int)NELEMS(sCommCmdTable)) {
        return sCommCmdTable[cmd].getBuf(netId, NULL, size);
    }
    return sCommRegistry->table[cmd - NELEMS(sCommCmdTable)].getBuf(netId, sCommRegistry->arg, size);
}

u32 sub_020342B8(void) {
    return 0xFFFF;
}

u32 sub_020342C0(void) {
    return 0;
}

u32 sub_020342C4(void) {
    return 1;
}

static u32 sub_020342C8(void) {
    return 2;
}

static void sub_020342CC(int netId, int size, void *data, void *arg) {
    int i;

    if (sub_0203769C() == 0) {
        sCommRegistry->flags[netId] = 1;
        for (i = 0; i < 8; i++) {
            if (sub_020373B4(i) && sCommRegistry->flags[i] == 0) {
                return;
            }
        }
        sub_02037108(14, NULL, 0);
    }
}

static void sub_02034310(int netId, int size, void *data, void *arg) {
    sCommRegistry->table = NULL;
    sCommRegistry->count = 0;
    sCommRegistry->arg = NULL;
    sCommRegistry->active = 1;
    sub_020376E0(15, data);
}

static void sub_02034338(int netId, int size, void *data, void *arg) {
    if (sub_0203769C() == 0) {
        sCommRegistry->flags[netId] = 0;
    }
}
