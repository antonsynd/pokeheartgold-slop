#include "unk_0202DB34.h"

#include "global.h"

#include "constants/save_arrays.h"

int sub_0202DB34(SaveData *saveData) {
    return (int)SaveArray_Get(saveData, SAVE_UNK_22);
}

u32 sub_0202DB40(void) {
    return sizeof(UnkStruct_0202DB34);
}

void sub_0202DB44(void *ptr) {
    MI_CpuClearFast(ptr, sizeof(UnkStruct_0202DB34));
}

u16 sub_0202DB54(UnkStruct_0202DB34 *a) {
    return a->unkEC;
}

void sub_0202DB5C(UnkStruct_0202DB34 *a, u16 val) {
    a->unkEC = val;
}

void sub_0202DB64(const void *src, void *dst) {
    MI_CpuCopyFast(src, dst, 0xEC);
}

void sub_0202DB70(void *dst, const void *src) {
    MI_CpuCopyFast(src, dst, 0xEC);
}

u32 sub_0202DB80(UnkStruct_0202DB34 *a) {
    return a->unkF0;
}

void sub_0202DB88(UnkStruct_0202DB34 *a, u32 val) {
    a->unkF0 = val;
}

u32 sub_0202DB90(UnkStruct_0202DB34 *a) {
    return a->unkF4;
}

void sub_0202DB98(UnkStruct_0202DB34 *a, u32 val) {
    a->unkF4 = val;
}

u16 sub_0202DBA0(UnkStruct_0202DB34 *a) {
    return a->unkEE;
}
