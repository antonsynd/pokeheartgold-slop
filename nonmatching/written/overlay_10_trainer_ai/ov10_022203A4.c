#include "global.h"

#define CTX_U8(ctx, off)   (*(u8 *)((u8 *)(ctx) + (off)))
#define CTX_U32(ctx, off)  (*(u32 *)((u8 *)(ctx) + (off)))

#define MON_STATUS_VOLATILE(c, battler) CTX_U32(c, 0x2db0 + (battler) * 0xc0)
#define MON_MOVE_EFFECTS_MASK(c, battler) CTX_U32(c, 0x2dc0 + (battler) * 0xc0)
#define SELECTED_PARTY_SLOT(c, i)    CTX_U8(c, 0x219c + (i))
#define AI_SWITCHED_PARTY_SLOT(c, i) CTX_U8(c, 0x21a4 + (i))

extern int BattleSystem_GetBattleType(void *battleSys);
extern int BattleSystem_GetBattlerIdPartner(void *battleSys, int battler);
extern int BattleSystem_GetPartySize(void *battleSys, int battler);
extern void *BattleSystem_GetPartyMon(void *battleSys, int battler, int slot);
extern u32 GetMonData(void *mon, int id, void *buf);
extern int GetBattlerVar(void *battleCtx, int battler, int id, void *unused);
extern int CheckAbilityActive(void *battleSys, void *battleCtx, int mode, int battler, int ability);
extern int ov10_0221F5F4(void *battleCtx, int battler);
extern int ov10_0221F62C(void *battleSys, void *battleCtx, int battler);
extern int ov10_0221F7F0(void *battleSys, void *battleCtx, int battler);
extern int ov10_0221FE8C(void *battleSys, void *battleCtx, int battler);
extern int ov10_02220270(void *battleSys, void *battleCtx, int battler);
extern int ov10_0221FD34(void *battleSys, void *battleCtx, int battler, int arg);
extern int ov10_0222036C(void *battleSys, void *battleCtx, int battler);
extern int ov10_02220010(void *battleSys, void *battleCtx, int battler, u32 checkEffectiveness, u8 rand);

int ov10_022203A4(void *battleSys, u8 *battleCtx, int battler) {
    int i;
    int alivePartyMons;
    u8 aiSlot1;
    u8 aiSlot2;
    int partySize;
    void *mon;

    if ((MON_STATUS_VOLATILE(battleCtx, battler) & 0x0400E000)
        || (MON_MOVE_EFFECTS_MASK(battleCtx, battler) & 0x400)
        || CheckAbilityActive(battleSys, battleCtx, 2, battler, 0x17)
        || CheckAbilityActive(battleSys, battleCtx, 2, battler, 0x47)
        || (CheckAbilityActive(battleSys, battleCtx, 6, battler, 0x2a)
            && (GetBattlerVar(battleCtx, battler, 0x1b, NULL) == 8 || GetBattlerVar(battleCtx, battler, 0x1c, NULL) == 8))) {
        return 0;
    }

    alivePartyMons = 0;
    aiSlot1 = battler;
    if ((BattleSystem_GetBattleType(battleSys) & 0x10) || (BattleSystem_GetBattleType(battleSys) & 8)) {
        aiSlot2 = aiSlot1;
    } else {
        aiSlot2 = BattleSystem_GetBattlerIdPartner(battleSys, battler);
    }

    partySize = BattleSystem_GetPartySize(battleSys, battler);
    for (i = 0; i < partySize; i++) {
        mon = BattleSystem_GetPartyMon(battleSys, battler, i);
        if (GetMonData(mon, 0xa3, NULL) != 0
            && GetMonData(mon, 0xae, NULL) != 0
            && GetMonData(mon, 0xae, NULL) != 0x1ee
            && i != SELECTED_PARTY_SLOT(battleCtx, aiSlot1)
            && i != SELECTED_PARTY_SLOT(battleCtx, aiSlot2)
            && i != AI_SWITCHED_PARTY_SLOT(battleCtx, aiSlot1)
            && i != AI_SWITCHED_PARTY_SLOT(battleCtx, aiSlot2)) {
            alivePartyMons++;
        }
    }

    if (alivePartyMons) {
        if (ov10_0221F5F4(battleCtx, battler)) {
            return 1;
        }
        if (ov10_0221F62C(battleSys, battleCtx, battler)) {
            return 1;
        }
        if (ov10_0221F7F0(battleSys, battleCtx, battler)) {
            return 1;
        }
        if (ov10_0221FE8C(battleSys, battleCtx, battler)) {
            return 1;
        }
        if (ov10_02220270(battleSys, battleCtx, battler)) {
            return 1;
        }
        if (ov10_0221FD34(battleSys, battleCtx, battler, 0)) {
            return 0;
        }
        if (ov10_0222036C(battleSys, battleCtx, battler)) {
            return 0;
        }
        if (ov10_02220010(battleSys, battleCtx, battler, 8, 2)) {
            return 1;
        }
        if (ov10_02220010(battleSys, battleCtx, battler, 4, 3)) {
            return 1;
        }
    }
    return 0;
}
