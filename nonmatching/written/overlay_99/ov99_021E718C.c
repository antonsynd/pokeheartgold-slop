#include "global.h"

extern u16 ov98_0221F024(const u8 *dexFlags);

u16 ov99_021E718C(u8 *data) {
    return ov98_0221F024(*(const u8 **)(*(u8 **)(data + 0x10) + 4));
}
