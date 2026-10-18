#include "global.h"

#include "sound.h"

typedef struct Ov108Slot {
    u8 unk0;
    u8 filler_1[4];
} Ov108Slot;

typedef struct Ov108_021E9528 {
    u8 filler_000[0xC];
    int unkC;
    u8 filler_010[0x324];
    Ov108Slot *slots;
    u8 filler_338[0xF5];
    u8 slotCount;
    u8 filler_42E[2];
    u8 row;
    u8 column;
    u8 selected;
    u8 selectedValue;
} Ov108_021E9528;

void ov108_021E9F20(Ov108_021E9528 *a0, int a1);
int ov108_021EA52C(Ov108_021E9528 *a0, int index);
void ov108_021EA418(Ov108_021E9528 *a0, int a1);

int ov108_021E9528(Ov108_021E9528 *a0, u32 input) {
    u8 result;

    if (input >= 6) {
        PlaySE(SEQ_SE_DP_SELECT);
        ov108_021E9F20(a0, 1);
        a0->unkC = 3;
        return 3;
    }
    a0->selected = a0->column + a0->row * 6;
    if (a0->selected >= a0->slotCount) {
        return 0;
    }
    result = ov108_021EA52C(a0, a0->selected);
    if (result != 0) {
        PlaySE(SEQ_SE_DP_BOX03);
        ov108_021EA418(a0, result - 1);
        return 2;
    }
    PlaySE(SEQ_SE_DP_SELECT);
    a0->selectedValue = a0->slots[a0->selected].unk0;
    return 1;
}
