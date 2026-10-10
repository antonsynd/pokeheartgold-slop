#include "global.h"
#include "palette.h"
#include "unk_02035900.h"

typedef struct UnkStruct_ov93_02260BF0_Inner {
    u8 filler_00[0x2C];
    u8 unk_2C[4];
    u8 unk_30;
} UnkStruct_ov93_02260BF0_Inner;

typedef struct UnkStruct_ov93_02260BF0 {
    UnkStruct_ov93_02260BF0_Inner *unk_00;
    u8 filler_04[0x88];
    PaletteData *unk_8C;
} UnkStruct_ov93_02260BF0;

extern const u16 ov93_02262C72[];
extern const u16 ov93_02262DA4[][4];

extern int ov93_0225E3C4(UnkStruct_ov93_02260BF0 *param0, int param1);

void ov93_02260BF0(UnkStruct_ov93_02260BF0 *param0) {
    // The original keeps 4 entries here, then the pushed registers; up to 7 entries overflow harmlessly into them.
    u16 v0[8][3];
    int v1, v2;
    int v3 = 0;
    int v4, v5, v6, v7;
    u16 *v8, *v9;

    for (v2 = 0; v2 < param0->unk_00->unk_30; v2++) {
        v4 = ov93_02262C72[v2];

        for (v1 = 0; v1 < 3; v1++) {
            v0[v2][v1] = PaletteData_GetBufferColorAtIndex(param0->unk_8C, 1, 1, v4 + v1);
        }
    }

    v7 = sub_0203769C();

    for (v3 = 0; v3 < param0->unk_00->unk_30; v3++) {
        if (param0->unk_00->unk_2C[v3] == v7) {
            break;
        }
    }

    v8 = PaletteData_GetUnfadedBuf(param0->unk_8C, 1);
    v9 = PaletteData_GetFadedBuf(param0->unk_8C, 1);

    for (v1 = 0; v1 < param0->unk_00->unk_30; v1++) {
        v4 = v1;
        v5 = ov93_02262DA4[param0->unk_00->unk_30][ov93_0225E3C4(param0, param0->unk_00->unk_2C[v1])];

        for (v6 = 0; v6 < 3; v6++) {
            v8[v5 + v6] = v0[v4][v6];
            v9[v5 + v6] = v0[v4][v6];
        }
    }
}
