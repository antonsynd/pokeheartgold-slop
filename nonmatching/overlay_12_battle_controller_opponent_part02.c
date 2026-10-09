#include "global.h"

#include "constants/abilities.h"
#include "constants/battle.h"
#include "constants/moves.h"
#include "constants/pokemon.h"

#include "battle/battle_02261FD4.h"
#include "battle/battle_hp_bar.h"
#include "battle/battle_input.h"
#include "battle/battle_system.h"
#include "battle/party_gauge.h"

#include "filesystem.h"
#include "pokemon.h"
#include "pokepic.h"
#include "unk_02013FDC.h"

typedef struct UnkStruct_Ov12_022591F4 {
    u8 command;
    u8 partySlot : 4;
    u8 mimickedMoveSlot : 4;
    u16 curHP;
    u32 status;
    u32 knockedOffItemsMask;
    u16 heldItem;
    u16 moves[4];
    u8 ppCur[4];
    u8 filler_1A[2];
    u32 statusVolatile;
    u32 formNum;
    u32 ability;
    u16 updateStats;
    u16 updateForm;
} UnkStruct_Ov12_022591F4;

typedef struct UnkStruct_Ov12_022593FC {
    u8 command;
    u8 formNum;
    u16 species;
    u8 gender;
    u8 isShiny;
    u8 filler_6[2];
    u32 personality;
} UnkStruct_Ov12_022593FC;

typedef struct UnkStruct_Ov12_02259358 {
    u8 command;
    u8 ability;
    u16 move;
} UnkStruct_Ov12_02259358;

void ov12_0226430C(BattleSystem *battleSystem, int battler, int command);
void ov12_02259928(OpponentData *opponentData);
int ov07_02234B5C(u8 battlerType, int arg1);

void ov12_0225A9E0(BattleSystem *battleSystem, OpponentData *opponentData, void *message);
void ov12_0225AA6C(BattleSystem *battleSystem, OpponentData *opponentData, void *message);
void ov12_0225AAE0(BattleSystem *battleSystem, OpponentData *opponentData, void *message);
void ov12_0225ABB8(BattleSystem *battleSystem, OpponentData *opponentData, void *message);
void ov12_0225AC1C(BattleSystem *battleSystem, OpponentData *opponentData, void *message);
void ov12_0225ACB0(BattleSystem *battleSystem, OpponentData *opponentData, void *message);
void ov12_0225ACE8(BattleSystem *battleSystem, OpponentData *opponentData, void *message);
void ov12_0225AD44(BattleSystem *battleSystem, OpponentData *opponentData, void *message);
void ov12_0225AD9C(BattleSystem *battleSystem, OpponentData *opponentData, void *message);
void ov12_0225AE48(BattleSystem *battleSystem, OpponentData *opponentData, void *message);
void ov12_0225AED8(BattleSystem *battleSystem, OpponentData *opponentData, void *message);
void ov12_0225AF74(BattleSystem *battleSystem, OpponentData *opponentData, void *message);
void ov12_0225B028(BattleSystem *battleSystem, OpponentData *opponentData, void *message);
void ov12_0225B060(BattleSystem *battleSystem, OpponentData *opponentData, void *message);
void ov12_0225B0A0(BattleSystem *battleSystem, OpponentData *opponentData, void *message);
void ov12_0225B0E8(BattleSystem *battleSystem, OpponentData *opponentData, void *message);
void ov12_0225ABE8(BattleSystem *battleSystem, OpponentData *opponentData);
void ov12_0225ADF4(BattleSystem *battleSystem, OpponentData *opponentData);
void ov12_0225AEA0(BattleSystem *battleSystem, OpponentData *opponentData);
void ov12_0225A9B0(BattleSystem *battleSystem, OpponentData *opponentData);
void ov12_0225B120(BattleSystem *battleSystem, OpponentData *opponentData, void *message);
void ov12_0225B16C(BattleSystem *battleSystem, OpponentData *opponentData, void *message);

