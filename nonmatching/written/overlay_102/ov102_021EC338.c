#include "global.h"
#include "bg_window.h"

typedef struct {
    BgConfig *bgConfig;
    u32 bgId;
    u32 op;
    int pos;
    int target;
    int step;
    u16 count;
} UnkStruct_ov102_021EC338;

void ov102_021EC338(void *task, UnkStruct_ov102_021EC338 *v0) {
    if (v0->count) {
        v0->pos += v0->step;
        BgSetPosTextAndCommit(v0->bgConfig, (u8)v0->bgId, (enum BgPosAdjustOp)(u8)v0->op, v0->pos >> 12);
        v0->count--;
    } else {
        BgSetPosTextAndCommit(v0->bgConfig, (u8)v0->bgId, (enum BgPosAdjustOp)(u8)v0->op, v0->target);
    }
}
