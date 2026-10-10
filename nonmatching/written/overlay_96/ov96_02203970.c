#include "global.h"

void *ov96_021EB594(u32 value);
void ov96_021EB630(void *ptr, u32 index);
int ov96_02203924(void *a, void *b);
void MATH_QSort(void *data, u32 nel, u32 size, int (*comp)(void *, void *), void *work);

void ov96_02203970(u8 *param_1, u32 param_2)
{
    struct {
        u16 key;
        u16 f2;
        u32 f4;
    } arr[12];
    u8 i;

    for (i = 0; i < 12; i++) {
        void *ret = ov96_021EB594(*(u32 *)(param_1 + 0x48 * i + 0xbc));
        u8 f2 = param_1[0x48 * i + 0xf9];
        u32 f4 = *(u32 *)((u8 *)ret + 4);

        arr[i].f2 = f2;
        arr[i].f4 = f4;
        arr[i].key = (u16)param_2;
    }
    MATH_QSort(arr, 12, 8, ov96_02203924, (void *)*(u32 *)(param_1 + 0x598));

    for (i = 0; i < 12; i++) {
        u8 idx = (u8)arr[i].f2;
        ov96_021EB630(*(void **)(param_1 + 0x48 * idx + 0xb8), i + 0x14);
        ov96_021EB630(*(void **)(param_1 + 0x48 * idx + 0xc0), i + 5);
    }
}
