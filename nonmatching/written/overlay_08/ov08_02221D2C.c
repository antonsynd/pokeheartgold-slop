#include "global.h"
#include "string.h"

extern const u8 ov08_02225A56[];
extern const u8 ov08_02225A57[];

u16 *ov08_02221C20(void *ctx, int button, int buttonState, u8 isAltButton);
int ov08_0221DB24(void *ctx, u8 button);

void ov08_02221D2C(u8 *ctx, u16 *buttonData, int button, int buttonState, u8 isAltButton) {
    u16 *rawButtonData = ov08_02221C20(ctx, button, buttonState, isAltButton);
    int width = ov08_02225A56[button * 4];
    int height = ov08_02225A57[button * 4];
    int size = width * height;
    u8 *pokemon;
    u8 i;
    u8 j;

    memcpy(buttonData, rawButtonData, size * 2);

    if (button > 5) {
        if (button != 0x1b) {
            return;
        }
        for (i = 0; i < size; i++) {
            buttonData[i] = (buttonData[i] & 0xfff) | (10 << 12);
        }
        return;
    }
    if (button < 0) {
        return;
    }

    pokemon = ctx + button * 0x50;
    if (*(u16 *)(pokemon + 8) == 0) {
        return;
    }

    if ((pokemon[0x1b] >> 7) != 0) {
        u16 replacementButtonData[2];

        replacementButtonData[0] = buttonData[2 * width + 5];
        replacementButtonData[1] = buttonData[3 * width + 5];

        for (i = 0; i < 2; i++) {
            for (j = 0; j < 9; j++) {
                buttonData[(2 + i) * width + 6 + j] = replacementButtonData[i];
            }
        }
    } else if (*(u16 *)(pokemon + 0x14) == 0) {
        for (i = 0; i < size; i++) {
            buttonData[i] = (buttonData[i] & 0xfff) | (2 << 12);
        }
    } else if (ov08_0221DB24(ctx, button) == 1) {
        for (i = 0; i < size; i++) {
            buttonData[i] = (buttonData[i] & 0xfff) | (1 << 12);
        }
    }
}
