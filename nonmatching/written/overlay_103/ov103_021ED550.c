#include "global.h"

typedef void (*UnkFunc_ov103_021ED550)(u8 *data, void *fn, s32 state, u32 offset);

typedef struct UnkStruct_ov103_021ED550 {
    UnkFunc_ov103_021ED550 func0;
    void *func4;
    s32 value8;
} UnkStruct_ov103_021ED550;

extern const UnkStruct_ov103_021ED550 ov103_021EEC78[];

s32 ov103_021ED550(u8 *data) {
    s32 state = *(s32 *)(data + 0x18);
    UnkFunc_ov103_021ED550 fn = ov103_021EEC78[state].func0;
    /* the asm calls through the pointer with r1 = the pointer, r2 = state, r3 = state * 12 */
    fn(data, (void *)fn, state, (u32)state * 0xC);
    return 7;
}
