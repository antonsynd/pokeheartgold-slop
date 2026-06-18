#include "global.h"

#include "bg_window.h"
#include "filesystem.h"
#include "gf_gfx_loader.h"
#include "heap.h"

typedef struct UnkStruct_0201956C UnkStruct_0201956C;

typedef struct {
    u16 *buffer;
    u16 tilesW : 6;
    u16 tilesH : 6;
    u16 unkC : 1;
    u16 unkD : 3;
    s8 x;
    s8 y;
    s8 unk8;
    s8 unk9;
    u8 bgId;
    u8 unkB;
    s8 clipLeft;
    s8 clipRight;
    s8 clipTop;
    s8 clipBottom;
} UnkEntry_0201956C;

struct UnkStruct_0201956C {
    BgConfig *bgConfig;
    UnkEntry_0201956C *entries;
    u16 numEntries;
    u16 commitMode : 15;
    u16 dirty : 1;
    enum HeapID heapId;
};

typedef struct UnkSrc_02019A60 {
    u8 filler0[5];
    u8 unk5;
    u8 unk6;
    u8 unk7;
    u8 unk8;
    u8 unk9;
    u16 unkA : 15;
    u16 unkA_f : 1;
} UnkSrc_02019A60;

UnkStruct_0201956C *sub_0201956C(BgConfig *bgConfig, int a1, int a2, enum HeapID a3);
void sub_020195C0(UnkStruct_0201956C *a0);
void sub_020195F4(UnkStruct_0201956C *a0, int a1, int a2, int a3, int a4);
void sub_02019668(UnkStruct_0201956C *a0, int a1, u16 *a2);
void sub_02019688(UnkStruct_0201956C *a0, int a1, NarcId narcId, int memberNo, int isCompressed);
void sub_020196B8(UnkStruct_0201956C *a0, int a1, NARC *narc, int fileId, int a4);
void sub_020196E8(UnkStruct_0201956C *a0, int a1, int a2, int a3);
void sub_020197F4(UnkStruct_0201956C *a0, int a1);
void sub_0201980C(UnkStruct_0201956C *a0, int a1);
void sub_020198FC(UnkStruct_0201956C *a0, int a1, int a2, int a3, u8 a4);
void sub_02019934(UnkStruct_0201956C *a0);
BOOL sub_02019978(UnkStruct_0201956C *a0, int a1);
BOOL sub_020199E4(UnkStruct_0201956C *a0, int a1);
void sub_020199F4(UnkStruct_0201956C *a0, int a1, u8 x, u8 y, u8 width, u8 height, u8 palette);
void sub_02019A60(UnkStruct_0201956C *a0, int a1, UnkSrc_02019A60 *a2);
u16 *sub_02019B08(UnkStruct_0201956C *a0, int a1);
u8 sub_02019B10(UnkStruct_0201956C *a0, int a1);
void sub_02019B1C(UnkStruct_0201956C *a0, int a1, s8 *a2, s8 *a3);
void sub_02019B44(UnkStruct_0201956C *a0, int a1, u16 *a2, u16 *a3);
void sub_02019B70(UnkStruct_0201956C *a0, int a1, int a2, int a3, s8 a4, s8 a5);
void sub_02019BA0(BgConfig *bgConfig, u8 bgId);

static void (*const _020F6298[])(BgConfig *bgConfig, u8 bgId) = {
    sub_02019BA0,
    BgCommitTilemapBufferToVram,
    ScheduleBgTilemapBufferTransfer,
};

UnkStruct_0201956C *sub_0201956C(BgConfig *bgConfig, int a1, int a2, enum HeapID a3) {
    UnkStruct_0201956C *manager = Heap_Alloc(a3, sizeof(UnkStruct_0201956C));
    manager->bgConfig = bgConfig;
    manager->numEntries = a2;
    manager->heapId = a3;
    manager->commitMode = a1;
    manager->dirty = 0;
    manager->entries = Heap_Alloc(a3, a2 * sizeof(UnkEntry_0201956C));
    MI_CpuFill8(manager->entries, 0, a2 * sizeof(UnkEntry_0201956C));
    return manager;
}

void sub_020195C0(UnkStruct_0201956C *manager) {
    u32 i;
    for (i = 0; i < manager->numEntries; i++) {
        if (manager->entries[i].buffer != NULL) {
            Heap_Free(manager->entries[i].buffer);
        }
    }
    Heap_Free(manager->entries);
    Heap_Free(manager);
}

