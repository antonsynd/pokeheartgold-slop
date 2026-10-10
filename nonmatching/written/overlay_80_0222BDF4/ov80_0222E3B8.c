#include "global.h"

typedef struct FrontierScriptManager {
    u8 filler_00[0x48];
    void *string;
} FrontierScriptManager;

extern void ov80_0222E2B8(FrontierScriptManager *scriptMan);
extern void ov80_0222E400(void *string, u32 sentenceType, u32 sentenceID, u16 word1, u16 word2);
extern void ov80_0222E344(FrontierScriptManager *scriptMan, u32 font, u32 renderDelay, u32 canSpeedUp, u32 autoScroll);

void ov80_0222E3B8(FrontierScriptManager *scriptMan, u32 renderDelay, u32 sentenceType, u32 sentenceID, u16 word1, u16 word2, u8 canSpeedUp) {
    ov80_0222E2B8(scriptMan);
    ov80_0222E400(scriptMan->string, sentenceType, sentenceID, word1, word2);

    if (canSpeedUp != 0xFF) {
        ov80_0222E344(scriptMan, 1, renderDelay, canSpeedUp, 0);
    } else {
        ov80_0222E344(scriptMan, 1, 0, canSpeedUp, 0);
    }
}
