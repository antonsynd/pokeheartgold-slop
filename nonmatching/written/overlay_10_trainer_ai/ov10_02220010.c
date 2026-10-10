#include "global.h"

#define CTX_U8(ctx, off)   (*(u8 *)((u8 *)(ctx) + (off)))
#define CTX_U16(ctx, off)  (*(u16 *)((u8 *)(ctx) + (off)))

#define MOVE_HIT(c, battler)         CTX_U16(c, 0x3064 + (battler) * 2)
#define MOVE_HIT_BATTLER(c, battler) CTX_U16(c, 0x306c + (battler) * 2)
#define MOVE_POWER(c, move)          CTX_U8(c, 0x3e1 + (move) * 0x10)
#define SELECTED_PARTY_SLOT(c, i)    CTX_U8(c, 0x219c + (i))
#define AI_SWITCHED_PARTY_SLOT(c, i) CTX_U8(c, 0x21a4 + (i))

extern int BattleSystem_GetBattleType(void *battleSys);
extern int BattleSystem_GetBattlerIdPartner(void *battleSys, int battler);
extern int BattleSystem_GetPartySize(void *battleSys, int battler);
extern void *BattleSystem_GetPartyMon(void *battleSys, int battler, int slot);
extern u32 GetMonData(void *mon, int id, void *buf);
extern int ov10_0221F47C(void *battleSys, void *battleCtx, int battler, int move);
extern u8 GetBattlerAbility(void *battleCtx, int battler);
extern int GetItemVar(void *battleCtx, u16 item, int param);
extern int GetBattlerHeldItemEffect(void *battleCtx, int battler);
extern int GetBattlerVar(void *battleCtx, int battler, int id, void *unused);
extern void ov12_02252054(void *battleCtx, int move, int moveType, int atkAbility, int defAbility, int defItemEffect, int defType1, int defType2, u32 *effectiveness);
extern int ov12_02258BB4(void *battleSys, void *battleCtx, void *mon, int move);
extern u16 BattleSystem_Random(void *battleSys);

int ov10_02220010(void *battleSys, u8 *battleCtx, int battler, u32 checkEffectiveness, u8 rand) {
    int i;
    int j;
    u8 aiSlot1;
    u8 aiSlot2;
    u16 move;
    int moveType;
    u32 effectiveness;
    int partySize;
    void *mon;

    if (MOVE_HIT(battleCtx, battler) == 0 || MOVE_HIT_BATTLER(battleCtx, battler) == 0xff) {
        return 0;
    }
    if (MOVE_POWER(battleCtx, MOVE_HIT(battleCtx, battler)) == 0) {
        return 0;
    }

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
            effectiveness = 0;
            moveType = ov10_0221F47C(battleSys, battleCtx, MOVE_HIT_BATTLER(battleCtx, battler), MOVE_HIT(battleCtx, battler));
            ov12_02252054(battleCtx,
                          MOVE_HIT(battleCtx, battler),
                          moveType,
                          GetBattlerAbility(battleCtx, MOVE_HIT_BATTLER(battleCtx, battler)),
                          GetMonData(mon, 0xa, NULL),
                          GetItemVar(battleCtx, GetMonData(mon, 6, NULL), 1),
                          GetMonData(mon, 0xb1, NULL),
                          GetMonData(mon, 0xb2, NULL),
                          &effectiveness);
            if (effectiveness & checkEffectiveness) {
                for (j = 0; j < 4; j++) {
                    move = GetMonData(mon, 0x36 + j, NULL);
                    moveType = ov12_02258BB4(battleSys, battleCtx, mon, move);
                    if (move) {
                        effectiveness = 0;
                        ov12_02252054(battleCtx,
                                      move,
                                      moveType,
                                      GetMonData(mon, 0xa, NULL),
                                      GetBattlerAbility(battleCtx, MOVE_HIT_BATTLER(battleCtx, battler)),
                                      GetBattlerHeldItemEffect(battleCtx, MOVE_HIT_BATTLER(battleCtx, battler)),
                                      GetBattlerVar(battleCtx, MOVE_HIT_BATTLER(battleCtx, battler), 0x1b, NULL),
                                      GetBattlerVar(battleCtx, MOVE_HIT_BATTLER(battleCtx, battler), 0x1c, NULL),
                                      &effectiveness);
                        if ((effectiveness & 2) && BattleSystem_Random(battleSys) % rand == 0) {
                            AI_SWITCHED_PARTY_SLOT(battleCtx, battler) = i;
                            return 1;
                        }
                    }
                }
            }
        }
    }
    return 0;
}
