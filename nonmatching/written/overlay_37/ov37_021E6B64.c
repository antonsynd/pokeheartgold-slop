#include "global.h"

int sub_02037454(void);
int ov37_021E75C4(void);
void ov37_021E7844(void *param0, int param1);
void ov37_021E68AC(void *param0);
u32 sub_0203769C(void);
void sub_02037030(int a0, void *a1, int a2);

int ov37_021E6B64(u8 *param0, int param1) {
    u8 buf[4];

    param0[0x4380] &= ~0x38;
    if (*(u16 *)(param0 + 0x93B8) != sub_02037454() || *(u16 *)(param0 + 0x93B8) != ov37_021E75C4()) {
        *(u16 *)(param0 + 0x93BA) = 0;
        ov37_021E7844(param0, 9);
        ov37_021E68AC(param0);
        return param1;
    }
    *(s16 *)(param0 + 0x93BA) = *(s16 *)(param0 + 0x93BA) + 1;
    if (*(s16 *)(param0 + 0x93BA) > 30) {
        MI_CpuFill8(buf, 0, 4);
        buf[2] = 1;
        buf[0] = sub_0203769C();
        sub_02037030(0x7e, buf, 4);
        *(u16 *)(param0 + 0x93BA) = 0;
        ov37_021E7844(param0, 10);
    }
    ov37_021E68AC(param0);
    return param1;
}
