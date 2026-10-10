#include "global.h"

u8 ov18_021F6214(void *app, u32 idx, const u8 *tbl);

/* a4 is the fifth argument, on the stack. */
u32 ov18_021F6244(void *app, u32 idx, const u8 *tbl, u32 a3, u32 a4) {
    u32 v = ov18_021F6214(app, idx, tbl);

    return (a3 + (a4 >> 1)) - (v >> 1);
}
