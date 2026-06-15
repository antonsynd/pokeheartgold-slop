#include "unk_02026DE0.h"

#include "global.h"

u16 sub_02026DE0(UnkStruct_02026DE0 *a, u32 val) {
    u32 i;
    u16 *p;
    u8 buf[2];
    i = 0;
    if (a->unk0C - 1 != 0) {
        p = a->unk00;
        do {
            if (p[1] > val) {
                break;
            }
            i++;
            p++;
        } while (i < a->unk0C - 1);
    }
    buf[0] = a->unk04[i];
    buf[1] = a->unk08[i];
    return buf[0] | (buf[1] << 8);
}

void sub_02026E18(u32 *src, UnkStruct_02026DE0 *dst) {
    dst->unk0C = *src;
    dst->unk00 = (u16 *)(src + 1);
    dst->unk04 = (u8 *)(dst->unk00 + dst->unk0C);
    dst->unk08 = dst->unk04 + dst->unk0C;
}
