#include "global.h"
#include "battle/battle.h"
#include "battle/battle_system.h"
#include "battle/battle_input.h"
#include "battle/battle_022378C0.h"
#include "bg_window.h"
#include "heap.h"
#include "palette.h"
#include "party.h"
#include "pokemon.h"
#include "sys_task_api.h"
#include "unk_020163E0.h"

typedef struct {
    Party *party;
    u8 pad_04[4];
    BattleSystem *battleSys;
    u32 heapID;
    u8 pad_10;
    u8 selectedPartyIndex;
    u8 battlePartyMode;
    u8 pad_13;
    u8 playerPokemonPartySlot;
    u8 partnerPokemonPartySlot;
    u8 pad_16[0xC];
    u16 doublesSelection;
    u16 canSwitch;
    u8 pad_26[2];
    u32 battler;
    u8 pokemonPartySlots[6];
    u8 isCursorEnabled;
    u8 pad_33[2];
    u8 selectedBattleBagItem;
    u8 battlePartyExited;
    u8 pad_37;
} UnkStruct_ov12_0225F4E0_Ctx;

typedef struct {
    BattleSystem *battleSys;
    UnkStruct_ov12_0225F4E0_Ctx *ctx;
    u8 command;
    u8 battler;
    u8 state;
    u8 selectedBattleBagItem;
    u8 partySlots[4];
    u32 canSwitch;
    u16 doublesSelection;
    u8 listMode;
    u8 isCursorEnabled;
    u8 battlersSwitchingMask;
    u8 pad_19[3];
    u8 partyOrder[4][6];
} UnkStruct_ov12_0225F4E0;

void ov10_0221BE20(void *ctx);
void ov12_02263360(BattleSystem *battleSys, int battler, int input);
void ov12_0226430C(BattleSystem *battleSys, u8 battler, u8 command);

#define PARTY_ORDER(d, b, i) (((u8 *)(d))[0x1C + (b) * 6 + (i)])

