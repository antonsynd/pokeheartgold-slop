#include "overlay_80_022384D8.h"

#include "global.h"

#include "heap.h"
#include "sys_task_api.h"

typedef struct UnkStruct_Ov80_022384FC {
    SysTask *unk00;
    BgConfig *unk04;
    u16 unk08;
    u16 unk0A;
} UnkStruct_Ov80_022384FC;

struct UnkStruct_Ov80_022384D8 {
    u32 unk00;
    UnkStruct_Ov80_022384FC *unk04;
};

static UnkStruct_Ov80_022384FC *ov80_022384FC(BgConfig *bgConfig);
static void ov80_02238530(SysTask *task, void *data);
static void ov80_0223857C(u16 *buf, u8 toggle);
static void ov80_022385C4(UnkStruct_Ov80_022384FC *inner);

UnkStruct_Ov80_022384D8 *ov80_022384D8(BgConfig *bgConfig) {
    UnkStruct_Ov80_022384D8 *outer = Heap_Alloc(HEAP_ID_101, sizeof(UnkStruct_Ov80_022384D8));
    MI_CpuClear8(outer, sizeof(UnkStruct_Ov80_022384D8));
    outer->unk04 = ov80_022384FC(bgConfig);
    return outer;
}

static UnkStruct_Ov80_022384FC *ov80_022384FC(BgConfig *bgConfig) {
    UnkStruct_Ov80_022384FC *inner = Heap_Alloc(HEAP_ID_101, sizeof(UnkStruct_Ov80_022384FC));
    MI_CpuClear8(inner, sizeof(UnkStruct_Ov80_022384FC));
    inner->unk04 = bgConfig;
    inner->unk08 = 0;
    inner->unk00 = SysTask_CreateOnMainQueue(ov80_02238530, inner, 0x0001368C);
    return inner;
}

static void ov80_02238530(SysTask *task, void *data) {
    UnkStruct_Ov80_022384FC *inner = data;
    u16 rect[4];
    if (inner->unk0A < 2) {
        inner->unk0A++;
        return;
    }
    inner->unk0A = 0;
    inner->unk08 ^= 1;
    ov80_0223857C(rect, inner->unk08);
    LoadRectToBgTilemapRect(inner->unk04, 3, rect, 0xE, 2, 2, 2);
    ScheduleBgTilemapBufferTransfer(inner->unk04, 3);
}

static void ov80_0223857C(u16 *buf, u8 toggle) {
    int base;
    int i;
    int j;
    int rowBase;
    if (toggle == 0) {
        base = 0xC;
    } else {
        base = 0xE;
    }
    rowBase = 0x60;
    for (i = 0; i < 2u; i++) {
        for (j = 0; j < 2u; j++) {
            buf[i * 2 + j] = base + j + rowBase;
        }
        rowBase += 0x10;
    }
}

void ov80_022385B0(UnkStruct_Ov80_022384D8 *outer) {
    ov80_022385C4(outer->unk04);
    Heap_Free(outer);
}

static void ov80_022385C4(UnkStruct_Ov80_022384FC *inner) {
    SysTask_Destroy(inner->unk00);
    Heap_Free(inner);
}

int ov80_022385D8(int index) {
    switch (index) {
    case 0:
        break;
    case 2:
        return 0x73;
    case 3:
        return 0x77;
    case 4:
        return 0x87;
    case 5:
        return 0x7B;
    case 6:
        return 0x8F;
    case 1:
        return 0x71;
    }
    return index;
}

int ov80_02238610(int index) {
    switch (index) {
    case 0:
        break;
    case 2:
        return 0x66;
    case 3:
        return 0x68;
    case 4:
        return 0x6C;
    case 5:
        return 0x6A;
    case 6:
        return 0x6E;
    case 1:
        return 0x64;
    }
    return index;
}
