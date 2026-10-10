#include "global.h"

extern u8 *ov74_02231154(void);
extern u32 ov74_0222FE5C(u8 *bssid);
extern u16 ov74_0222FE68(u8 *bssid);

BOOL ov74_0223026C(u8 *scanInfo, u8 *bssDesc) {
    u8 *entries = ov74_02231154();
    u32 idA = ov74_0222FE5C(bssDesc + 4);
    u16 idB = ov74_0222FE68(bssDesc + 4);
    int i;
    int j;

    for (i = 0; i < 8; i++) {
        u8 *entry = entries + i * 0x38;

        if (*(u32 *)entry == idA && *(u16 *)(entry + 0x34) == idB) {
            return TRUE;
        }
        if (*(u32 *)entry == 0) {
            *(u32 *)entry = idA;
            for (j = 0; j < 12; j++) {
                *(u16 *)(entry + 4 + j * 2) = *(u16 *)(bssDesc + 0x58 + j * 2);
            }
            for (j = 0; j < 12; j++) {
                *(u16 *)(entry + 0x1c + j * 2) = *(u16 *)(bssDesc + 0x70 + j * 2);
            }
            *(u16 *)(entry + 0x34) = idB;
            *(u8 *)(entry + 0x36) = *(u16 *)(scanInfo + 0x12);
            return TRUE;
        }
    }
    return FALSE;
}
