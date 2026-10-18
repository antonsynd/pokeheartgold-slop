#include "global.h"

#include "screen_fade.h"

typedef struct Ov31Data {
    u8 filler_000[0x272];
    u8 command;
    u8 filler_273[0x21];
    int selection;
    void *pending;
} Ov31Data;

typedef struct Ov31_0225D7A0 {
    u8 filler_00[0xC];
    int state;
    u8 filler_10[4];
    Ov31Data *data;
} Ov31_0225D7A0;

int ov31_0225DAA4(Ov31_0225D7A0 *a0, int a1);
BOOL ov31_0225D75C(Ov31_0225D7A0 *a0, int selection);
void ov31_0225E774(Ov31_0225D7A0 *a0);
void ov31_0225D83C(Ov31_0225D7A0 *a0, void *pending);

void ov31_0225D7A0(void *unused, Ov31_0225D7A0 *a1) {
    int selection;

    switch (a1->state) {
    case 0:
        if (IsPaletteFadeFinished() == TRUE) {
            a1->state = 1;
        }
        break;
    case 1:
        switch (a1->data->command) {
        case 3:
            selection = ov31_0225DAA4(a1, 0);
            if (selection != -1 && ov31_0225D75C(a1, selection)) {
                a1->data->selection = selection;
            }
            break;
        case 7:
            selection = ov31_0225DAA4(a1, 1);
            if (selection != -1) {
                a1->data->selection = selection;
            }
            break;
        case 11:
            ov31_0225E774(a1);
            break;
        }
        if (a1->data->pending != NULL) {
            ov31_0225D83C(a1, a1->data->pending);
            a1->data->pending = NULL;
        }
        break;
    }
}
