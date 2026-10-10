#include "global.h"

typedef struct FrontierScriptManager {
    void *frontier;
} FrontierScriptManager;

typedef struct FrontierScriptContext {
    FrontierScriptManager *scriptMan;
} FrontierScriptContext;

extern u16 FrontierScript_ReadVar(FrontierScriptContext *ctx);
extern void sub_02096854(void *frontier, u16 sceneID, u16 entryPoint);
extern void FrontierScriptContext_Stop(FrontierScriptContext *ctx);

BOOL FrtCmd_004(FrontierScriptContext *ctx) {
    FrontierScriptManager *scriptMan = ctx->scriptMan;
    u16 sceneID = FrontierScript_ReadVar(ctx);
    u16 entryPoint = FrontierScript_ReadVar(ctx);

    sub_02096854(scriptMan->frontier, sceneID, entryPoint);
    FrontierScriptContext_Stop(ctx);

    return FALSE;
}
