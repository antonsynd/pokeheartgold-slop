#include "global.h"

#include "constants/heap.h"

#include "filesystem.h"
#include "heap.h"
#include "map_object.h"

#define UNK_OV01_021F1348_NONE 0x17

typedef struct UnkStruct_Ov01_021F1348_Renderer {
    int id;
    void *data;
} UnkStruct_Ov01_021F1348_Renderer;

typedef struct UnkStruct_Ov01_021F1348 {
    enum HeapID heapID;
    u32 rendererCount;
    u32 animManagerCount;
    u32 unkC;
    FieldSystem *fieldSystem;
    UnkStruct_Ov01_021F1348_Renderer *renderers;
    NARC *narc;
    void *animManager;
    void *unk20;
} UnkStruct_Ov01_021F1348;

typedef struct UnkStruct_Ov01_021F1348_FieldSystem {
    u8 filler0[0x10];
    TaskManager *taskman;
    u8 filler14[0x30];
    UnkStruct_Ov01_021F1348 *fieldEffectManager;
} UnkStruct_Ov01_021F1348_FieldSystem;

typedef void *(*UnkFuncPtr_Ov01_021F1348_Ctor)(void *);
typedef void (*UnkFuncPtr_Ov01_021F1348_Dtor)(void *);

typedef struct UnkStruct_Ov01_02208C5C {
    u32 id;
    UnkFuncPtr_Ov01_021F1348_Ctor ctor;
    UnkFuncPtr_Ov01_021F1348_Dtor dtor;
} UnkStruct_Ov01_02208C5C;

extern const UnkStruct_Ov01_02208C5C ov01_02208C5C[];

extern void *sub_020689C8(enum HeapID heapID, u32 count);
extern void ov01_021F1610(UnkStruct_Ov01_021F1348 *manager);
extern void ov01_021F15FC(UnkStruct_Ov01_021F1348 *manager);
extern void ov01_021F16B8(UnkStruct_Ov01_021F1348 *manager);
extern void ov01_021F1648(UnkStruct_Ov01_021F1348 *manager, enum HeapID heapID, int a2, int a3, int a4, int a5, int a6, int a7, int a8);

UnkStruct_Ov01_021F1348 *FieldEffectManager_New(FieldSystem *fieldSystem, u32 rendererCount, enum HeapID heapID);
void FieldEffectManager_InitAnimManagerList(UnkStruct_Ov01_021F1348 *manager, u32 animManagerCount);
void ov01_021F1390(UnkStruct_Ov01_021F1348 *manager, enum HeapID heapID, int a2, int a3, int a4, int a5, int a6, int a7, int a8);
void ov01_021F13B0(UnkStruct_Ov01_021F1348 *manager, int id);
void FieldEffectManager_InitRenderers(UnkStruct_Ov01_021F1348 *manager, const u32 *ids);
void FieldEffectManager_Render(UnkStruct_Ov01_021F1348 *manager);
void FieldEffectManager_Free(UnkStruct_Ov01_021F1348 *manager);
void *ov01_021F141C(UnkStruct_Ov01_021F1348 *manager, u32 size, BOOL atEnd);
void *ov01_021F1430(UnkStruct_Ov01_021F1348 *manager, u32 size, BOOL atEnd, int fill);
void ov01_021F1448(void *ptr);
void *ov01_021F1450(UnkStruct_Ov01_021F1348 *manager, int id);
TaskManager *ov01_021F1468(UnkStruct_Ov01_021F1348_FieldSystem *fieldSystem);
UnkStruct_Ov01_021F1348 *ov01_021F146C(LocalMapObject *mapObject);
enum HeapID ov01_021F1478(UnkStruct_Ov01_021F1348 *manager);
void ov01_021F147C(UnkStruct_Ov01_021F1348 *manager);
void ov01_021F1490(UnkStruct_Ov01_021F1348 *manager);
u32 ov01_021F149C(UnkStruct_Ov01_021F1348 *manager, u32 memberId);
void ov01_021F14A8(UnkStruct_Ov01_021F1348 *manager, u32 memberId, void *dest);
void *ov01_021F14B4(UnkStruct_Ov01_021F1348 *manager, u32 memberId, BOOL atEnd);
void ov01_021F14DC(UnkStruct_Ov01_021F1348 *manager);
void ov01_021F14F4(UnkStruct_Ov01_021F1348 *manager, int id);
void ov01_021F151C(UnkStruct_Ov01_021F1348 *manager, UnkStruct_Ov01_021F1348_Renderer *renderer);
void ov01_021F1538(UnkStruct_Ov01_021F1348 *manager);
UnkStruct_Ov01_021F1348_Renderer *ov01_021F1560(UnkStruct_Ov01_021F1348 *manager);
UnkStruct_Ov01_021F1348_Renderer *ov01_021F1588(UnkStruct_Ov01_021F1348 *manager, int id);
void ov01_021F15A0(UnkStruct_Ov01_021F1348_Renderer *renderer);
void ov01_021F15AC(UnkStruct_Ov01_021F1348_Renderer *renderer, int id, void *data);
BOOL ov01_021F15B4(UnkStruct_Ov01_021F1348_Renderer *renderer);
const UnkStruct_Ov01_02208C5C *ov01_021F15C4(u32 id);
void ov01_021F15EC(UnkStruct_Ov01_021F1348 *manager);

