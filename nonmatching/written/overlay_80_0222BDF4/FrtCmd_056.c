#include "global.h"
#include "math_util.h"

typedef struct FrontierScriptContext FrontierScriptContext;

extern u16 *FrontierScript_ReadVarPtr(FrontierScriptContext *ctx);
extern u16 FrontierScript_ReadVar(FrontierScriptContext *ctx);

BOOL FrtCmd_056(FrontierScriptContext *ctx) {
    u16 *destVar = FrontierScript_ReadVarPtr(ctx);
    u16 upperBound = FrontierScript_ReadVar(ctx);

    *destVar = LCRandom() % upperBound;
    return TRUE;
}
