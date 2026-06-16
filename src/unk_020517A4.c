#include "unk_020517A4.h"

#include "global.h"

#include "constants/sndseq.h"
#include "constants/species.h"
#include "constants/trainer_class.h"

#include "map_header.h"
#include "pokemon.h"
#include "save_vars_flags.h"
#include "script_pokemon_util.h"
#include "sys_flags.h"

typedef struct {
    u16 id : 10;
    u16 param : 6;
} BattleIntroMusicEntry;

typedef struct {
    u16 transition;
    u16 music;
} BattleTransitionMusic;

static const BattleIntroMusicEntry _020FC3B4[] = {
    { SPECIES_RAIKOU,   22 },
    { SPECIES_ENTEI,    23 },
    { SPECIES_SUICUNE,  24 },
    { SPECIES_LUGIA,    26 },
    { SPECIES_HO_OH,    25 },
    { SPECIES_GROUDON,  27 },
    { SPECIES_KYOGRE,   27 },
    { SPECIES_RAYQUAZA, 27 },
    { SPECIES_MEWTWO,   28 },
    { SPECIES_LATIOS,   28 },
    { SPECIES_LATIAS,   28 },
};

static const BattleIntroMusicEntry _020FC3CA[] = {
    { TRAINERCLASS_LEADER_FALKNER,   0  },
    { TRAINERCLASS_LEADER_BUGSY,     1  },
    { TRAINERCLASS_LEADER_WHITNEY,   2  },
    { TRAINERCLASS_LEADER_MORTY,     3  },
    { TRAINERCLASS_LEADER_JASMINE,   4  },
    { TRAINERCLASS_LEADER_CHUCK,     5  },
    { TRAINERCLASS_LEADER_PRYCE,     6  },
    { TRAINERCLASS_LEADER_CLAIR,     7  },
    { TRAINERCLASS_LEADER_BROCK,     8  },
    { TRAINERCLASS_LEADER_MISTY,     9  },
    { TRAINERCLASS_LEADER_LT_SURGE,  10 },
    { TRAINERCLASS_LEADER_ERIKA,     11 },
    { TRAINERCLASS_LEADER_JANINE,    12 },
    { TRAINERCLASS_LEADER_SABRINA,   13 },
    { TRAINERCLASS_LEADER_BLAINE,    14 },
    { TRAINERCLASS_LEADER_BLUE,      15 },
    { TRAINERCLASS_ELITE_FOUR_WILL,  16 },
    { TRAINERCLASS_ELITE_FOUR_KOGA,  17 },
    { TRAINERCLASS_ELITE_FOUR_BRUNO, 18 },
    { TRAINERCLASS_ELITE_FOUR_KAREN, 19 },
    { TRAINERCLASS_CHAMPION,         20 },
    { TRAINERCLASS_RIVAL,            21 },
    { TRAINERCLASS_PASSERBY,         21 },
    { TRAINERCLASS_EXECUTIVE_ARCHER, 32 },
    { TRAINERCLASS_EXECUTIVE_ARIANA, 33 },
    { TRAINERCLASS_EXECUTIVE_PROTON, 31 },
    { TRAINERCLASS_EXECUTIVE_PETREL, 30 },
    { TRAINERCLASS_ROCKET_BOSS,      34 },
    { TRAINERCLASS_TEAM_ROCKET,      29 },
    { TRAINERCLASS_TEAM_ROCKET_F,    29 },
    { TRAINERCLASS_KIMONO_GIRL,      43 },
    { TRAINERCLASS_PKMN_TRAINER_RED, 44 },
};

static const BattleTransitionMusic _020FC40A[] = {
    { 12,     SEQ_GS_VS_GYMREADER       },
    { 13,     SEQ_GS_VS_GYMREADER       },
    { 14,     SEQ_GS_VS_GYMREADER       },
    { 15,     SEQ_GS_VS_GYMREADER       },
    { 16,     SEQ_GS_VS_GYMREADER       },
    { 17,     SEQ_GS_VS_GYMREADER       },
    { 18,     SEQ_GS_VS_GYMREADER       },
    { 19,     SEQ_GS_VS_GYMREADER       },
    { 20,     SEQ_GS_VS_GYMREADER_KANTO },
    { 21,     SEQ_GS_VS_GYMREADER_KANTO },
    { 22,     SEQ_GS_VS_GYMREADER_KANTO },
    { 23,     SEQ_GS_VS_GYMREADER_KANTO },
    { 24,     SEQ_GS_VS_GYMREADER_KANTO },
    { 25,     SEQ_GS_VS_GYMREADER_KANTO },
    { 26,     SEQ_GS_VS_GYMREADER_KANTO },
    { 27,     SEQ_GS_VS_GYMREADER_KANTO },
    { 29,     SEQ_GS_VS_GYMREADER       },
    { 30,     SEQ_GS_VS_GYMREADER       },
    { 31,     SEQ_GS_VS_GYMREADER       },
    { 32,     SEQ_GS_VS_GYMREADER       },
    { 33,     SEQ_GS_VS_CHAMP           },
    { 28,     SEQ_GS_VS_RIVAL           },
    { 0xFFFF, SEQ_GS_VS_RAIKOU          },
    { 0xFFFF, SEQ_GS_VS_ENTEI           },
    { 0xFFFF, SEQ_GS_VS_SUICUNE         },
    { 35,     SEQ_GS_VS_HOUOU           },
    { 36,     SEQ_GS_VS_LUGIA           },
    { 34,     SEQ_GS_VS_KODAI           },
    { 34,     SEQ_GS_VS_NORAPOKE_KANTO  },
    { 39,     SEQ_GS_VS_ROCKET          },
    { 40,     SEQ_GS_VS_ROCKET          },
    { 41,     SEQ_GS_VS_ROCKET          },
    { 42,     SEQ_GS_VS_ROCKET          },
    { 43,     SEQ_GS_VS_ROCKET          },
    { 44,     SEQ_GS_VS_ROCKET          },
    { 37,     SEQ_GS_VS_TRAINER         },
    { 37,     SEQ_GS_VS_TRAINER         },
    { 38,     SEQ_GS_VS_TRAINER         },
    { 38,     SEQ_GS_VS_NORAPOKE        },
    { 37,     SEQ_GS_BA_BRAIN           },
    { 38,     SEQ_GS_VS_GYMREADER       },
    { 0xFFFF, SEQ_GS_VS_TRAINER         },
    { 0xFFFF, SEQ_GS_VS_NORAPOKE        },
    { 45,     SEQ_GS_VS_TRAINER         },
    { 46,     SEQ_GS_VS_CHAMP           },
};

