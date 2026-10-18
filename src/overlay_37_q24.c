#include "global.h"

#include "yes_no_prompt.h"

typedef struct Ov37_021E6980 {
    BgConfig *bgConfig;
    u8 filler_04[0x2C];
    void *unk30;
} Ov37_021E6980;

BOOL ov37_021E76A0(void *a0);
BOOL ov37_021E7880(Ov37_021E6980 *a0, YesNoPromptTemplate *template);
void ov37_021E7844(Ov37_021E6980 *a0, int a1);
void ov37_021E68AC(Ov37_021E6980 *a0);

int ov37_021E6980(Ov37_021E6980 *a0, int a1) {
    YesNoPromptTemplate template;

    if (ov37_021E76A0(a0->unk30)) {
        MI_CpuFill8(&template, 0, sizeof(YesNoPromptTemplate));
        template.bgConfig = a0->bgConfig;
        template.bgId = GF_BG_LYR_MAIN_0;
        template.tileStart = 0xB4;
        template.plttSlot = 8;
        template.x = 25;
        template.y = 6;
        template.shapeParam = 0;
        GF_ASSERT(ov37_021E7880(a0, &template));
        ov37_021E7844(a0, 6);
    }
    ov37_021E68AC(a0);
    return a1;
}
