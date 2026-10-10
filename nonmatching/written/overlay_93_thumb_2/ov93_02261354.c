#include "global.h"

typedef struct UnkStruct_ov93_02261354_Elem {
    u8 filler_00[0x30];
    u8 unk_30[0x4C - 0x30];
} UnkStruct_ov93_02261354_Elem;

typedef struct UnkStruct_ov93_02261354 {
    UnkStruct_ov93_02261354_Elem unk_00[3];
    s32 unk_E4;
    s32 unk_E8;
    s32 unk_EC;
    u8 unk_F0;
    u8 unk_F1;
    u8 unk_F2;
    u8 unk_F3;
    u8 unk_F4;
} UnkStruct_ov93_02261354;

typedef struct UnkStruct_ov93_02262CC4 {
    u8 unk_00;
    u8 unk_01;
    u8 filler_02[2];
} UnkStruct_ov93_02262CC4;

extern const UnkStruct_ov93_02262CC4 ov93_02262CC4[];

extern void ov93_02261528(UnkStruct_ov93_02261354_Elem *param0, int param1);
extern void ov93_02261538(void *param0, void *param1, UnkStruct_ov93_02261354_Elem *param2);
extern void ov93_02262540(void *param0, UnkStruct_ov93_02261354_Elem *param1, void *param2);

void ov93_02261354(void *param0, UnkStruct_ov93_02261354 *param1) {
    int v0, v2 = 0;

    if (param1->unk_F1 == 1) {
        return;
    }

    param1->unk_EC++;

    if (param1->unk_F2 == 0) {
        param1->unk_E4 += param1->unk_E8;
        param1->unk_F3++;

        if (param1->unk_F3 >= ov93_02262CC4[param1->unk_F4].unk_00) {
            param1->unk_F3 = 0;
            param1->unk_F0++;
            param1->unk_E4 = (360 << 12) / 12 * param1->unk_F0;
            param1->unk_F2 = ov93_02262CC4[param1->unk_F4].unk_01;
        }
    } else {
        param1->unk_F2--;

        if (param1->unk_F2 == 0) {
            if (param1->unk_F0 >= 12) {
                param1->unk_F0 = 0;
                param1->unk_F4++;

                if (param1->unk_F4 >= 5) {
                    param1->unk_F4 = 4;
                }

                param1->unk_E8 = (360 << 12) / 12 / ov93_02262CC4[param1->unk_F4].unk_00;
            }
        }
    }

    if (param1->unk_F4 == 1) {
        for (v0 = 0; v0 < 2; v0++) {
            v2 += (ov93_02262CC4[v0].unk_00 + ov93_02262CC4[v0].unk_01) * 12;
        }

        if (v2 - 15 == param1->unk_EC) {
            ov93_02261528(&param1->unk_00[1], 1);
        }
    } else if (param1->unk_F4 == 2) {
        for (v0 = 0; v0 < 3; v0++) {
            v2 += (ov93_02262CC4[v0].unk_00 + ov93_02262CC4[v0].unk_01) * 12;
        }

        if (v2 - 15 == param1->unk_EC) {
            ov93_02261528(&param1->unk_00[2], 1);
        }
    }

    for (v0 = 0; v0 < 3; v0++) {
        ov93_02261538(param0, param1, &param1->unk_00[v0]);
        ov93_02262540(param0, &param1->unk_00[v0], &param1->unk_00[v0].unk_30);
    }
}
