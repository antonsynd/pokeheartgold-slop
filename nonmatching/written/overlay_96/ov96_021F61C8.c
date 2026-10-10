#include "global.h"

void NNS_G3dGeBufferOP_N(u32 op, const u32 *args, u32 num);
void NNS_G3dGlbFlushP(void);

extern u32 ov96_0221C0E8[3];
extern s32 ov96_0221DC10[2];
extern s32 ov96_0221E5A0;

void ov96_021F61C8(u8 *param0) {
    u32 scale[3];
    u32 cmd[2];
    s32 i;
    float f;
    s32 v;
    u32 one;
    u32 arg;

    scale[0] = ov96_0221C0E8[0];
    scale[1] = ov96_0221C0E8[1];
    scale[2] = ov96_0221C0E8[2];
    NNS_G3dGeBufferOP_N(0x1b, scale, 3);
    arg = 0x310081;
    NNS_G3dGeBufferOP_N(0x29, &arg, 1);
    arg = 0xbf;
    NNS_G3dGeBufferOP_N(0x20, &arg, 1);
    NNS_G3dGlbFlushP();
    arg = 3;
    NNS_G3dGeBufferOP_N(0x40, &arg, 1);
    ov96_0221E5A0 = 0;
    ov96_0221DC10[1] = 10;
    ov96_0221DC10[0] = 0x14;
    cmd[0] = 0xe000;
    cmd[1] = 0;
    NNS_G3dGeBufferOP_N(0x23, cmd, 2);
    cmd[0] = 0xE800E000;
    cmd[1] = 0;
    NNS_G3dGeBufferOP_N(0x23, cmd, 2);
    for (i = 1; i <= 0x80; i++) {
        f = (float)(4.0 * ((double)(float)i - 64.0) / 128.0);
        v = (s32)(4096.0f * f);
        cmd[0] = (u16)v | ((u32)*(s32 *)(param0 + 0x1a0 + (i - 1) * 4) << 16);
        cmd[1] = 0;
        NNS_G3dGeBufferOP_N(0x23, cmd, 2);
        v = (s32)(4096.0f * f);
        cmd[0] = (u16)v | 0xe8000000;
        cmd[1] = 0;
        NNS_G3dGeBufferOP_N(0x23, cmd, 2);
        one = (u16)((ov96_0221DC10[0] << 10) | (ov96_0221DC10[1] << 5) | ov96_0221E5A0);
        NNS_G3dGeBufferOP_N(0x20, &one, 1);
        ov96_0221E5A0 = (ov96_0221E5A0 + 1) % 31;
        ov96_0221DC10[1] = (ov96_0221DC10[1] + 1) % 31;
        ov96_0221DC10[0] = (ov96_0221DC10[0] + 1) % 31;
    }
    cmd[0] = 0xe000;
    cmd[1] = 0;
    NNS_G3dGeBufferOP_N(0x23, cmd, 2);
    cmd[0] = 0xE800E000;
    cmd[1] = 0;
    NNS_G3dGeBufferOP_N(0x23, cmd, 2);
    NNS_G3dGeBufferOP_N(0x41, NULL, 0);
}
