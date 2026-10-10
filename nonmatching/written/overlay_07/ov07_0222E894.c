#include "global.h"

typedef struct UnkStruct_ov07_0222E894 {
    u8 pad_00[0x6c];
    int repeatCount;
    int scaleFrames;
    int startScale;
    int endScale;
    int seqState;
} UnkStruct_ov07_0222E894;

extern void ov07_0222E754(UnkStruct_ov07_0222E894 *ctx);
extern int ov07_0222E7BC(UnkStruct_ov07_0222E894 *ctx);

BOOL ov07_0222E894(UnkStruct_ov07_0222E894 *ctx) {
    BOOL done = FALSE;

    switch (ctx->seqState) {
    case 0:
        ov07_0222E754(ctx);
        ov07_0222E7BC(ctx);
        ctx->seqState++;
        break;
    case 1:
        if (ov07_0222E7BC(ctx)) {
            ctx->repeatCount--;

            if (ctx->repeatCount >= 0) {
                ctx->scaleFrames -= ctx->scaleFrames / 3;
                ctx->startScale -= ctx->startScale / 3;
                ctx->endScale -= ctx->endScale / 3;
                ctx->seqState = 0;
            } else {
                ctx->seqState++;
                done = TRUE;
            }
        }
        break;
    case 2:
        done = TRUE;
        break;
    }

    return done;
}
