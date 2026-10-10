#include "global.h"

extern void ov01_021F5568(s32 idx, void *landDataMan);

void ov01_021F55F4(s32 reset0, s32 reset1, s32 kept0, s32 kept1, u8 *landDataMan) {
    void **maps;
    void *tmp0, *tmp1;
    ov01_021F5568(reset0, landDataMan);
    ov01_021F5568(reset1, landDataMan);
    maps = (void **)(landDataMan + 0x90);
    tmp0 = maps[reset0];
    tmp1 = maps[reset1];
    maps[reset0] = maps[kept0];
    maps[reset1] = maps[kept1];
    maps[kept0] = tmp0;
    maps[kept1] = tmp1;
}
