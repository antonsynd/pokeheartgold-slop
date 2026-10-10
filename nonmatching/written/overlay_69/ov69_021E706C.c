#include "global.h"
#include "nnsys.h"

typedef struct UnkStruct_ov69_021E706C {
    /* 0x0000 */ u8 filler_0000[0xC2EC];
    /* 0xC2EC */ s32 lightX;
    /* 0xC2F0 */ s32 lightY;
    /* 0xC2F4 */ s32 lightZ;
} UnkStruct_ov69_021E706C;

void ov69_021E706C(UnkStruct_ov69_021E706C *work) {
    s32 x;
    s32 y;
    s32 z;

    work->lightX = 0;
    work->lightY = 0;
    work->lightZ = -4095;
    x = work->lightX;
    y = work->lightY;
    z = work->lightZ;
    NNS_G3dGlbLightVector(0, x, y, z);
}
