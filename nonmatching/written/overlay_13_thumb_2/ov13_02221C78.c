#include "global.h"

extern u8 ov13_0224CF98[];

void *ov13_02222978(void *dst, u32 value, u32 size);
void ov13_02222968(void *dst, const void *src);
int ov13_02222A84(u32 value);
u32 ov13_02222A5C(void);
void ov13_02221D34(const void *src, u32 size);

s32 ov13_02221C78(const u8 *param_1, u8 *param_2) {
    const u8 *p;
    int len;

    ov13_02222978(param_2, 0, 0x104);
    p = param_1;
    while (TRUE) {
        len = ov13_02222A84(*(const u16 *)(p + 2));
        if (len <= 0) {
            return -1;
        }
        switch (p[0]) {
        case 0:
            ov13_02222968(param_2, p + 6);
            break;
        case 1:
            ov13_02222968(param_2 + 0x80, p + 6);
            break;
        case 2:
            ov13_02222968(param_2 + 0x100, p + 6);
            break;
        case 3:
        case 4:
            if (ov13_02222A84(p[6]) <= 0) {
                return -2;
            }
            break;
        case 5:
            ov13_02221D34(p + 6, len);
            *(u32 *)(ov13_0224CF98 + 0x34) = ov13_02222A5C();
            break;
        case 6:
            ov13_02221D34(p + 6, len);
            *(u32 *)(ov13_0224CF98 + 0x38) = ov13_02222A5C();
            break;
        default:
            return -1;
        }
        if (*(const u16 *)(p + 4) == 0) {
            break;
        }
        p = param_1 + ov13_02222A84(*(const u16 *)(p + 4));
    }
    return 0;
}
