#include "global.h"

#include "pokeathlon/pokeathlon.h"

#include "heap.h"
#include "sprite_system.h"

typedef struct Ov96_0220C90C {
    u8 filler_00[0x10];
    ManagedSprite *sprites[2];
    ManagedSprite *shadows[2];
} Ov96_0220C90C;

typedef struct Ov96Lane {
    u8 filler_00[0x24];
} Ov96Lane;

typedef struct Ov96_0220C93C {
    enum HeapID heapId;
    PokeathlonCourseData *data;
    Ov96Lane lanes[3];
    u32 count;
} Ov96_0220C93C;

void ov96_0220C9F4(Ov96Lane *lane, u8 index, PokeathlonCourseData *data);

void ov96_0220C90C(Ov96_0220C90C *a0, int index, s16 x, s16 y) {
    ManagedSprite_SetPositionXYWithSubscreenOffset(a0->sprites[index], x, y, FX32_CONST(256));
    ManagedSprite_SetPositionXYWithSubscreenOffset(a0->shadows[index], x, y - 24, FX32_CONST(256));
}

Ov96_0220C93C *ov96_0220C93C(PokeathlonCourseData *data, enum HeapID heapId) {
    u8 index = PokeathlonCourse_GetParticipantCount(data);
    Ov96_0220C93C *ret = Heap_Alloc(heapId, sizeof(Ov96_0220C93C));
    u32 i;

    MI_CpuFill8(ret, 0, sizeof(Ov96_0220C93C));
    ret->heapId = heapId;
    ret->data = data;
    ret->count = 4 - index;
    GF_ASSERT(ret->count <= 3);
    for (i = 0; i < ret->count; i++) {
        ov96_0220C9F4(&ret->lanes[i], index + i, data);
    }
    return ret;
}
