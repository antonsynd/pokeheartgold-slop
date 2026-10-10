#include "global.h"

typedef struct UnkStruct_ov90_02258AA8 {
    u32 unk_00[4];
    u8 unk_10[4];
} UnkStruct_ov90_02258AA8;

// The original keeps v0 (4 bytes) at the bottom of its 24-byte frame (4 bytes of locals and the five pushed registers),
// and indexes it without a bounds check: an index of 24 or more is in the caller's frame, at entry_sp - 24 + i.
// This C uses that same absolute array. clang's frame pointer is entry_sp - 8; the words of its own frame that lie in
// entry_sp - 24 .. entry_sp (spilled parameters, saved r7 and lr) are saved first and put back at the end, and guard
// keeps its other locals below that range.
void ov90_02258AA8(UnkStruct_ov90_02258AA8 *param0, u32 param1) {
    u8 guard[16];
    u32 snap[6];
    UnkStruct_ov90_02258AA8 *base;
    u32 count;
    u8 *v0;
    u8 *p;
    int v1;
    u32 key;
    u32 v3;
    u32 entrySp;
    int i;

    base = param0;
    count = param1;
    entrySp = (u32)__builtin_frame_address(0) + 8;
    v0 = (u8 *)(entrySp - 24);
    for (i = 0; i < 6; i++) {
        snap[i] = ((u32 *)v0)[i];
    }

    for (v1 = 0; (u32)v1 < count; v1++) {
        key = base->unk_00[v1];
        p = v0 + v1;
        while (p > v0) {
            if (key <= base->unk_00[p[-1]]) {
                break;
            }
            *p = p[-1];
            p--;
        }
        *p = v1;
    }

    for (v1 = 0; (u32)v1 < count; v1++) {
        v3 = v1;
        if (v1 > 0) {
            if (base->unk_00[v0[v1]] == base->unk_00[v0[v1 - 1]]) {
                v3 = base->unk_10[v0[v1 - 1]];
            }
        }
        base->unk_10[v0[v1]] = v3;
    }

    for (i = 0; i < 6; i++) {
        ((u32 *)v0)[i] = snap[i];
    }
}
