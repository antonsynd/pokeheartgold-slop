#include "global.h"

typedef struct Billboard Billboard;
void sub_02023EE0(Billboard *b, int anim);
void sub_02023F40(Billboard *b, int frame);
void sub_02023F04(Billboard *b, int frame);

typedef struct {
    s8 unk_00;
    s8 unk_01;
    s8 unk_02;
    u8 unk_03_0 : 1;
    u8 unk_03_1 : 7;
} UnkStruct_ov01_021F8374;

extern const int ov01_02208A38[4];

/*
 * The original copies ov01_02208A38 to a 16-byte array at sp and reads
 * v0[param3] with no bounds check. Its frame is
 *   push {r3, r4, r5, r6, r7, lr}; sub sp, #0x10
 * so indices 4..9 alias the saved r3 (= param3), r4, r5, r6, r7 and lr, and
 * any other index reads the memory at (entry sp - 0x28 + 4 * param3).
 * That frame is emulated below so out-of-range indices behave the same.
 */
void ov01_021F8374(void *mapObj, Billboard *billboard, UnkStruct_ov01_021F8374 *param2, int param3) {
    u32 raw;
    u32 r4v, r5v, r6v;
    u32 *fp;
    int v1;
    /* read before anything else is spilled below the original frame */
    raw = *(volatile u32 *)((u32)__builtin_frame_address(0) + 8 - 0x28 + (u32)param3 * 4);
    __asm__ volatile("movs %0, r4" : "=l"(r4v) : : "cc");
    __asm__ volatile("movs %0, r5" : "=l"(r5v) : : "cc");
    __asm__ volatile("movs %0, r6" : "=l"(r6v) : : "cc");
    fp = (u32 *)__builtin_frame_address(0);

    if ((u32)param3 < 4) {
        v1 = ov01_02208A38[param3];
    } else if ((u32)param3 < 10) {
        switch (param3) {
        case 4: v1 = param3; break;
        case 5: v1 = r4v; break;
        case 6: v1 = r5v; break;
        case 7: v1 = r6v; break;
        case 8: v1 = fp[0]; break;
        default: v1 = fp[1]; break;
        }
    } else {
        v1 = raw;
    }

    if (param3 != param2->unk_00) {
        sub_02023EE0(billboard, v1);
        sub_02023F40(billboard, 0);
        param2->unk_03_0 = 0;
    } else if (param2->unk_02 != 0) {
        param2->unk_03_0 = 1;
    } else if (param2->unk_03_0 == 1) {
        sub_02023EE0(billboard, v1);
        sub_02023F40(billboard, 0);
        param2->unk_03_0 = 0;
    } else {
        sub_02023F04(billboard, FX32_ONE);
    }
}
