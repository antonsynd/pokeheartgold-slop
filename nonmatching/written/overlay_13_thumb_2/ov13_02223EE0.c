#include "global.h"

typedef struct UnkStruct_ov13_0224DF30 {
    u8 unk_00[4];
    void *(*unk_04)(u32 size, void *self);
    u8 unk_08[0x38];
    u32 unk_40;
    u8 unk_44[0xc];
    void *unk_50_pad;
    u32 unk_54;
    u8 unk_58[4];
    u32 unk_5C;
    u8 unk_60[0x10];
    u32 unk_70;
} UnkStruct_ov13_0224DF30;

extern UnkStruct_ov13_0224DF30 ov13_0224DF30;

void ov13_02223E44(void);
int ov13_02223D24(void *func, void *buf);
int ov13_02223E6C(void);
void ov13_02223EA4(void);

s32 ov13_02223EE0(int n) {
    s32 result;
    int keepGoing = 1;
    u32 base;
    u32 aligned;
    int msg;

    ov13_0224DF30.unk_70 = n;
    ov13_02223E44();
    base = n * 0xd0;
    ov13_0224DF30.unk_54 = (u32)ov13_0224DF30.unk_04(base + 0x24D0 + n * 0xc0, ov13_0224DF30.unk_04);
    if (ov13_0224DF30.unk_54 == 0) {
        return -1;
    }
    aligned = (ov13_0224DF30.unk_54 + 0x1f) & ~0x1fu;
    ov13_0224DF30.unk_40 = aligned;
    ov13_0224DF30.unk_5C = (aligned + base + 0x2490 + 0x1f) & ~0x1fu;
    if (ov13_02223D24((void *)ov13_02223EA4, (void *)aligned) == 0) {
        return -2;
    }
    do {
        OS_Sleep(10);
        msg = ov13_02223E6C();
        while (msg != 0) {
            if (msg == 4 || msg == 5) {
            } else if (msg == 6) {
                keepGoing = 0;
                result = 1;
            } else {
                keepGoing = 0;
                result = -2;
            }
            msg = ov13_02223E6C();
        }
    } while (keepGoing);
    return result;
}
