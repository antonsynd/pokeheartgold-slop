#include "global.h"

typedef struct Ov90_0225A3E0 {
    u8 filler_00[0x10];
    int unk10;
    u8 filler_14[4];
    int unk18;
    u8 filler_1C[0x10];
    u16 unk2C;
    u16 unk2E;
} Ov90_0225A3E0;

extern const int ov90_0225C228[];
extern const int ov90_0225C1F8[];
extern const int ov90_0225C204[];

void ov90_02258CF0(int *a0, int a1, int a2, int a3, int a4);
void ov90_0225A60C(Ov90_0225A3E0 *a0, int a1, int a2);

void ov90_0225A3E0(Ov90_0225A3E0 *a0, int a1) {
    a0->unk2C = 0;
    a0->unk2E = 0;
    ov90_02258CF0(&a0->unk18, ov90_0225C228[a0->unk10], ov90_0225C1F8[a0->unk10], ov90_0225C204[a0->unk10], 8);
    ov90_0225A60C(a0, a1, a0->unk18 >> 12);
}
