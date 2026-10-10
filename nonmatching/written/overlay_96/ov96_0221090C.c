#include "global.h"

extern u32 _u32_div_f(u32, u32);
u32 MTRandom(void);

extern u8 ov96_0221D1B0[];
extern u8 ov96_0221D1B1[];
extern u8 ov96_0221D1C4[];

typedef struct UnkStruct_ov96_0221090C {
    u8 unk00[6];
    s16 unk06;
    s16 unk08;
    u32 unk0C;
} UnkStruct_ov96_0221090C;

void ov96_0221090C(UnkStruct_ov96_0221090C *param_1)
{
    u32 flags = param_1->unk0C;
    u32 idx = ((flags & 0x7f) >> 5) * 2;
    u32 rnd = MTRandom();
    u32 div = ov96_0221D1B1[idx];
    u32 rem;

    rem = rnd % div;
    _u32_div_f(rnd, div);
    param_1->unk06 = (s16)(ov96_0221D1B0[idx] + rem);
    param_1->unk06 = param_1->unk06 << 3;

    param_1->unk08 = *(s16 *)(ov96_0221D1C4 + ((flags & 0x1f) >> 3) * 12 + ((flags & 0x7f) >> 5) * 4);

    rnd = MTRandom();
    div = 5;
    rem = rnd % div;
    _u32_div_f(rnd, div);
    param_1->unk08 = (s16)(param_1->unk08 + ((s32)rem - 2) * 8);

    param_1->unk0C = param_1->unk0C & 0xfffff87e;
}
