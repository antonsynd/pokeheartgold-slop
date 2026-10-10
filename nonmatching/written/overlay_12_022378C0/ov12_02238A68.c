#include "global.h"
#include "bag.h"
#include "battle/battle.h"
#include "battle/battle_system.h"
#include "battle/battle_controller_player.h"
#include "battle/overlay_12_0224E4FC.h"
#include "error_handling.h"
#include "math_util.h"
#include "party.h"
#include "player_data.h"
#include "pokedex.h"
#include "pokemon.h"
#include "pokemon_mood.h"

typedef struct {
    u8 battler;
    u8 battlerType;
} UnkStruct_ov12_02238A68_InitData;

extern u8 ov12_0226C2DC[];
extern u8 ov12_0226BFDC[];
extern u8 ov12_0226BFE0[];
extern u8 ov12_0226C008[];

void *ov12_02258D74(BattleSystem *battleSys, void *initData);
void ov12_02260EA4(BattleSystem *battleSys, void *battler);
int ov12_022395BC(u8 trainerType);
void sub_02074E5C(BattleSystem *battleSys);
void ov12_0223A664(BattleSystem *battleSys, void *dto);

#define BS_U32(off) (*(u32 *)((u8 *)battleSys + (off)))
#define BS_PTR(off) (*(void **)((u8 *)battleSys + (off)))
#define DTO_U32(off) (*(u32 *)((u8 *)dto + (off)))
#define DTO_PTR(off) (*(void **)((u8 *)dto + (off)))
#define BS_PARTY(i) (*(Party **)((u8 *)battleSys + 0x68 + (i) * 4))
#define DTO_PARTY(i) (*(Party **)((u8 *)dto + 4 + (i) * 4))
#define BS_CTX (*(BattleContext **)((u8 *)battleSys + 0x30))
#define BS_MAXBATTLERS (*(int *)((u8 *)battleSys + 0x44))

// Looks for the first usable mon of a party (species, not an egg, hp left); slot ends up as the party count when none is.
#define FIND_SLOT_IN_PARTY(partyExpr, slot, mon)                                                                                 \
    for (slot = 0; slot < Party_GetCount(partyExpr); slot++) {                                                                   \
        mon = Party_GetMonByIndex(partyExpr, slot);                                                                              \
        if (GetMonData(mon, 5, NULL) != 0 && GetMonData(mon, 0x4c, NULL) == 0 && GetMonData(mon, 0xa3, NULL) != 0) {            \
            break;                                                                                                               \
        }                                                                                                                        \
    }

// The doubles variant: for the second pair of battlers the slot already chosen for the first one is skipped.
#define FIND_SLOT_DOUBLES(i, slot, mon)                                                                                          \
    for (slot = 0; slot < Party_GetCount(BS_PARTY((i) & 1)); slot++) {                                                           \
        mon = Party_GetMonByIndex(BS_PARTY((i) & 1), slot);                                                                      \
        if ((i) > 1) {                                                                                                           \
            if (slot != ov12_022581D4(battleSys, BS_CTX, 2, (i) & 1)                                                             \
                && GetMonData(mon, 5, NULL) != 0 && GetMonData(mon, 0x4c, NULL) == 0 && GetMonData(mon, 0xa3, NULL) != 0) {     \
                break;                                                                                                           \
            }                                                                                                                    \
        } else {                                                                                                                 \
            if (GetMonData(mon, 5, NULL) != 0 && GetMonData(mon, 0x4c, NULL) == 0 && GetMonData(mon, 0xa3, NULL) != 0) {        \
                break;                                                                                                           \
            }                                                                                                                    \
        }                                                                                                                        \
    }

