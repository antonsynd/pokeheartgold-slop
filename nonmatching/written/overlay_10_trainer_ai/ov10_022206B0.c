#include "global.h"

#define CTX_U8(ctx, off)   (*(u8 *)((u8 *)(ctx) + (off)))
#define CTX_U16(ctx, off)  (*(u16 *)((u8 *)(ctx) + (off)))
#define CTX_U32(ctx, off)  (*(u32 *)((u8 *)(ctx) + (off)))
#define CTX_S32(ctx, off)  (*(s32 *)((u8 *)(ctx) + (off)))

#define TOTAL_TURNS(c)                CTX_S32(c, 0x150)
#define SIDE_CONDITIONS_MASK_1(c)     CTX_U32(c, 0x1c0)
#define TRAINER_ITEMS(c, side, i)     CTX_U16(c, 0x39c + (side) * 8 + (i) * 2)
#define USED_ITEM_COUNT_MAX(c, side)  CTX_U8(c, 0x3cd + (side))
#define USED_ITEM_TYPE(c, side)       CTX_U8(c, 0x3d1 + (side))
#define USED_ITEM_CONDITION(c, side)  CTX_U8(c, 0x3d3 + (side))
#define USED_ITEM(c, side2)           CTX_U16(c, 0x3d6 + (side2))
#define MON_CUR_HP(c, battler)        CTX_U32(c, 0x2d8c + (battler) * 0xc0)
#define MON_MAX_HP(c, battler)        CTX_U32(c, 0x2d90 + (battler) * 0xc0)
#define MON_STATUS(c, battler)        CTX_U32(c, 0x2dac + (battler) * 0xc0)
#define MON_STATUS_VOLATILE(c, battler) CTX_U32(c, 0x2db0 + (battler) * 0xc0)
#define MON_MOVE_EFFECTS_MASK(c, battler) CTX_U32(c, 0x2dc0 + (battler) * 0xc0)
#define MON_FAKE_OUT_TURN(c, battler) CTX_S32(c, 0x2dd4 + (battler) * 0xc0)

extern int ov12_0223AB0C(void *battleSys, int battler);
extern void *BattleSystem_GetParty(void *battleSys, int battler);
extern u32 GetMonData(void *mon, int id, void *buf);
extern int Party_GetCount(void *party);
extern void *Party_GetMonByIndex(void *party, int slot);
extern u32 MaskOfFlagNo(int flagno);
extern int GetItemVar(void *battleCtx, u16 item, int param);

