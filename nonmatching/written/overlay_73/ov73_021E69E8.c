#include "global.h"
#include "unk_02035900.h"

extern int ov73_021E746C(void);
extern void ov73_021E66F0(void *work);

typedef struct UnkStruct_ov73_021E69E8_Msg {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
} UnkStruct_ov73_021E69E8_Msg;

int ov73_021E69E8(u8 *work, int ret) {
    if (*(u16 *)(work + 0x4A30) != sub_02037454() || *(u16 *)(work + 0x4A30) != ov73_021E746C()) {
        *(u16 *)(work + 0x4A32) = 0;
        *(int *)(work + 0x318) = 8;
        ov73_021E66F0(work);
        return ret;
    }

    (*(s16 *)(work + 0x4A32))++;
    if (*(s16 *)(work + 0x4A32) > 30) {
        UnkStruct_ov73_021E69E8_Msg msg;
        MI_CpuFill8(&msg, 0, sizeof(msg));
        msg.unk_02 = 1;
        msg.unk_00 = sub_0203769C();
        sub_02037030(0x70, &msg, sizeof(msg));
        *(u16 *)(work + 0x4A32) = 0;
        *(int *)(work + 0x318) = 9;
    }
    ov73_021E66F0(work);
    return ret;
}
