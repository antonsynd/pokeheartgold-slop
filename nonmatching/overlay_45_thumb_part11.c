#include "global.h"

#include "assert.h"
#include "heap.h"
#include "location_gmm_dat.h"
#include "overlay_00_thumb.h"
#include "player_data.h"
#include "unk_02037C94.h"

#define UNK_OV45_SLOT_COUNT  20
#define UNK_OV45_ENTRY_COUNT 8
#define UNK_OV45_NAME_COUNT  4

typedef struct UnkStruct_ov45_0222E04C {
    u8 unk0;
    int unk4[3];
    void *unk10[UNK_OV45_NAME_COUNT];
    u16 unk20[4];
    u16 unk28;
    s16 unk2A;
    struct UnkStruct_ov45_0222E04C *unk2C;
    struct UnkStruct_ov45_0222E04C *unk30;
} UnkStruct_ov45_0222E04C;

typedef struct UnkStruct_ov45_0222DF78 {
    UnkStruct_ov45_0222E04C unk0[UNK_OV45_ENTRY_COUNT];
    UnkStruct_ov45_0222E04C unk1A0;
} UnkStruct_ov45_0222DF78;

typedef struct UnkStruct_ov45_0222DE3C_Slot {
    u16 unk0;
    u16 unk2;
} UnkStruct_ov45_0222DE3C_Slot;

typedef struct UnkStruct_ov45_0222DE3C {
    UnkStruct_ov45_0222DE3C_Slot unk0[UNK_OV45_SLOT_COUNT];
    u16 unk50;
    u16 unk52;
} UnkStruct_ov45_0222DE3C;

typedef struct UnkStruct_ov45_0222D860 {
    u32 unk0;
    int unk4;
    UnkStruct_ov45_0222DE3C unk8;
    UnkStruct_ov45_0222DF78 unk5C;
} UnkStruct_ov45_0222D860;

typedef struct UnkStruct_ov45_0222D724_Entry {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3_0 : 4;
    u8 unk3_4 : 4;
} UnkStruct_ov45_0222D724_Entry;

typedef struct UnkStruct_ov45_0222D724 {
    UnkStruct_ov45_0222D724_Entry unk0[50];
} UnkStruct_ov45_0222D724;

typedef struct UnkStruct_ov45_0222D940 {
    PlayerProfile *unk0;
    PlayerProfile *unk4;
    u16 unk8;
    u16 unkA;
} UnkStruct_ov45_0222D940;

typedef struct UnkStruct_ov45_0222D990 {
    PlayerProfile *unk0;
    PlayerProfile *unk4;
    u16 unk8;
    u16 unkA;
    u32 unkC;
} UnkStruct_ov45_0222D990;

typedef struct UnkStruct_ov45_0222D9EC {
    u32 unk0;
    u32 unk4;
    PlayerProfile *unk8;
    PlayerProfile *unkC;
    PlayerProfile *unk10;
    PlayerProfile *unk14;
    u16 unk18;
    u16 unk1A;
    u16 unk1C;
    u16 unk1E;
    u32 unk20;
} UnkStruct_ov45_0222D9EC;

typedef struct UnkStruct_ov45_0222DA80 {
    u32 unk0;
    u32 unk4;
    PlayerProfile *unk8;
    u16 unkC;
} UnkStruct_ov45_0222DA80;

typedef struct UnkStruct_ov45_0222DAE0 {
    u32 unk0;
    PlayerProfile *unk4;
    PlayerProfile *unk8;
    PlayerProfile *unkC;
    PlayerProfile *unk10;
    u16 unk14;
    u16 unk16;
    u16 unk18;
    u16 unk1A;
} UnkStruct_ov45_0222DAE0;

typedef struct UnkStruct_ov45_0222DB98_Id {
    u32 unk0;
} UnkStruct_ov45_0222DB98_Id;

typedef struct UnkStruct_ov45_0222DB98 {
    UnkStruct_ov45_0222DB98_Id *unk0;
    u32 unk4;
} UnkStruct_ov45_0222DB98;

typedef struct UnkStruct_ov45_0222DC08 {
    u32 unk0;
} UnkStruct_ov45_0222DC08;

