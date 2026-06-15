#include "unk_020318C8.h"

#include "global.h"

#include "constants/save_arrays.h"

u32 sub_020318C8(void) {
    return sizeof(UnkStruct_020318C8);
}

void sub_020318CC(void *ptr) {
    MI_CpuClear32(ptr, sub_020318C8());
    *(u32 *)ptr = -1;
}

UnkStruct_020318C8 *sub_020318E8(SaveData *saveData) {
    return SaveArray_Get(saveData, SAVE_UNK_32);
}

u32 sub_020318F4(UnkStruct_020318C8 *a) {
    return a->unk0;
}

u32 sub_020318F8(UnkStruct_020318C8 *a) {
    return a->unk4;
}

void sub_020318FC(UnkStruct_020318C8 *a, u32 val) {
    a->unk0 = val;
}

void sub_02031900(UnkStruct_020318C8 *a, u32 val) {
    a->unk4 = val;
}
