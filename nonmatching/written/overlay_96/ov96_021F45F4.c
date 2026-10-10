#include "global.h"
#include "unk_02005D10.h"

typedef void (*ov96_021F45F4_Fn)(u8 *, void *, u32, u32);

u8 ov96_021F46BC(u8 *state, u8 *flags);
void ov96_021F43EC(u8 *param0);
BOOL ov96_021F47F0(u8 *state, u32 mode);
void ov96_021F480C(u8 *state, u32 arg);
void ov96_021F48A8(u8 *state, u32 arg, u32 index);
void ov96_021F4A60(u8 *state, u32 arg);

// The callback is invoked as `blx r1` with r1 = the callback and r2/r3 still holding whatever the last callee left.
#define SAVE_R2_R3()                                                                           \
    do {                                                                                       \
        register u32 *savePtr __asm__("r0") = lastRegs;                                        \
        __asm__ volatile("str r2, [r0]\n\tstr r3, [r0, #4]" : : "l"(savePtr) : "memory");      \
    } while (0)

void ov96_021F45F4(u8 *param0, int param1, u8 *param2) {
    u8 *state = param0 + 0x68;
    u8 index;
    BOOL ok;
    u32 lastRegs[2];
    ov96_021F45F4_Fn callback;

    index = ov96_021F46BC(state, param2);
    SAVE_R2_R3();
    if (param1 == 0 && *(u32 *)(state + 4) != 0) {
        ov96_021F43EC(param0);
        SAVE_R2_R3();
    }
    if (*(u32 *)state != 0) {
        if (param1 != 0) {
            if (*(u32 *)(state + 4) == 0) {
                *(u32 *)(state + 4) = 1;
                ok = ov96_021F47F0(state, 1);
                SAVE_R2_R3();
                if (ok != 1) {
                    GF_AssertFail();
                    SAVE_R2_R3();
                }
                ov96_021F480C(state, *(u32 *)(param0 + 8));
                SAVE_R2_R3();
            }
        } else if (index != 0xc) {
            ok = ov96_021F47F0(state, 2);
            SAVE_R2_R3();
            if (ok != 0) {
                PlaySE(0x89E);
                SAVE_R2_R3();
                ov96_021F48A8(state, *(u32 *)(param0 + 8), index);
                SAVE_R2_R3();
            }
        }
    } else {
        ov96_021F4A60(state, *(u32 *)(param0 + 8));
        SAVE_R2_R3();
    }
    callback = *(ov96_021F45F4_Fn *)(state + 0x14);
    if (callback != NULL) {
        callback(param0, (void *)callback, lastRegs[0], lastRegs[1]);
    } else {
        GF_AssertFail();
    }
}
