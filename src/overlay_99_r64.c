#include "global.h"

typedef struct Ov99_021E71B0 {
    u8 filler_000[0x14];
    u16 unk014[0x1F0];
    u32 unk3F4_0 : 14;
    u32 unk3F4_14 : 5;
    u32 unk3F4_19 : 8;
    u32 unk3F4_27 : 5;
} Ov99_021E71B0;

u16 ov99_021E71B0(Ov99_021E71B0 *a0) {
    int idx = a0->unk3F4_19 + a0->unk3F4_14 * 30;

    if (idx >= 0x1ED) {
        return 0;
    }
    return a0->unk014[idx];
}
