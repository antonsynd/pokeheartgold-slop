typedef unsigned char byte;
typedef unsigned short ushort;
typedef unsigned int uint;

/* The asm is "ldrh r0, [r0 + r1*2 + 0x160]", which is unaligned when param_1 is odd.
 * A C halfword load may compile to a different sequence, so the load is written as the same ldrh. */
ushort ov96_02200BC8(int param_1, int param_2)
{
    uint addr;
    uint off;
    uint v;

    addr = (uint)param_1 + ((uint)param_2 << 1);
    off = 0x160;
    __asm__("ldrh %0, [%1, %2]" : "=l"(v) : "l"(addr), "l"(off));
    return (byte)v;
}
