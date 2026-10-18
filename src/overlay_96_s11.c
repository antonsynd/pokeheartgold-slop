#include "global.h"

#include "constants/sndseq.h"

#include "sound.h"
#include "sound_02004A44.h"
#include "sprite.h"

typedef struct Ov96_021E637C {
    u8 filler_000[0x708];
    Sprite *sprite;
    u8 timer;
    u8 filler_70D[0x1C];
    u8 state;
} Ov96_021E637C;

void ov96_021E65D8(Ov96_021E637C *a0);
BOOL ov96_021E661C(Ov96_021E637C *a0);

BOOL ov96_021E637C(Ov96_021E637C *a0) {
    BOOL ret = FALSE;

    switch (a0->state) {
    case 0:
        PlaySE(SEQ_SE_GS_TOUCHPEN);
        ov96_021E65D8(a0);
        a0->state++;
        break;
    case 1:
        if (ov96_021E661C(a0)) {
            a0->state++;
            sub_020053A8(7, 0);
        }
        break;
    case 2:
        if (a0->timer == 0) {
            PlaySE(SEQ_SE_GS_STARTCOUNT);
            Sprite_SetDrawFlag(a0->sprite, TRUE);
            Sprite_SetAnimCtrlSeq(a0->sprite, 0);
        } else if (a0->timer == 21) {
            PlaySE(SEQ_SE_GS_STARTCOUNT);
            Sprite_SetAnimCtrlSeq(a0->sprite, 1);
        } else if (a0->timer == 42) {
            PlaySE(SEQ_SE_GS_STARTCOUNT);
            Sprite_SetAnimCtrlSeq(a0->sprite, 2);
        }
        a0->timer++;
        if (a0->timer > 63) {
            PlaySE(SEQ_SE_GS_CON_016);
            Sprite_SetDrawFlag(a0->sprite, FALSE);
            a0->timer = 0;
            ret = TRUE;
        }
        break;
    }
    return ret;
}
