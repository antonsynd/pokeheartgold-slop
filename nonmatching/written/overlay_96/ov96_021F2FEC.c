#include "global.h"

typedef struct UnkStruct_ov96_021F2FEC_Entry {
    u16 index;
    u16 value;
} UnkStruct_ov96_021F2FEC_Entry;

void ov96_021EB06C(void *a0, u32 a1, u32 a2, u32 *a3, u32 *a4);
void ov96_021EABA8(void *a0, int a1);
int ov96_021F2FBC(void *a, void *b);
void MATH_QSort(void *data, u32 nel, u32 size, int (*comp)(void *, void *), void *work);

void ov96_021F2FEC(u8 *param0, u8 *param1) {
    UnkStruct_ov96_021F2FEC_Entry entries[12];
    u32 out1;
    u32 out2;
    u8 i;
    u8 idx;

    for (i = 0; i < 12; i++) {
        entries[i].index = i;
        ov96_021EB06C(*(void **)(param0 + (i / 3) * 0x1b0 + (i % 3) * 0x90 + 0x20), param1[i], param1[i + 0xc], &out1, &out2);
        entries[i].value = out2;
    }
    MATH_QSort(entries, 12, 4, ov96_021F2FBC, *(void **)(param0 + 0x7f0));
    for (i = 0; i < 12; i++) {
        idx = (u8)entries[i].index;
        ov96_021EABA8(*(void **)(param0 + (idx / 3) * 0x1b0 + (idx % 3) * 0x90 + 0x20), i + 6);
    }
}