void ov12_022590A0(BattleSystem *battleSystem, OpponentData *opponentData);
void ov12_022590D4(BattleSystem *battleSystem, OpponentData *opponentData);
void ov12_022590E8(BattleSystem *battleSystem, OpponentData *opponentData);
void ov12_022590FC(BattleSystem *battleSystem, OpponentData *opponentData);
void ov12_02259110(BattleSystem *battleSystem, OpponentData *opponentData);
void ov12_02259124(BattleSystem *battleSystem, OpponentData *opponentData);
void ov12_02259134(BattleSystem *battleSystem, OpponentData *opponentData);
void ov12_02259148(BattleSystem *battleSystem, OpponentData *opponentData);
void ov12_0225915C(BattleSystem *battleSystem, OpponentData *opponentData);
void ov12_02259170(BattleSystem *battleSystem, OpponentData *opponentData);
void ov12_02259184(BattleSystem *battleSystem, OpponentData *opponentData);
void ov12_02259198(BattleSystem *battleSystem, OpponentData *opponentData);
void ov12_022591A8(BattleSystem *battleSystem, OpponentData *opponentData);
void ov12_022591BC(BattleSystem *battleSystem, OpponentData *opponentData);
void ov12_022591CC(BattleSystem *battleSystem, OpponentData *opponentData);
void ov12_022591E0(BattleSystem *battleSystem, OpponentData *opponentData);
void ov12_022591F4(BattleSystem *battleSystem, OpponentData *opponentData);
void ov12_022592D0(BattleSystem *battleSystem, OpponentData *opponentData);
void ov12_02259328(BattleSystem *battleSystem, OpponentData *opponentData);
void ov12_02259358(BattleSystem *battleSystem, OpponentData *opponentData);
void ov12_022593D4(BattleSystem *battleSystem, OpponentData *opponentData);
void ov12_022593E8(BattleSystem *battleSystem, OpponentData *opponentData);
void ov12_022593FC(BattleSystem *battleSystem, OpponentData *opponentData);
void ov12_022594F4(BattleSystem *battleSystem, OpponentData *opponentData);
void ov12_02259514(BattleSystem *battleSystem, OpponentData *opponentData);
void ov12_022595B8(BattleSystem *battleSystem, OpponentData *opponentData);
void ov12_022595CC(BattleSystem *battleSystem, OpponentData *opponentData);
void ov12_022595E0(BattleSystem *battleSystem, OpponentData *opponentData);
void ov12_0225961C(BattleSystem *battleSystem, OpponentData *opponentData);
void ov12_02259658(BattleSystem *battleSystem, OpponentData *opponentData);

void ov12_022590A0(BattleSystem *battleSystem, OpponentData *opponentData) {
    if (Pokepic_GetAttr(opponentData->pokepic, 6) == 1) {
        ov12_0226430C(battleSystem, opponentData->unk194, 0x17);
    } else {
        ov12_0225A9B0(battleSystem, opponentData);
    }

    ov12_02259928(opponentData);
}

void ov12_022590D4(BattleSystem *battleSystem, OpponentData *opponentData) {
    void *message = &opponentData->unk8C[8];

    ov12_0225A9E0(battleSystem, opponentData, message);
    ov12_02259928(opponentData);
}

void ov12_022590E8(BattleSystem *battleSystem, OpponentData *opponentData) {
    void *message = &opponentData->unk8C[8];

    ov12_0225AA6C(battleSystem, opponentData, message);
    ov12_02259928(opponentData);
}

void ov12_022590FC(BattleSystem *battleSystem, OpponentData *opponentData) {
    void *message = &opponentData->unk8C[8];

    ov12_0225AAE0(battleSystem, opponentData, message);
    ov12_02259928(opponentData);
}

void ov12_02259110(BattleSystem *battleSystem, OpponentData *opponentData) {
    void *message = &opponentData->unk8C[8];

    ov12_0225ABB8(battleSystem, opponentData, message);
    ov12_02259928(opponentData);
}

