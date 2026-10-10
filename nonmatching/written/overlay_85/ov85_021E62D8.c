#include "global.h"

extern int ov85_021E8764(void *p, int x, int count);
extern int sub_02096D4C(void *p, u32 cmd, void *data, u32 size);

/* The original keeps a 0x10-byte buffer at (entry sp - 0x28) and stores into it with an unchecked
   index (the player slot). To behave the same for any index, the store address is computed relative
   to the entry stack pointer (the frame address + 8): inside the buffer it goes to the local buffer,
   in the stack below the entry it only hits the original's own frame (so it is dropped), anywhere
   else it is a real store. */
int ov85_021E62D8(u8 *p) {
    u16 v3[8];
    int i;
    int result;
    u8 *v2;
    u32 entry = (u32)__builtin_frame_address(0) + 8;
    u32 base = entry - 0x28;
    u32 addr;
    u16 value;

    v3[0] = *(int *)(p + 0x110) / 4096;
    *(u32 *)(p + 0x20) = 0;

    for (i = 0; i < *(int *)(p + 0x30); i++) {
        v2 = p + 0x2d0 + i * 0xb0;
        if (*(int *)v2 == 0) {
            GF_AssertFail();
        }
        value = *(int *)(v2 + 0x1c) / 4096;
        addr = base + 4 + *(int *)(v2 + 0x10) * 2;
        if (addr - base < 0x10) {
            v3[(addr - base) / 2] = value;
        } else if (addr - (entry - 0x10000) >= 0x10000) {
            *(u16 *)addr = value;
        }
        if (ov85_021E8764(p, *(int *)(v2 + 0x1c), *(int *)(p + 0x30)) == 1) {
            *(u32 *)(p + 0x20) = *(u32 *)(p + 0x20) | (1 << *(int *)(v2 + 0xc));
        }
    }

    v3[1] = *(u32 *)(p + 0x20);
    result = sub_02096D4C(*(void **)(p + 0xd0), 0xf, v3, 0x10);
    if (result == 1) {
        *(u32 *)p = 0x24;
    }
    return 0;
}
