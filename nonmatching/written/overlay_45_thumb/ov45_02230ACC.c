#include "global.h"

typedef struct UnkStruct_ov45_02230ACC {
    u8 unk_00;
    u8 padding_01[3];
    void *unk_04;
    void *unk_08;
    u8 padding_0C[0x78];
    u8 unk_84;
    u8 unk_85;
    u16 unk_86;
    u32 unk_88;
} UnkStruct_ov45_02230ACC;

typedef struct UnkStruct_ov45_02230ACC_Pos {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_ov45_02230ACC_Pos;

typedef void (*UnkFunc_ov45_02230ACC)(UnkStruct_ov45_02230ACC *, void *, u32, u32);

extern UnkFunc_ov45_02230ACC const ov45_02254F28[];

extern u32 ov42_02228188(void *a, int b);
extern int ov45_02230DC4(u8 a);
extern int sub_02023EF4(void *a);
extern int sub_02023F70(void *a);
extern UnkStruct_ov45_02230ACC_Pos ov42_022282F4(void *a);
extern void ov45_022308C0(UnkStruct_ov45_02230ACC *a, UnkStruct_ov45_02230ACC_Pos *b);

void ov45_02230ACC(UnkStruct_ov45_02230ACC *param0) {
    u32 v0;
    u32 v1;
    u32 r3v;
    int t;
    UnkFunc_ov45_02230ACC func;
    UnkStruct_ov45_02230ACC_Pos v2;

    if ((param0->unk_00 & 0xf) == 0) {
        return;
    }

    v0 = ov42_02228188(param0->unk_04, 5);
    v1 = ov42_02228188(param0->unk_04, 8);
    __asm__ volatile("movs %0, r3" : "=l"(r3v) : : "cc");

    if (param0->unk_86 > v1 || param0->unk_84 != v0) {
        t = ov45_02230DC4(param0->unk_84);
        __asm__ volatile("movs %0, r3" : "=l"(r3v) : : "cc");
        if (t == 1) {
            param0->unk_85 = sub_02023EF4(param0->unk_08);
            param0->unk_88 = sub_02023F70(param0->unk_08);
            __asm__ volatile("movs %0, r3" : "=l"(r3v) : : "cc");
        }
        param0->unk_84 = v0;
    }
    param0->unk_86 = v1;

    func = ov45_02254F28[v0];
    func(param0, (void *)func, v0 << 2, r3v);

    v2 = ov42_022282F4(param0->unk_04);
    ov45_022308C0(param0, &v2);
}
