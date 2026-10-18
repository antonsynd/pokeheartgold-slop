#include "global.h"

#include "bag.h"
#include "game_stats.h"
#include "heap.h"
#include "options.h"
#include "overlay_manager.h"
#include "pokedex.h"
#include "pokemon.h"
#include "unk_0202DB34.h"
#include "unk_020755E8.h"

typedef struct Ov70PlayerData {
    UnkStruct_0202DB34 *globalTrade;
    u8 filler_04[0xC];
    Pokedex *pokedex;
    u8 filler_14[0x10];
    Options *options;
    GameStats *records;
    Bag *bag;
    u8 filler_30[8];
    u32 showContestData;
} Ov70PlayerData;

typedef struct Ov70_02241648 {
    Ov70PlayerData *playerData;
    u8 filler_004[0x20];
    int screenArgument;
    u8 filler_028[4];
    int currentScreenInstruction;
    u8 filler_030[0x88];
    OverlayManager *appMan;
    u8 filler_0BC[0x54];
    EvolutionTaskData *evolutionData;
} Ov70_02241648;

void ov70_02238E50(Ov70_02241648 *a0, int screen, int argument);
Pokemon *ov70_02241868(Ov70_02241648 *a0, int argument);
void ov70_022418A4(Ov70_02241648 *a0);

int ov70_02241648(Ov70_02241648 *a0, int unused) {
    int loopState = 3;

    switch (a0->currentScreenInstruction) {
    case 0:
        if (OverlayManager_Run(a0->appMan)) {
            OverlayManager_Delete(a0->appMan);

            if (a0->screenArgument == 9) {
                Pokemon *receivingMon = ov70_02241868(a0, a0->screenArgument);
                int heldItem = GetMonData(receivingMon, MON_DATA_HELD_ITEM, NULL);
                int evolutionType;
                int evolvedSpecies = GetMonEvolution(NULL, receivingMon, 1, heldItem, &evolutionType);

                if (evolvedSpecies != SPECIES_NONE) {
                    a0->evolutionData = sub_02075A7C(NULL, receivingMon, evolvedSpecies, a0->playerData->options, a0->playerData->showContestData, a0->playerData->pokedex, a0->playerData->bag, a0->playerData->records, evolutionType, 4, HEAP_ID_61);
                    a0->currentScreenInstruction = 1;
                } else {
                    ov70_02238E50(a0, 1, 0);
                    loopState = 4;
                }
            } else if (a0->screenArgument == 8 || a0->screenArgument == 10) {
                Pokemon *tradedMon = ov70_02241868(a0, a0->screenArgument);
                Pokemon *storedMon = AllocMonZeroed(HEAP_ID_61);

                sub_0202DB64(a0->playerData->globalTrade, storedMon);

                if (GetMonData(tradedMon, MON_DATA_SPECIES, NULL) != GetMonData(storedMon, MON_DATA_SPECIES, NULL) || GetMonData(tradedMon, MON_DATA_PERSONALITY, NULL) != GetMonData(storedMon, MON_DATA_PERSONALITY, NULL)) {
                    int heldItem = GetMonData(tradedMon, MON_DATA_HELD_ITEM, NULL);
                    int evolutionType;
                    int evolvedSpecies = GetMonEvolution(NULL, tradedMon, 1, heldItem, &evolutionType);

                    if (evolvedSpecies != SPECIES_NONE) {
                        a0->evolutionData = sub_02075A7C(NULL, tradedMon, evolvedSpecies, a0->playerData->options, a0->playerData->showContestData, a0->playerData->pokedex, a0->playerData->bag, a0->playerData->records, evolutionType, 4, HEAP_ID_61);
                        a0->currentScreenInstruction = 1;
                    } else {
                        ov70_02238E50(a0, 1, 0);
                        loopState = 4;
                    }
                } else {
                    ov70_02238E50(a0, 1, 0);
                    loopState = 4;
                }

                Heap_Free(storedMon);
            } else {
                ov70_02238E50(a0, 1, 0);
                loopState = 4;
            }
        }
        break;
    case 1:
        if (sub_02075D3C(a0->evolutionData)) {
            sub_02075D4C(a0->evolutionData);
            ov70_022418A4(a0);
            GX_SetVisibleWnd(GX_WNDMASK_NONE);
            ov70_02238E50(a0, 7, 12);
            loopState = 4;
        }
        break;
    }

    return loopState;
}
