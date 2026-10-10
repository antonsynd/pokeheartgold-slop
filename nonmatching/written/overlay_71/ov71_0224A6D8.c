typedef unsigned char u8;
typedef unsigned short u16;
typedef short s16;
typedef unsigned int u32;
typedef int s32;
typedef long long s64;

extern s32 _0224C020;

s32 GF_CosDegNoWrap(u16 deg);
s32 GF_SinDegNoWrap(u16 deg);
void ov71_02247730(void *model, s32 scale);
void ov71_022476EC(void *model, void *rotation);
void VEC_Add(void *a, void *b, void *result);

static inline s32 FxMul(s32 a, s32 b)
{
    return (s32)(((s64)a * (s64)b + 0x800LL) >> 12);
}

void ov71_0224A6D8(u8 *ba)
{
    s32 angle;

    if (_0224C020 == 0) {
        *(s32 *)(ba + 0x28) = *(s32 *)(ba + 0x10);
        *(s32 *)(ba + 0x2c) = *(s32 *)(ba + 0x14);
        *(s32 *)(ba + 0x30) = *(s32 *)(ba + 0x18);
        return;
    }

    angle = (s32)*(u16 *)(ba + 0x78) / 182;
    if (angle >= 360) {
        angle -= 360;
    }

    *(s16 *)(ba + 0x78) = *(s16 *)(ba + 0x78) - *(s16 *)(ba + 0x7a);

    if (*(s32 *)(ba + 0x68) != 0) {
        *(s32 *)(ba + 0x68) = *(s32 *)(ba + 0x68) - 1;
        if (*(s32 *)(ba + 0x68) != 0) {
            *(s32 *)(ba + 0x44) = *(s32 *)(ba + 0x44) + *(s32 *)(ba + 0x4c);
            *(s32 *)(ba + 0x48) = *(s32 *)(ba + 0x48) + *(s32 *)(ba + 0x50);
            *(s32 *)(ba + 0x5c) = *(s32 *)(ba + 0x5c) + *(s32 *)(ba + 0x60);
        } else {
            *(s32 *)(ba + 0x44) = *(s32 *)(ba + 0x54);
            *(s32 *)(ba + 0x48) = *(s32 *)(ba + 0x58);
            *(s32 *)(ba + 0x5c) = *(s32 *)(ba + 0x64);
        }
        ov71_02247730(*(void **)(ba + 0xc), *(s32 *)(ba + 0x5c));
    }

    {
        s32 radiusX = *(s32 *)(ba + 0x44);
        s32 c = GF_CosDegNoWrap((u16)angle);
        *(s32 *)(ba + 0x1c) = FxMul(c, radiusX);
    }
    {
        s32 radiusY = *(s32 *)(ba + 0x48);
        s32 s = GF_SinDegNoWrap((u16)angle);
        *(s32 *)(ba + 0x20) = FxMul(s, radiusY);
    }
    *(s32 *)(ba + 0x24) = 0;
    *(s16 *)(ba + 0x34) = *(s16 *)(ba + 0x34) - 0x300;
    ov71_022476EC(*(void **)(ba + 0xc), ba + 0x34);
    VEC_Add(ba + 0x1c, ba + 0x10, ba + 0x28);
}
