#include "global.h"

extern u8 ov112_021FFA18[];
extern u8 ov112_021FFA20[];

u16 ov112_021E5900(const u8 *data, u32 len);
void CARD_SpiWaitWriteRange(void *buf, u32 len);

#pragma optimization_level 2
void ov112_021E59B4(const u8 *data, int len, u8 a2, u8 a3, u32 a4) {
    int i;
    u8 *dst;
    u16 sum;
    u8 *header;

    header = ov112_021FFA18;
    header[0] = a2;
    header[1] = a3;
    *(u32 *)&header[4] = a4;
    header[2] = 0;
    header[3] = 0;
    dst = ov112_021FFA20;
    for (i = 0; i < len; i++) {
        *dst++ = *data++;
    }
    len = (u8)(len + 8);
    sum = ov112_021E5900(ov112_021FFA18, len);
    header[2] = sum;
    header[3] = sum >> 8;
    for (i = 0; i < len; i++) {
        ov112_021FFA18[i] ^= 0xAA;
    }
    CARD_SpiWaitWriteRange(ov112_021FFA18, len);
}
