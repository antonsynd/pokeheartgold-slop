typedef unsigned char u8;
typedef unsigned int u32;
typedef int s32;

typedef struct UnkStruct_ov40_0223992C {
    u8 filler_00[0x14];
    s32 unk_14;         // 0x14
    u8 filler_18[8];
    u32 unk_20;         // 0x20
} UnkStruct_ov40_0223992C;

// The asm copies { 16, 12, 20 } to its own stack frame and indexes it with the
// unchecked value at +0x14, so an index past the table reads the registers the
// prologue pushed (r3, r4, r5) and then the caller's stack. The table sits at
// entry sp - 0x18.
void ov40_0223992C(UnkStruct_ov40_0223992C *p)
{
    u32 entryR3, entryR4, entryR5;
    u32 entrySp;
    u32 curSp;
    u32 addr;
    s32 index;
    u32 value;

    __asm__ volatile("movs %0, r3\n\tmovs %1, r4\n\tmovs %2, r5" : "=&l"(entryR3), "=&l"(entryR4), "=&l"(entryR5) : : "r3", "r4", "r5", "cc");
    entrySp = (u32)__builtin_frame_address(0) + 8;
    __asm__ volatile("mov %0, sp" : "=r"(curSp));

    index = p->unk_14;
    if (index == 0) {
        value = 16;
    } else if (index == 1) {
        value = 12;
    } else if (index == 2) {
        value = 20;
    } else if (index == 3) {
        value = entryR3;
    } else if (index == 4) {
        value = entryR4;
    } else if (index == 5) {
        value = entryR5;
    } else {
        // Below the original's table lies stack the original never used; this
        // function's own larger frame is not part of that view, so it reads as 0.
        addr = entrySp - 0x18 + (u32)index * 4;
        if (addr >= curSp && addr < entrySp - 0x18) {
            value = 0;
        } else {
            value = *(u32 *)addr;
        }
    }
    p->unk_20 = value;
}
