typedef unsigned int u32;
typedef int s32;

void GF_AssertFail(void);

/* the four words the function copies from the ROM table at 0x020FDA28 */
const u32 _020FDA28[4] = { 8, 9, 10, 11 };

u32 sub_020623D8(s32 idx)
{
    /* The asm pushes {r4, lr}, so entry sp - 8 holds the caller's r4 and entry sp - 4 holds lr,
       and the table copy sits at entry sp - 0x18. Keep this frame within 0x18 bytes of the entry sp
       (no extra locals) so that negative indices read the same untouched memory as the original. */
    u32 callerR4;

    __asm__ volatile("movs %0, r4" : "=l"(callerR4) : : "cc");

    if (idx >= 4) {
        GF_AssertFail();
    }

    if (idx >= 0 && idx < 4) {
        return _020FDA28[idx];
    }
    /* out of range: the original reads table[idx] at entry_sp - 0x18 + 4 * idx */
    if (idx == 4) {
        return callerR4;
    }
    if (idx == 5) {
        return (u32)__builtin_return_address(0);
    }
    return ((u32 *)((char *)__builtin_frame_address(0) + 8))[idx - 6];
}
