#include "global.h"

extern u16 ov74_02233A88(const u32 *data, u32 size);
extern u16 ov74_02233ACC(u32 sectorId);
extern const void *ov74_02233B04(u32 sectorId);
extern void ov74_02233E50(u16 result);
extern u32 CTRDG_WriteAndVerifyAgbFlashAsync(u32 sector, u8 *src, u32 verifyNum, void (*callback)(u16));

typedef struct {
    s32 unk_00;
    s32 unk_04;
    u8 *buffer;
    s32 unk_0C;
    u32 unk_10;
    s32 unk_14;
} UnkStruct_ov74_0223D33C;

typedef struct {
    void *spec;
    s32 slot;
} UnkStruct_sPmAgbCartridgeSpec;

typedef struct {
    u8 filler_00[0xFF4];
    u16 sectorId;
    u16 checksum;
    u32 signature;
    u32 saveCounter;
} UnkStruct_ov74_02233DBC;

extern UnkStruct_ov74_0223D33C ov74_0223D33C;
extern UnkStruct_sPmAgbCartridgeSpec sPmAgbCartridgeSpec;

void ov74_02233DBC(int sectorId) {
    UnkStruct_ov74_02233DBC *buf = (UnkStruct_ov74_02233DBC *)ov74_0223D33C.buffer;
    u32 size;

    ov74_0223D33C.unk_14 = 1;

    MIi_CpuClear32(0, buf, 0x1000);
    size = ov74_02233ACC(sectorId);
    MIi_CpuCopy32(ov74_02233B04(sectorId), buf, size);

    buf->saveCounter = ov74_0223D33C.unk_10;
    buf->sectorId = (u16)sectorId;
    buf->signature = 0x08012025;
    buf->checksum = ov74_02233A88((const u32 *)buf, ov74_02233ACC(sectorId));

    {
        u8 sector = (u8)(((sectorId + ov74_0223D33C.unk_0C + 1) % 14) + 14 * sPmAgbCartridgeSpec.slot);
        CTRDG_WriteAndVerifyAgbFlashAsync(sector, (u8 *)buf, 4, ov74_02233E50);
    }
}
