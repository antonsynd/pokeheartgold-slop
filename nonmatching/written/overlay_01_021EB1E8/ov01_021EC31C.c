typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;
typedef long long s64;

extern char NNS_G3dGlb[];
s32 FX_Div(s32 num, s32 den);
u16 Camera_GetPerspectiveAngle(void *camera);
s32 Camera_GetDistance(void *camera);
void sub_02020E10(u16 angle, s32 distance, s32 aspect, s32 *outX, s32 *outY);
s64 _ll_mul(s64 a, s64 b);

static s32 FxMul_ov01_021EC31C(s32 a, s32 b)
{
    return (s32)((_ll_mul((s64)a, (s64)b) + 0x800) >> 12);
}

void ov01_021EC31C(s32 *outX, s32 *outY, char *data)
{
    s32 target[3];
    s32 dx, dz, aspect, w, h, sign;
    u16 angle;
    s32 dist;
    void *camera;

    target[0] = ((s32 *)(NNS_G3dGlb + 0x258))[0];
    target[1] = ((s32 *)(NNS_G3dGlb + 0x258))[1];
    target[2] = ((s32 *)(NNS_G3dGlb + 0x258))[2];
    dx = target[0] - *(s32 *)(data + 0xF4C);
    dz = target[2] - *(s32 *)(data + 0xF54);
    aspect = FX_Div(0x4000, 0x3000);
    angle = Camera_GetPerspectiveAngle(*(void **)(*(char **)(*(char **)data + 0x104) + 0x24));
    dist = Camera_GetDistance(*(void **)(*(char **)(*(char **)data + 0x104) + 0x24));
    sub_02020E10(angle, dist, aspect, &w, &h);
    w = FX_Div(w, 0x100000);
    if (dz <= 0) {
        h = FX_Div(h, 0xBE8D0);
    } else {
        h = FX_Div(h, 0xBE811);
    }

    sign = 0x1000;
    if (dx < 0) {
        sign = -0x1000;
        dx = FxMul_ov01_021EC31C(dx, -0x1000);
    }
    dx = FX_Div(dx, w);
    if (sign < 0) {
        dx = FxMul_ov01_021EC31C(dx, sign);
    }

    sign = 0x1000;
    if (dz < 0) {
        sign = -0x1000;
        dz = FxMul_ov01_021EC31C(dz, -0x1000);
    }
    dz = FX_Div(dz, h);
    if (sign < 0) {
        dz = FxMul_ov01_021EC31C(dz, sign);
    }

    if (dx + dz != 0) {
        *(s32 *)(data + 0xF4C) = target[0];
        *(s32 *)(data + 0xF50) = target[1];
        *(s32 *)(data + 0xF54) = target[2];
    }
    *outX = dx;
    *outY = dz;
}