typedef struct UnkStruct_ov45_0222DC64 {
    u32 unk0;
    u32 unk4;
    PlayerProfile *unk8;
    PlayerProfile *unkC;
    PlayerProfile *unk10;
    PlayerProfile *unk14;
    u16 unk18;
    u16 unk1A;
    u16 unk1C;
    u16 unk1E;
} UnkStruct_ov45_0222DC64;

extern void ov45_0222DE1C(UnkStruct_ov45_0222DE3C *a0);
extern void ov45_0222DE58(UnkStruct_ov45_0222DE3C *a0, u32 a1, u32 a2, u32 a3);
extern void ov45_0222DE74(UnkStruct_ov45_0222DE3C *a0, u32 a1);
extern void ov45_0222DE8C(UnkStruct_ov45_0222DE3C *a0, u32 a1, u32 a2);
extern void ov45_0222DEA4(UnkStruct_ov45_0222DE3C *a0, int a1);
extern BOOL ov45_0222DECC(const UnkStruct_ov45_0222DE3C *a0, u32 a1);
extern u32 ov45_0222DEE0(const UnkStruct_ov45_0222DE3C *a0, u32 a1);
extern BOOL ov45_0222DEF4(const UnkStruct_ov45_0222DE3C *a0, u32 a1);
extern BOOL ov45_0222DF14(const UnkStruct_ov45_0222DE3C *a0, u32 a1);
extern u32 ov45_0222DF38(const UnkStruct_ov45_0222DE3C *a0, u32 a1);
extern BOOL ov45_0222DF58(const UnkStruct_ov45_0222DE3C *a0, u32 a1);
extern void ov45_0222DF78(UnkStruct_ov45_0222DF78 *a0, enum HeapID heapID);
extern void ov45_0222DFD0(UnkStruct_ov45_0222DF78 *a0);
extern void ov45_0222E000(UnkStruct_ov45_0222DF78 *a0);
extern void ov45_0222E03C(UnkStruct_ov45_0222DF78 *a0);
extern UnkStruct_ov45_0222E04C *ov45_0222E04C(UnkStruct_ov45_0222DF78 *a0, u16 a1);
extern void ov45_0222E0A4(UnkStruct_ov45_0222DF78 *a0, UnkStruct_ov45_0222E04C *a1);
extern void ov45_0222E0E0(UnkStruct_ov45_0222E04C *a0, int a1, int a2, int a3, PlayerProfile *a4, PlayerProfile *a5, PlayerProfile *a6, PlayerProfile *a7, u16 a8, u16 a9, u16 a10, u16 a11, u32 a12, u32 a13, u32 a14);
extern BOOL ov45_0222E5B4(u32 a0, u32 a1);

const u8 ov45_02254BB4[18] = {
    9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 10, 11, 12, 13, 14, 15, 16, 17
};

const u8 ov45_02254BC8[3] = { 11, 10, 9 };

const u32 ov45_02254BDC[3] = { 4, 3, 2 };

u32 ov45_0222D724(const UnkStruct_ov45_0222D724 *a0, u8 a1);
void ov45_0222D740(void *a0);
BOOL ov45_0222D79C(u16 a0, u16 a1);
u32 ov45_0222D7C0(int a0);
int ov45_0222D7CC(int a0, int a1);
int ov45_0222D7FC(int a0, int a1);
BOOL ov45_0222D844(void);
UnkStruct_ov45_0222D860 *ov45_0222D860(enum HeapID heapID);
void ov45_0222D890(UnkStruct_ov45_0222D860 *a0);
void ov45_0222D8A4(UnkStruct_ov45_0222D860 *a0);
void ov45_0222D8BC(UnkStruct_ov45_0222D860 *a0, const u32 *a1);
void ov45_0222D8C8(UnkStruct_ov45_0222D860 *a0, u32 a1, u32 a2, u32 a3);
BOOL ov45_0222D8D4(UnkStruct_ov45_0222D860 *a0, u32 a1);
void ov45_0222D8F0(UnkStruct_ov45_0222D860 *a0, u32 a1);
void ov45_0222D940(UnkStruct_ov45_0222D860 *a0, const UnkStruct_ov45_0222D940 *a1);
void ov45_0222D990(UnkStruct_ov45_0222D860 *a0, const UnkStruct_ov45_0222D990 *a1);
void ov45_0222D9EC(UnkStruct_ov45_0222D860 *a0, const UnkStruct_ov45_0222D9EC *a1);
void ov45_0222DA80(UnkStruct_ov45_0222D860 *a0, const UnkStruct_ov45_0222DA80 *a1);
void ov45_0222DAE0(UnkStruct_ov45_0222D860 *a0, const UnkStruct_ov45_0222DAE0 *a1);
void ov45_0222DB3C(UnkStruct_ov45_0222D860 *a0, const UnkStruct_ov45_0222DAE0 *a1);
void ov45_0222DB98(UnkStruct_ov45_0222D860 *a0, const UnkStruct_ov45_0222DB98 *a1);
void ov45_0222DC08(UnkStruct_ov45_0222D860 *a0, const UnkStruct_ov45_0222DC08 *a1, const u8 *a2);
void ov45_0222DC64(UnkStruct_ov45_0222D860 *a0, const UnkStruct_ov45_0222DC64 *a1);
void ov45_0222DCE8(UnkStruct_ov45_0222D860 *a0);
BOOL ov45_0222DCF4(const UnkStruct_ov45_0222D860 *a0, u32 *a1);
BOOL ov45_0222DCFC(const UnkStruct_ov45_0222D860 *a0, u32 a1);
u32 ov45_0222DD08(const UnkStruct_ov45_0222D860 *a0, u32 a1);
BOOL ov45_0222DD14(const UnkStruct_ov45_0222D860 *a0, u32 a1);
BOOL ov45_0222DD20(const UnkStruct_ov45_0222D860 *a0, u32 a1);
BOOL ov45_0222DD2C(const UnkStruct_ov45_0222D860 *a0, u32 a1);

