#include "unk_0202068C.h"

#include "vram_transfer_manager.h"

extern u32 sub_02026DE0(void *a0, u32 a1);
extern void sub_02020B3C(NNSG3dResName *resName, const s8 *input);
extern void *NNS_G3dGetResDataByName(const NNSG3dResDict *dict, const NNSG3dResName *name);

static void sub_02020740(UnkStruct_0202068C *manager);
static void sub_02020770(UnkStruct_0202068C_entry *entry);
static void sub_02020780(UnkStruct_0202068C_entry *entry, u32 frame);
static void sub_020207C8(UnkStruct_0202068C_entry *entry, u8 *ptr);
static void sub_020207F4(UnkStruct_0202068C_entry *entry, u8 *ptr);
static void *sub_02020820(UnkStruct_0202068C_entry *entry, u8 *ptr);
static void *sub_0202082C(UnkStruct_0202068C_entry *entry, u8 *ptr);
static u32 sub_020208CC(void *model, u32 *data);
static u32 sub_0202094C(void *model, u32 *data);

UnkStruct_0202068C *sub_0202068C(int count, enum HeapID heapId) {
    UnkStruct_0202068C *manager = Heap_Alloc(heapId, sizeof(UnkStruct_0202068C));
    int i;
    manager->entries = Heap_Alloc(heapId, sizeof(UnkStruct_0202068C_entry) * count);
    manager->count = count;
    for (i = 0; i < manager->count; i++) {
        sub_02020770(&manager->entries[i]);
    }
    return manager;
}

void sub_020206C8(UnkStruct_0202068C *manager) {
    sub_02020740(manager);
    Heap_Free(manager->entries);
    Heap_Free(manager);
}

UnkStruct_0202068C_entry *sub_020206E0(UnkStruct_0202068C *manager, void *animState, void *model, u32 charVram, u32 palVram, u32 frame) {
    UnkStruct_0202068C_entry *entry = NULL;
    int i;
    for (i = 0; i < manager->count; i++) {
        if (manager->entries[i].animState == NULL) {
            entry = &manager->entries[i];
            break;
        }
    }
    if (entry == NULL) {
        return NULL;
    }
    entry->animState = animState;
    entry->model = model;
    entry->charVram = charVram;
    entry->palVram = palVram;
    entry->lastCell = 0xFF;
    entry->lastPalette = 0xFF;
    sub_02020780(entry, (frame << 4) >> 16);
    return entry;
}

void sub_02020738(UnkStruct_0202068C_entry *entry) {
    sub_02020770(entry);
}

static void sub_02020740(UnkStruct_0202068C *manager) {
    int i;
    for (i = 0; i < manager->count; i++) {
        sub_02020770(&manager->entries[i]);
    }
}

void sub_02020764(UnkStruct_0202068C_entry *entry, u32 frame) {
    sub_02020780(entry, (frame << 4) >> 16);
}

static void sub_02020770(UnkStruct_0202068C_entry *entry) {
    entry->animState = NULL;
    entry->model = NULL;
    entry->charVram = 0;
    entry->palVram = 0;
    entry->lastCell = 0;
    entry->lastPalette = 0;
}

