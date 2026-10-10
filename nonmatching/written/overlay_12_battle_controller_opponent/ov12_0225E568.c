#include "global.h"
#include "battle/battle.h"
#include "battle/battle_system.h"
#include "battle/battle_input.h"
#include "battle/battle_hp_bar.h"
#include "battle/battle_02261FD4.h"
#include "filesystem.h"
#include "heap.h"
#include "sys_task_api.h"
#include "unk_02005D10.h"

typedef struct {
    BattleSystem *battleSys;
    BattleHpBar *healthbox;
    int input;
    u8 command;
    u8 battler;
    u8 battlerType;
    u8 state;
    u16 targetMon[4][4];
    u16 range;
    u8 shouldHidePanel;
} UnkStruct_ov12_0225E568;

typedef struct {
    u16 targetMon[4][4];
    u8 battlerType;
    u8 targetingLayout;
} UnkStruct_ov12_0225E568_MenuData;

void ov12_0226311C(BattleSystem *battleSys, int battler, int input);
void ov12_0226430C(BattleSystem *battleSys, u8 battler, u8 command);

void ov12_0225E568(SysTask *task, void *data)
{
    UnkStruct_ov12_0225E568 *d = data;
    BattleHpBar *healthbox;
    OpponentData *opponentData;
    BattleInput *input;
    int partner;
    // The game's final state reads a byte of a 6-byte stack array at an unchecked index. win[] mirrors the game's frame
    // from its sp up to the registers its prologue pushed (r4-r7, lr) and the saved task pointer; a byte outside it is
    // read from the memory at the address the game would use (entry sp = __builtin_frame_address(0) + 8).
    u32 win[18];
    char *fp;
    u32 entrySp;
    u32 savedR4, savedR5, savedR6;

    __asm__ volatile("movs %0, r4" : "=l"(savedR4) : : "cc");
    __asm__ volatile("movs %0, r5" : "=l"(savedR5) : : "cc");
    __asm__ volatile("movs %0, r6" : "=l"(savedR6) : : "cc");
    fp = __builtin_frame_address(0);
    entrySp = (u32)fp + 8;

    BattleSystem_GetBgConfig(d->battleSys);
    opponentData = BattleSystem_GetOpponentData(d->battleSys, d->battler);
    input = BattleSystem_GetBattleInput(d->battleSys);
    partner = BattleSystem_GetBattlerIdPartner(d->battleSys, d->battler);

    if (partner != d->battler) {
        healthbox = BattleSystem_GetHpBar(d->battleSys, partner);
    } else {
        healthbox = NULL;
    }

    switch (d->state) {
    case 0:
        if (BattleInput_CheckFeedbackDone(input) == 0) {
            break;
        } else {
            UnkStruct_ov12_0225E568_MenuData menuData;
            NARC *bgNarc;
            NARC *objNarc;
            int i;

            bgNarc = NARC_New(7, 5);
            objNarc = NARC_New(8, 5);

            for (i = 0; i < 4; i++) {
                menuData.targetMon[i][0] = d->targetMon[i][0];
                menuData.targetMon[i][1] = d->targetMon[i][1];
                menuData.targetMon[i][2] = d->targetMon[i][2];
                menuData.targetMon[i][3] = d->targetMon[i][3];
            }
            menuData.battlerType = d->battlerType;
            menuData.targetingLayout = ov12_02266C84(d->range, d->battlerType);

            BattleInput_ChangeMenu(bgNarc, objNarc, input, 0xc, 0, (int *)&menuData);
            NARC_Delete(bgNarc);
            NARC_Delete(objNarc);
            d->state++;
            return;
        }
    case 1:
        d->input = BattleInput_CheckTouch(input);
        if (d->input != -1) {
            PlaySE(0x5dd);
            d->state++;
        }
        break;
    case 2:
        if (d->input != 0xff) {
            ov12_02264EB4(d->healthbox);
            ov12_02262014(opponentData);
            ov12_02265D74(healthbox);
            if (d->shouldHidePanel == 1) {
                BattleInput_Deadstriped_022698AC(input, 0);
            }
        }
        d->state++;
        break;
    case 3:
        d->state++;
    default:
        if (ov12_022698B0(input) == 1) {
            int selected = d->input;
            u32 battleType = BattleSystem_GetBattleType(d->battleSys);
            u32 address;
            u32 offset;
            int k;

            if (selected != 0xff) {
                for (k = 0; k < 18; k++) {
                    win[k] = 0;
                }
                win[2] = (u32)task;
                win[13] = savedR4;
                win[14] = savedR5;
                win[15] = savedR6;
                win[16] = ((u32 *)fp)[0];
                win[17] = ((u32 *)fp)[1];

                ov12_0223C1A0(d->battleSys, (u8 *)win + 0xc);

                if (battleType & 2) {
                    address = entrySp - 0x3c + d->input + 1;
                } else {
                    address = entrySp - 0x3c + d->input - 1;
                }
                offset = address - (entrySp - 0x48);
                if (offset < 0x48) {
                    selected = ((u8 *)win)[offset] + 1;
                } else {
                    selected = *(u8 *)address + 1;
                }
            }

            ov12_0226311C(d->battleSys, d->battler, selected);
            ov12_0226430C(d->battleSys, d->battler, d->command);
            Heap_Free(data);
            SysTask_Destroy(task);
        }
        break;
    }
}