u32 ov45_0222D724(const UnkStruct_ov45_0222D724 *a0, u8 a1) {
    GF_ASSERT(a1 < 50);
    return a0->unk0[a1].unk3_4;
}

void ov45_0222D740(void *a0) {
    NNSG3dResMdlSet *mdlSet = NNS_G3dGetMdlSet(a0);
    NNSG3dResMdl *mdl = NNS_G3dGetMdlByIdx(mdlSet, 0);

    NNS_G3dMdlUseGlbDiff(mdl);
    NNS_G3dMdlUseGlbAmb(mdl);
    NNS_G3dMdlUseGlbSpec(mdl);
    NNS_G3dMdlUseGlbEmi(mdl);
}

BOOL ov45_0222D79C(u16 a0, u16 a1) {
    u32 count = LocationGmmDatRegionCountGetByCountryMsgNo(a0);

    if (count == 0 && a1 == 0) {
        return TRUE;
    }
    if (a1 >= 1 && a1 <= count) {
        return TRUE;
    }
    return FALSE;
}

u32 ov45_0222D7C0(int a0) {
    return ov45_02254BB4[a0];
}

int ov45_0222D7CC(int a0, int a1) {
    int result = ov00_021E6A70(a0, a1);

    if (result == 11 || a0 == 25) {
        if (a1 == 2) {
            return 11;
        }
        return 14;
    }
    if (a0 == 26) {
        return 13;
    }
    if (result < 0) {
        result = 11;
    }
    return result;
}

int ov45_0222D7FC(int a0, int a1) {
    int result = ov00_021E6A70(a0, a1);

    if (a0 == 25) {
        result = 11;
    } else if (a0 == 26) {
        result = 12;
    }

    switch (result) {
    case 1:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
        return 0;
    default:
        return 1;
    }
}

BOOL ov45_0222D844(void) {
    if (sub_020393C8() || sub_020397FC()) {
        return TRUE;
    }
    return FALSE;
}

UnkStruct_ov45_0222D860 *ov45_0222D860(enum HeapID heapID) {
    UnkStruct_ov45_0222D860 *work = Heap_Alloc(heapID, sizeof(UnkStruct_ov45_0222D860));

    memset(work, 0, sizeof(UnkStruct_ov45_0222D860));
    ov45_0222DE1C(&work->unk8);
    ov45_0222DF78(&work->unk5C, heapID);
    return work;
}

void ov45_0222D890(UnkStruct_ov45_0222D860 *a0) {
    ov45_0222DFD0(&a0->unk5C);
    Heap_Free(a0);
}

void ov45_0222D8A4(UnkStruct_ov45_0222D860 *a0) {
    ov45_0222E000(&a0->unk5C);
    ov45_0222DEA4(&a0->unk8, 0);
}

