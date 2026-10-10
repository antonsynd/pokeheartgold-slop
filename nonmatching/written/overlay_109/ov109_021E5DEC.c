#include "global.h"

typedef struct UnkStruct_ov109_021E5DEC {
    u8 unk0[0x19];
    u8 unk19;
    u8 unk1A;
    u8 unk1B;
    u8 unk1C;
    u8 unk1D[0xA8];
    u8 unkC5;
    u8 unkC6[6];
    u8 entries[1][8];
} UnkStruct_ov109_021E5DEC;

extern void MI_CpuCopy8(const void *src, void *dest, u32 size);
extern void MI_CpuFill8(void *dest, u8 value, u32 size);

extern const u8 ov109_021E7890[12];

void ov109_021E5DEC(UnkStruct_ov109_021E5DEC *data, u32 idx) {
    u32 i;
    int val;

    data->unkC5--;
    if (idx < data->unkC5) {
        for (i = idx; i < data->unkC5; i = (u8)(i + 1)) {
            MI_CpuCopy8(data->entries[i + 1], data->entries[i], 8);
        }
    }
    MI_CpuFill8(data->entries[data->unkC5], 0, 8);
    data->unk1A = (int)data->unkC5 / 12;
    if ((int)data->unkC5 % 12 != 0) {
        data->unk1A++;
    }
    if (data->unkC5 == 0) {
        data->unk1A = 1;
    }
    if (idx >= data->unkC5) {
        if (data->unkC5 == 0) {
            data->unk1B = 3;
            data->unk1C = 3;
            data->unk19 = 0;
            return;
        }
        if (idx != 0) {
            idx = (u8)(idx - 1);
        }
        data->unk19 = (int)idx / 12;
        val = ov109_021E7890[(int)idx % 12];
        data->unk1B = val % 4;
        data->unk1C = val >> 2;
    }
}