UnkStruct_Ov01_021F1348 *FieldEffectManager_New(FieldSystem *fieldSystem, u32 rendererCount, enum HeapID heapID) {
    UnkStruct_Ov01_021F1348 *manager = Heap_Alloc(heapID, sizeof(UnkStruct_Ov01_021F1348));
    memset(manager, 0, sizeof(UnkStruct_Ov01_021F1348));
    manager->heapID = heapID;
    manager->rendererCount = rendererCount;
    manager->fieldSystem = fieldSystem;
    manager->renderers = Heap_Alloc(heapID, rendererCount * sizeof(UnkStruct_Ov01_021F1348_Renderer));
    ov01_021F14DC(manager);
    ov01_021F147C(manager);
    return manager;
}

void FieldEffectManager_InitAnimManagerList(UnkStruct_Ov01_021F1348 *manager, u32 animManagerCount) {
    manager->animManagerCount = animManagerCount;
    ov01_021F15EC(manager);
}

void ov01_021F1390(UnkStruct_Ov01_021F1348 *manager, enum HeapID heapID, int a2, int a3, int a4, int a5, int a6, int a7, int a8) {
    ov01_021F1648(manager, heapID, a2, a3, a4, a5, a6, a7, a8);
}

void ov01_021F13B0(UnkStruct_Ov01_021F1348 *manager, int id) {
    if (ov01_021F1588(manager, id) != NULL) {
        GF_AssertFail();
        return;
    }
    ov01_021F14F4(manager, id);
}

void FieldEffectManager_InitRenderers(UnkStruct_Ov01_021F1348 *manager, const u32 *ids) {
    while (*ids != UNK_OV01_021F1348_NONE) {
        ov01_021F13B0(manager, *ids);
        ids++;
    }
}

void FieldEffectManager_Render(UnkStruct_Ov01_021F1348 *manager) {
    ov01_021F1610(manager);
}

void FieldEffectManager_Free(UnkStruct_Ov01_021F1348 *manager) {
    ov01_021F15FC(manager);
    ov01_021F1538(manager);
    ov01_021F16B8(manager);
    ov01_021F1490(manager);
    Heap_Free(manager->renderers);
    Heap_Free(manager);
}

void *ov01_021F141C(UnkStruct_Ov01_021F1348 *manager, u32 size, BOOL atEnd) {
    if (atEnd == FALSE) {
        return Heap_Alloc(manager->heapID, size);
    }
    return Heap_AllocAtEnd(manager->heapID, size);
}

void *ov01_021F1430(UnkStruct_Ov01_021F1348 *manager, u32 size, BOOL atEnd, int fill) {
    void *ptr = ov01_021F141C(manager, size, atEnd);
    memset(ptr, fill, size);
    return ptr;
}

void ov01_021F1448(void *ptr) {
    Heap_Free(ptr);
}

void *ov01_021F1450(UnkStruct_Ov01_021F1348 *manager, int id) {
    UnkStruct_Ov01_021F1348_Renderer *renderer = ov01_021F1588(manager, id);
    if (renderer == NULL) {
        GF_AssertFail();
        return NULL;
    }
    return renderer->data;
}

TaskManager *ov01_021F1468(UnkStruct_Ov01_021F1348_FieldSystem *fieldSystem) {
    return fieldSystem->taskman;
}

UnkStruct_Ov01_021F1348 *ov01_021F146C(LocalMapObject *mapObject) {
    UnkStruct_Ov01_021F1348_FieldSystem *fieldSystem = (UnkStruct_Ov01_021F1348_FieldSystem *)MapObject_GetFieldSystem(mapObject);
    return fieldSystem->fieldEffectManager;
}

enum HeapID ov01_021F1478(UnkStruct_Ov01_021F1348 *manager) {
    return manager->heapID;
}