void ov45_0222D8BC(UnkStruct_ov45_0222D860 *a0, const u32 *a1) {
    a0->unk0 = *a1;
    a0->unk4 = 1;
}

void ov45_0222D8C8(UnkStruct_ov45_0222D860 *a0, u32 a1, u32 a2, u32 a3) {
    ov45_0222DE58(&a0->unk8, a1, a2, a3);
}

BOOL ov45_0222D8D4(UnkStruct_ov45_0222D860 *a0, u32 a1) {
    BOOL result = ov45_0222DF14(&a0->unk8, a1);

    ov45_0222DE74(&a0->unk8, a1);
    return result;
}

void ov45_0222D8F0(UnkStruct_ov45_0222D860 *a0, u32 a1) {
    u32 value;
    int i;

    for (i = 0; i < UNK_OV45_SLOT_COUNT; i++) {
        value = ov45_0222DF38(&a0->unk8, i);
        if (value & 2) {
            value &= ~2;
            ov45_0222DE8C(&a0->unk8, i, value);
        }
    }

    value = ov45_0222DF38(&a0->unk8, a1);
    ov45_0222DE8C(&a0->unk8, a1, value | 2);
}

void ov45_0222D940(UnkStruct_ov45_0222D860 *a0, const UnkStruct_ov45_0222D940 *a1) {
    UnkStruct_ov45_0222E04C *entry = ov45_0222E04C(&a0->unk5C, 8);

    if (entry == NULL) {
        return;
    }

    ov45_0222E0E0(entry, 0, 0, 0, a1->unk0, a1->unk4, NULL, NULL, a1->unk8, a1->unkA, 0, 0, 600, 8, 0);
    ov45_0222E0A4(&a0->unk5C, entry);
}

void ov45_0222D990(UnkStruct_ov45_0222D860 *a0, const UnkStruct_ov45_0222D990 *a1) {
    UnkStruct_ov45_0222E04C *entry;

    if (a1->unkC >= 27) {
        return;
    }

    entry = ov45_0222E04C(&a0->unk5C, 7);
    if (entry == NULL) {
        return;
    }

    ov45_0222E0E0(entry, a1->unkC, 0, 0, a1->unk0, a1->unk4, NULL, NULL, a1->unk8, a1->unkA, 0, 0, 600, 7, 1);
    ov45_0222E0A4(&a0->unk5C, entry);
}

void ov45_0222D9EC(UnkStruct_ov45_0222D860 *a0, const UnkStruct_ov45_0222D9EC *a1) {
    UnkStruct_ov45_0222E04C *entry;
    u32 priority;
    u32 kind = a1->unk0;

    if (kind != 0 && kind != 1 && kind != 2) {
        return;
    }

    if (a1->unk20 == 1) {
        if (a1->unk4 < 2 || a1->unk4 > 4) {
            return;
        }
    } else {
        if (a1->unk4 < 1 || a1->unk4 > 4) {
            return;
        }
    }

    priority = ov45_02254BDC[kind];
    entry = ov45_0222E04C(&a0->unk5C, priority);
    if (entry == NULL) {
        return;
    }

    ov45_0222E0E0(entry, kind, a1->unk4, a1->unk20, a1->unk8, a1->unkC, a1->unk10, a1->unk14, a1->unk18, a1->unk1A, a1->unk1C, a1->unk1E, 900, priority, 2);
    ov45_0222E0A4(&a0->unk5C, entry);
}

void ov45_0222DA80(UnkStruct_ov45_0222D860 *a0, const UnkStruct_ov45_0222DA80 *a1) {
    UnkStruct_ov45_0222E04C *entry;

    if (a1->unk0 != 3 && a1->unk0 != 4) {
        return;
    }

    entry = ov45_0222E04C(&a0->unk5C, 5 + a1->unk0);
    if (entry == NULL) {
        return;
    }

    ov45_0222E0E0(entry, a1->unk0, a1->unk4, 0, a1->unk8, NULL, NULL, NULL, a1->unkC, 0, 0, 0, 900, 5 + a1->unk0, 3);
    ov45_0222E0A4(&a0->unk5C, entry);
}

