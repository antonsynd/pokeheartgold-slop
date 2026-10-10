typedef unsigned char u8;
typedef unsigned short u16;
typedef short s16;
typedef unsigned int u32;
typedef int s32;
typedef long long s64;

s32 GF_CosDegNoWrap(u16 deg);
s32 GF_SinDegNoWrap(u16 deg);

static inline s32 FxMul(s32 a, s32 b)
{
    return (s32)(((s64)a * (s64)b + 0x800LL) >> 12);
}

void ov71_0224903C(u8 *bp)
{
    s32 angle;
    s32 i;
    u8 *anim;

    if (*(s32 *)(bp + 0x74) != 0) {
        *(s32 *)(bp + 0x74) = *(s32 *)(bp + 0x74) - 1;
        if (*(s32 *)(bp + 0x74) != 0) {
            *(s16 *)(bp + 0x56) = *(s16 *)(bp + 0x56) + *(s16 *)(bp + 0x5a);
        } else {
            *(s16 *)(bp + 0x56) = *(s16 *)(bp + 0x58);
        }
    }

    *(s16 *)(bp + 0x54) = *(s16 *)(bp + 0x54) + *(s16 *)(bp + 0x56);
    angle = (s32)*(u16 *)(bp + 0x54) / 182;
    if (angle >= 360) {
        angle -= 360;
    }

    if (*(s32 *)(bp + 0x50) != 0) {
        *(s32 *)(bp + 0x38) = *(s32 *)(bp + 0x38) + *(s32 *)(bp + 0x40);
        *(s32 *)(bp + 0x3c) = *(s32 *)(bp + 0x3c) + *(s32 *)(bp + 0x44);
        *(s32 *)(bp + 0x50) = *(s32 *)(bp + 0x50) - 1;
        if (*(s32 *)(bp + 0x50) == 0) {
            *(s32 *)(bp + 0x38) = *(s32 *)(bp + 0x48);
            *(s32 *)(bp + 0x3c) = *(s32 *)(bp + 0x4c);
        }
    }

    {
        s32 radiusX = *(s32 *)(bp + 0x38);
        s32 c = GF_CosDegNoWrap((u16)angle);
        *(s32 *)(bp + 0x14) = *(s32 *)(bp + 8) + FxMul(c, radiusX);
    }
    {
        s32 radiusZ = *(s32 *)(bp + 0x3c);
        s32 s = GF_SinDegNoWrap((u16)angle);
        *(s32 *)(bp + 0x1c) = *(s32 *)(bp + 0x10) + FxMul(s, radiusZ);
    }
    *(s16 *)(bp + 0x22) = *(s16 *)(bp + 0x22) + *(s16 *)(bp + 0x56);

    anim = bp;
    for (i = 0; i < 3; i++) {
        if (*(u16 *)(anim + 0x62) != 0) {
            *(u16 *)(anim + 0x62) = *(u16 *)(anim + 0x62) - 1;
            if (*(u16 *)(anim + 0x62) == 0) {
                *(s16 *)(anim + 0x5c) = *(s16 *)(anim + 0x60);
            } else {
                *(s16 *)(anim + 0x5c) = *(s16 *)(anim + 0x5c) + *(s16 *)(anim + 0x5e);
            }
        }
        anim += 8;
    }

    *(s16 *)(bp + 0x20) = *(s16 *)(bp + 0x20) + *(s16 *)(bp + 0x5c);
    *(s16 *)(bp + 0x22) = *(s16 *)(bp + 0x22) + *(s16 *)(bp + 0x64);
    *(s16 *)(bp + 0x24) = *(s16 *)(bp + 0x24) + *(s16 *)(bp + 0x6c);
}