void ov12_0225F4E0(SysTask *task, void *data)
{
    UnkStruct_ov12_0225F4E0 *d = data;
    PaletteData *paletteData = BattleSystem_GetPaletteData(d->battleSys);

    switch (d->state) {
    case 0: {
        Window *window = BattleSystem_GetWindow(d->battleSys, 0);

        FillWindowPixelBuffer(window, 0xff);
        CopyWindowPixelsToVram_TextMode(window);

        d->isCursorEnabled = BattleInput_GetKeyPressed(BattleSystem_GetBattleInput(d->battleSys));
        sub_0201649C(BattleSystem_GetMessageIcon(d->battleSys), 1);
        PaletteData_BeginPaletteFade(paletteData, 5, 0xc00, -8, 0, 7, 0);
        PaletteData_BeginPaletteFade(paletteData, 10, 0xffff, -8, 0, 16, 0);
        d->state++;
        return;
    }
    case 1:
        if (PaletteData_GetSelectedBuffersBitmask(paletteData) == 0) {
            int i;
            int battler;
            int battler1, battler2;
            Pokemon *monSrc, *monDst;
            Party *party;
            u32 canSwitch;

            ov12_02237B0C(d->battleSys);

            d->ctx = Heap_Alloc(5, 0x38);
            d->ctx->party = SaveArray_Party_Alloc(5);

            if ((BattleSystem_GetBattleType(d->battleSys) & 0xc) == 0xc || BattleSystem_GetBattleType(d->battleSys) == 0xcb) {
                if (ov12_0223AB0C(d->battleSys, d->battler) == 2) {
                    battler1 = d->battler;
                    battler2 = BattleSystem_GetBattlerIdPartner(d->battleSys, battler1);
                } else {
                    battler1 = BattleSystem_GetBattlerIdPartner(d->battleSys, d->battler);
                    battler2 = d->battler;
                }

                monSrc = AllocMonZeroed(5);

                for (i = 0; i < 6; i++) {
                    Party_AddMon(d->ctx->party, monSrc);
                }

                Heap_Free(monSrc);

                for (i = 0; i < BattleSystem_GetPartySize(d->battleSys, battler1); i++) {
                    monSrc = BattleSystem_GetPartyMon(d->battleSys, battler1, PARTY_ORDER(d, battler1, i));
                    monDst = Party_GetMonByIndex(d->ctx->party, i * 2);
                    CopyPokemonToPokemon(monSrc, monDst);
                    d->ctx->pokemonPartySlots[i * 2] = PARTY_ORDER(d, battler1, i);
                }

                for (i = 0; i < BattleSystem_GetPartySize(d->battleSys, battler2); i++) {
                    monSrc = BattleSystem_GetPartyMon(d->battleSys, battler2, PARTY_ORDER(d, battler2, i));
                    monDst = Party_GetMonByIndex(d->ctx->party, i * 2 + 1);
                    CopyPokemonToPokemon(monSrc, monDst);
                    d->ctx->pokemonPartySlots[i * 2 + 1] = PARTY_ORDER(d, battler2, i);
                }

                if (ov12_0223AB0C(d->battleSys, d->battler) == 4) {
                    d->ctx->selectedPartyIndex = 1;
                } else {
                    d->ctx->selectedPartyIndex = 0;
                }
            } else {
                if ((BattleSystem_GetBattleType(d->battleSys) & 2) && !(BattleSystem_GetBattleType(d->battleSys) & 8)) {
                    battler = d->battler & 1;
                } else {
                    battler = d->battler;
                }

                d->ctx->selectedPartyIndex = ov12_0223AB0C(d->battleSys, d->battler) == 4;

                party = BattleSystem_GetParty(d->battleSys, d->battler);

                for (i = 0; i < Party_GetCount(party); i++) {
                    monSrc = BattleSystem_GetPartyMon(d->battleSys, battler, PARTY_ORDER(d, battler, i));
                    Party_AddMon(d->ctx->party, monSrc);
                    d->ctx->pokemonPartySlots[i] = PARTY_ORDER(d, battler, i);
                }
            }

            d->ctx->battleSys = d->battleSys;
            d->ctx->heapID = 5;
            d->ctx->battlePartyExited = 0;
            canSwitch = d->canSwitch;
            d->ctx->canSwitch = canSwitch;
            d->ctx->battlePartyMode = d->listMode;
            d->ctx->selectedBattleBagItem = d->selectedBattleBagItem;
            d->ctx->doublesSelection = d->doublesSelection;
            d->ctx->battler = d->battler;
            d->ctx->isCursorEnabled = d->isCursorEnabled;

            if ((MaskOfFlagNo(d->battler) & d->battlersSwitchingMask) == 0) {
                d->ctx->playerPokemonPartySlot = ((u8 *)d)[0xC + d->battler];
            } else {
                d->ctx->playerPokemonPartySlot = 6;
            }

            if (BattleSystem_GetBattleType(d->battleSys) & 8) {
                d->ctx->partnerPokemonPartySlot = 6;
            } else if ((MaskOfFlagNo(BattleSystem_GetBattlerIdPartner(d->battleSys, d->battler)) & d->battlersSwitchingMask) == 0) {
                d->ctx->partnerPokemonPartySlot = ((u8 *)d)[0xC + BattleSystem_GetBattlerIdPartner(d->battleSys, d->battler)];
            } else {
                d->ctx->partnerPokemonPartySlot = 6;
            }

            ov10_0221BE20(d->ctx);
            d->state++;
            return;
        }
        break;
    case 2:
        if (d->ctx->battlePartyExited != 0) {
            ov12_02237BB8(d->battleSys);
            BattleInput_SetKeyPressed(BattleSystem_GetBattleInput(d->battleSys), d->ctx->isCursorEnabled);
            PaletteData_BeginPaletteFade(paletteData, 5, 0xc00, -8, 7, 0, 0);
            PaletteData_BeginPaletteFade(paletteData, 10, 0xffff, -8, 16, 0, 0);
            d->state++;
            return;
        }
        break;
    case 3:
        if (PaletteData_GetSelectedBuffersBitmask(paletteData) == 0) {
            sub_0201649C(BattleSystem_GetMessageIcon(d->battleSys), 0);

            if (d->ctx->selectedPartyIndex == 6) {
                ov12_02263360(d->battleSys, d->battler, 0xff);
            } else {
                ov12_02263360(d->battleSys, d->battler, d->ctx->pokemonPartySlots[d->ctx->selectedPartyIndex] + 1);
            }

            ov12_0226430C(d->battleSys, d->battler, d->command);
            Heap_Free(d->ctx->party);
            Heap_Free(d->ctx);
            Heap_Free(data);
            SysTask_Destroy(task);
        }
        break;
    }
}
