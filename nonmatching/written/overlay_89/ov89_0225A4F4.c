#include "global.h"

typedef int (*ov89_0225A4F4_Fn)(void *, void *, void *, u32);

typedef struct ov89_0225CDB0_Entry {
    ov89_0225A4F4_Fn unk_00;
    ov89_0225A4F4_Fn unk_04;
    u32 unk_08;
} ov89_0225CDB0_Entry;

extern const ov89_0225A4F4_Fn ov89_0225CD10[];
extern const ov89_0225CDB0_Entry ov89_0225CDB0[];

extern void ov89_0225BE84(void *p0, void *p1, int a, int b);
extern void ov89_0225AC24(void *p0, void *obj, int idx);

void ov89_0225A4F4(u8 *param0, void *camera, int param2, int param3) {
    int i;
    u8 *obj;
    u32 word;
    u32 b2;
    u32 sel;
    ov89_0225A4F4_Fn fn;

    if (param0[0x73d] != 0) {
        ov89_0225BE84(param0, param0 + 0xb0, param2, param3);
    }

    if (param0[0x73c] != 0) {
        fn = ov89_0225CD10[param0[0x73c]];
        if (fn(param0, param0, camera, (u32)fn) == 1) {
            param0[0x73c] = 0;
        }
    }

    for (i = 0; i < 0x80; i++) {
        obj = *(u8 **)(param0 + i * 4 + 0xb4);
        if (obj != NULL) {
            word = *(u32 *)(obj + 0x240);
            if (((word >> 8) & 0xff) == 0) {
                b2 = (word >> 16) & 0xff;
                if (b2 != 0) {
                    word = *(u32 *)(obj + 0x240);
                    *(u32 *)(obj + 0x240) = (word & 0xffff00ff) | (b2 << 8);
                }
            }
            word = *(u32 *)(obj + 0x240);
            sel = (word >> 8) & 0xff;
            fn = ov89_0225CDB0[sel].unk_00;
            if (fn(param0, obj, (void *)fn, sel * 0xc) == 1) {
                ov89_0225AC24(param0, obj, i);
            }
        }
    }
}
