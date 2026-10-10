#include "global.h"

void ov106_021E5A44(u8 *data) {
    u32 i;
    for (i = 0; i < 4; i++) {
        s16 *v = (s16 *)(data + i * 6);
        NNS_G3dGlbLightVector((GXLightId)i, v[0], v[1], v[2]);
        NNS_G3dGlbLightColor((GXLightId)i, *(u16 *)(data + 0x18 + i * 2));
    }
}
