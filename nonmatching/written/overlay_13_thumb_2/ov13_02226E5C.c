#include "global.h"

extern u32 ov13_0224DF30[];
extern OSThread ov13_0224DFDC;

void ov13_02226F3C(void);
s32 ov13_02223F84(void);

s32 ov13_02226E5C(void) {
    s32 saved;
    s32 *s = (s32 *)ov13_0224DF30;

    if (s[0x64 / 4] != 0) {
        saved = s[0x38 / 4];
        s[0x10 / 4] = 1;
        while (s[0x38 / 4] >= 1 && s[0x38 / 4] <= 5) {
            OS_Sleep(100);
        }
        OS_Sleep(500);
        if (OS_IsThreadTerminated(&ov13_0224DFDC) == 0) {
            do {
                OS_WakeupThreadDirect(&ov13_0224DFDC);
                OS_JoinThread(&ov13_0224DFDC);
            } while (OS_IsThreadTerminated(&ov13_0224DFDC) == 0);
        }
        if (s[0x30 / 4] != 0) {
            ((void (*)(s32, s32))s[0xc / 4])(s[0x30 / 4], s[0xc / 4]);
            s[0x30 / 4] = 0;
        }
        s[0x64 / 4] = 0;
        if (saved != s[0x38 / 4]) {
            ov13_02226F3C();
        }
    }
    if (s[0x74 / 4] > 0) {
        s32 r = ov13_02223F84();
        s[0x74 / 4] = 0;
        return r;
    }
    return -10;
}