void ov45_0222DAE0(UnkStruct_ov45_0222D860 *a0, const UnkStruct_ov45_0222DAE0 *a1) {
    UnkStruct_ov45_0222E04C *entry = ov45_0222E04C(&a0->unk5C, 12);

    if (entry == NULL) {
        return;
    }

    ov45_0222E0E0(entry, a1->unk0, 0, 0, a1->unk4, a1->unk8, a1->unkC, a1->unk10, a1->unk14, a1->unk16, a1->unk18, a1->unk1A, 450, 12, 4);
    ov45_0222E0A4(&a0->unk5C, entry);
}

void ov45_0222DB3C(UnkStruct_ov45_0222D860 *a0, const UnkStruct_ov45_0222DAE0 *a1) {
    UnkStruct_ov45_0222E04C *entry = ov45_0222E04C(&a0->unk5C, 13);

    if (entry == NULL) {
        return;
    }

    ov45_0222E0E0(entry, a1->unk0, 0, 0, a1->unk4, a1->unk8, a1->unkC, a1->unk10, a1->unk14, a1->unk16, a1->unk18, a1->unk1A, 450, 13, 5);
    ov45_0222E0A4(&a0->unk5C, entry);
}

void ov45_0222DB98(UnkStruct_ov45_0222D860 *a0, const UnkStruct_ov45_0222DB98 *a1) {
    UnkStruct_ov45_0222E04C *entry;

    switch (a1->unk4) {
    case 0:
    case 1:
    case 2:
    case 4:
        break;
    default:
        return;
    }

    entry = ov45_0222E04C(&a0->unk5C, 14);
    if (entry == NULL) {
        return;
    }

    ov45_0222E0E0(entry, a1->unk0->unk0, a1->unk4, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 900, 14, 6);
    ov45_0222E0A4(&a0->unk5C, entry);
}

void ov45_0222DC08(UnkStruct_ov45_0222D860 *a0, const UnkStruct_ov45_0222DC08 *a1, const u8 *a2) {
    UnkStruct_ov45_0222E04C *entry;

    if (a1->unk0 >= 20) {
        return;
    }
    if (a2[a1->unk0] == 0) {
        return;
    }

    entry = ov45_0222E04C(&a0->unk5C, 1);
    if (entry == NULL) {
        return;
    }

    ov45_0222E0E0(entry, a1->unk0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1800, 1, 7);
    ov45_0222E0A4(&a0->unk5C, entry);
}

void ov45_0222DC64(UnkStruct_ov45_0222D860 *a0, const UnkStruct_ov45_0222DC64 *a1) {
    UnkStruct_ov45_0222E04C *entry;
    u32 kind = a1->unk0;
    u32 priority;

    if (kind != 0 && kind != 1 && kind != 2) {
        return;
    }
    if (ov45_0222E5B4(a1->unk0, a1->unk4) == FALSE) {
        return;
    }

    kind = a1->unk0;
    priority = ov45_02254BC8[kind];
    entry = ov45_0222E04C(&a0->unk5C, priority);
    if (entry == NULL) {
        return;
    }

    ov45_0222E0E0(entry, kind, a1->unk4, 0, a1->unk8, a1->unkC, a1->unk10, a1->unk14, a1->unk18, a1->unk1A, a1->unk1C, a1->unk1E, 450, priority, 8);
    ov45_0222E0A4(&a0->unk5C, entry);
}

void ov45_0222DCE8(UnkStruct_ov45_0222D860 *a0) {
    ov45_0222E03C(&a0->unk5C);
}

BOOL ov45_0222DCF4(const UnkStruct_ov45_0222D860 *a0, u32 *a1) {
    *a1 = a0->unk0;
    return a0->unk4;
}

BOOL ov45_0222DCFC(const UnkStruct_ov45_0222D860 *a0, u32 a1) {
    return ov45_0222DECC(&a0->unk8, a1);
}

u32 ov45_0222DD08(const UnkStruct_ov45_0222D860 *a0, u32 a1) {
    return ov45_0222DEE0(&a0->unk8, a1);
}

BOOL ov45_0222DD14(const UnkStruct_ov45_0222D860 *a0, u32 a1) {
    return ov45_0222DEF4(&a0->unk8, a1);
}

BOOL ov45_0222DD20(const UnkStruct_ov45_0222D860 *a0, u32 a1) {
    return ov45_0222DF14(&a0->unk8, a1);
}

BOOL ov45_0222DD2C(const UnkStruct_ov45_0222D860 *a0, u32 a1) {
    return ov45_0222DF58(&a0->unk8, a1);
}
