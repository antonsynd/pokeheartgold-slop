#include "global.h"

typedef struct FrontierScriptManager {
    void *frontier;
} FrontierScriptManager;

typedef struct FrontierScriptContext {
    FrontierScriptManager *scriptMan;
} FrontierScriptContext;

extern u16 FrontierScript_ReadVar(FrontierScriptContext *ctx);
extern void sub_02096854(void *frontier, u16 sceneID, u16 entryPoint);
extern void FrontierScriptContext_Pause(FrontierScriptContext *ctx, void *callback);
extern void ov80_0222BEFC(void);

BOOL FrtCmd_003(FrontierScriptContext *ctx) {
    FrontierScriptManager *scriptMan = ctx->scriptMan;
    u16 sceneID = FrontierScript_ReadVar(ctx);

    sub_02096854(scriptMan->frontier, sceneID, 0xFFFF);
    FrontierScriptContext_Pause(ctx, (void *)ov80_0222BEFC);

    return TRUE;
}
