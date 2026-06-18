#include "overlay_80_02235390.h"

#include "global.h"

#include "frontier/frontier_script_context.h"
#include "frontier/overlay_80_0222BDF4.h"

extern void PlaySE(int sndseq);
extern void StopSE(int sndseq, int a1);
extern void PlayFanfare(int a0);
extern BOOL IsSEPlaying(int sndseq);
extern BOOL IsFanfarePlaying(void);
extern void PlayBGM(u16 seqNo);
extern void Sound_SetFieldBGM(u16 seqNo);

static BOOL ov80_022353D0(FrontierScriptContext *ctx);
static BOOL ov80_02235408(FrontierScriptContext *ctx);

BOOL FrtCmd_085(FrontierScriptContext *ctx) {
    PlaySE(FrontierScript_ReadVar(ctx));
    return FALSE;
}

BOOL FrtCmd_086(FrontierScriptContext *ctx) {
    StopSE(FrontierScript_ReadVar(ctx), 0);
    return FALSE;
}

BOOL FrtCmd_087(FrontierScriptContext *ctx) {
    ctx->data[0] = FrontierScript_ReadVar(ctx);
    FrontierScriptContext_Pause(ctx, ov80_022353D0);
    return TRUE;
}

static BOOL ov80_022353D0(FrontierScriptContext *ctx) {
    if (IsSEPlaying(ctx->data[0]) == 0) {
        return TRUE;
    }
    return FALSE;
}

BOOL FrtCmd_088(FrontierScriptContext *ctx) {
    PlayFanfare(FrontierScriptContext_ReadHalfWord(ctx));
    return FALSE;
}

BOOL FrtCmd_089(FrontierScriptContext *ctx) {
    FrontierScriptContext_Pause(ctx, ov80_02235408);
    return TRUE;
}

static BOOL ov80_02235408(FrontierScriptContext *ctx) {
    if (IsFanfarePlaying() == 0) {
        return TRUE;
    }
    return FALSE;
}

BOOL FrtCmd_090(FrontierScriptContext *ctx) {
    u32 seqNo = FrontierScriptContext_ReadHalfWord(ctx);
    Sound_SetFieldBGM(seqNo);
    PlayBGM(seqNo);
    return FALSE;
}
