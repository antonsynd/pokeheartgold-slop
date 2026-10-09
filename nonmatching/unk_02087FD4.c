#include "global.h"

typedef struct UnkStruct_02087FD4 {
    u32 unk_00;
    u32 unk_04;
    u32 unk_08;
    u32 unk_0C;
    u32 unk_10;
    u32 unk_14;
    u8 filler_18[8];
    const struct UnkStruct_02087FD4 *unk_20;
} UnkStruct_02087FD4;

typedef struct UnkStruct_02087FD4_Slot {
    const UnkStruct_02087FD4 *unk_00;
    u8 filler_04[0x20];
} UnkStruct_02087FD4_Slot;

typedef struct UnkStruct_02087FD4_Big {
    u8 filler_000[0x6E0];
    int unk_6E0;
    u8 filler_6E4[0x818 - 0x6E4];
    const UnkStruct_02087FD4 *unk_818;
} UnkStruct_02087FD4_Big;

extern const u8 _02103754[];
extern const UnkStruct_02087FD4_Slot _021037B8[];
extern const UnkStruct_02087FD4 _0210357C[];
extern const UnkStruct_02087FD4 _02102DC0[];

int sub_02087E1C(void *big);

const UnkStruct_02087FD4 *sub_02087FD4(int a0) {
    if (a0 >= 7) {
        GF_AssertFail();
        return *(const UnkStruct_02087FD4 *const *)(_02103754 + 0x64);
    }
    return _021037B8[a0].unk_00;
}

const UnkStruct_02087FD4 *sub_02087FF8(void *big, int kind) {
    if (kind == 0 && sub_02087E1C(big) == 0) {
        return _0210357C;
    }
    if (kind == 3 && sub_02087E1C(big) == 0) {
        return _02102DC0;
    }
    return sub_02087FD4(kind);
}

void sub_02088030(UnkStruct_02087FD4_Big *big) {
    const UnkStruct_02087FD4 *entry = big->unk_818;
    int i;

    big->unk_6E0 = 0;
    for (i = 0; i < 5; i++) {
        if (entry->unk_00 != 0) {
            big->unk_6E0++;
        }
        entry++;
    }
}