extern int ov01_021F0D20(BattleSetup *setup);

static int BattleSetup_GetTransitionAndMusicParam(BattleSetup *setup);
static int BattleStartGetTransition(int idx, BattleSetup *setup);
static int BattleStartGetMusic(int idx, BattleSetup *setup);
static int sub_020517F8(int param);
static int NPCTrainerGetBattleIntroAndMusicParam(int trainerClass);
static int WildPokemonGetBattleIntroAndMusicParam(Party *party, u32 arg1);

static int BattleSetup_GetTransitionAndMusicParam(BattleSetup *setup) {
    u32 flags = setup->battleType;
    int param;
    if (flags & 1) {
        param = NPCTrainerGetBattleIntroAndMusicParam(setup->trainer[1].data.trainerClass);
        if (flags & 0x80) {
            if (param == 39) {
                return param;
            }
            if (flags & 2) {
                return 37;
            }
            return 35;
        }
        if ((u32)param >= 29 && (u32)param <= 34) {
            return param;
        }
        if (param == 43) {
            return param;
        }
        if (param == 44) {
            return param;
        }
        if (flags & 2) {
            return 37;
        }
        if (flags & 4) {
            return 36;
        }
        return param;
    } else {
        param = WildPokemonGetBattleIntroAndMusicParam(setup->party[1], setup->mapNumber);
        if ((u32)param < 42) {
            return param;
        }
        if (flags & 2) {
            return 38;
        }
        return param;
    }
}

static int BattleStartGetTransition(int idx, BattleSetup *setup) {
    int transition;
    GF_ASSERT((u32)idx < 0x2d);
    transition = _020FC40A[idx].transition;
    if (transition == 0xFFFF) {
        transition = ov01_021F0D20(setup);
    }
    return transition;
}

static int BattleStartGetMusic(int idx, BattleSetup *setup) {
    GF_ASSERT((u32)idx < 0x2d);
    return _020FC40A[idx].music;
}

int BattleSetup_GetWildTransitionEffect(BattleSetup *setup) {
    int param = BattleSetup_GetTransitionAndMusicParam(setup);
    return BattleStartGetTransition(param, setup);
}

static int sub_020517F8(int param) {
    return 1;
}

int BattleSetup_GetWildBattleMusic(BattleSetup *setup) {
    int param = BattleSetup_GetTransitionAndMusicParam(setup);
    int music = BattleStartGetMusic(param, setup);
    if (Save_VarsFlags_FlypointFlagAction(Save_VarsFlags_Get(setup->saveData), 2, 5) == 1) {
        if (MapHeader_GetRegionNo(setup->mapNumber) != 0) {
            if (music == 0x45C) {
                music = 0x45C + 9;
            } else if (music == 0x45C + 1) {
                music = 0x45C + 0xA;
            } else if (music == 0x45C + 2) {
                if (sub_020517F8(param) == 0) {
                    music = 0x467;
                }
            }
        }
    }
    return music;
}

static int NPCTrainerGetBattleIntroAndMusicParam(int trainerClass) {
    u32 i;
    for (i = 0; i < 0x20; i++) {
        if (trainerClass == _020FC3CA[i].id) {
            return _020FC3CA[i].param;
        }
    }
    return 0x29;
}

static int WildPokemonGetBattleIntroAndMusicParam(Party *party, u32 arg1) {
    Pokemon *mon = GetFirstAliveMonInParty_CrashIfNone(party);
    u32 species = GetMonData(mon, MON_DATA_SPECIES, NULL);
    if (arg1 == 0x6d) {
        return 0x2a;
    }
    {
        u32 i;
        for (i = 0; i < 0xB; i++) {
            if (species == _020FC3B4[i].id) {
                return _020FC3B4[i].param;
            }
        }
    }
    return 0x2a;
}
