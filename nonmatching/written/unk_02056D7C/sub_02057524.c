typedef unsigned char u8;
typedef unsigned int u32;
typedef int s32;

void GF_AssertFail(void);

/* the five words the function copies from the ROM table at 0x020FC7B8 */
const u32 _020FC7B8[5] = { 2, 4, 8, 0x10, 2 };

u32 sub_02057524(s32 idx)
{
    /* registers as the function received them: the asm pushes {r3, r4, lr} right above its table */
    u32 callerR3;
    u32 callerR4;
    u32 callerLr;

    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    __asm__ volatile("movs %0, r4" : "=l"(callerR4) : : "cc");
    __asm__ volatile("mov %0, lr" : "=r"(callerLr));

    if (idx >= 5) {
        GF_AssertFail();
    }

    /* unchecked index. In range it reads the copied table. The asm frame is, from entry_sp-0x20 up:
       table[0..4], saved r3 (table[5]), saved r4, saved lr, then the caller's frame; below it, free stack. */
    if (idx >= 0 && idx < 5) {
        return _020FC7B8[idx];
    }
    if (idx == 5) {
        return callerR3;
    }
    if (idx == 6) {
        return callerR4;
    }
    if (idx == 7) {
        return callerLr;
    }
    /* entry sp = frame address + 8 (clang -O0 Thumb: push {r7, lr}; r7 = sp) */
    return *(u32 *)((u8 *)__builtin_frame_address(0) + 8 - 0x20 + ((u32)idx << 2));
}
