#include "global.h"

typedef struct Ov112_021FF9E0 {
    u8 filler_00[0x2C];
    int unk2C;
} Ov112_021FF9E0;

extern Ov112_021FF9E0 _021FF9E0;
extern u8 ov112_021FFA18[];

#pragma optimization_level 2
BOOL ov112_021E5A84(u32 mode) {
    u32 i;
    u8 buffer[4];

    if (mode == 1) {
        if (_021FF9E0.unk2C != 0) {
            return TRUE;
        }
        if (ov112_021FFA18[0] != 0xFC) {
            return TRUE;
        }
        return FALSE;
    }
    switch (mode) {
    case 2:
    case 3:
        for (i = 0; i < 4; i++) {
            buffer[i] = 0;
        }
        for (i = 0; i < mode; i++) {
            buffer[i] = 1;
        }
        return TRUE;
    }
    return FALSE;
}
