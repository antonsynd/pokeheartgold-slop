#include "global.h"

u32 ov45_0222EC90(u32 a);
void ov45_0222EEF0(u32 a, void *buf, u32 size);

void ov45_0222AC14(void *param0, u32 type, u8 flag, u32 a3, u32 a4, u32 a5, u32 a6, u32 a7) {
    union {
        u32 w[5];
        u8 b[0x14];
    } buf;
    u32 code;

    buf.w[0] = 0;
    buf.w[1] = 0;
    buf.w[2] = 0;
    buf.w[3] = 0;
    buf.w[4] = 0;

    if (type > 6) {
        return;
    }
    switch (type) {
    case 0:
    case 1:
    case 2:
        code = 2;
        break;
    case 3:
    case 4:
        code = 3;
        break;
    case 5:
        code = 4;
        break;
    default:
        code = 5;
        break;
    }
    buf.b[0x11] = code;
    buf.w[0] = ov45_0222EC90(a3);
    buf.w[1] = ov45_0222EC90(a4);
    buf.w[2] = ov45_0222EC90(a5);
    buf.w[3] = ov45_0222EC90(a6);
    buf.b[0x10] = flag;
    buf.b[0x13] = (buf.b[0x13] & ~0x7f) | (type & 0x7f);
    buf.b[0x13] = (buf.b[0x13] & ~0x80) | (((u8)a7 & 1) << 7);
    ov45_0222EEF0(4, &buf, 0x14);
}
