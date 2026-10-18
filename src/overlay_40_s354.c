#include "global.h"

#include "sprite_system.h"
#include "unk_02013534.h"

typedef struct Ov40Button {
    u8 filler_00[4];
    ManagedSprite *sprite;
    TextOBJ *text;
    u8 filler_0C[0x10];
} Ov40Button;

typedef struct Ov40Menu {
    u8 filler_000[0x114];
    Ov40Button buttons[4];
} Ov40Menu;

typedef struct Ov40App {
    u8 filler_000[0x14];
    u8 unk14[0x84C];
    Ov40Menu *menu;
} Ov40App;

typedef struct Ov40IntList4 {
    int values[4];
} Ov40IntList4;

extern const Ov40IntList4 ov40_022454C0;
extern const Ov40IntList4 ov40_022454D0;

void ov40_0222D78C(Ov40App *app, int vram);
ManagedSprite *ov40_0222D800(Ov40App *app, int vram);
void ov40_0222D5AC(Ov40Button *button, void *a1, int vram);
void ov40_0222D66C(Ov40Button *button, void *a1, int a2);
void ov40_0223B29C(Ov40Button *button, Ov40App *app, int a2);

void ov40_0223B374(Ov40App *app) {
    Ov40Menu *menu = app->menu;
    int i;
    Ov40IntList4 widths = ov40_022454C0;
    Ov40IntList4 anims = ov40_022454D0;

    ov40_0222D78C(app, NNS_G2D_VRAM_TYPE_2DSUB);
    for (i = 0; i < 4; i++) {
        menu->buttons[i].sprite = ov40_0222D800(app, NNS_G2D_VRAM_TYPE_2DSUB);
        ov40_0222D5AC(&menu->buttons[i], app->unk14, NNS_G2D_VRAM_TYPE_2DSUB);
        ov40_0222D66C(&menu->buttons[i], app->unk14, widths.values[i]);
        if (i != 3) {
            ov40_0223B29C(&menu->buttons[i], app, i + 1);
        }
        ManagedSprite_SetPositionXY(menu->buttons[i].sprite, 42 + 8, (25 + (36 * (i)) + (16 * (5 - 4))) + 64);
        ManagedSprite_SetAnim(menu->buttons[i].sprite, anims.values[i]);
        sub_020136B4(menu->buttons[i].text, 36, -8);
        TextOBJ_SetSpritesDrawFlag(menu->buttons[i].text, TRUE);
    }
}