void sub_020195F4(UnkStruct_0201956C *manager, int a1, int a2, int a3, int a4) {
    UnkEntry_0201956C *entry = &manager->entries[a1];
    entry->buffer = Heap_Alloc(manager->heapId, a4 * a3 * 2);
    entry->tilesW = a3;
    entry->tilesH = a4;
    entry->bgId = a2;
    entry->x = 0;
    entry->y = 0;
    entry->unkD = 0;
    entry->unkC = 1;
    entry->clipLeft = 0;
    entry->clipRight = 0x20;
    entry->clipTop = 0;
    entry->clipBottom = 0x18;
}

void sub_02019668(UnkStruct_0201956C *manager, int a1, u16 *a2) {
    UnkEntry_0201956C *entry = &manager->entries[a1];
    MIi_CpuCopy16(a2, entry->buffer, entry->tilesW * entry->tilesH * 2);
}

void sub_02019688(UnkStruct_0201956C *manager, int a1, NarcId narcId, int memberNo, int isCompressed) {
    NNSG2dScreenData *scrnData;
    void *raw = GfGfxLoader_GetScrnData(narcId, memberNo, isCompressed, &scrnData, manager->heapId);
    sub_02019668(manager, a1, (u16 *)scrnData->rawData);
    Heap_Free(raw);
}

void sub_020196B8(UnkStruct_0201956C *manager, int a1, NARC *narc, int fileId, int a4) {
    NNSG2dScreenData *scrnData;
    void *raw = GfGfxLoader_GetScrnDataFromOpenNarc(narc, fileId, a4, &scrnData, manager->heapId);
    sub_02019668(manager, a1, (u16 *)scrnData->rawData);
    Heap_Free(raw);
}

void sub_020196E8(UnkStruct_0201956C *manager, int a1, int a2, int a3) {
    UnkEntry_0201956C *entry = &manager->entries[a1];
    u8 destX, srcX, destW, destY, srcY, destH;
    int tilesW, tilesH;
    entry->x = a2;
    entry->y = a3;
    if (a2 >= entry->clipRight) {
        return;
    }
    if (a3 >= entry->clipBottom) {
        return;
    }
    tilesW = entry->tilesW;
    if (a2 + tilesW < entry->clipLeft) {
        return;
    }
    tilesH = entry->tilesH;
    if (a3 + tilesH < entry->clipTop) {
        return;
    }
    destX = a2;
    srcX = 0;
    destW = tilesW;
    if (a2 < entry->clipLeft) {
        destX = entry->clipLeft;
        srcX = entry->clipLeft - a2;
        destW = tilesW - (entry->clipLeft - a2);
    }
    if (a2 + tilesW >= entry->clipRight) {
        destW = destW - (a2 + tilesW - entry->clipRight);
    }
    destY = a3;
    srcY = 0;
    destH = tilesH;
    if (a3 < entry->clipTop) {
        destY = entry->clipTop;
        srcY = entry->clipTop - a3;
        destH = tilesH - (entry->clipTop - a3);
    }
    if (a3 + tilesH >= entry->clipBottom) {
        destH = destH - (a3 + tilesH - entry->clipBottom);
    }
    CopyToBgTilemapRect(manager->bgConfig, entry->bgId, destX, destY, destW, destH, entry->buffer, srcX, srcY, tilesW, tilesH);
    _020F6298[manager->commitMode](manager->bgConfig, entry->bgId);
    entry->unkC = 0;
}

void sub_020197F4(UnkStruct_0201956C *manager, int a1) {
    UnkEntry_0201956C *entry = &manager->entries[a1];
    sub_020196E8(manager, a1, entry->x, entry->y);
}

void sub_0201980C(UnkStruct_0201956C *manager, int a1) {
    UnkEntry_0201956C *entry = &manager->entries[a1];
    s8 destX, destY, destW, destH;
    int x, y, tilesW, tilesH;
    entry->unkC = 1;
    x = entry->x;
    if (x >= entry->clipRight) {
        return;
    }
    y = entry->y;
    if (y >= entry->clipBottom) {
        return;
    }
    tilesW = entry->tilesW;
    if (x + tilesW < entry->clipLeft) {
        return;
    }
    tilesH = entry->tilesH;
    if (y + tilesH < entry->clipTop) {
        return;
    }
    destX = x;
    destW = tilesW;
    if (x < entry->clipLeft) {
        destX = entry->clipLeft;
        destW = tilesW - (entry->clipLeft - x);
    }
    if (x + tilesW >= entry->clipRight) {
        destW = destW - (x + tilesW - entry->clipRight);
    }
    destY = y;
    destH = tilesH;
    if (y < entry->clipTop) {
        destY = entry->clipTop;
        destH = tilesH - (entry->clipTop - y);
    }
    if (y + tilesH >= entry->clipBottom) {
        destH = destH - (y + tilesH - entry->clipBottom);
    }
    FillBgTilemapRect(manager->bgConfig, entry->bgId, 0, destX, destY, destW, destH, 0x10);
    _020F6298[manager->commitMode](manager->bgConfig, entry->bgId);
}

