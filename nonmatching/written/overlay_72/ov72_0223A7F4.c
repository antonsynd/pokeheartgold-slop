typedef unsigned char u8;
typedef signed char s8;
typedef short s16;
typedef unsigned int u32;
typedef int s32;

s32 ov72_0223A7F4(u8 *p, s32 val)
{
    s32 digits[3];
    s32 valid[3];
    s32 mult = 100;
    s32 n = 3;
    s32 count = 0;
    s32 seen = 0;
    s32 total;
    s32 i;

    for (i = 0; i < 3; i++) {
        digits[i] = (s8)p[8 + i];
    }

    if (val != -1) {
        s32 idx = *(s16 *)(p + 4);
        u32 entrySp = (u32)__builtin_frame_address(0) + 8;
        u32 addr = entrySp - 0x20 + idx * 4;
        if (idx >= 0 && idx < 3) {
            digits[idx] = val;
        } else if (addr < entrySp - 0x38 || addr >= entrySp) {
            *(s32 *)addr = val;
        }
    }

    for (i = 0; i < 3; i++) {
        s32 c = (s8)p[8 + i];
        if ((c == 0 && seen == 0) || digits[i] < 0) {
            mult = mult / 10;
            n--;
        } else {
            seen = 1;
            valid[count] = digits[i];
            count++;
        }
    }

    total = 0;
    for (i = 0; i < n; i++) {
        total += valid[i] * mult;
        mult = mult / 10;
    }

    if (total > *(u8 *)(p + 1)) {
        return -1;
    }
    return total;
}
