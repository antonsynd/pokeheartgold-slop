#include "global.h"

extern const u8 ov85_021EA8EA[];
extern const u8 ov85_021EA8EB[];

extern void GX_LoadOBJPltt(const void *pSrc, u32 offset, u32 szByte);
extern void ov85_021E9E58(void *p);

void ov85_021E8BB0(void *param0, u8 *param1) {
    u8 *v1 = param1 + 0x1c;

    if (*(int *)(param1 + 0x1c) != 0) {
        int v3 = *(int *)(v1 + 8);
        int idx = *(int *)(v1 + 4);

        if (v3 > ov85_021EA8EA[idx * 2]) {
            u8 *raw;
            int idx2;

            *(int *)(v1 + 8) = 0;
            idx2 = *(int *)(v1 + 4) + 1;
            *(int *)(v1 + 4) = idx2;
            if (ov85_021EA8EB[idx2 * 2] == 0xff) {
                *(int *)(v1 + 4) = 0;
            }
            raw = *(u8 **)(*(u8 **)(v1 + 0x10) + 0xc);
            GX_LoadOBJPltt(raw + ov85_021EA8EB[*(int *)(v1 + 4) * 2] * 32, 0, 0x20);
        } else {
            *(int *)(param1 + 0x24) = *(int *)(param1 + 0x24) + 1;
        }
        ov85_021E9E58(param1 + 0x3b4);
    }
}
