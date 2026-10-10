#include "global.h"

#include "unk_02031B0C.h"

typedef struct UnkStruct_ov59_02238124 {
    u8 padding_00[0x10];
    SaveApricornBox *unk_10;
    u8 padding_14[0x3C - 0x14];
    u16 unk_3C;
    u8 padding_3E[0x48 - 0x3E];
    u8 unk_48;
    u8 padding_49[4];
    u8 unk_4D;
    u8 unk_4E;
    u8 padding_4F[2];
    u8 unk_51;
} UnkStruct_ov59_02238124;

void ov59_02238FF4(UnkStruct_ov59_02238124 *param0, u32 param1);
void ov59_02238AB0(UnkStruct_ov59_02238124 *param0, u32 param1);
void ov59_02238C40(UnkStruct_ov59_02238124 *param0, u32 param1);
int ov59_0223A05C(UnkStruct_ov59_02238124 *param0);
void ov59_02238F58(UnkStruct_ov59_02238124 *param0);
int ov59_02238FB4(UnkStruct_ov59_02238124 *param0);

int ov59_02238124(UnkStruct_ov59_02238124 *param0) {
    int v0;
    u8 v1;

    switch (param0->unk_3C) {
    case 0:
        ov59_02238FF4(param0, 2);
        ov59_02238AB0(param0, 1);
        ov59_02238C40(param0, 11);
        param0->unk_3C++;
        break;
    case 1:
        v0 = ov59_0223A05C(param0);
        if (v0 != 6) {
            param0->unk_48 = v0;
            param0->unk_51 = 4;
            param0->unk_3C++;
        }
        break;
    case 2:
        v1 = param0->unk_51;
        param0->unk_51 = param0->unk_51 - 1;
        if (v1 == 0) {
            if (param0->unk_48 == 1) {
                ov59_02238FF4(param0, 0);
                ov59_02238AB0(param0, 0);
                ov59_02238C40(param0, 10);
                param0->unk_3C = 0;
                return 5;
            }
            ov59_02238C40(param0, 12);
            ov59_02238AB0(param0, 0);
            ov59_02238F58(param0);
            param0->unk_3C++;
        }
        break;
    case 3:
        v0 = ov59_02238FB4(param0);
        if (v0 >= 0) {
            param0->unk_3C = 0;
            if (v0 != 0) {
                ApricornBox_SetKurtApricorn(param0->unk_10, param0->unk_4D, param0->unk_4E);
                return 1;
            }
            ov59_02238FF4(param0, 0);
            ov59_02238C40(param0, 10);
            param0->unk_3C = 0;
            return 5;
        }
        break;
    default:
        param0->unk_3C = 0;
        return 5;
    }
    return 6;
}