void ov12_02259124(BattleSystem *battleSystem, OpponentData *opponentData) {
    ov12_0225ABE8(battleSystem, opponentData);
    ov12_02259928(opponentData);
}

void ov12_02259134(BattleSystem *battleSystem, OpponentData *opponentData) {
    void *message = &opponentData->unk8C[8];

    ov12_0225AC1C(battleSystem, opponentData, message);
    ov12_02259928(opponentData);
}

void ov12_02259148(BattleSystem *battleSystem, OpponentData *opponentData) {
    void *message = &opponentData->unk8C[8];

    ov12_0225ACB0(battleSystem, opponentData, message);
    ov12_02259928(opponentData);
}

void ov12_0225915C(BattleSystem *battleSystem, OpponentData *opponentData) {
    void *message = &opponentData->unk8C[8];

    ov12_0225ACE8(battleSystem, opponentData, message);
    ov12_02259928(opponentData);
}

void ov12_02259170(BattleSystem *battleSystem, OpponentData *opponentData) {
    void *message = &opponentData->unk8C[8];

    ov12_0225AD44(battleSystem, opponentData, message);
    ov12_02259928(opponentData);
}

void ov12_02259184(BattleSystem *battleSystem, OpponentData *opponentData) {
    void *message = &opponentData->unk8C[8];

    ov12_0225AD9C(battleSystem, opponentData, message);
    ov12_02259928(opponentData);
}

void ov12_02259198(BattleSystem *battleSystem, OpponentData *opponentData) {
    ov12_0225ADF4(battleSystem, opponentData);
    ov12_02259928(opponentData);
}

void ov12_022591A8(BattleSystem *battleSystem, OpponentData *opponentData) {
    void *message = &opponentData->unk8C[8];

    ov12_0225AE48(battleSystem, opponentData, message);
    ov12_02259928(opponentData);
}

void ov12_022591BC(BattleSystem *battleSystem, OpponentData *opponentData) {
    ov12_0225AEA0(battleSystem, opponentData);
    ov12_02259928(opponentData);
}

void ov12_022591CC(BattleSystem *battleSystem, OpponentData *opponentData) {
    void *message = &opponentData->unk8C[8];

    ov12_0225AED8(battleSystem, opponentData, message);
    ov12_02259928(opponentData);
}

void ov12_022591E0(BattleSystem *battleSystem, OpponentData *opponentData) {
    void *message = &opponentData->unk8C[8];

    ov12_0225AF74(battleSystem, opponentData, message);
    ov12_02259928(opponentData);
}

void ov12_022591F4(BattleSystem *battleSystem, OpponentData *opponentData) {
    UnkStruct_Ov12_022591F4 *message = (UnkStruct_Ov12_022591F4 *)&opponentData->unk8C[8];
    int i;
    Pokemon *mon = BattleSystem_GetPartyMon(battleSystem, opponentData->unk194, message->partySlot);

    if ((message->statusVolatile & 0x200000) == 0) {
        for (i = 0; i < 4; i++) {
            if ((message->mimickedMoveSlot & MaskOfFlagNo(i)) == 0) {
                SetMonData(mon, MON_DATA_MOVE1 + i, &message->moves[i]);
                SetMonData(mon, MON_DATA_MOVE1_PP + i, &message->ppCur[i]);
            }
        }
    }

    if ((message->knockedOffItemsMask & MaskOfFlagNo(message->partySlot)) == 0) {
        SetMonData(mon, MON_DATA_HELD_ITEM, &message->heldItem);
    }

    SetMonData(mon, MON_DATA_HP, &message->curHP);
    SetMonData(mon, MON_DATA_STATUS, &message->status);

    if (message->updateForm) {
        SetMonData(mon, MON_DATA_FORM, &message->formNum);
    }

    if (message->updateStats) {
        SetMonData(mon, MON_DATA_ABILITY, &message->ability);
        CalcMonLevelAndStats(mon);
    }

    ov12_0226430C(battleSystem, opponentData->unk194, message->command);
    ov12_02259928(opponentData);
}