#ifdef NONMATCHING
static void sub_02020780(UnkStruct_0202068C_entry *entry, u32 frame) {
    u8 buf[4];
    u32 val = sub_02026DE0(entry->animState, frame);
    buf[0] = val;
    buf[1] = val >> 8;
    buf[2] = buf[0];
    buf[3] = buf[1];
    if (entry->lastCell != buf[2]) {
        sub_020207C8(entry, &buf[2]);
    }
    if (entry->lastPalette != buf[3]) {
        sub_020207F4(entry, &buf[2]);
    }
}
#else
// MWCC pre-reserves r1 for &buf[2] (buf base -> r2); the allocation order cannot
// be coerced from C (a temp either CSEs or is held callee-saved across the calls).
// clang-format off
static asm void sub_02020780(UnkStruct_0202068C_entry *entry, u32 frame) {
    push {r3, r4, lr}
    sub sp, #4
    add r4, r0, #0
    ldr r0, [r4, #0]
    bl sub_02026DE0
    add r2, sp, #0
    strb r0, [r2, #0]
    lsr r0, r0, #8
    strb r0, [r2, #1]
    ldrb r0, [r2, #0]
    add r1, sp, #0
    add r1, #2
    strb r0, [r2, #2]
    ldrb r0, [r2, #1]
    strb r0, [r2, #3]
    ldrb r3, [r4, #16]
    ldrb r0, [r2, #2]
    cmp r3, r0
    beq _020207AE
    add r0, r4, #0
    bl sub_020207C8
_020207AE:
    add r0, sp, #0
    ldrb r1, [r4, #17]
    ldrb r0, [r0, #3]
    cmp r1, r0
    beq _020207C2
    add r1, sp, #0
    add r0, r4, #0
    add r1, #2
    bl sub_020207F4
_020207C2:
    add sp, #4
    pop {r3, r4, pc}
}
// clang-format on
#endif

static void sub_020207C8(UnkStruct_0202068C_entry *entry, u8 *ptr) {
    void *pSrc = sub_02020820(entry, ptr);
    GF_CreateNewVramTransferTask((NNS_GFD_DST_TYPE)0, (entry->charVram << 16) >> 13, pSrc, ((entry->charVram & 0x7FFF0000) >> 16) << 4);
    entry->lastCell = *ptr;
}

static void sub_020207F4(UnkStruct_0202068C_entry *entry, u8 *ptr) {
    void *pSrc = sub_0202082C(entry, ptr);
    GF_CreateNewVramTransferTask((NNS_GFD_DST_TYPE)1, (entry->palVram << 16) >> 13, pSrc, ((entry->palVram & 0xFFFF0000) >> 16) << 3);
    entry->lastPalette = ptr[1];
}

static void *sub_02020820(UnkStruct_0202068C_entry *entry, u8 *ptr) {
    return sub_02020838(entry->model, *ptr);
}

static void *sub_0202082C(UnkStruct_0202068C_entry *entry, u8 *ptr) {
    return sub_02020888(entry->model, ptr[1]);
}

void *sub_02020838(void *model, u8 index) {
    u32 *data;
    if (model != NULL) {
        data = NNS_G3dGetResDataByIdx((NNSG3dResDict *)((u8 *)model + 0x3C), index);
    } else {
        data = NULL;
    }
    if (data == NULL) {
        return NULL;
    }
    return (u8 *)model + *(u32 *)((u8 *)model + 0x14) + (((u16)*data + *(u32 *)((u8 *)model + 8)) << 3);
}

void *sub_02020888(void *model, u8 index) {
    u16 *data;
    if (model != NULL && *(u16 *)((u8 *)model + 0x34) != 0) {
        data = NNS_G3dGetResDataByIdx((NNSG3dResDict *)((u8 *)model + *(u16 *)((u8 *)model + 0x34)), index);
    } else {
        data = NULL;
    }
    if (data == NULL) {
        return NULL;
    }
    return (u8 *)model + *(u32 *)((u8 *)model + 0x38) + (*data << 3);
}

static u32 sub_020208CC(void *model, u32 *data) {
    return ((*data << 16) >> 13) + ((*(u32 *)((u8 *)model + 8) << 16) >> 13);
}

u32 sub_020208DC(void *model, void *name) {
    NNSG3dResName resName;
    void *data;
    sub_02020B3C(&resName, name);
    if (model != NULL) {
        data = NNS_G3dGetResDataByName((NNSG3dResDict *)((u8 *)model + 0x3C), &resName);
    } else {
        data = NULL;
    }
    if (data == NULL) {
        return 0;
    }
    return sub_020208CC(model, data);
}

u32 sub_02020910(void *model, u8 index) {
    u32 *data;
    if (model != NULL) {
        data = NNS_G3dGetResDataByIdx((NNSG3dResDict *)((u8 *)model + 0x3C), index);
    } else {
        data = NULL;
    }
    if (data == NULL) {
        return 0;
    }
    return sub_020208CC(model, data);
}

static u32 sub_0202094C(void *model, u32 *data) {
    u32 v = *data;
    u32 divisor;
    switch ((v & 0x1C000000) >> 26) {
    case 2:
        divisor = 4;
        break;
    case 3:
        divisor = 2;
        break;
    case 4:
        divisor = 1;
        break;
    case 1:
        divisor = 1;
        break;
    case 6:
        divisor = 1;
        break;
    case 0:
    case 5:
    default:
        return 0;
    }
    return (((v & 0x00700000) >> 20) << 4) * (((v & 0x03800000) >> 23) << 4) / divisor;
}

u32 sub_020209AC(void *model, u8 index) {
    u32 *data;
    if (model != NULL) {
        data = NNS_G3dGetResDataByIdx((NNSG3dResDict *)((u8 *)model + 0x3C), index);
    } else {
        data = NULL;
    }
    return sub_0202094C(model, data);
}

u32 sub_020209E0(void *model, void *name) {
    NNSG3dResName resName;
    void *data;
    sub_02020B3C(&resName, name);
    if (model != NULL) {
        data = NNS_G3dGetResDataByName((NNSG3dResDict *)((u8 *)model + 0x3C), &resName);
    } else {
        data = NULL;
    }
    return sub_0202094C(model, data);
}
