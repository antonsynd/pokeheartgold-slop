#include "global.h"
#include "overlay_manager.h"

typedef s32 (*UnkFunc_ov103_021ED568)(u8 *data, void *fn, s32 state, u32 offset);

typedef struct UnkStruct_ov103_021ED568 {
    void *func0;
    UnkFunc_ov103_021ED568 func4;
    s32 value8;
} UnkStruct_ov103_021ED568;

extern const UnkStruct_ov103_021ED568 ov103_021EEC78[];

s32 ov103_021ED568(u8 *data) {
    s32 state;
    UnkFunc_ov103_021ED568 fn;

    if (!OverlayManager_Run(*(OverlayManager **)(data + 0x10))) {
        return 7;
    }
    OverlayManager_Delete(*(OverlayManager **)(data + 0x10));
    state = *(s32 *)(data + 0x18);
    fn = ov103_021EEC78[state].func4;
    /* the asm calls through the pointer with r1 = the pointer, r2 = state, r3 = state * 12 */
    *(s32 *)(data + 0x28) = fn(data, (void *)fn, state, (u32)state * 0xC);
    return ov103_021EEC78[*(s32 *)(data + 0x18)].value8;
}