void ov12_022592D0(BattleSystem *battleSystem, OpponentData *opponentData) {
    u32 battleType = BattleSystem_GetBattleType(battleSystem);
    BattleInput *battleInput = BattleSystem_GetBattleInput(battleSystem);

    if (opponentData->unk196 == 0) {
        if ((battleType & BATTLE_TYPE_MULTI) || opponentData->battlerType != BATTLER_TYPE_PLAYER_SIDE_SLOT_2) {
            BattleInput_StartMenuScrollHorizontalTask(battleInput, -0xD00, 0);
        }
    }

    ov12_0226430C(battleSystem, opponentData->unk194, opponentData->unk8C[8]);
    ov12_02259928(opponentData);
}

void ov12_02259328(BattleSystem *battleSystem, OpponentData *opponentData) {
    ov12_02264EB4(&opponentData->hpBar);
    ov12_02262014(opponentData);
    ov12_0226430C(battleSystem, opponentData->unk194, opponentData->unk8C[8]);
    ov12_02259928(opponentData);
}

void ov12_02259358(BattleSystem *battleSystem, OpponentData *opponentData) {
    UnkStruct_Ov12_02259358 *message = (UnkStruct_Ov12_02259358 *)&opponentData->unk8C[8];
    Pokemon *mon;
    int i, partyCount, ability;
    u32 clearedStatus = 0;

    partyCount = BattleSystem_GetPartySize(battleSystem, opponentData->unk194);

    for (i = 0; i < partyCount; i++) {
        mon = BattleSystem_GetPartyMon(battleSystem, opponentData->unk194, i);

        if (message->ability == ABILITY_MOLD_BREAKER) {
            ability = 0;
        } else {
            ability = GetMonData(mon, MON_DATA_ABILITY, NULL);
        }

        if (message->move != MOVE_HEAL_BELL || ability != ABILITY_SOUNDPROOF) {
            SetMonData(mon, MON_DATA_STATUS, &clearedStatus);
        }
    }

    ov12_0226430C(battleSystem, opponentData->unk194, message->command);
    ov12_02259928(opponentData);
}

void ov12_022593D4(BattleSystem *battleSystem, OpponentData *opponentData) {
    void *message = &opponentData->unk8C[8];

    ov12_0225B028(battleSystem, opponentData, message);
    ov12_02259928(opponentData);
}

void ov12_022593E8(BattleSystem *battleSystem, OpponentData *opponentData) {
    void *message = &opponentData->unk8C[8];

    ov12_0225B060(battleSystem, opponentData, message);
    ov12_02259928(opponentData);
}

void ov12_022593FC(BattleSystem *battleSystem, OpponentData *opponentData) {
    UnkStruct_Ov12_022593FC *message = (UnkStruct_Ov12_022593FC *)&opponentData->unk8C[8];
    PokepicTemplate pokepicTemplate;
    PokepicTemplate *pokepicTemplatePtr;
    int y;
    int face;

    if (opponentData->battlerType & 1) {
        face = 2;
    } else {
        face = 0;
    }

    GetMonSpriteCharAndPlttNarcIdsEx(&pokepicTemplate, message->species, message->gender, face, message->isShiny, message->formNum, message->personality);

    pokepicTemplatePtr = Pokepic_GetTemplate(opponentData->pokepic);
    *pokepicTemplatePtr = pokepicTemplate;

    Pokepic_ScheduleReloadFromNarc(opponentData->pokepic);
    sub_02014540(pokepicTemplatePtr->narcID, pokepicTemplatePtr->charDataID, HEAP_ID_BATTLE, ov12_0223BB94(ov12_0223A99C(battleSystem), opponentData->unk194), message->personality, FALSE, face, pokepicTemplatePtr->species);

    ov12_0223BBA8(ov12_0223A99C(battleSystem), opponentData->unk194, pokepicTemplatePtr->narcID);
    ov12_0223BBC0(ov12_0223A99C(battleSystem), opponentData->unk194, pokepicTemplatePtr->palDataID);

    y = GetMonPicHeightBySpeciesGenderForm(message->species, message->gender, face, message->formNum, message->personality);
    ov12_0223BBD8(ov12_0223A99C(battleSystem), opponentData->unk194, y);

    y = ov07_02234B5C(opponentData->battlerType, 1) + y;
    Pokepic_SetAttr(opponentData->pokepic, 1, y);

    ov12_0226430C(battleSystem, opponentData->unk194, message->command);
    ov12_02259928(opponentData);
}

