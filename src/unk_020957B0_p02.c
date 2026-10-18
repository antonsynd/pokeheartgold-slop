#include "global.h"

typedef struct UnkStruct_020958C0_Msg {
    int result;
    s8 value;
} UnkStruct_020958C0_Msg;

typedef struct UnkStruct_020958C0 {
    u8 filler_0[4];
    u8 *unk4;
} UnkStruct_020958C0;

int sub_02095BF0(UnkStruct_020958C0 *a0, s8 *a1, int a2, int a3, s8 a4);
void sub_02095CB8(UnkStruct_020958C0 *a0, int a1, UnkStruct_020958C0_Msg *msg);

void sub_020958C0(UnkStruct_020958C0 *a0, s8 *a1, int a2, int a3, s8 a4) {
    UnkStruct_020958C0_Msg msg;

    msg.result = sub_02095BF0(a0, a1, a2, a3, a4);
    msg.value = a1[0];
    switch (msg.result) {
    case 3:
        msg.value = 0;
        sub_02095CB8(a0, 3, &msg);
        break;
    case 1:
        if (a0->unk4[0] == 0x12) {
            msg.value = 0;
            sub_02095CB8(a0, 6, &msg);
        } else {
            msg.value = 4;
            sub_02095CB8(a0, 2, &msg);
        }
        break;
    }
}
