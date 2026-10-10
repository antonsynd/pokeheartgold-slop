typedef unsigned char u8;
typedef unsigned short u16;
typedef short s16;
typedef int s32;
typedef unsigned int u32;

extern s32 ov13_0224DF30[];
extern u32 ov13_02245A58[];
extern u8 ov13_0224DFDC[];
extern u32 ov13_0224E09C[];

s32 ov13_02223EE0(u32 b);
s32 OS_IsThreadAvailable(void);
void OS_CreateThread(void *thread, void *func, void *arg, void *stack, u32 stackSize, u32 prio);
u32 ov13_02226CBC(void);
void ov13_02226F3C(void);
void OS_WakeupThreadDirect(void *thread);
void ov13_02225320(void);

s32 ov13_02226D74(u32 a, u32 b, u32 c, u32 d, u32 e, u32 f)
{
    s32 r;
    u32 i;
    volatile u32 *clr;

    if (ov13_0224DF30[0x38 / 4] >= 1 && ov13_0224DF30[0x38 / 4] <= 5) {
        return -10;
    }
    ov13_02245A58[0x10 / 4] = b;
    ov13_0224DF30[0x38 / 4] = 7;
    ov13_0224DF30[0x7c / 4] = c;
    ov13_0224DF30[4 / 4] = d;
    ov13_0224DF30[0xc / 4] = e;
    ov13_02245A58[8 / 4] = f;
    r = ov13_02223EE0(b);
    ov13_0224DF30[0x74 / 4] = 1;
    if (r < 0) {
        ov13_0224DF30[0x78 / 4] = r;
        return r;
    }
    r = (s32)((u32(*)(u32))ov13_0224DF30[4 / 4])(ov13_02245A58[8 / 4]);
    ov13_0224DF30[0x30 / 4] = r;
    if (r == 0) {
        ov13_0224DF30[0x78 / 4] = -1;
        return -1;
    }
    if (OS_IsThreadAvailable() != 1) {
        ov13_0224DF30[0x78 / 4] = -9;
        return -9;
    }
    OS_CreateThread(ov13_0224DFDC, (void *)ov13_02225320, 0,
                    (void *)((u32)ov13_0224DF30[0x30 / 4] + (ov13_02245A58[8 / 4] & ~7u)),
                    ov13_02245A58[8 / 4], a);
    ov13_0224DF30[0x38 / 4] = 1;
    ov13_02245A58[0xc / 4] = ov13_02226CBC() + 60000;
    ov13_0224DF30[0x10 / 4] = 0;
    clr = ov13_0224E09C;
    for (i = 0; i < 58; i++) {
        clr[i] = 0;
    }
    ov13_02226F3C();
    OS_WakeupThreadDirect(ov13_0224DFDC);
    ov13_0224DF30[0x64 / 4] = 1;
    return 1;
}
