typedef unsigned short u16;
typedef unsigned int u32;
typedef signed int s32;

extern const u16 ov92_02263C34[];

void ov92_0225F8B0(char *self)
{
    /* the original copies four u16 from ov92_02263C34+0x18 to its stack and indexes them unchecked;
       indices past the table read the registers it pushed (r3, r4) and then the caller's frame */
    u32 savedR3;
    u32 savedR4;
    u32 off;
    u32 v;

    __asm__ volatile("movs %0, r3" : "=l"(savedR3) : : "cc");
    __asm__ volatile("movs %0, r4" : "=l"(savedR4) : : "cc");

    off = (u32)(*(s32 *)(self + 0x2aec) - 1) << 1;
    if (off < 8) {
        v = ov92_02263C34[12 + (off >> 1)];
    } else if (off < 16) {
        u32 w = off < 12 ? savedR3 : savedR4;
        v = (off & 2) ? (w >> 16) : (w & 0xffff);
    } else if (off >= 0xffffffc0u) {
        /* dead stack just below the original's 16-byte frame: nothing was written there */
        v = 0;
    } else {
        v = *(u16 *)((char *)__builtin_frame_address(0) + 8 - 16 + off);
    }
    *(u32 *)(self + 0x2af0) = *(u32 *)(self + 0x2af0) + v;
}
