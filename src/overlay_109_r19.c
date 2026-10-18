#include "global.h"

typedef struct Ov109Unk84 {
    u8 filler_00[0x84];
} Ov109Unk84;

typedef struct Ov109Slot {
    u8 index;
    Ov109Unk84 *data;
} Ov109Slot;

typedef struct Ov109_021E5D08 {
    u8 filler_00[0xC4];
    u8 unkC4;
    u8 count;
    Ov109Unk84 *unkC8;
    Ov109Slot slots[36];
} Ov109_021E5D08;

void ov109_021E5D08(Ov109_021E5D08 *a0) {
    u8 i;
    Ov109Slot *slots;

    a0->count = a0->unkC4;
    MI_CpuFill8(a0->slots, 0, sizeof(a0->slots));
    for (i = 0; i < a0->count; i++) {
        slots = &a0->slots[i];
        slots->index = i;
        slots->data = &a0->unkC8[i];
    }
}
