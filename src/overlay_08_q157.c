#include "global.h"

#include "constants/species.h"

typedef struct Ov08PartyMon {
    u8 filler_00[8];
    u16 species;
    u8 filler_0A[0xA];
    u16 curHP;
    u8 filler_16[5];
    u8 filler_1B_0 : 7;
    u8 isEgg : 1;
    u8 filler_1C[0x34];
} Ov08PartyMon;

typedef struct Ov08BattleParty {
    Ov08PartyMon partyPokemon[6];
} Ov08BattleParty;

typedef struct Ov08ButtonDimensions {
    u8 width;
    u8 height;
    u8 filler_2[2];
} Ov08ButtonDimensions;

extern const Ov08ButtonDimensions ov08_02225A56[];

u16 *ov08_02221C20(Ov08BattleParty *battleParty, u8 button, int buttonState, u8 isAltButton);
BOOL ov08_0221DB24(Ov08BattleParty *battleParty, u8 partySlot);

void ov08_02221D2C(Ov08BattleParty *battleParty, u16 *buttonData, u8 button, int buttonState, u8 isAltButton) {
    u16 *rawButtonData = ov08_02221C20(battleParty, button, buttonState, isAltButton);
    u8 width = ov08_02225A56[button].width;
    u8 height = ov08_02225A56[button].height;

    memcpy(buttonData, rawButtonData, width * height * 2);

    switch (button) {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
        if (battleParty->partyPokemon[button].species == SPECIES_NONE) {
            break;
        }
        if (battleParty->partyPokemon[button].isEgg != FALSE) {
            u16 replacementButtonData[2];

            replacementButtonData[0] = buttonData[2 * width + 5];
            replacementButtonData[1] = buttonData[3 * width + 5];
            for (u8 i = 0; i < 2; i++) {
                for (u8 l = 0; l < 9; l++) {
                    buttonData[(2 + i) * width + 6 + l] = replacementButtonData[i];
                }
            }
        } else {
            if (battleParty->partyPokemon[button].curHP == 0) {
                for (u8 i = 0; i < width * height; i++) {
                    buttonData[i] = (buttonData[i] & 0xFFF) | (2 << 12);
                }
            } else if (ov08_0221DB24(battleParty, button - 0) == TRUE) {
                for (u8 i = 0; i < width * height; i++) {
                    buttonData[i] = (buttonData[i] & 0xFFF) | (1 << 12);
                }
            }
        }
        break;
    case 27:
        for (u8 i = 0; i < width * height; i++) {
            buttonData[i] = (buttonData[i] & 0xFFF) | (10 << 12);
        }
        break;
    }
}
