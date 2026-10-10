typedef unsigned char u8;
typedef unsigned int u32;
typedef int s32;

typedef s32 (*Ov72Check)(void *, void *, u32, u32);

extern Ov72Check ov72_0223B7FC[];

s32 ov72_0223AF48(u8 *work)
{
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    u32 idx = *(u8 *)(work + 0x2d);
    Ov72Check fn = ov72_0223B7FC[idx];
    if (fn(work, fn, idx << 2, callerR3) == 1) {
        return *(u8 *)(work + 0x33) + 1;
    }
    return 0;
}