void ov01_021F147C(UnkStruct_Ov01_021F1348 *manager) {
    manager->narc = NARC_New(NARC_a_1_0_3, ov01_021F1478(manager));
}

void ov01_021F1490(UnkStruct_Ov01_021F1348 *manager) {
    NARC_Delete(manager->narc);
}

u32 ov01_021F149C(UnkStruct_Ov01_021F1348 *manager, u32 memberId) {
    return NARC_GetMemberSize(manager->narc, memberId);
}

void ov01_021F14A8(UnkStruct_Ov01_021F1348 *manager, u32 memberId, void *dest) {
    NARC_ReadWholeMember(manager->narc, memberId, dest);
}

void *ov01_021F14B4(UnkStruct_Ov01_021F1348 *manager, u32 memberId, BOOL atEnd) {
    u32 size = NARC_GetMemberSize(manager->narc, memberId);
    void *buffer = ov01_021F141C(manager, size, atEnd);
    NARC_ReadWholeMember(manager->narc, memberId, buffer);
    return buffer;
}

void ov01_021F14DC(UnkStruct_Ov01_021F1348 *manager) {
    u32 count = manager->rendererCount;
    UnkStruct_Ov01_021F1348_Renderer *renderer = manager->renderers;
    u32 i;

    for (i = 0; i < count; i++) {
        ov01_021F15A0(renderer);
        renderer++;
    }
}

void ov01_021F14F4(UnkStruct_Ov01_021F1348 *manager, int id) {
    const UnkStruct_Ov01_02208C5C *entry = ov01_021F15C4(id);
    void *data = entry->ctor(manager);
    UnkStruct_Ov01_021F1348_Renderer *renderer = ov01_021F1560(manager);
    ov01_021F15AC(renderer, id, data);
}

void ov01_021F151C(UnkStruct_Ov01_021F1348 *manager, UnkStruct_Ov01_021F1348_Renderer *renderer) {
    const UnkStruct_Ov01_02208C5C *entry = ov01_021F15C4(renderer->id);
    entry->dtor(renderer->data);
    ov01_021F15A0(renderer);
}

void ov01_021F1538(UnkStruct_Ov01_021F1348 *manager) {
    u32 count = manager->rendererCount;
    UnkStruct_Ov01_021F1348_Renderer *renderer = manager->renderers;
    u32 i;

    for (i = 0; i < count; i++) {
        if (!ov01_021F15B4(renderer)) {
            ov01_021F151C(manager, renderer);
        }
        renderer++;
    }
}

UnkStruct_Ov01_021F1348_Renderer *ov01_021F1560(UnkStruct_Ov01_021F1348 *manager) {
    u32 count = manager->rendererCount;
    UnkStruct_Ov01_021F1348_Renderer *renderer = manager->renderers;
    u32 i;

    for (i = 0; i < count; i++) {
        if (ov01_021F15B4(renderer) == TRUE) {
            return renderer;
        }
        renderer++;
    }
    GF_AssertFail();
    return NULL;
}

UnkStruct_Ov01_021F1348_Renderer *ov01_021F1588(UnkStruct_Ov01_021F1348 *manager, int id) {
    u32 count = manager->rendererCount;
    UnkStruct_Ov01_021F1348_Renderer *renderer = manager->renderers;
    u32 i;

    for (i = 0; i < count; i++) {
        if (renderer->id == id) {
            return renderer;
        }
        renderer++;
    }
    return NULL;
}

void ov01_021F15A0(UnkStruct_Ov01_021F1348_Renderer *renderer) {
    renderer->id = UNK_OV01_021F1348_NONE;
    renderer->data = NULL;
}

void ov01_021F15AC(UnkStruct_Ov01_021F1348_Renderer *renderer, int id, void *data) {
    renderer->id = id;
    renderer->data = data;
}

BOOL ov01_021F15B4(UnkStruct_Ov01_021F1348_Renderer *renderer) {
    if (renderer->id == UNK_OV01_021F1348_NONE) {
        return TRUE;
    }
    return FALSE;
}

const UnkStruct_Ov01_02208C5C *ov01_021F15C4(u32 id) {
    const UnkStruct_Ov01_02208C5C *entry;

    for (entry = ov01_02208C5C; entry->id != UNK_OV01_021F1348_NONE; entry++) {
        if (entry->id == id) {
            return entry;
        }
    }
    GF_AssertFail();
    return NULL;
}

void ov01_021F15EC(UnkStruct_Ov01_021F1348 *manager) {
    manager->animManager = sub_020689C8(manager->heapID, manager->animManagerCount);
}
