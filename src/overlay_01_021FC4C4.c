#include "global.h"

#include "assert.h"
#include "filesystem.h"
#include "heap.h"
#include "string.h"

typedef struct {
    void *data;
    u32 id;
} UnkStruct_ov01_021FC4C4_Entry;

typedef struct {
    enum HeapID unk_00;
    enum HeapID heapId;
    u32 count;
    u32 unk_0c;
    u32 unk_10;
    UnkStruct_ov01_021FC4C4_Entry *entries;
} UnkStruct_ov01_021FC4C4;

UnkStruct_ov01_021FC4C4 *ov01_021FC4C4(enum HeapID parent, enum HeapID child, u32 extraSize, u32 count);
void ov01_021FC520(UnkStruct_ov01_021FC4C4 *manager);
void ov01_021FC588(UnkStruct_ov01_021FC4C4 *manager, u32 id);
void *ov01_021FC5A4(UnkStruct_ov01_021FC4C4 *manager, u32 id);
BOOL ov01_021FC5B8(UnkStruct_ov01_021FC4C4 *manager, u32 id);
void *ov01_021FC5CC(UnkStruct_ov01_021FC4C4 *manager, u32 id, NARC *narc, u32 fileId, BOOL atEnd);

static void *ov01_021FC554(UnkStruct_ov01_021FC4C4 *manager, u32 id, u32 size, BOOL atEnd);
static void *ov01_021FC5FC(UnkStruct_ov01_021FC4C4 *manager, u32 size, BOOL atEnd);
static void ov01_021FC61C(void *ptr);
static UnkStruct_ov01_021FC4C4_Entry *ov01_021FC624(UnkStruct_ov01_021FC4C4 *manager, u32 id);
static UnkStruct_ov01_021FC4C4_Entry *ov01_021FC644(UnkStruct_ov01_021FC4C4 *manager);
static void ov01_021FC65C(UnkStruct_ov01_021FC4C4_Entry *entry, u32 id, void *data);
static void ov01_021FC664(UnkStruct_ov01_021FC4C4_Entry *entry);

UnkStruct_ov01_021FC4C4 *ov01_021FC4C4(enum HeapID parent, enum HeapID child, u32 extraSize, u32 count) {
    UnkStruct_ov01_021FC4C4 *manager;
    u32 tableSize = count * 8;
    u32 heapSize = extraSize + tableSize + 0x18;

    GF_ASSERT(Heap_Create(parent, child, heapSize) == 1);
    extraSize = heapSize - extraSize;
    manager = Heap_Alloc(child, extraSize);
    GF_ASSERT(manager != NULL);
    memset(manager, 0, extraSize);
    manager->unk_00 = parent;
    manager->heapId = child;
    manager->count = count;
    manager->unk_0c = heapSize;
    manager->unk_10 = tableSize;
    manager->entries = (UnkStruct_ov01_021FC4C4_Entry *)(manager + 1);
    return manager;
}

void ov01_021FC520(UnkStruct_ov01_021FC4C4 *manager) {
    u32 n = manager->count;
    UnkStruct_ov01_021FC4C4_Entry *entry = manager->entries;
    enum HeapID heapId;

    if (n != 0) {
        do {
            if (entry->data != NULL) {
                ov01_021FC588(manager, entry->id);
            }
            n--;
            entry++;
        } while (n != 0);
    }
    heapId = manager->heapId;
    Heap_Free(manager);
    Heap_Destroy(heapId);
}

static void *ov01_021FC554(UnkStruct_ov01_021FC4C4 *manager, u32 id, u32 size, BOOL atEnd) {
    UnkStruct_ov01_021FC4C4_Entry *entry;
    void *data;

    entry = ov01_021FC644(manager);
    GF_ASSERT(entry != NULL);
    data = ov01_021FC5FC(manager, size, atEnd);
    ov01_021FC65C(entry, id, data);
    return data;
}

void ov01_021FC588(UnkStruct_ov01_021FC4C4 *manager, u32 id) {
    UnkStruct_ov01_021FC4C4_Entry *entry = ov01_021FC624(manager, id);
    GF_ASSERT(entry != NULL);
    ov01_021FC61C(entry->data);
    ov01_021FC664(entry);
}

void *ov01_021FC5A4(UnkStruct_ov01_021FC4C4 *manager, u32 id) {
    UnkStruct_ov01_021FC4C4_Entry *entry = ov01_021FC624(manager, id);
    GF_ASSERT(entry != NULL);
    return entry->data;
}

BOOL ov01_021FC5B8(UnkStruct_ov01_021FC4C4 *manager, u32 id) {
    if (ov01_021FC624(manager, id) != NULL) {
        return TRUE;
    }
    return FALSE;
}

void *ov01_021FC5CC(UnkStruct_ov01_021FC4C4 *manager, u32 id, NARC *narc, u32 fileId, BOOL atEnd) {
    void *data;
    u32 size = NARC_GetMemberSize(narc, fileId);

    data = ov01_021FC554(manager, id, size, atEnd);
    NARC_ReadWholeMember(narc, fileId, data);
    return data;
}

static void *ov01_021FC5FC(UnkStruct_ov01_021FC4C4 *manager, u32 size, BOOL atEnd) {
    void *data;

    if (atEnd == 0) {
        data = Heap_Alloc(manager->heapId, size);
    } else {
        data = Heap_AllocAtEnd(manager->heapId, size);
    }
    GF_ASSERT(data != NULL);
    return data;
}

static void ov01_021FC61C(void *ptr) {
    Heap_Free(ptr);
}

static UnkStruct_ov01_021FC4C4_Entry *ov01_021FC624(UnkStruct_ov01_021FC4C4 *manager, u32 id) {
    u32 n = manager->count;
    UnkStruct_ov01_021FC4C4_Entry *entry = manager->entries;

    if (n != 0) {
        do {
            if (entry->data != NULL && entry->id == id) {
                return entry;
            }
            entry++;
        } while (--n != 0);
    }
    return NULL;
}

static UnkStruct_ov01_021FC4C4_Entry *ov01_021FC644(UnkStruct_ov01_021FC4C4 *manager) {
    u32 n = manager->count;
    UnkStruct_ov01_021FC4C4_Entry *entry = manager->entries;

    if (n != 0) {
        do {
            if (entry->data == NULL) {
                return entry;
            }
            entry++;
        } while (--n != 0);
    }
    return NULL;
}

static void ov01_021FC65C(UnkStruct_ov01_021FC4C4_Entry *entry, u32 id, void *data) {
    entry->data = data;
    entry->id = id;
}

static void ov01_021FC664(UnkStruct_ov01_021FC4C4_Entry *entry) {
    entry->data = NULL;
    entry->id = 0;
}