void sub_020198FC(UnkStruct_0201956C *manager, int a1, int a2, int a3, u8 a4) {
    UnkEntry_0201956C *entry = &manager->entries[a1];
    entry->unk8 = a2;
    entry->unk9 = a3;
    entry->unkB = a4;
    entry->unkD = 1;
    manager->dirty = 1;
}

void sub_02019934(UnkStruct_0201956C *manager) {
    u32 i;
    if (manager->dirty == 0) {
        return;
    }
    manager->dirty = 0;
    for (i = 0; i < manager->numEntries; i++) {
        if (sub_02019978(manager, i) == 1) {
            manager->dirty = 1;
        }
    }
}

BOOL sub_02019978(UnkStruct_0201956C *manager, int a1) {
    UnkEntry_0201956C *entry = &manager->entries[a1];
    if (entry->unkD == 0) {
        return FALSE;
    }
    sub_0201980C(manager, a1);
    manager->entries[a1].x += manager->entries[a1].unk8;
    manager->entries[a1].y += manager->entries[a1].unk9;
    sub_020197F4(manager, a1);
    manager->entries[a1].unkB--;
    if (manager->entries[a1].unkB == 0) {
        manager->entries[a1].unkD = 0;
        return FALSE;
    }
    return TRUE;
}

BOOL sub_020199E4(UnkStruct_0201956C *manager, int a1) {
    return manager->entries[a1].unkD;
}

void sub_020199F4(UnkStruct_0201956C *manager, int a1, u8 x, u8 y, u8 width, u8 height, u8 palette) {
    UnkEntry_0201956C *entry = &manager->entries[a1];
    u16 *buffer = entry->buffer;
    int tilesW = entry->tilesW;
    u16 row, col;
    for (row = y; row < y + height; row++) {
        for (col = x; col < x + width; col++) {
            buffer[row * tilesW + col] = (buffer[row * tilesW + col] & 0xFFF) | (palette << 12);
        }
    }
}

void sub_02019A60(UnkStruct_0201956C *manager, int a1, UnkSrc_02019A60 *src) {
    UnkEntry_0201956C *entry = &manager->entries[a1];
    u16 *buffer = entry->buffer;
    int tilesW = entry->tilesW;
    u16 base = src->unkA;
    int palette = (src->unk9 & 0xf) << 12;
    u16 row, col;
    for (row = 0; row < src->unk8; row++) {
        if (src->unk6 + row >= manager->entries[a1].tilesH) {
            break;
        }
        for (col = 0; col < src->unk7; col++) {
            if (src->unk5 + col >= manager->entries[a1].tilesW) {
                break;
            }
            buffer[col + src->unk5 + (src->unk6 + row) * tilesW] = palette + base + col;
        }
        base += src->unk7;
    }
}

u16 *sub_02019B08(UnkStruct_0201956C *manager, int a1) {
    return manager->entries[a1].buffer;
}

u8 sub_02019B10(UnkStruct_0201956C *manager, int a1) {
    return manager->entries[a1].bgId;
}

void sub_02019B1C(UnkStruct_0201956C *manager, int a1, s8 *a2, s8 *a3) {
    if (a2 != NULL) {
        *a2 = manager->entries[a1].x;
    }
    if (a3 != NULL) {
        *a3 = manager->entries[a1].y;
    }
}

void sub_02019B44(UnkStruct_0201956C *manager, int a1, u16 *a2, u16 *a3) {
    if (a2 != NULL) {
        *a2 = manager->entries[a1].tilesW;
    }
    if (a3 != NULL) {
        *a3 = manager->entries[a1].tilesH;
    }
}

void sub_02019B70(UnkStruct_0201956C *manager, int a1, int a2, int a3, s8 a4, s8 a5) {
    manager->entries[a1].clipLeft = a2;
    manager->entries[a1].clipRight = a3;
    manager->entries[a1].clipTop = a4;
    manager->entries[a1].clipBottom = a5;
}

void sub_02019BA0(BgConfig *bgConfig, u8 bgId) {
}
