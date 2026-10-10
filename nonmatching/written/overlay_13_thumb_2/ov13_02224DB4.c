#include "global.h"

extern char ov13_0224E09C[];
extern char ov13_0224E284[];
extern u32 ov13_0224E2B0[];
extern u32 ov13_0224E0B0[];
extern u8 ov13_0224E2E8[];
extern u8 ov13_0224E0C4[];
extern u32 ov13_0224E144[];
extern u32 ov13_0224E380[];

void ov13_02224D00(u8 *dst, const u8 *src, u32 len);

s32 ov13_02224DB4(void) {
    s32 result = 1;
    u8 buf[0x21];
    u8 *src;
    u8 *dst;
    int i;
    int j;
    u32 len;

    strcpy(ov13_0224E09C, ov13_0224E284);
    switch (ov13_0224E2B0[0]) {
    case 0:
        ov13_0224E0B0[3] = 0;
        break;
    case 1:
        if (ov13_0224E2B0[1] == 0) {
            result = -7;
            break;
        }
        ov13_0224E0B0[4] = ov13_0224E2B0[1];
        src = ov13_0224E2E8;
        dst = ov13_0224E0C4;
        for (i = 0; i < 4; i++) {
            memcpy(buf, src, 0x20);
            buf[0x20] = 0;
            len = strlen((char *)buf);
            if (len > 0x10) {
                if (len == 0x1a) {
                    ov13_0224E0B0[3] = 2;
                    ov13_02224D00(dst, buf, 0x1a);
                } else if (len > 0x1a && len == 0x20) {
                    ov13_0224E0B0[3] = 3;
                    ov13_02224D00(dst, buf, 0x20);
                } else {
                    result = -7;
                }
            } else if (len >= 0xa) {
                if (len == 0xa) {
                    ov13_0224E0B0[3] = 1;
                    ov13_02224D00(dst, buf, 0xa);
                } else if (len == 0xd) {
                    ov13_0224E0B0[3] = 2;
                    for (j = 0; j < 0xd; j++) {
                        dst[j] = buf[j];
                    }
                } else if (len == 0x10) {
                    ov13_0224E0B0[3] = 3;
                    for (j = 0; j < 0x10; j++) {
                        dst[j] = buf[j];
                    }
                } else {
                    result = -7;
                }
            } else if (len != 0) {
                if (len == 5) {
                    ov13_0224E0B0[3] = 1;
                    dst[0] = buf[0];
                    dst[1] = buf[1];
                    dst[2] = buf[2];
                    dst[3] = buf[3];
                    dst[4] = buf[4];
                } else {
                    result = -7;
                }
            }
            src += 0x28;
            dst += 0x20;
        }
        break;
    case 2:
        ov13_0224E0B0[3] = 4;
        for (i = 0; i < 16; i++) {
            ov13_0224E144[i] = ov13_0224E380[i];
        }
        break;
    case 3:
        ov13_0224E0B0[3] = 5;
        for (i = 0; i < 16; i++) {
            ov13_0224E144[i] = ov13_0224E380[i];
        }
        break;
    default:
        result = -7;
        break;
    }
    return result;
}
