#include "global.h"

/* The callee receives whatever the asm leaves in r0-r3 at the blx:
   r0 = bgSwitch, r1 = the function pointer, r2 = the halved flag,
   r3 = whatever ov07_0221DEB0 left in r3. */
typedef void (*UnkFunc_ov07_0221DEC0)(void *bgSwitch, void *self, int flag, u32 r3);

extern BOOL ov07_0221DEB0(u32 flags, u32 flag);
extern const u32 ov07_02234BA8[6];
extern const UnkFunc_ov07_0221DEC0 ov07_02234C40[];

void ov07_0221DEC0(u8 *bgSwitch) {
    u32 flags[6];
    int i;
    for (i = 0; i < 6; i++) {
        flags[i] = ov07_02234BA8[i];
    }
    for (i = 0; i < 6; i++) {
        BOOL r = ov07_0221DEB0(*(u32 *)(bgSwitch + 0x18), flags[i]);
        u32 r3v;
        __asm__ volatile("movs %0, r3" : "=l"(r3v) : : "cc");
        if (r) {
            int id = 0;
            int flag = flags[i] >> 16;
            UnkFunc_ov07_0221DEC0 fn;
            while (flag >= 2) {
                flag /= 2;
                id++;
            }
            fn = ov07_02234C40[id];
            fn(bgSwitch, fn, flag, r3v);
        }
    }
}
