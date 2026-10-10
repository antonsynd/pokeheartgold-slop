#include "global.h"

typedef int (*ov89_0225A5A4_Fn)(void *, void *, void *, u32);

typedef struct ov89_0225CDB0_Entry {
    ov89_0225A5A4_Fn unk_00;
    ov89_0225A5A4_Fn unk_04;
    u32 unk_08;
} ov89_0225CDB0_Entry;

extern const ov89_0225CDB0_Entry ov89_0225CDB0[];

extern void sub_020181EC(void *p);

void ov89_0225A5A4(u8 *param0) {
    /* the handler is called with r3 as the caller (or the previous call) left it */
    u32 lastR3;
    int i;
    u8 *obj;
    u32 sel;
    u32 word;
    ov89_0225A5A4_Fn fn;

    __asm__ volatile("movs %0, r3" : "=l"(lastR3) : : "cc");

    for (i = 0; i < 0x80; i++) {
        obj = *(u8 **)(param0 + i * 4 + 0xb4);
        if (obj != NULL) {
            word = *(u32 *)(obj + 0x240);
            sel = (word >> 8) & 0xff;
            fn = ov89_0225CDB0[sel].unk_04;
            if (fn != NULL) {
                fn(param0, obj, (void *)fn, lastR3);
                __asm__ volatile("movs %0, r3" : "=l"(lastR3) : : "cc");
            } else {
                sub_020181EC(obj + 0x1c);
                __asm__ volatile("movs %0, r3" : "=l"(lastR3) : : "cc");
            }
        }
    }
}
