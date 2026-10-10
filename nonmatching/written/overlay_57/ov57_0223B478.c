#include "global.h"

#include "system.h"

BOOL ov57_0223B478(int *param0) {
    int keys;
    int v0;

    keys = gSystem.newAndRepeatedKeys;
    if (keys & 0x10) {
        v0 = *param0 + 1;
        *param0 = v0;
        *param0 = v0 % 12;
    } else if (keys & 0x20) {
        v0 = *param0;
        if (v0 > 0) {
            *param0 = v0 - 1;
        } else {
            *param0 = 11;
        }
    } else if (keys & 0x40) {
        v0 = *param0;
        if (v0 / 4 == 0) {
            return FALSE;
        }
        v0 = v0 - 4;
        *param0 = v0;
        *param0 = v0 % 12;
    } else if (keys & 0x80) {
        v0 = *param0;
        if (v0 / 4 == 2) {
            return FALSE;
        }
        v0 = v0 + 4;
        *param0 = v0;
        *param0 = v0 % 12;
    } else {
        return FALSE;
    }
    return TRUE;
}
