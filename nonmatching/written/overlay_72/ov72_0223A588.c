typedef unsigned char u8;
typedef signed char s8;
typedef unsigned int u32;
typedef int s32;

typedef s32 (*Ov72Check)(void *, void *, u32, u32);

extern Ov72Check ov72_0223B744[];

s32 ov72_0223A588(u8 *work)
{
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    u32 idx = *(u8 *)(work + 0x1312);
    Ov72Check fn = ov72_0223B744[idx];
    if (fn(work, fn, idx << 2, callerR3) == 1) {
        return *(s8 *)(work + 0x130e);
    }
    return 0;
}
