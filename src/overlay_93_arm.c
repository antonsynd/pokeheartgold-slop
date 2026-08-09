#include "global.h"

// This file is ARM code, not Thumb. global.h pulls in <nitro/code16.h>
// (#pragma thumb on), so code32.h has to come after it -- keep clang-format
// from sorting it back above global.h.
// clang-format off
#include <nitro/code32.h>
// clang-format on

typedef struct Ov93Node {
    s32 unk_00;
    s32 unk_04;
    s32 unk_08;
    s32 unk_0C;
    s32 unk_10;
    s32 unk_14;
    s32 unk_18;
    s32 unk_1C;
} Ov93Node;

typedef struct Ov93Nodes {
    u8 padding_000[0xC];
    Ov93Node unk_00C[8];
    Ov93Node unk_10C[8];
} Ov93Nodes;

void ov93_0225EF0C(Ov93Nodes *nodes);
void ov93_0225EF5C(Ov93Nodes *nodes);

void ov93_0225EF0C(Ov93Nodes *nodes) {
    s32 i;
    s32 v;

    for (i = 0, v = 0; i < 8; i++) {
        nodes->unk_00C[i].unk_00 = 0;
        nodes->unk_00C[i].unk_04 = v;
        nodes->unk_00C[i].unk_08 = 0;
        nodes->unk_00C[i].unk_0C = v - 0x10000;
        nodes->unk_00C[i].unk_10 = 0x80000;
        nodes->unk_00C[i].unk_14 = v;
        nodes->unk_00C[i].unk_18 = 0x80000;
        nodes->unk_00C[i].unk_1C = v - 0x10000;
        v -= 0x10000;
    }
}

void ov93_0225EF5C(Ov93Nodes *nodes) {
    s32 i;
    s32 v;

    for (i = 0, v = 0; i < 8; i++) {
        nodes->unk_10C[i].unk_00 = 0;
        nodes->unk_10C[i].unk_04 = v;
        nodes->unk_10C[i].unk_08 = 0;
        nodes->unk_10C[i].unk_0C = v + 0x10000;
        nodes->unk_10C[i].unk_10 = 0x80000;
        nodes->unk_10C[i].unk_14 = v;
        nodes->unk_10C[i].unk_18 = 0x80000;
        nodes->unk_10C[i].unk_1C = v + 0x10000;
        v += 0x10000;
    }
}
