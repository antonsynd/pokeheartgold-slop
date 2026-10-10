#include "global.h"

typedef struct UnkStruct_ov80_0223947C {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_ov80_0223947C;

extern UnkStruct_ov80_0223947C *sub_02096864(void *frontier);
extern void ov42_02228FE0(void *a, u16 b, u8 c, u32 heapId);

void ov80_0223947C(u8 *param0, const UnkStruct_ov80_0223947C *param1) {
    UnkStruct_ov80_0223947C *v0 = sub_02096864(*(void **)(param0 + 8));
    int i;

    for (i = 0; i < 24; i++) {
        if (v0[i].unk_00 == param1->unk_00) {
            return;
        }
    }
    for (i = 0; i < 24; i++) {
        if (v0[i].unk_00 == 0xffff) {
            break;
        }
    }
    GF_ASSERT(i != 24);
    v0[i].unk_00 = param1->unk_00;
    v0[i].unk_02 = param1->unk_02;
    ov42_02228FE0(*(void **)(param0 + 0x20), param1->unk_00, (u8)param1->unk_02, 0x65);
}
