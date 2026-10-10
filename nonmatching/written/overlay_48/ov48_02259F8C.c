#include "global.h"

#include "bg_window.h"
#include "text.h"
#include "yes_no_prompt.h"

typedef struct UnkStruct_ov48_02259F8C {
    int unk_00;
    u32 unk_04;
    u8 padding_08[8];
    Window unk_10;
    YesNoPrompt *unk_20;
} UnkStruct_ov48_02259F8C;

extern const YesNoPromptTemplate ov48_0225B1C4;

u32 ov48_02259F8C(UnkStruct_ov48_02259F8C *param0) {
    u32 callerR4;
    __asm__ volatile("movs %0, r4" : "=l"(callerR4) : : "cc");
    u32 v0 = callerR4;
    YesNoPromptTemplate v1;

    switch (param0->unk_00) {
    case 0:
        v0 = 0;
        if (TextPrinterCheckActive(param0->unk_04) == 0) {
            v1 = ov48_0225B1C4;
            v1.bgConfig = GetWindowBgConfig(&param0->unk_10);
            YesNoPrompt_InitFromTemplate(param0->unk_20, &v1);
            param0->unk_00++;
        }
        break;
    case 1:
        v0 = YesNoPrompt_HandleInput(param0->unk_20);
        break;
    }

    return v0;
}
