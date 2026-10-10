#include "global.h"

u8 ov96_021F65D8(u8 *param0) {
    if (*(u16 *)(param0 + 0x24) < 5) {
        *(u16 *)(param0 + 0x24) = *(u16 *)(param0 + 0x24) + 1;
    }
    *(u16 *)(param0 + 0x20) = *(u16 *)(param0 + 0x20) + *(u16 *)(param0 + 0x24);
    if (*(u16 *)(param0 + 0x20) > 999) {
        *(u16 *)(param0 + 0x20) = 999;
    }
    return *(u16 *)(param0 + 0x24);
}