void ov12_022594F4(BattleSystem *battleSystem, OpponentData *opponentData) {
    BattleSystem_SetBackground(battleSystem);
    ov12_0226430C(battleSystem, opponentData->unk194, 0x2E);
    ov12_02259928(opponentData);
}

void ov12_02259514(BattleSystem *battleSystem, OpponentData *opponentData) {
    if (opponentData->unk196 == 0) {
        BattleInput *battleInput;
        int partner;
        NARC *bgNarc = NARC_New(7, HEAP_ID_BATTLE);
        NARC *objNarc = NARC_New(8, HEAP_ID_BATTLE);

        battleInput = BattleSystem_GetBattleInput(battleSystem);

        BattleInput_ChangeMenu(bgNarc, objNarc, battleInput, 0, 0, NULL);
        BattleInput_Deadstriped_022698AC(battleInput, 0);

        NARC_Delete(bgNarc);
        NARC_Delete(objNarc);

        partner = BattleSystem_GetBattlerIdPartner(battleSystem, opponentData->unk194);

        if (partner != opponentData->unk194) {
            ov12_02265D74(BattleSystem_GetHpBar(battleSystem, partner));
        }

        ov12_02264EB4(&opponentData->hpBar);
        BattleInput_DisableBallGauge(battleInput);
        ov12_02262014(opponentData);
    }

    ov12_0226430C(battleSystem, opponentData->unk194, 0x2F);
    ov12_02259928(opponentData);
}

void ov12_022595B8(BattleSystem *battleSystem, OpponentData *opponentData) {
    void *message = &opponentData->unk8C[8];

    ov12_0225B0A0(battleSystem, opponentData, message);
    ov12_02259928(opponentData);
}

void ov12_022595CC(BattleSystem *battleSystem, OpponentData *opponentData) {
    void *message = &opponentData->unk8C[8];

    ov12_0225B0E8(battleSystem, opponentData, message);
    ov12_02259928(opponentData);
}

void ov12_022595E0(BattleSystem *battleSystem, OpponentData *opponentData) {
    void *message = &opponentData->unk8C[8];

    if (BattleSystem_GetFieldSide(battleSystem, opponentData->unk194)) {
        ov12_0225B120(battleSystem, opponentData, message);
    } else {
        ov12_0226430C(battleSystem, opponentData->unk194, 0x32);
    }

    ov12_02259928(opponentData);
}

void ov12_0225961C(BattleSystem *battleSystem, OpponentData *opponentData) {
    void *message = &opponentData->unk8C[8];

    if (BattleSystem_GetFieldSide(battleSystem, opponentData->unk194)) {
        ov12_0225B16C(battleSystem, opponentData, message);
    } else {
        ov12_0226430C(battleSystem, opponentData->unk194, 0x33);
    }

    ov12_02259928(opponentData);
}

void ov12_02259658(BattleSystem *battleSystem, OpponentData *opponentData) {
    SpriteSystem *spriteSystem = BattleSystem_GetSpriteSystem(battleSystem);
    SpriteManager *spriteManager = BattleSystem_GetSpriteManager(battleSystem);
    PaletteData *paletteData = BattleSystem_GetPaletteData(battleSystem);

    PartyGauge_LoadGraphics(spriteSystem, spriteManager, paletteData);
    ov12_0226430C(battleSystem, opponentData->unk194, 0x34);
    ov12_02259928(opponentData);
}