int ov10_022206B0(u8 *battleSys, int battler) {
    int i;
    u8 aliveMons;
    u16 item;
    u8 hpRestore;
    int result;
    void *party;
    void *mon;
    u8 *battleCtx = *(u8 **)(battleSys + 0x30);
    u32 word; /* masks are tested on a whole loaded word, as the asm does (matters for unaligned pointers) */

    aliveMons = 0;
    USED_ITEM_CONDITION(battleCtx, battler >> 1) = 0;
    result = 0;

    word = *(u32 *)(battleSys + 0x2c);
    if ((word & 0x4b) == 0x4b && ov12_0223AB0C(battleSys, battler) == 4) {
        return result;
    }
    word = MON_MOVE_EFFECTS_MASK(battleCtx, battler);
    if (word & (1 << 26)) {
        return result;
    }

    party = BattleSystem_GetParty(battleSys, battler);
    for (i = 0; i < Party_GetCount(party); i++) {
        mon = Party_GetMonByIndex(party, i);
        if (GetMonData(mon, 0xa3, NULL) != 0
            && GetMonData(mon, 0xae, NULL) != 0
            && GetMonData(mon, 0xae, NULL) != 0x1ee) {
            aliveMons++;
        }
    }

    for (i = 0; i < 4; i++) {
        if (i == 0 || aliveMons <= USED_ITEM_COUNT_MAX(battleCtx, battler >> 1) - i) {
            item = TRAINER_ITEMS(battleCtx, battler >> 1, i);
            if (item == 0) {
                continue;
            }
            if (item == 0x17) {
                if (MON_CUR_HP(battleCtx, battler) < (MON_MAX_HP(battleCtx, battler) >> 2) && MON_CUR_HP(battleCtx, battler) != 0) {
                    USED_ITEM_TYPE(battleCtx, battler >> 1) = 0;
                    result = 1;
                }
            } else if (GetItemVar(battleCtx, item, 0x26)) {
                hpRestore = GetItemVar(battleCtx, item, 0x36);
                if (hpRestore != 0 && MON_CUR_HP(battleCtx, battler) != 0
                    && (MON_CUR_HP(battleCtx, battler) < (MON_MAX_HP(battleCtx, battler) >> 2)
                        || MON_MAX_HP(battleCtx, battler) - MON_CUR_HP(battleCtx, battler) > hpRestore)) {
                    USED_ITEM_TYPE(battleCtx, battler >> 1) = 1;
                    result = 1;
                }
            } else if (GetItemVar(battleCtx, item, 0xf)) {
                word = MON_STATUS(battleCtx, battler);
                if (word & 7) {
                    USED_ITEM_CONDITION(battleCtx, battler >> 1) |= MaskOfFlagNo(5);
                    USED_ITEM_TYPE(battleCtx, battler >> 1) = 2;
                    result = 1;
                }
            } else if (GetItemVar(battleCtx, item, 0x10)) {
                word = MON_STATUS(battleCtx, battler);
                if ((word & 8) || (word & 0x80)) {
                    USED_ITEM_CONDITION(battleCtx, battler >> 1) |= MaskOfFlagNo(4);
                    USED_ITEM_TYPE(battleCtx, battler >> 1) = 2;
                    result = 1;
                }
            } else if (GetItemVar(battleCtx, item, 0x11)) {
                word = MON_STATUS(battleCtx, battler);
                if (word & 0x10) {
                    USED_ITEM_CONDITION(battleCtx, battler >> 1) |= MaskOfFlagNo(3);
                    USED_ITEM_TYPE(battleCtx, battler >> 1) = 2;
                    result = 1;
                }
            } else if (GetItemVar(battleCtx, item, 0x12)) {
                word = MON_STATUS(battleCtx, battler);
                if (word & 0x20) {
                    USED_ITEM_CONDITION(battleCtx, battler >> 1) |= MaskOfFlagNo(2);
                    USED_ITEM_TYPE(battleCtx, battler >> 1) = 2;
                    result = 1;
                }
            } else if (GetItemVar(battleCtx, item, 0x13)) {
                word = MON_STATUS(battleCtx, battler);
                if (word & 0x40) {
                    USED_ITEM_CONDITION(battleCtx, battler >> 1) |= MaskOfFlagNo(1);
                    USED_ITEM_TYPE(battleCtx, battler >> 1) = 2;
                    result = 1;
                }
            } else if (GetItemVar(battleCtx, item, 0x14)) {
                word = MON_STATUS_VOLATILE(battleCtx, battler);
                if (word & 7) {
                    USED_ITEM_CONDITION(battleCtx, battler >> 1) |= MaskOfFlagNo(0);
                    USED_ITEM_TYPE(battleCtx, battler >> 1) = 2;
                    result = 1;
                }
            } else if (MON_FAKE_OUT_TURN(battleCtx, battler) - TOTAL_TURNS(battleCtx) >= 0) {
                if (GetItemVar(battleCtx, item, 0x1b)) {
                    USED_ITEM_CONDITION(battleCtx, battler >> 1) = 1;
                    USED_ITEM_TYPE(battleCtx, battler >> 1) = 3;
                    result = 1;
                } else if (GetItemVar(battleCtx, item, 0x1c)) {
                    USED_ITEM_CONDITION(battleCtx, battler >> 1) = 2;
                    USED_ITEM_TYPE(battleCtx, battler >> 1) = 3;
                    result = 1;
                } else if (GetItemVar(battleCtx, item, 0x1d)) {
                    USED_ITEM_CONDITION(battleCtx, battler >> 1) = 4;
                    USED_ITEM_TYPE(battleCtx, battler >> 1) = 3;
                    result = 1;
                } else if (GetItemVar(battleCtx, item, 0x1e)) {
                    USED_ITEM_CONDITION(battleCtx, battler >> 1) = 5;
                    USED_ITEM_TYPE(battleCtx, battler >> 1) = 3;
                    result = 1;
                } else if (GetItemVar(battleCtx, item, 0x1f)) {
                    USED_ITEM_CONDITION(battleCtx, battler >> 1) = 3;
                    USED_ITEM_TYPE(battleCtx, battler >> 1) = 3;
                    result = 1;
                } else if (GetItemVar(battleCtx, item, 0x20)) {
                    USED_ITEM_CONDITION(battleCtx, battler >> 1) = 6;
                    USED_ITEM_TYPE(battleCtx, battler >> 1) = 3;
                    result = 1;
                } else if (GetItemVar(battleCtx, item, 0x16) && ((word = SIDE_CONDITIONS_MASK_1(battleCtx)) & 0x40) == 0) {
                    USED_ITEM_TYPE(battleCtx, battler >> 1) = 4;
                    result = 1;
                }
            } else {
                USED_ITEM_TYPE(battleCtx, battler >> 1) = 5;
            }
            if (result == 1) {
                battler &= ~1;
                USED_ITEM(battleCtx, battler) = item;
                TRAINER_ITEMS(battleCtx, battler >> 1, i) = 0;
                break;
            }
        }
    }
    return result;
}
