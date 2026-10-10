#include "global.h"

typedef struct UnkStruct_ov93_02262130 {
    u8 filler_000[0x180];
    u8 unk_180[6];
    u8 unk_186[6];
    u8 filler_18C[6];
    u8 unk_192[6];
    s8 unk_198[6];
    u8 filler_19E;
    u8 unk_19F;
} UnkStruct_ov93_02262130;

int ov93_02262130(UnkStruct_ov93_02262130 *param0) {
    int i;
    int idx;
    int prev;
    int wasPrev;
    int oldPos;
    int target;
    int target2;

    if (param0->unk_19F > 6) {
        return 1;
    }

    prev = 0;
    for (i = 0, idx = 5; i < 6; i++, idx--) {
        wasPrev = prev;

        if (param0->unk_198[idx] > 0) {
            param0->unk_198[idx]--;
            prev = 0;
            continue;
        }

        if (param0->unk_192[idx] > 1 && param0->unk_180[idx] == param0->unk_186[idx]) {
            prev = 1;
            continue;
        }

        prev = 0;
        oldPos = param0->unk_180[idx];
        param0->unk_180[idx] = oldPos + 0x17;
        target = param0->unk_186[idx];
        target2 = target + 0xA0;

        if ((oldPos <= target && param0->unk_180[idx] >= target) || (oldPos <= target2 && param0->unk_180[idx] >= target2)) {
            if (param0->unk_192[idx] < 1) {
                param0->unk_192[idx]++;
            } else if (idx == 5 || wasPrev == 1) {
                param0->unk_192[idx]++;
                param0->unk_180[idx] = param0->unk_186[idx];
                param0->unk_19F++;
                if (param0->unk_19F >= 6) {
                    return 1;
                }
            }
        }

        param0->unk_180[idx] = param0->unk_180[idx] % 0xA0;
    }

    return 0;
}
