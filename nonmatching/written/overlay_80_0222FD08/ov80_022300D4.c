#include "global.h"
#include "math_util.h"

typedef struct {
    u32 words[14];
} UnkStruct_ov80_022300D4_Mon;

typedef struct {
    u16 setIDs[6];
    u8 ivs[6];
    u8 filler_0E[2];
    u32 personalities[6];
    UnkStruct_ov80_022300D4_Mon mons[6];
} UnkStruct_ov80_022300D4_Set;

typedef struct {
    u8 filler_000[0x254];
    UnkStruct_ov80_022300D4_Set initial;
    u8 filler_3D0[0x584 - 0x3D0];
    UnkStruct_ov80_022300D4_Set partner;
} UnkStruct_ov80_022300D4;

static void CopyMon(UnkStruct_ov80_022300D4_Mon *dest, const UnkStruct_ov80_022300D4_Mon *src) {
    int i;
    for (i = 0; i < 14; i++) {
        dest->words[i] = src->words[i];
    }
}

void ov80_022300D4(UnkStruct_ov80_022300D4 *factory, u32 index1, u32 isPartners) {
    UnkStruct_ov80_022300D4_Mon tmpMon;
    UnkStruct_ov80_022300D4_Set *set;
    u16 setID;
    u8 iv;
    u32 personality;
    u16 index2 = LCRandom() % 6;

    if (isPartners == 0) {
        set = &factory->initial;
    } else {
        set = &factory->partner;
    }

    setID = set->setIDs[index1];
    iv = set->ivs[index1];
    personality = set->personalities[index1];
    CopyMon(&tmpMon, &set->mons[index1]);

    set->setIDs[index1] = set->setIDs[index2];
    set->ivs[index1] = set->ivs[index2];
    set->personalities[index1] = set->personalities[index2];
    CopyMon(&set->mons[index1], &set->mons[index2]);

    set->setIDs[index2] = setID;
    set->ivs[index2] = iv;
    set->personalities[index2] = personality;
    CopyMon(&set->mons[index2], &tmpMon);
}
