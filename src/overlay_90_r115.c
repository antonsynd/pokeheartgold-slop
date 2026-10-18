#include "global.h"

#include "screen_fade.h"
#include "unk_02035900.h"
#include "unk_0203A3B0.h"
#include "yes_no_prompt.h"

typedef struct Ov90_0225B38C {
    u8 state;
    u8 voiceChat;
    u16 timer;
    YesNoPrompt *yesNoPrompt;
    YesNoPromptTemplate yesNoTemplate;
    u8 filler_1C[2];
    u8 received;
    u8 skip;
} Ov90_0225B38C;

void sub_0203A948(int a0, u32 heapID);
void ov00_021E69A8(enum HeapID heapID);
void ov00_021E6A4C(void);
void ov90_0225927C(void *a0, u32 a1);
void ov90_02259464(void *a0, void *a1, int a2, int a3);
u32 ov90_02259538(void *a0, int a1);
void ov90_02259554(void *a0, int a1);

BOOL ov90_0225B38C(Ov90_0225B38C *a0, void *a1, void *a2, u8 a3, u32 heapID) {
    u32 result;

    switch (a0->state) {
    case 0:
        BeginNormalPaletteFade(0, 0, 1, RGB_BLACK, 6, 1, heapID);
        sub_0203A948(0, heapID);
        if (a0->voiceChat) {
            ov00_021E69A8(heapID);
        }
        a0->state++;
        break;
    case 1:
        if (IsPaletteFadeFinished()) {
            a0->state++;
        }
        break;
    case 2:
        ov90_0225927C(a2, a3);
        ov90_02259464(a1, a2, 3, 1);
        a0->state++;
        break;
    case 3:
        result = ov90_02259538(a1, 1);
        if (result == 1) {
            a0->state++;
        }
        break;
    case 4:
        YesNoPrompt_InitFromTemplate(a0->yesNoPrompt, &a0->yesNoTemplate);
        a0->state++;
        break;
    case 5:
        result = YesNoPrompt_HandleInput(a0->yesNoPrompt);
        if (result == YESNORESPONSE_YES || result == YESNORESPONSE_NO) {
            if (result == YESNORESPONSE_YES) {
                sub_02037030(22, NULL, 0);
            } else if (result == YESNORESPONSE_NO) {
                sub_02037030(23, NULL, 0);
            }
            ov90_02259464(a1, a2, 15, 1);
            ov90_02259554(a1, 1);
            YesNoPrompt_Reset(a0->yesNoPrompt);
            a0->state++;
        }
        break;
    case 6:
        if (a0->received) {
            if (a0->skip) {
                a0->state = 10;
            } else {
                a0->state++;
            }
        }
        break;
    case 7:
        ov90_02259464(a1, a2, 6, 1);
        a0->state++;
        break;
    case 8:
        result = ov90_02259538(a1, 1);
        if (result == 1) {
            a0->state++;
            a0->timer = 102;
        }
        break;
    case 9:
        a0->timer--;
        if (a0->timer == 0) {
            a0->state++;
        }
        break;
    case 10:
        BeginNormalPaletteFade(4, 0, 0, RGB_BLACK, 6, 1, heapID);
        a0->state++;
        break;
    case 11:
        if (IsPaletteFadeFinished()) {
            sub_0203A914();
            if (a0->voiceChat) {
                ov00_021E6A4C();
            }
            a0->state++;
        }
        break;
    case 12:
        return TRUE;
    }
    return FALSE;
}
