#include "global.h"
#include "battle/battle.h"
#include "battle/battle_system.h"
#include "battle/battle_022378C0.h"
#include "heap.h"
#include "palette.h"
#include "party.h"
#include "sys_task_api.h"

typedef struct {
    Party *party;
    u8 pad_04[4];
    BattleSystem *battleSys;
    u32 heapID;
    u8 pad_10;
    u8 selectedPartyIndex;
    u8 battlePartyMode;
    u8 pad_13[0xF];
    u16 doublesSelection;
    u16 moveToLearn;
    u8 pad_26[2];
    u32 battler;
    u8 pad_2C[6];
    u8 isCursorEnabled;
    u8 pad_33;
    u8 selectedMoveSlot;
    u8 selectedBattleBagItem;
    u8 battlePartyExited;
    u8 pad_37;
} UnkStruct_ov12_022609F8_Ctx;

typedef struct {
    BattleSystem *battleSys;
    UnkStruct_ov12_022609F8_Ctx *ctx;
    u8 command;
    u8 battler;
    u8 state;
    u8 pad_0B;
    u16 move;
    u8 slot;
} UnkStruct_ov12_022609F8;

void ov10_0221BE20(void *ctx);
void ov12_02263360(BattleSystem *battleSys, int battler, int input);
void ov12_0226430C(BattleSystem *battleSys, u8 battler, u8 command);

void ov12_022609F8(SysTask *task, void *data)
{
    UnkStruct_ov12_022609F8 *d = data;
    PaletteData *paletteData = BattleSystem_GetPaletteData(d->battleSys);

    switch (d->state) {
    case 0:
        PaletteData_BeginPaletteFade(paletteData, 10, 0xffff, -8, 0, 16, 0);
        d->state++;
        return;
    case 1:
        if (PaletteData_GetSelectedBuffersBitmask(paletteData) == 0) {
            ov12_02237B0C(d->battleSys);

            d->ctx = Heap_Alloc(5, 0x38);
            d->ctx->party = BattleSystem_GetParty(d->battleSys, d->battler);
            d->ctx->battleSys = d->battleSys;
            d->ctx->heapID = 5;
            d->ctx->selectedPartyIndex = d->slot;
            d->ctx->moveToLearn = d->move;
            d->ctx->battlePartyExited = 0;
            d->ctx->battlePartyMode = 0;
            d->ctx->selectedBattleBagItem = 3;
            d->ctx->doublesSelection = 0;
            d->ctx->battler = d->battler;
            d->ctx->isCursorEnabled = 0;

            ov10_0221BE20(d->ctx);
            d->state++;
            return;
        }
        break;
    case 2:
        if (d->ctx->battlePartyExited != 0) {
            ov12_02237BB8(d->battleSys);
            PaletteData_BeginPaletteFade(paletteData, 10, 0xffff, -8, 16, 0, 0);
            d->state++;
            return;
        }
        break;
    case 3:
        if (PaletteData_GetSelectedBuffersBitmask(paletteData) == 0) {
            if (d->ctx->selectedMoveSlot == 4) {
                ov12_02263360(d->battleSys, d->battler, 0xff);
            } else {
                ov12_02263360(d->battleSys, d->battler, d->ctx->selectedMoveSlot + 1);
            }

            ov12_0226430C(d->battleSys, d->battler, d->command);
            Heap_Free(d->ctx);
            Heap_Free(data);
            SysTask_Destroy(task);
        }
        break;
    }
}
