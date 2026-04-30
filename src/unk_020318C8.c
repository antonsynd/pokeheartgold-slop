#include "unk_020318C8.h"

#include "global.h"

#include "save.h"

u32 sub_020318C8(void) {
    return sizeof(Unk020318C8);
}

void sub_020318CC(Unk020318C8 *a0) {
    u32 size = sub_020318C8();
    MI_CpuClear32(a0, size);
    a0->unk0 = 0xFFFFFFFF;
}

Unk020318C8 *sub_020318E8(SaveData *saveData) {
    return SaveArray_Get(saveData, SAVE_UNK_32);
}

u32 sub_020318F4(Unk020318C8 *a0) {
    return a0->unk0;
}

u32 sub_020318F8(Unk020318C8 *a0) {
    return a0->unk4;
}

void sub_020318FC(Unk020318C8 *a0, u32 a1) {
    a0->unk0 = a1;
}

void sub_02031900(Unk020318C8 *a0, u32 a1) {
    a0->unk4 = a1;
}
