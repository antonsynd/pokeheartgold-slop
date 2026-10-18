#include "global.h"

#include "yes_no_prompt.h"

void ov82_0223FDC8(YesNoPrompt *prompt, BgConfig *bgConfig, u8 ignoreTouch) {
    YesNoPromptTemplate template;

    MI_CpuFill8(&template, 0, sizeof(YesNoPromptTemplate));
    template.bgConfig = bgConfig;
    template.bgId = GF_BG_LYR_MAIN_0;
    template.tileStart = 0x6D;
    template.plttSlot = 14;
    template.x = 24;
    template.y = 10;
    template.ignoreTouchFlag = ignoreTouch;
    template.initialCursorPos = 0;
    template.shapeParam = 0;
    YesNoPrompt_InitFromTemplate(prompt, &template);
}
