#include "global.h"

extern u8 ov13_0224CF98[];
extern u8 ov13_022459B0[];

int ov13_02222A84(u32 value);
int ov13_02221D58(const u8 *src, u8 *dst);
int ov13_02221EAC(const u8 *src, u8 *dst);
int ov13_02221F64(const u8 *src, u8 *dst);

s32 ov13_02221F94(int index, const u8 *p, int remaining, u8 *base, u8 *extra) {
    u32 flags = 0;
    int inner;
    int r;
    u8 *entry;

    if (remaining <= 0) {
        return -2;
    }
    while (p[0] != ov13_022459B0[index]) {
        int n = ov13_02222A84(*(const u16 *)(p + 2)) + 4;
        remaining -= n;
        p += n;
        if (remaining <= 0) {
            return -4;
        }
    }
    inner = ov13_02222A84(*(const u16 *)(p + 2));
    p += 4;
    entry = base + index * 0x350;
    while (TRUE) {
        switch (p[0]) {
        case 3:
            r = ov13_02221D58(p, entry + 8);
            flags |= 1;
            break;
        case 4:
            r = ov13_02221D58(p, entry + 0x138);
            flags |= 2;
            break;
        case 5:
            r = ov13_02221EAC(p, entry + 0x268);
            flags |= 4;
            break;
        case 6:
            r = ov13_02221EAC(p, entry + 0x2d8);
            flags |= 8;
            break;
        case 10:
            r = ov13_02221F64(p, extra + ((index + 3) << 7));
            break;
        default:
            r = -3;
            break;
        }
        if (r != 0) {
            return r;
        }
        {
            int n = ov13_02222A84(*(const u16 *)(p + 2)) + 4;
            inner -= n;
            p += n;
        }
        if (inner <= 0) {
            break;
        }
    }
    *(u32 *)(ov13_0224CF98 + 0x30) |= flags;
    return 0;
}
