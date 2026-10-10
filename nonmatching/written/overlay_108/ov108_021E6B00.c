#include "global.h"
#include "yes_no_prompt.h"

#define U8AT(p, off)  (*(u8 *)((u8 *)(p) + (off)))
#define S32AT(p, off) (*(int *)((u8 *)(p) + (off)))
#define PTRAT(p, off) (*(void **)((u8 *)(p) + (off)))

extern void ov108_021E79A8(void *data, int a1, u8 a2, int a3);
extern void ov108_021E7BB4(void *data, u8 a1, u8 a2);
extern void ov108_021E767C(void *data, int a1);
extern void ov108_021E7700(void *data, int a1, int a2, int a3);

void ov108_021E6B00(void *data) {
    YesNoPromptTemplate tmpl;

    MI_CpuFill8(&tmpl, 0, sizeof(tmpl));
    tmpl.bgConfig = PTRAT(data, 0x340);
    tmpl.bgId = 0;
    tmpl.tileStart = 0x379;
    tmpl.plttSlot = 0xD;
    tmpl.x = 0x1A;
    tmpl.y = 0x10;
    tmpl.ignoreTouchFlag = S32AT(data, 0x10);
    tmpl.initialCursorPos = 0;
    YesNoPrompt_InitFromTemplate(PTRAT(data, 0x4C0), &tmpl);
    ov108_021E79A8(data, 1, U8AT(data, 0x184E0), 1);
    ov108_021E7BB4(data, U8AT(data, 0x184DF), (u8)(U8AT(data, 0x184E0) + U8AT(data, 0x184DE) * 6));
    ov108_021E767C(data, 1);
    ov108_021E7700(data, 1, 3, 1);
}
