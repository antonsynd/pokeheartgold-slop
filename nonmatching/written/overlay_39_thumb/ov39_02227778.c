#include "global.h"

struct UnkStruct_ov39_02227778;

typedef int (*UnkFunc_ov39_02227778)(struct UnkStruct_ov39_02227778 *work, void *arg, void *self, u32 r3);
typedef void (*UnkFunc2_ov39_02227778)(void *a0, void *a1, void *self, u32 r3);

typedef struct UnkStruct_ov39_02227778 {
    u8 filler_000[0x150];
    void *unk_150;
    u8 filler_154[0x17C - 0x154];
    u8 unk_17C[0x3BC - 0x17C];
    u32 unk_3BC;
    u32 unk_3C0;
    u32 unk_3C4;
    u8 filler_3C8[4];
    u8 unk_3CC[0xC];
    u8 filler_3D8[0x3E8 - 0x3D8];
    u32 unk_3E8;
    u32 unk_3EC;
    u8 filler_3F0[0x400 - 0x3F0];
    UnkFunc2_ov39_02227778 unk_400;
    u8 filler_404[0x40C - 0x404];
    UnkFunc_ov39_02227778 unk_40C;
    u8 filler_410;
    u8 unk_411;
} UnkStruct_ov39_02227778;

extern UnkFunc_ov39_02227778 *ov39_0222A8B4[];

u32 ov39_0222A13C(void);
int ov39_022278D4(UnkStruct_ov39_02227778 *work);
void ov39_02227A5C(UnkStruct_ov39_02227778 *work);

// The calls through function pointers are compared on all four argument registers; r3 is
// whatever the previous call left behind, so it is captured right after that call.
#define CAPTURE_R3(a)                                  \
    do {                                               \
        register u32 captured3 __asm__("r3");          \
        __asm__ volatile("" : "=r"(captured3));        \
        (a) = captured3;                               \
    } while (0)

int ov39_02227778(UnkStruct_ov39_02227778 *work) {
    u32 leftoverR3;

    if (work->unk_3C4 == 1) {
        if (work->unk_3E8 != 0x59DC) {
            if (work->unk_411 != 0) {
                work->unk_411--;
            } else {
                switch (ov39_0222A13C()) {
                case 1:
                case 7:
                case 8:
                case 9:
                    if (ov39_022278D4(work) == 1) {
                        work->unk_3E8 = 0x59DC;
                    }
                    break;
                default:
                    break;
                }
            }
        }

        ov39_02227A5C(work);
        CAPTURE_R3(leftoverR3);

        if (work->unk_40C != NULL) {
            int done = work->unk_40C(work, &work->unk_400, work->unk_40C, leftoverR3);
            CAPTURE_R3(leftoverR3);
            if (done == 1) {
                work->unk_40C = NULL;
                if (work->unk_400 != NULL) {
                    work->unk_400(work->unk_150, work->unk_17C, work->unk_400, leftoverR3);
                    work->unk_400 = NULL;
                }
                MI_CpuFill8(&work->unk_400, 0, 0x10);
                work->unk_3EC = 0x59DC;
            }
        }
    }

    if (ov39_0222A8B4[work->unk_3BC] != NULL) {
        int result = ov39_0222A8B4[work->unk_3BC][work->unk_3C0](work, work->unk_3CC, ov39_0222A8B4[work->unk_3BC][work->unk_3C0], work->unk_3C0 * 4);

        if (result != 0) {
            if (result == 1) {
                MI_CpuFill8(work->unk_3CC, 0, 0xC);
                work->unk_3C0++;
                MI_CpuFill8(work->unk_3CC, 0, 0xC);
                if (ov39_0222A8B4[work->unk_3BC][work->unk_3C0] == NULL) {
                    work->unk_3C0 = 0;
                    work->unk_3BC = 0;
                }
            } else if (result == 2) {
                MI_CpuFill8(work->unk_3CC, 0, 0xC);
                work->unk_3C0 = 0;
            }
        }
    }

    return 1;
}
