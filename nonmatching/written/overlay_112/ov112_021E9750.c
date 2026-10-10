#include "global.h"

#include "sprite_system.h"
#include "system.h"
#include "unk_02005D10.h"

extern int ov112_021E9888(int a);
extern void ov112_021EA51C(u8 *data, int selection);
extern void ov112_021EA584(u8 *data);

#define STATE(d) (*(u16 *)((d) + 0x1F2E2))
#define SELECTION(d) (*(u32 *)((d) + 0x1EC50))

int ov112_021E9750(u8 *data) {
    int result;
    u32 keys;

    if (STATE(data) == 0) {
        result = ov112_021E9888(0);
        if (result == 0) {
            SELECTION(data) = 0;
            ov112_021EA51C(data, 0);
            ov112_021EA584(data);
            PlaySE(0x5DD);
            STATE(data) = 1;
        } else if (result == 1) {
            SELECTION(data) = 2;
            ov112_021EA51C(data, 1);
            ov112_021EA584(data);
            PlaySE(0x5DD);
            STATE(data) = 1;
        } else if (result == -1) {
            keys = gSystem.newKeys;
            if (keys & PAD_KEY_UP) {
                if (SELECTION(data) != 0) {
                    PlaySE(0x5DC);
                }
                ov112_021EA51C(data, 0);
                SELECTION(data) = 0;
            } else if (keys & PAD_KEY_DOWN) {
                if (SELECTION(data) != 1) {
                    PlaySE(0x5DC);
                }
                ov112_021EA51C(data, 1);
                SELECTION(data) = 1;
            } else if (keys & PAD_BUTTON_A) {
                STATE(data) = 1;
                ov112_021EA584(data);
                PlaySE(0x5DD);
            } else if (keys & PAD_BUTTON_B) {
                ov112_021EA51C(data, 1);
                ov112_021EA584(data);
                SELECTION(data) = 1;
                STATE(data) = 1;
                PlaySE(0x5DC);
            }
        }
    } else if (STATE(data) == 1) {
        if (!ManagedSprite_IsAnimated(*(ManagedSprite **)(data + 0x1E530))) {
            STATE(data) = 2;
        }
    } else if (STATE(data) == 2) {
        if (SELECTION(data) != 0) {
            return 1;
        }
        return 0;
    }
    return 2;
}
