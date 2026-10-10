#include "global.h"

void ov18_021F4EB0(s32 angle, s16 *x, s16 *y);
void ov18_021F1294(void *app, int a1, int x, int y, BOOL a4);

/* The fifth argument (y) is read and updated in place in the caller's outgoing-argument slot, at the entry sp. */
void ov18_021F4F98(void *app, int idx, s32 angle, s16 x) {
    s16 *py = (s16 *)((u8 *)__builtin_frame_address(0) + 8);
    s16 px = x;

    ov18_021F4EB0(angle, &px, py);
    ov18_021F1294(app, idx, px, *py, TRUE);
}
