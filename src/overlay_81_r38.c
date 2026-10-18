#include "global.h"

#include "bg_window.h"

typedef struct Ov81_022404B4 {
    u8 filler_000[0xC];
    int bgX;
    u8 filler_010[2];
    u8 count;
    u8 filler_013[0x39];
    BgConfig *bgConfig;
    u8 filler_050[0x310];
    void *objs[1];
} Ov81_022404B4;

VecFx32 *ov81_02242F30(void *obj);
int ov81_02242F8C(void *obj);
int ov81_02242F90(void *obj);
void ov81_02242F10(void *obj, int x, int y);
VecFx32 ov81_02242EC4(void *obj, int dx, int dy);
void ov81_022405F0(Ov81_022404B4 *a0);

BOOL ov81_022404B4(Ov81_022404B4 *a0) {
    BOOL arrived = FALSE;
    int i;
    VecFx32 *pos;
    int limit;

    BgSetPosTextAndCommit(a0->bgConfig, GF_BG_LYR_SUB_2, BG_POS_OP_ADD_X, 8);
    a0->bgX = Bg_GetXpos(a0->bgConfig, GF_BG_LYR_SUB_2);
    for (i = 0; i < a0->count; i++) {
        pos = ov81_02242F30(a0->objs[i]);
        limit = ov81_02242F8C(a0->objs[i]);
        if (pos->x / FX32_ONE - 8 <= limit) {
            ov81_02242F10(a0->objs[i], ov81_02242F8C(a0->objs[i]), ov81_02242F90(a0->objs[i]));
            arrived = TRUE;
        } else {
            ov81_02242EC4(a0->objs[i], -8, 0);
        }
    }
    ov81_022405F0(a0);
    if (arrived == TRUE) {
        return TRUE;
    }
    return FALSE;
}
