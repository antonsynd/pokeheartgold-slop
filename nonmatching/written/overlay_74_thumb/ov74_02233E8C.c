#include "global.h"

extern void ov74_02233DBC(int sectorId);

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

extern UnkStruct_ov74_0223D33C ov74_0223D33C;
extern UnkStruct_sPmAgbCartridgeSpec sPmAgbCartridgeSpec;

BOOL ov74_02233E8C(void) {
    if (ov74_0223D33C.unk_04 == 0) {
        if (ov74_0223D33C.unk_00 == 1) {
            sPmAgbCartridgeSpec.slot = 0;
        } else {
            sPmAgbCartridgeSpec.slot = 1;
        }
        ov74_0223D33C.unk_10++;
    } else {
        return FALSE;
    }

    if (sPmAgbCartridgeSpec.slot < 0) {
        return FALSE;
    }

    ov74_02233DBC(ov74_0223D33C.unk_04);
    return TRUE;
}
