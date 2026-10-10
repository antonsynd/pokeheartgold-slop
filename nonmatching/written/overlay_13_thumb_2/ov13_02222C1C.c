typedef unsigned char u8;
typedef unsigned short u16;
typedef short s16;
typedef int s32;
typedef unsigned int u32;

extern u8 ov13_0224DDA0[];
extern u8 ov13_0224DD90[];
extern u32 ov13_0224DD80[];

void OS_InitMessageQueue(void *queue, void *buf, s32 n);
u32 OS_DisableInterrupts(void);
u32 OS_RestoreInterrupts(u32 old);
s32 OS_ReceiveMessage(void *queue, u32 *msg, u32 flags);
s32 ov13_022236B8(void *fn, void *buf, u32 size);
void ov13_02222BF4(void);

s32 ov13_02222C1C(void *a, void *b)
{
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    u32 msg = callerR3;
    u32 run = 1;
    u32 irq;
    void *buf;

    OS_InitMessageQueue(ov13_0224DDA0, ov13_0224DD90, 4);
    if (a == 0 || b == 0) {
        return -1;
    }
    irq = OS_DisableInterrupts();
    ov13_0224DD80[0] = (u32)a;
    ov13_0224DD80[3] = (u32)b;
    OS_RestoreInterrupts(irq);
    buf = ((void *(*)(u32))ov13_0224DD80[0])(0x5890);
    ov13_0224DD80[2] = (u32)buf;
    if (buf == 0) {
        return run - 2;
    }
    if (ov13_022236B8((void *)ov13_02222BF4, buf, 0x5890) == 0) {
        run = 0;
    }
    if (run != 0) {
        do {
            OS_ReceiveMessage(ov13_0224DDA0, &msg, 1);
            if (msg == 6) {
                return 0;
            }
            if (msg > 0xf || (msg != 4 && msg != 5)) {
                run = 0;
            }
        } while (run != 0);
    }
    ((void (*)(u32))ov13_0224DD80[3])(ov13_0224DD80[2]);
    return -1;
}
