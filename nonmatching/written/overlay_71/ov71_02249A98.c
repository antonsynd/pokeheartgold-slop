typedef unsigned char u8;
typedef unsigned short u16;
typedef short s16;
typedef unsigned int u32;
typedef int s32;
typedef long long s64;

s32 GF_CosDegNoWrap(u16 deg);
s32 GF_SinDegNoWrap(u16 deg);
void ov71_02247730(void *model, s32 scale);
void ov71_022476EC(void *model, void *rotation);
void VEC_Add(void *a, void *b, void *result);

static inline s32 FxMul(s32 a, s32 b)
{
    return (s32)(((s64)a * (s64)b + 0x800LL) >> 12);
}

void ov71_02249A98(u8 *bo)
{
    s32 angle = (s32)*(u16 *)(bo + 0x6c) / 182;
    if (angle >= 360) {
        angle -= 360;
    }

    *(s16 *)(bo + 0x6c) = *(s16 *)(bo + 0x6c) + *(s16 *)(bo + 0x6e);

    if (*(s32 *)(bo + 0x5c) != 0) {
        *(s32 *)(bo + 0x44) = *(s32 *)(bo + 0x44) + *(s32 *)(bo + 0x4c);
        *(s32 *)(bo + 0x48) = *(s32 *)(bo + 0x48) + *(s32 *)(bo + 0x50);
        *(s32 *)(bo + 0x54) = *(s32 *)(bo + 0x54) + *(s32 *)(bo + 0x58);
        ov71_02247730(*(void **)(bo + 0xc), *(s32 *)(bo + 0x54));
        *(s32 *)(bo + 0x5c) = *(s32 *)(bo + 0x5c) - 1;
    }

    {
        s32 radiusX = *(s32 *)(bo + 0x44);
        s32 c = GF_CosDegNoWrap((u16)angle);
        *(s32 *)(bo + 0x1c) = FxMul(c, radiusX);
    }
    {
        s32 radiusY = *(s32 *)(bo + 0x48);
        s32 s = GF_SinDegNoWrap((u16)angle);
        *(s32 *)(bo + 0x20) = FxMul(s, radiusY);
    }
    *(s32 *)(bo + 0x24) = 0;
    *(s16 *)(bo + 0x34) = *(s16 *)(bo + 0x34) + 0x300;
    ov71_022476EC(*(void **)(bo + 0xc), bo + 0x34);
    VEC_Add(bo + 0x1c, bo + 0x10, bo + 0x28);
}
