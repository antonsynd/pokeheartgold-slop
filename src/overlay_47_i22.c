#include "global.h"

#include "pm_string.h"
#include "sound.h"
#include "system.h"

typedef struct Ov47Question {
    u8 filler_0[4];
    u32 questionNo;
    int answered;
} Ov47Question;

typedef struct Ov47_02258F48 {
    u8 filler_00[0x10];
    int cursor;
    u8 filler_14[0x14];
    u16 state;
    u16 nextState;
    Ov47Question question;
} Ov47_02258F48;

typedef struct Ov47Lobby {
    u8 filler_0[4];
    void *unk4;
} Ov47Lobby;

String *ov47_02258CEC(void *msg, int a1, int msgNo);
void ov47_022592B4(void *window, String *string);
void ov47_02259318(void *window, String *string);
void ov47_02259384(void *window);
void ov47_022593A0(void *window);
void ov47_022593CC(void *window);
BOOL ov47_022593B4(void *window);
void ov47_02259404(void *window, void *a1, u32 a2);
u32 ov47_02259430(void *window, u32 a1);
void ov47_0225916C(Ov47_02258F48 *a0, void *msg, void *a2);
String *ov47_02259D40(Ov47Question *question, void *msg);
void ov47_022591F8(Ov47_02258F48 *a0);
void ov47_0225921C(Ov47_02258F48 *a0);
void ov45_0222A7DC(void *a0, u32 questionNo, int answer);
void ov45_0222F4D4(int answer);
u32 ov45_0222F524(void);

BOOL ov47_02258F48(Ov47_02258F48 *a0, void *msg, void *a2, void *window, Ov47Lobby *lobby, u32 a5) {
    u32 msgNo;
    String *string;

    switch (a0->state) {
    case 0:
        string = ov47_02258CEC(msg, 0, 94);
        ov47_022592B4(window, string);
        a0->nextState = 1;
        a0->state = 10;
        break;
    case 1:
        ov47_02259404(window, a2, a5);
        a0->state = 2;
        break;
    case 2: {
        u32 result;

        result = ov47_02259430(window, a5);
        switch (result) {
        case 0:
            a0->state = 3;
            break;
        case 0xFFFFFFFE:
            a0->state = 9;
            break;
        }
    } break;
    case 3:
        if (a0->question.answered == 0) {
            msgNo = 92;
        } else {
            msgNo = 93;
        }
        string = ov47_02258CEC(msg, 0, msgNo);
        ov47_022592B4(window, string);
        a0->nextState = 4;
        a0->state = 10;
        break;
    case 4:
        ov47_0225916C(a0, msg, a2);
        string = ov47_02259D40(&a0->question, msg);
        ov47_02259318(window, string);
        ov47_022591F8(a0);
        ov47_0225921C(a0);
        a0->state = 5;
        break;
    case 5:
        if (gSystem.newKeys & PAD_BUTTON_A) {
            PlaySE(SEQ_SE_DP_SELECT);
            a0->state++;
            break;
        }
        if (gSystem.newKeys & PAD_KEY_UP) {
            if ((a0->cursor - 1) >= 0) {
                PlaySE(SEQ_SE_DP_SELECT78);
                a0->cursor--;
            }
        } else if (gSystem.newKeys & PAD_KEY_DOWN) {
            if ((a0->cursor + 1) < 3) {
                PlaySE(SEQ_SE_DP_SELECT78);
                a0->cursor++;
            }
        }
        ov47_022591F8(a0);
        break;
    case 6:
        ov45_0222A7DC(lobby->unk4, a0->question.questionNo, a0->cursor);
        ov45_0222F4D4(a0->cursor);
        string = ov47_02258CEC(msg, 0, 96);
        ov47_02259318(window, string);
        ov47_02259384(window);
        PlaySE(SEQ_SE_PL_BREC80);
        a0->state = 7;
        break;
    case 7: {
        u32 status;

        status = ov45_0222F524();
        if (status != 1) {
            PlaySE(SEQ_SE_DP_BUTTON9);
            ov47_022593A0(window);
            string = ov47_02258CEC(msg, 0, 97);
            ov47_022592B4(window, string);
            a0->nextState = 8;
            a0->state = 10;
        }
    } break;
    case 8:
        if (a0->question.answered == 0) {
            msgNo = 98;
        } else {
            msgNo = 99;
        }
        string = ov47_02258CEC(msg, 0, msgNo);
        ov47_022592B4(window, string);
        a0->nextState = 9;
        a0->state = 10;
        break;
    case 9:
        ov47_022593CC(window);
        return TRUE;
    case 10:
        if (ov47_022593B4(window) == TRUE) {
            a0->state = a0->nextState;
        }
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }
    return FALSE;
}
