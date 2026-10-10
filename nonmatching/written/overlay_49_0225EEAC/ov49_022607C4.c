#include "global.h"

#include "error_handling.h"

typedef struct UnkStruct_ov49_022607C4_Data {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
} UnkStruct_ov49_022607C4_Data;

typedef struct UnkStruct_ov49_022607C4_Out {
    s16 unk_00;
    s16 unk_02;
    s16 unk_04;
    s16 unk_06;
    s16 unk_08;
} UnkStruct_ov49_022607C4_Out;

typedef struct UnkStruct_ov49_022607C4_Pos {
    s16 unk_00;
    s16 unk_02;
} UnkStruct_ov49_022607C4_Pos;

extern u8 ov49_02269B88[];
extern u8 ov49_02269B38[];

void *ov49_0225EF84(void *param0);
u32 ov49_0225A010(void *param0);
u32 ov49_02259FF0(void *param0);
u32 ov49_02258DAC(void);
u32 ov49_02259FE8(void *param0);
u32 ov49_0225EF88(void *param0);
void *ov49_0225EF40(void *param0, u32 size);
void ov49_02258EEC(u32 param0, u32 param1, u32 param2);
void ov49_0225EF90(void *param0);
int ov49_0225A040(void *param0);
void ov45_0222A5E8(u32 param0, u32 param1);
void ov49_0225EFC4(u32 param0, u32 param1, void *param2, void *param3);
void ov49_0225EF8C(void *param0, u32 param1);
void ov49_0225A034(void *param0, u32 param1);
void ov49_0225A038(void *param0, u8 param1);
void IncrementGameStat119(u32 param0);
void ov45_0222B118(u32 param0, u32 param1);
int ov49_02258E60(u32 param0, u32 param1);
int ov42_022282A4(int param0);
UnkStruct_ov49_022607C4_Out *ov49_02259FEC(void *param0);
UnkStruct_ov49_022607C4_Pos ov49_02258E34(u32 param0);
void ov45_0222A4C8(u32 param0, u32 param1);
void ov49_02258EAC(u32 param0, u32 param1, u32 param2, u32 param3);
void ov49_0225A37C(void *param0, u32 param1, u32 param2);
u32 ov49_0225A30C(void *param0, u32 param1, u32 param2);
void ov49_0225A08C(void *param0, u32 param1);
int ov49_0225A0AC(void *param0);
void ov49_0225A0EC(void *param0);
void ov49_0225EF68(void *param0);
void ov49_0225EF98(u32 param0, u32 param1, void *param2, u32 param3);

BOOL ov49_022607C4(void *param0, void *param1, u32 param2) {
    u32 callerR5;
    UnkStruct_ov49_022607C4_Data *v0;
    u32 v1;
    u32 v2;
    u32 v3;
    u32 v4;

    __asm__ volatile("movs %0, r5" : "=l"(callerR5) : : "cc");

    v0 = ov49_0225EF84(param0);
    v1 = ov49_0225A010(param1);
    v2 = ov49_02259FF0(param1);
    v3 = ov49_02258DAC();
    v4 = ov49_02259FE8(param1);

    switch (ov49_0225EF88(param0)) {
    case 0: {
        int v5;

        v0 = ov49_0225EF40(param0, 4);
        ov49_02258EEC(v2, v3, 0);
        ov49_0225EF90(param0);
        v0->unk_00 = 0;
        v5 = ov49_0225A040(param1);
        if (v5 == 30) {
            v0->unk_01 = 0;
            v0->unk_02 = 0;
            v0->unk_03 = 2;
        } else if (v5 == 31) {
            v0->unk_01 = 1;
            v0->unk_02 = 1;
            v0->unk_03 = 3;
        } else if (v5 == 32) {
            v0->unk_01 = 2;
            v0->unk_02 = 2;
            v0->unk_03 = 4;
        } else {
            GF_AssertFail();
        }
        ov45_0222A5E8(ov49_02259FE8(param1), 12);
        ov49_0225EFC4(v1, param2, ov49_02269B88, v0);
    } break;
    case 1:
        if (v0->unk_00 == 8) {
            ov49_0225EF8C(param0, 2);
        } else {
            ov49_0225EF8C(param0, 3);
        }
        break;
    case 2: {
        u32 v6 = callerR5;
        u32 v9;
        int v8;
        UnkStruct_ov49_022607C4_Out *v11;
        UnkStruct_ov49_022607C4_Pos v10;
        int v12;

        v8 = ov49_0225A040(param1);
        if (v8 == 30) {
            v6 = 3;
            v9 = 0;
        } else if (v8 == 31) {
            v6 = 4;
            v9 = 1;
        } else if (v8 == 32) {
            v6 = 5;
            v9 = 2;
        }
        ov49_0225A034(param1, 1);
        ov49_0225A038(param1, v6);
        IncrementGameStat119(v4);
        ov45_0222B118(v4, v9);
        v12 = ov42_022282A4(ov49_02258E60(v3, 6));
        v11 = ov49_02259FEC(param1);
        v10 = ov49_02258E34(v3);
        v11->unk_06 = 2;
        v11->unk_00 = v10.unk_00 / 16;
        v11->unk_02 = v10.unk_02 / 16;
        v11->unk_04 = v12;
        v11->unk_08 = v0->unk_02;
        ov45_0222A4C8(ov49_02259FE8(param1), 1);
        ov49_0225EF68(param0);
        return TRUE;
    }
    case 3: {
        int v14;

        v14 = ov42_022282A4(ov49_02258E60(v3, 6));
        ov49_02258EAC(v2, v3, 2, v14);
        ov49_0225EF90(param0);
    } break;
    case 4:
        if (ov49_02258E60(v3, 5) == 0) {
            ov49_0225EF90(param0);
        }
        break;
    case 5: {
        u32 v17 = callerR5;
        BOOL v18 = TRUE;

        switch (v0->unk_00) {
        case 0:
            ov49_0225A37C(param1, v0->unk_02, 0);
            v17 = 4;
            break;
        case 1:
            v17 = 5;
            break;
        case 2:
            ov49_0225A37C(param1, v0->unk_02, 0);
            v17 = 6;
            break;
        case 3:
            v17 = 19;
            break;
        case 4:
            v17 = 17;
            break;
        case 6:
            v17 = 29;
            break;
        case 7:
            v17 = 7;
            break;
        default:
            v18 = FALSE;
            break;
        }
        if (v18) {
            ov49_0225A08C(param1, ov49_0225A30C(param1, 0, v17));
            ov49_0225EF90(param0);
        } else {
            ov49_0225EF8C(param0, 7);
        }
    } break;
    case 6:
        if (ov49_0225A0AC(param1) == 1) {
            ov49_0225A0EC(param1);
            ov49_0225EF90(param0);
        }
        break;
    case 7:
        ov49_0225EF68(param0);
        ov45_0222A5E8(ov49_02259FE8(param1), 1);
        ov49_02258EEC(v2, v3, 1);
        ov49_0225EF98(ov49_0225A010(param1), param2, ov49_02269B38, 0);
        break;
    }
    return FALSE;
}
