typedef unsigned char byte;
typedef unsigned char u8;
typedef unsigned short ushort;
typedef unsigned short u16;
typedef unsigned int uint;
typedef unsigned int u32;

uint ov96_022014A4(int *arr, uint *out);
u16 LCRandom(void);
unsigned long long _s32_div_f(int, int);

uint ov96_0220146C(int param_1)
{
    /* registers as the function received them: the asm pushes {r4, lr} right above its 0x80-byte frame */
    u32 callerR4;
    u32 callerLr;
    int entries[16];
    uint out[16];
    uint count;
    uint rnd;
    uint rem;
    uint index;
    unsigned long long dv;
    int i;

    __asm__ volatile("movs %0, r4" : "=l"(callerR4) : : "cc");
    __asm__ volatile("mov %0, lr" : "=r"(callerLr));

    for (i = 0; i < 16; i++) {
        entries[i] = param_1 + 0x29c + 0x14 * i;
    }
    count = ov96_022014A4(entries, out);
    rnd = LCRandom();
    dv = _s32_div_f((int)rnd, (int)count);
    rem = (uint)(dv >> 32);
    index = (byte)rem;

    /* the index is not bounded by the 16 entries: past them the asm reads its saved r4, saved lr, then the caller's
       frame (the asm's out array starts at entry_sp-0x48; entry sp = frame address + 8 under clang -O0 Thumb) */
    if (index < 16) {
        return out[index];
    }
    if (index == 16) {
        return callerR4;
    }
    if (index == 17) {
        return callerLr;
    }
    return *(uint *)((u8 *)__builtin_frame_address(0) + 8 - 0x48 + (index << 2));
}
