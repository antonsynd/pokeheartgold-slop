#include "global.h"
#include "unk_02035900.h"

extern int ov85_021E9FD0(void);
extern void ov85_021E943C(void *work);
extern void sub_02096D4C(void *a0, int a1, void *a2, int a3);

typedef struct UnkStruct_ov85_021E962C_Msg {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
} UnkStruct_ov85_021E962C_Msg;

typedef struct UnkStruct_ov85_021E962C_Sub {
    u8 filler_00[0x38];
    u16 unk_38;
} UnkStruct_ov85_021E962C_Sub;

int ov85_021E962C(u8 *work, int ret) {
    UnkStruct_ov85_021E962C_Sub *sub = *(UnkStruct_ov85_021E962C_Sub **)(work + 0x10);
    if (sub->unk_38 != sub_02037454() || (*(UnkStruct_ov85_021E962C_Sub **)(work + 0x10))->unk_38 != ov85_021E9FD0()) {
        *(u16 *)(work + 0x4A5C) = 0;
        *(int *)(work + 0x354) = 8;
        ov85_021E943C(work);
        return ret;
    }

    (*(s16 *)(work + 0x4A5C))++;
    if (*(s16 *)(work + 0x4A5C) > 30) {
        UnkStruct_ov85_021E962C_Msg msg;
        MI_CpuFill8(&msg, 0, sizeof(msg));
        msg.unk_02 = 1;
        msg.unk_00 = sub_0203769C();
        sub_02096D4C(*(void **)(work + 0x10), 2, &msg, sizeof(msg));
        *(u16 *)(work + 0x4A5C) = 0;
        *(int *)(work + 0x354) = 9;
    }
    ov85_021E943C(work);
    return ret;
}
