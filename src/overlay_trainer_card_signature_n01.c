#include "global.h"

#include "overlay_manager.h"
#include "overlay_trainer_card_signature.h"
#include "screen_fade.h"
#include "sprite.h"

typedef struct TrainerCardSignatureMain {
    u8 filler_0000[0x3C];
    SpriteList *spriteList;
    u8 filler_0040[0x2CC];
    int subState;
    u8 filler_0310[0x4008];
    u8 unk4318[4];
} TrainerCardSignatureMain;

typedef int (*TrainerCardSignatureFunc)(TrainerCardSignatureMain *data, int state);

extern const TrainerCardSignatureFunc ov52_021E96C0[];

void ov52_021E921C(void *a0);

int TrainerCardSignature_Main(OverlayManager *manager, int *state) {
    TrainerCardSignatureMain *data = OverlayManager_GetData(manager);

    switch (*state) {
    case 0:
        if (IsPaletteFadeFinished()) {
            *state = 1;
        }
        break;
    case 1:
        if (ov52_021E96C0[data->subState] != NULL) {
            *state = ov52_021E96C0[data->subState](data, *state);
        }
        ov52_021E921C(data->unk4318);
        break;
    case 2:
        if (IsPaletteFadeFinished()) {
            return TRUE;
        }
        break;
    }
    SpriteList_RenderAndAnimateSprites(data->spriteList);
    return FALSE;
}
