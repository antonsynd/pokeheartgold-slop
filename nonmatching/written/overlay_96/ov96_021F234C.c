#include "global.h"

extern u8 _0221DCA0[];

u8 ov96_021F27A8(u8 *stack);
u8 ov96_021F2780(u8 *stack, u32 value);
fx32 ov96_021F2814(VecFx32 *a, VecFx32 *b);
void ov96_021F27B8(VecFx32 *a, VecFx32 *b, VecFx32 *out);

typedef struct UnkStruct_ov96_021F234C_Path {
    VecFx32 *ptr;
    u8 list[12];
    u16 count;
    u16 idx;
    VecFx32 vecs[12];
} UnkStruct_ov96_021F234C_Path; // size: 0xa4

#define CELL(base, i) ((base) + ((i) / 3) * 0x1b0 + ((i) % 3) * 0x90)

// The original keeps its working arrays in a 0xF7C-byte frame and indexes some of them with values it never range
// checks (an index popped from a stub-filled stack), so the arrays live in a frame image at the original's stack
// address: vf is the original's sp. Offsets used below:
//   0x64 visited[12], 0x70 order[12], 0x7c deltas[12], 0x10c table[12][12], 0x7cc paths[12]
static void ov96_021F234C_Body(u8 *vf, u8 *alloc) {
    u8 *visited = vf + 0x64;
    u8 *order = vf + 0x70;
    VecFx32 *deltas = (VecFx32 *)(vf + 0x7c);
    VecFx32(*table)[12] = (VecFx32(*)[12])(vf + 0x10c);
    UnkStruct_ov96_021F234C_Path *paths = (UnkStruct_ov96_021F234C_Path *)(vf + 0x7cc);
    u8 stack[16] __attribute__((aligned(4)));
    VecFx32 dir;
    VecFx32 tmp3C;
    VecFx32 tmp30;
    UnkStruct_ov96_021F234C_Path *path;
    u8 *base = alloc + 0x20;
    u8 *e;
    u8 *c;
    u8 *row;
    u8 *entry;
    u8 *other;
    u8 n;
    u8 i;
    u8 j;
    u8 k;
    u8 w;
    u8 cand;
    u8 first;
    u32 count;
    s32 cosv;
    s32 dotv;
    int r;

    n = 0;
    for (i = 0; i < 12; i++) {
        e = CELL(base, i);
        if (e[0x41] != 0 && *(s32 *)(e + 0x18) == 1) {
            order[n] = i;
            n = n + 1;
        }
        VEC_Subtract((VecFx32 *)(e + 0x1c), (VecFx32 *)(e + 0x28), &deltas[i]);
    }
    if (n == 0) {
        return;
    }
    MIi_CpuClear32(0, (u32 *)table, 0x6c0);
    k = 0;
    if (n > 0) {
        cosv = FX_SinCosTable_[0x401];
        do {
            w = order[k];
            *(u32 *)(vf + 0x60) = 0;
            MI_CpuFill8(paths, 0, 0x7b0);
            for (j = 0; j < 12; j++) {
                paths[j].ptr = &table[k][j];
            }
            MI_CpuFill8(visited, 0, 12);
            dir = *(VecFx32 *)(alloc + (w / 3) * 0x1b0 + (w % 3) * 0x90 + 0x54);
            first = 1;
            while (1) {
                visited[w] = 1;
                if (first != 0) {
                    path = &paths[w];
                    path->count = 0;
                    path->idx = 0;
                    row = _0221DCA0 + w * 0xc0;
                    for (j = 0; j < 12; j++) {
                        entry = row + j * 16;
                        if (*(s32 *)entry != 0) {
                            other = *(u8 **)(entry + 8);
                            VEC_Subtract((VecFx32 *)(other + 0x28), (VecFx32 *)(alloc + 0x48 + (w / 3) * 0x1b0 + (w % 3) * 0x90), &tmp3C);
                            if (VEC_DotProduct(&dir, &tmp3C) > 0) {
                                path->list[path->count] = j;
                                path->vecs[path->count] = tmp3C;
                                path->count = path->count + 1;
                            }
                        }
                    }
                    VEC_Add(paths[w].ptr, &dir, paths[w].ptr);
                }
                path = &paths[w];
                first = 0;
                if (path->idx >= path->count) {
                    visited[w] = 0;
                    w = ov96_021F27A8(stack);
                } else {
                    cand = path->list[path->idx];
                    if (visited[cand] != 0) {
                        path->idx = path->idx + 1;
                    } else {
                        r = ov96_021F2780(stack, w);
                        if (r == 0xff) {
                            break;
                        }
                        dotv = ov96_021F2814(path->ptr, &path->vecs[path->idx]);
                        if (dotv >= cosv) {
                            dir = *path->ptr;
                        } else {
                            ov96_021F27B8(path->ptr, &path->vecs[path->idx], &dir);
                        }
                        first = 1;
                        count = path->idx;
                        path->idx = count + 1;
                        w = path->list[count];
                    }
                }
                if (w == 0xff) {
                    break;
                }
            }
            k = k + 1;
        } while (k < n);
    }
    k = 0;
    if (n > 0) {
        do {
            for (i = 0; i < 12; i++) {
                c = CELL(base, i);
                VEC_Add((VecFx32 *)(c + 0x28), &table[k][i], (VecFx32 *)(c + 0x28));
                if (VEC_Mag(&table[k][i]) != 0) {
                    if (c[0x41] == 0) {
                        *(VecFx32 *)(c + 0x1c) = *(VecFx32 *)(c + 0x28);
                    }
                }
            }
            w = order[k];
            e = CELL(base, w);
            if (*(u16 *)(e + 0x8e) == 0) {
                for (r = 0; r < 4; r++) {
                    if (w == alloc[r + 0x720]) {
                        alloc[r + 0x720] = 0xc;
                        break;
                    }
                }
                if (*(s32 *)(e + 0x18) != 1) {
                    GF_AssertFail();
                }
                e[0x44] = 1;
                e[0x45] = 0x3c;
                *(VecFx32 *)(e + 0x1c) = *(VecFx32 *)(e + 0x28);
                *(s32 *)(e + 0x34) = 0;
                *(s32 *)(e + 0x38) = 0;
                e[0x41] = 0;
            }
            k = k + 1;
        } while (k < n);
    }
    for (i = 0; i < 12; i++) {
        c = CELL(base, i);
        VEC_Subtract((VecFx32 *)(c + 0x1c), (VecFx32 *)(c + 0x28), &tmp30);
        if (VEC_DotProduct(&deltas[i], &tmp30) < 0) {
            *(VecFx32 *)(c + 0x1c) = *(VecFx32 *)(c + 0x28);
        }
    }
}

void ov96_021F234C(u8 *param0) {
    // Keeps the helper's own frame below the original's frame image.
    volatile u8 reserve[0xFA0];
    u8 *entrySp = (u8 *)__builtin_frame_address(0) + 8;

    reserve[0] = 0;
    ov96_021F234C_Body(entrySp - 0xF90, param0);
}
