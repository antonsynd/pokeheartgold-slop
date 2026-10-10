#include "global.h"

extern u32 IdentifyPmAgbCartridge(const void *mappings, u32 count);
extern int PmAgbCartridgeHasFlash(void);
extern void CTRDG_CpuCopy32(const void *src, void *dest, u32 size);

extern u8 ov74_0223D33C[];
extern u8 *sPmAgbCartridgeSpec;
extern u8 sPmAgbRomCodeMappings[];
extern u8 sPmAgbRomHeader[];

u32 PmAgbCartridgeGetOffsets(u32 param0) {
    *(u32 *)(ov74_0223D33C + 8) = param0;

    if (sPmAgbCartridgeSpec != NULL) {
        return 12;
    }

    {
        u32 result = IdentifyPmAgbCartridge(sPmAgbRomCodeMappings, 30);
        if (result != 0) {
            return result;
        }
    }

    if (sPmAgbCartridgeSpec[4] == 0) {
        u8 *header = sPmAgbRomHeader + 0x68;
        *(u32 *)(header + 0x20) = 0x890;
        *(u32 *)(header + 0x24) = 0x3AC0;
        *(u32 *)(ov74_0223D33C + 0x68) = 0x1220;
        *(u32 *)(header + 0x30) = 9;
    } else {
        CTRDG_CpuCopy32((const void *)0x08000100, sPmAgbRomHeader, 0xFC);
    }

    if (PmAgbCartridgeHasFlash() == 0) {
        return 3;
    }
    return 0;
}