void ov12_02238A68(BattleSystem *battleSys, void *dto)
{
    int i, j, slot;
    UnkStruct_ov12_02238A68_InitData initData;
    Pokemon *mon;
    u32 gender;
    u32 word;
    u32 value;
    u32 networkID;
    u32 playerSlot;
    u32 versionMismatch;
    u32 version;
    u8 *table;
    u8 *playerData;
    PlayerProfile *profile;
    void *dtoSub;

    BS_U32(0x2c) = DTO_U32(0);

    for (i = 0; i < 4; i++) {
        BS_PTR(0x48 + i * 4) = PlayerProfile_New(5);
        PlayerProfile_Copy(DTO_PTR(0xf8 + i * 4), BS_PTR(0x48 + i * 4));
        BS_U32(0x78 + i * 4) = DTO_U32(0x118 + i * 4);
    }

    *(u16 *)((u8 *)battleSys + 0x2446) = *(u16 *)((u8 *)dto + 0x1b0);

    for (i = 0; i < 4; i++) {
        BS_U32(0x2468 + i * 4) = DTO_U32(0x1a0 + i * 4);
    }

    BS_U32(0x2434) = GetLCRNGSeed();
    BS_U32(0x2448) = DTO_U32(0x19c);
    BS_U32(0x244c) = DTO_U32(0x19c);
    BS_U32(0x240c) = DTO_U32(0x18c);
    BS_PTR(0x58) = Save_Bag_New(5);
    Save_Bag_Copy(DTO_PTR(0x108), BS_PTR(0x58));
    BS_PTR(0x60) = Pokedex_New(5);
    Pokedex_Copy(DTO_PTR(0x110), BS_PTR(0x60));
    BS_U32(0x64) = DTO_U32(0x114);
    BS_U32(0x1b4) = DTO_U32(0x130);
    BS_U32(0x1b8) = DTO_U32(0x148);
    BS_U32(0x5c) = DTO_U32(0x10c);
    BS_U32(0x1c0) = DTO_U32(0x1b8);
    BS_U32(0x98) = DTO_U32(0x128);
    BS_U32(0x2424) = DTO_U32(0x160);
    BS_U32(0x9c) = DTO_U32(0x134);
    BS_U32(0x2414) = DTO_U32(0x190);
    BS_U32(0x2400) = DTO_U32(0x150);
    BS_U32(0x2404) = DTO_U32(0x14c);
    BS_U32(0x2408) = DTO_U32(0x154);
    BS_U32(0x2410) = DTO_U32(0x15c);
    BS_U32(0x241c) = DTO_U32(0x194);
    BS_U32(0x2428) = DTO_U32(0x164);
    BS_U32(0x2430) = DTO_U32(0x168);
    word = BS_U32(0x2478);
    value = DTO_U32(0x16c);
    BS_U32(0x2478) = ((value & 1) << 1) | (word & ~2);
    word = BS_U32(0x2478);
    value = DTO_U32(0x1d0);
    BS_U32(0x2478) = ((value & 1) << 3) | (word & ~8);
    BS_U32(0x242c) = DTO_U32(0x174);
    BS_U32(0x21c) = DTO_U32(0x144);
    if (DTO_U32(0x144) == 0) {
        GF_AssertFail();
    }
    BS_U32(0x2488) = DTO_U32(0x1c8);

    for (i = 0; i < 4; i++) {
        value = DTO_U32(0x18 + i * 4);
        *(u16 *)((u8 *)battleSys + 0xa0 + i * 2) = value;
        for (j = 0; j < 13; j++) {
            ((u32 *)((u8 *)battleSys + 0xac + i * 0x34))[j] = ((u32 *)((u8 *)dto + 0x28 + i * 0x34))[j];
        }
    }

    BS_CTX = BattleContext_New(battleSys);

    for (i = 0; i < 4; i++) {
        BS_PARTY(i) = SaveArray_Party_Alloc(5);
        *((u8 *)battleSys + 0x248c + i) = *((u8 *)dto + 0x1cc + i);
    }

    for (i = 0; i < 4; i++) {
        for (slot = 0; slot < Party_GetCount(DTO_PARTY(i)); slot++) {
            mon = Party_GetMonByIndex(DTO_PARTY(i), slot);
            gender = GetMonGender(mon);
            SetMonData(mon, 0x6f, &gender);
        }
    }

    if ((BS_U32(0x2c) & 4) == 0) {
        if ((BS_U32(0x2c) & 0x10) != 0) {
            // tag battle
            table = ov12_0226C2DC;
            for (i = 0; i < 4; i++) {
                initData.battler = i;
                initData.battlerType = table[i];
                BS_PTR(0x34 + i * 4) = ov12_02258D74(battleSys, &initData);
                ov12_02260EA4(battleSys, BS_PTR(0x34 + i * 4));
            }
            BS_MAXBATTLERS = i;
            for (i = 0; i < 4; i++) {
                Party_Copy(DTO_PARTY(i), BS_PARTY(i));
            }
            for (i = 0; i < BS_MAXBATTLERS; i++) {
                for (slot = 0; slot < BattleSystem_GetPartySize(battleSys, i); slot++) {
                    mon = BattleSystem_GetPartyMon(battleSys, i, slot);
                    if (i == 2) {
                        if (GetMonData(mon, 5, NULL) != 0 && GetMonData(mon, 0x4c, NULL) == 0 && GetMonData(mon, 0xa3, NULL) != 0
                            && playerSlot != slot) {
                            break;
                        }
                    } else {
                        if (GetMonData(mon, 5, NULL) != 0 && GetMonData(mon, 0x4c, NULL) == 0 && GetMonData(mon, 0xa3, NULL) != 0) {
                            break;
                        }
                    }
                }
                ov12_022582B8(battleSys, BS_CTX, 2, i, slot);
                if (i == 0) {
                    playerSlot = slot;
                }
            }
            ov12_02256F28(battleSys, BS_CTX);
            *((u8 *)battleSys + 0x23fc) = 1;
        } else if ((BS_U32(0x2c) & 8) != 0) {
            // 2 vs 2
            table = ov12_0226C2DC;
            for (i = 0; i < 4; i++) {
                initData.battler = i;
                initData.battlerType = table[i];
                BS_PTR(0x34 + i * 4) = ov12_02258D74(battleSys, &initData);
                ov12_02260EA4(battleSys, BS_PTR(0x34 + i * 4));
            }
            BS_MAXBATTLERS = i;
            for (i = 0; i < 4; i++) {
                Party_Copy(DTO_PARTY(i), BS_PARTY(i));
            }
            for (i = 0; i < BS_MAXBATTLERS; i++) {
                FIND_SLOT_IN_PARTY(BS_PARTY(i), slot, mon);
                ov12_022582B8(battleSys, BS_CTX, 2, i, slot);
            }
            ov12_02256F28(battleSys, BS_CTX);
            *((u8 *)battleSys + 0x23fc) = 1;
        } else if ((BS_U32(0x2c) & 2) != 0) {
            // doubles
            table = ov12_0226C2DC;
            for (i = 0; i < 4; i++) {
                initData.battler = i;
                initData.battlerType = table[i];
                BS_PTR(0x34 + i * 4) = ov12_02258D74(battleSys, &initData);
                ov12_02260EA4(battleSys, BS_PTR(0x34 + i * 4));
            }
            BS_MAXBATTLERS = i;
            for (i = 0; i < 4; i++) {
                Party_Copy(DTO_PARTY(i), BS_PARTY(i));
            }
            for (i = 0; i < BS_MAXBATTLERS; i++) {
                FIND_SLOT_DOUBLES(i, slot, mon);
                ov12_022582B8(battleSys, BS_CTX, 2, i, slot);
            }
            ov12_02256F28(battleSys, BS_CTX);
            *((u8 *)battleSys + 0x23fc) = 1;
        } else {
            // single
            table = ov12_0226BFDC - 4;
            for (i = 0; i < 2; i++) {
                initData.battler = i;
                initData.battlerType = table[i];
                BS_PTR(0x34 + i * 4) = ov12_02258D74(battleSys, &initData);
                ov12_02260EA4(battleSys, BS_PTR(0x34 + i * 4));
            }
            BS_MAXBATTLERS = i;
            for (i = 0; i < 4; i++) {
                Party_Copy(DTO_PARTY(i), BS_PARTY(i));
                FIND_SLOT_IN_PARTY(BS_PARTY(i), slot, mon);
                ov12_022582B8(battleSys, BS_CTX, 2, i, slot);
            }
            ov12_02256F28(battleSys, BS_CTX);
            *((u8 *)battleSys + 0x23fc) = 1;
        }
    } else {
        // link
        sub_02074E5C(battleSys);
        networkID = (u8)ov12_0223BFC0(battleSys);
        ov12_0223A664(battleSys, dto);

        if ((BS_U32(0x2c) & 0x80) != 0) {
            table = ov12_0226C2DC;
            for (i = 0; i < 4; i++) {
                initData.battler = i;
                initData.battlerType = table[i];
                BS_PTR(0x34 + i * 4) = ov12_02258D74(battleSys, &initData);
            }
            BS_MAXBATTLERS = i;
            for (i = 0; i < 4; i++) {
                ov12_02260EA4(battleSys, BS_PTR(0x34 + i * 4));
                Party_Copy(DTO_PARTY(i), BS_PARTY(i));
            }
            for (i = 0; i < BS_MAXBATTLERS; i++) {
                FIND_SLOT_IN_PARTY(BS_PARTY(i), slot, mon);
                ov12_022582B8(battleSys, BS_CTX, 2, i, slot);
            }
            ov12_02256F28(battleSys, BS_CTX);
        } else if ((BS_U32(0x2c) & 8) != 0) {
            for (i = 0; i < 4; i++) {
                int first;
                int second;

                initData.battler = i;
                first = ov12_0223BFCC(battleSys, networkID);
                second = ov12_0223BFCC(battleSys, i);
                initData.battlerType = ov12_0226C008[first * 4 + second];
                BS_PTR(0x34 + i * 4) = ov12_02258D74(battleSys, &initData);
            }
            BS_MAXBATTLERS = i;
            for (i = 0; i < 4; i++) {
                ov12_02260EA4(battleSys, BS_PTR(0x34 + i * 4));
                Party_Copy(DTO_PARTY(i), BS_PARTY(i));
            }
            for (i = 0; i < BS_MAXBATTLERS; i++) {
                FIND_SLOT_IN_PARTY(BS_PARTY(i), slot, mon);
                ov12_022582B8(battleSys, BS_CTX, 2, i, slot);
            }
            ov12_02256F28(battleSys, BS_CTX);
        } else if ((BS_U32(0x2c) & 2) != 0) {
            table = ov12_0226BFE0 + networkID * 4;
            for (i = 0; i < 4; i++) {
                initData.battler = i;
                initData.battlerType = table[i];
                BS_PTR(0x34 + i * 4) = ov12_02258D74(battleSys, &initData);
                ov12_02260EA4(battleSys, BS_PTR(0x34 + i * 4));
            }
            BS_MAXBATTLERS = i;
            for (i = 0; i < 4; i++) {
                Party_Copy(DTO_PARTY(i), BS_PARTY(i));
            }
            for (i = 0; i < BS_MAXBATTLERS; i++) {
                FIND_SLOT_DOUBLES(i, slot, mon);
                ov12_022582B8(battleSys, BS_CTX, 2, i, slot);
            }
        } else {
            table = ov12_0226BFDC + networkID * 2;
            for (i = 0; i < 2; i++) {
                initData.battler = i;
                initData.battlerType = table[i];
                BS_PTR(0x34 + i * 4) = ov12_02258D74(battleSys, &initData);
                ov12_02260EA4(battleSys, BS_PTR(0x34 + i * 4));
            }
            BS_MAXBATTLERS = i;
            for (i = 0; i < 4; i++) {
                Party_Copy(DTO_PARTY(i), BS_PARTY(i));
                FIND_SLOT_IN_PARTY(BS_PARTY(i), slot, mon);
                ov12_022582B8(battleSys, BS_CTX, 2, i, slot);
            }
        }
        ov12_02256F28(battleSys, BS_CTX);
    }

    if (BS_U32(0x2c) & 0x200) {
        mon = Party_GetMonByIndex(BS_PARTY(1), 0);
        GetMonData(mon, 0x90, (u8 *)battleSys + 0xf4);
    }

    if (BS_U32(0x2c) & 1) {
        if (ov12_022395BC(*((u8 *)battleSys + 0xe1)) == 1 || ov12_022395BC(*((u8 *)battleSys + 0x149)) == 1) {
            for (i = 0; i < Party_GetCount(BS_PARTY(0)); i++) {
                mon = Party_GetMonByIndex(BS_PARTY(0), i);
                word = BS_U32(0x2408);
                MonApplyFriendshipMod(mon, 3, word);
                ApplyMonMoodModifier(mon, 2);
            }
            for (i = 0; i < Party_GetCount(BS_PARTY(2)); i++) {
                mon = Party_GetMonByIndex(BS_PARTY(2), i);
                word = BS_U32(0x2408);
                MonApplyFriendshipMod(mon, 3, word);
                ApplyMonMoodModifier(mon, 2);
            }
        }
    }

    versionMismatch = 0;
    BS_U32(0x247c) = 0;
    word = BS_U32(0x2478);
    BS_U32(0x2478) = word & ~4;
    for (i = 0; i < BS_MAXBATTLERS; i++) {
        version = PlayerProfile_GetVersion(BattleSystem_GetPlayerProfile(battleSys, i));
        if (version != 7) {
            versionMismatch = 1;
        }
        if (version != 7 && version != 8) {
            word = BS_U32(0x2478);
            BS_U32(0x2478) = word | 4;
        }
    }

    if (*((u8 *)battleSys + 0x23fc) != 0) {
        BS_U32(0x247c) = versionMismatch;
    } else {
        BS_U32(0x247c) = 0;
    }
}
