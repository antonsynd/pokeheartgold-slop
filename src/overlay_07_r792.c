#include "global.h"

#include "seal_case.h"
#include "unk_02091054.h"

typedef struct Ov07SealIcons {
    u8 icons[7];
} Ov07SealIcons;

extern const Ov07SealIcons ov07_0223777C;

int ov07_02234510(SEAL *seal);

u8 ov07_02234530(SEAL *seal) {
    Ov07SealIcons table = ov07_0223777C;
    int idx;

    if (sub_0209109C((u8)SealOnCapsuleGetID(seal)) == FALSE) {
        idx = ov07_02234510(seal);
        if (idx >= 0x38) {
            idx = 3;
        } else {
            idx = (idx + 1) / 20;
            if (idx >= 3) {
                idx = 3;
            }
        }
        return table.icons[idx];
    }
    return table.icons[1];
}
