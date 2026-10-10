#include "global.h"
#include "system.h"

typedef struct UnkStruct_ov113_021E5F48 {
    u8 filler0[0x14];
    u32 menuInputState;
} UnkStruct_ov113_021E5F48;

extern int ov113_021E5ED0(UnkStruct_ov113_021E5F48 *data, int direction);

int ov113_021E5F48(UnkStruct_ov113_021E5F48 *data) {
    int keys;
    if (gSystem.newKeys & 0xCF3) {
        data->menuInputState = 0;
    }
    keys = gSystem.newKeys;
    if (keys & 2) {
        return ov113_021E5ED0(data, 0);
    }
    if (keys & 0x40) {
        return ov113_021E5ED0(data, 1);
    }
    if (keys & 0x80) {
        return ov113_021E5ED0(data, 2);
    }
    return 2;
}
