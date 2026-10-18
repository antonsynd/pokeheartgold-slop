#include "global.h"

typedef struct Ov96Slot {
    u8 data[0x1C];
} Ov96Slot;

typedef struct Ov96_0221935C {
    u8 filler_00[0x30];
    Ov96Slot slots[12];
} Ov96_0221935C;

Ov96_0221935C *PokeathlonCourse_GetHeapAllocPtr4(void *course);

Ov96Slot *ov96_0221935C(void *course, u32 player, u32 index) {
    Ov96_0221935C *data = PokeathlonCourse_GetHeapAllocPtr4(course);
    Ov96Slot *slot;

    GF_ASSERT(data != NULL);
    GF_ASSERT(player < 4);
    GF_ASSERT(index < 3);
    slot = &data->slots[player * 3 + index];
    GF_ASSERT(slot != NULL);
    return slot;
}
