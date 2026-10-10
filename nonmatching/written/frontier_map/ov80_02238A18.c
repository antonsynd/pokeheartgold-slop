#include "global.h"

typedef struct UnkStruct_ov80_02238A18_Obj {
    u16 unk_00;
    u8 unk_02;
    u8 unk_03;
} UnkStruct_ov80_02238A18_Obj;

extern UnkStruct_ov80_02238A18_Obj *sub_02096864(void *frontier);
extern u8 *sub_0209686C(void *frontier, int idx);
extern void ov42_02228FE0(void *a, u16 b, u8 c, u32 heapId);
extern void ov80_02239900(void *a, void *b);
extern void ov80_02239510(void *a, void *b, int c);
extern void ov80_02239828(void *a);

void ov80_02238A18(u8 *param0) {
    int i;
    UnkStruct_ov80_02238A18_Obj *v1 = sub_02096864(*(void **)(param0 + 8));
    u8 buf[0x20];

    for (i = 0; i < 24; i++) {
        if (v1[i].unk_00 != 0xffff) {
            ov42_02228FE0(*(void **)(param0 + 0x20), v1[i].unk_00, v1[i].unk_02, 0x65);
        }
    }
    for (i = 0; i < 32; i++) {
        u8 *v2 = sub_0209686C(*(void **)(param0 + 8), i);
        if (*(u16 *)(v2 + 0xc) != 0xffff) {
            ov80_02239900(v2, buf);
            ov80_02239510(param0, buf, i);
        }
    }
    ov80_02239828(param0);
}
