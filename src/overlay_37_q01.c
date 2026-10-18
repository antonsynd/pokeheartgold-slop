#include "global.h"

#include "overlay_manager.h"
#include "screen_fade.h"
#include "sprite.h"
#include "text.h"
#include "unk_02032844.h"
#include "unk_02035900.h"

typedef struct Ov37App Ov37App;

typedef struct Ov37State {
    int (*func)(Ov37App *app, int state);
    BOOL waitForAll;
} Ov37State;

struct Ov37App {
    u8 filler_0000[0x34];
    SpriteList *spriteList;
    u8 filler_0038[0x240];
    u8 unk278[0x88];
    int state;
    int substate;
    u8 filler_0308[0x406C];
    u8 unk4374[0x5040];
    u32 connectedBitmap;
};

extern const Ov37State ov37_021E7D20[];

void ov37_021E784C(Ov37App *app, int state);
int ov37_021E75C4(void);
void ov37_021E7478(void *a0, int a1, u32 color, Ov37App *app);
int ov37_021E76F0(Ov37App *app);
void ov37_021E741C(void *a0);

BOOL ov37_021E5A84(OverlayManager *man, int *state) {
    Ov37App *app = OverlayManager_GetData(man);

    if (sub_0203769C() == 0 && app->connectedBitmap != 0) {
        app->connectedBitmap &= sub_02033250();
    }
    app->state = *state;
    ov37_021E784C(app, *state);
    switch (*state) {
    case 0:
        if (IsPaletteFadeFinished()) {
            if (sub_0203769C() != 0) {
                if (ov37_021E75C4() >= 2) {
                    sub_02037030(128, NULL, 0);
                    *state = 1;
                }
                break;
            } else {
                *state = 1;
            }
        }
        break;
    case 1:
        if (ov37_021E7D20[app->substate].func != NULL) {
            *state = ov37_021E7D20[app->substate].func(app, *state);
        }
        ov37_021E7478(app->unk278, 0, MAKE_TEXT_COLOR(14, 13, 15), app);
        if (sub_0203769C() == 0) {
            int next = ov37_021E76F0(app);

            if (*state == 1) {
                *state = next;
            }
        }
        ov37_021E741C(app->unk4374);
        break;
    case 2:
        if (ov37_021E7D20[app->substate].func != NULL && ov37_021E7D20[app->substate].waitForAll) {
            *state = ov37_021E7D20[app->substate].func(app, *state);
        }
        break;
    case 3:
        if (IsPaletteFadeFinished()) {
            return TRUE;
        }
        break;
    }
    SpriteList_RenderAndAnimateSprites(app->spriteList);
    return FALSE;
}
