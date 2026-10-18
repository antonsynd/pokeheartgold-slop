#include "global.h"

#include "sprite_system.h"

// Called as matched
#define ManagedSprite_SetDrawPriority(sprite, priority) ((void (*)(ManagedSprite *, int))ManagedSprite_SetDrawPriority)(sprite, priority)

typedef struct Ov40RecordParty {
    u16 species[12];
    u8 forms[6];
} Ov40RecordParty;

typedef struct Ov40Record {
    u8 filler_00[0x80];
    Ov40RecordParty party;
} Ov40Record;

typedef struct Ov40PartyIcon {
    int index;
    ManagedSprite *sprite;
} Ov40PartyIcon;

typedef struct Ov40PartyIcons {
    void *resources;
    u8 filler_04[4];
    int count;
    Ov40PartyIcon icons[5][6];
} Ov40PartyIcons;

typedef struct Ov40Menu {
    u8 filler_0000[0x2080];
    Ov40PartyIcons partyIcons;
} Ov40Menu;

typedef struct Ov40App {
    u8 filler_0000[0x4A4];
    s16 scrollOffset;
    u8 filler_04A6[0x3BA];
    Ov40Menu *menu;
    u8 filler_0864[0x1DA4];
    Ov40Record *records[1];
} Ov40App;

typedef struct Ov40SlotOrder {
    int slots[2][6];
} Ov40SlotOrder;

extern const Ov40SlotOrder ov40_0224554C;

BOOL ov40_022303B8(Ov40RecordParty *party);
ManagedSprite *ov40_0222FEA0(Ov40App *app, void *resources, int index, int species, int form, int a5);
void ov40_0223A3BC(Ov40App *app);

void ov40_0223D008(Ov40App *app) {
    int i, j;
    Ov40Menu *menu = app->menu;
    int species;
    int form;
    int a5;
    int offset = app->scrollOffset;
    Ov40SlotOrder order = ov40_0224554C;
    int speciesList[6] = { 0, 0, 0, 0, 0, 0 };
    int formList[6] = { 0, 0, 0, 0, 0, 0 };
    int isDouble = 0;

    for (i = 0; i < 5; i++) {
        if (app->records[offset + i] == NULL) {
            continue;
        }

        if (ov40_022303B8(&app->records[offset + i]->party)) {
            isDouble = 1;
        } else {
            isDouble = 0;
        }

        {
            int k, l;
            int count = 0;

            for (k = 0; k < 6; k++) {
                speciesList[k] = 0;
                formList[k] = 0;
            }

            for (k = 0; k < 3; k++) {
                species = app->records[offset + i]->party.species[order.slots[isDouble][k]];

                if (species == 0) {
                    continue;
                }

                speciesList[count] = species;
                formList[count] = app->records[offset + i]->party.forms[order.slots[isDouble][k]];
                count++;
            }

            if (ov40_022303B8(&app->records[offset + i]->party)) {
                count = 3;
            }

            for (k = 3; k < 6; k++) {
                species = app->records[offset + i]->party.species[order.slots[isDouble][k]];

                if (species == 0) {
                    continue;
                }

                speciesList[count] = species;
                formList[count] = app->records[offset + i]->party.forms[order.slots[isDouble][k]];
                count++;
            }
        }

        for (j = 0; j < 6; j++) {
            species = speciesList[j];
            form = formList[j];
            a5 = 0;

            menu->partyIcons.icons[i][j].index = menu->partyIcons.count;
            menu->partyIcons.icons[i][j].sprite = ov40_0222FEA0(app, menu->partyIcons.resources, menu->partyIcons.icons[i][j].index, species, form, a5);

            if (menu->partyIcons.icons[i][j].sprite) {
                ManagedSprite_SetDrawPriority(menu->partyIcons.icons[i][j].sprite, 6 - j);
            }

            menu->partyIcons.count++;
        }
    }

    ov40_0223A3BC(app);
}
