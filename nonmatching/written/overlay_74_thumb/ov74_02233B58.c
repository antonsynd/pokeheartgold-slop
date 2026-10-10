#include "global.h"

extern u16 ov74_02233A88(const u32 *data, u32 size);
extern void ov74_02233AB8(int sector, void *dest);
extern u16 ov74_02233ACC(u32 sectorId);
extern void DC_FlushRange(const void *ptr, u32 nBytes);

extern u8 ov74_0223D33C[];

typedef struct {
    u8 filler_00[0xFF4];
    u16 sectorId;
    u16 checksum;
    u32 signature;
    u32 saveCounter;
} UnkStruct_ov74_02233B58;

u16 ov74_02233B58(int param0, UnkStruct_ov74_02233B58 *buf, u32 *saveCounterOut) {
    u32 mask = 0;
    u32 found = 0;
    int i;

    *saveCounterOut = 0;
    *(u32 *)(ov74_0223D33C + 4) = 0;

    for (i = 0; i < 14; i++) {
        ov74_02233AB8(i % 14 + param0 * 14, buf);
        DC_FlushRange(buf, 0x1000);

        if (buf->signature == 0x08012025) {
            found = 1;
            if (buf->checksum == ov74_02233A88((const u32 *)buf, ov74_02233ACC(buf->sectorId))) {
                *saveCounterOut = buf->saveCounter;
                mask |= 1 << buf->sectorId;
            }
        }
    }

    if (found) {
        if (mask == 0x3FFF) {
            return 1;
        }
        return 0xFF;
    }
    return 0;
}
