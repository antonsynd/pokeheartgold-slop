#include "global.h"

#define CTX_U8(ctx, off)   (*(u8 *)((u8 *)(ctx) + (off)))
#define CTX_U32(ctx, off)  (*(u32 *)((u8 *)(ctx) + (off)))
#define CTX_U16(ctx, off)  (*(u16 *)((u8 *)(ctx) + (off)))

#define AI_ATTACKER(c)      CTX_U8(c, 0x3cf)
#define SELECTED_PARTY_SLOT(c, battler) CTX_U8(c, 0x219c + (battler))

extern void ov10_0221EF24(void *battleCtx, int offset);
extern int ov10_0221EEF0(void *battleCtx);
extern int ov10_0221EF7C(void *battleSys, void *battleCtx, int battler, u16 *moves, s32 *damages, u16 heldItem, u8 *ivs, int ability, int embargoTurns, int varyDamage);
extern int GetBattlerVar(void *battleCtx, int battler, int id, void *unused);
extern u8 GetBattlerAbility(void *battleCtx, int battler);
extern int BattleSystem_GetPartySize(void *battleSys, int battler);
extern void *BattleSystem_GetPartyMon(void *battleSys, int battler, int slot);
extern u32 GetMonData(void *mon, int id, void *buf);

void ov10_0221E2CC(void *battleSys, u8 *battleCtx) {
    int i;
    int j;
    int varyDamage;
    int jump;
    int battler;
    int activeMonDamage;
    int partyMonDamage;
    s32 allDamageVals[4];
    u16 partyMonMoves[4];
    u8 ivs[6];
    void *partyMon;
    u32 embargoWord;
    u32 heldItem;

    ov10_0221EF24(battleCtx, 1);
    varyDamage = ov10_0221EEF0(battleCtx);
    jump = ov10_0221EEF0(battleCtx);
    battler = AI_ATTACKER(battleCtx);
    for (i = 0; i < 6; i++) {
        ivs[i] = GetBattlerVar(battleCtx, battler, 10 + i, NULL);
    }
    embargoWord = *(u32 *)(battleCtx + battler * 0xc0 + 0x2dcc);
    activeMonDamage = ov10_0221EF7C(battleSys, battleCtx, AI_ATTACKER(battleCtx),
                                    (u16 *)(battleCtx + battler * 0xc0 + 0x2d4c), allDamageVals,
                                    *(u16 *)(battleCtx + battler * 0xc0 + 0x2db8), ivs,
                                    GetBattlerAbility(battleCtx, battler), (embargoWord << 10) >> 29, varyDamage);
    for (i = 0; i < BattleSystem_GetPartySize(battleSys, battler); i++) {
        if (i != SELECTED_PARTY_SLOT(battleCtx, battler)) {
            partyMon = BattleSystem_GetPartyMon(battleSys, battler, i);
            if (GetMonData(partyMon, 0xa3, NULL) != 0
                && GetMonData(partyMon, 0xae, NULL) != 0
                && GetMonData(partyMon, 0xae, NULL) != 0x1ee) {
                for (j = 0; j < 4; j++) {
                    partyMonMoves[j] = GetMonData(partyMon, 0x36 + j, NULL);
                }
                for (j = 0; j < 6; j++) {
                    ivs[j] = GetMonData(partyMon, 0x46 + j, NULL);
                }
                heldItem = GetMonData(partyMon, 6, NULL);
                partyMonDamage = ov10_0221EF7C(battleSys, battleCtx, AI_ATTACKER(battleCtx), partyMonMoves, allDamageVals,
                                               (u16)heldItem, ivs, GetMonData(partyMon, 0xa, NULL), 0, varyDamage);
                if (partyMonDamage > activeMonDamage) {
                    ov10_0221EF24(battleCtx, jump);
                    break;
                }
            }
        }
    }
}
