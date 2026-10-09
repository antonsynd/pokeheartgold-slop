#include "global.h"

#include "filesystem.h"
#include "heap.h"
#include "party.h"
#include "pokemon.h"
#include "sys_task_api.h"
#include "trainer_memo.h"
#include "unk_02034354.h"
#include "unk_02035900.h"

typedef struct UnkStruct_Ov85_021E5FE0 UnkStruct_Ov85_021E5FE0;

typedef struct UnkStruct_Ov85_Entry {
    int unk0;
    u8 unk4[8];
    int unkC;
    u8 unk10[0x40];
    VecFx32 unk50;
    u8 unk5C[0x54];
} UnkStruct_Ov85_Entry;

typedef struct UnkStruct_Ov85_021E8374 {
    int unk0;
    int unk4;
    int unk8;
    UnkStruct_Ov85_Entry *unkC;
} UnkStruct_Ov85_021E8374;

typedef struct UnkStruct_Ov85_021E84A4 {
    UnkStruct_Ov85_021E5FE0 *unk0;
    int unk4;
    int unk8;
} UnkStruct_Ov85_021E84A4;

typedef struct UnkStruct_Ov85_Pair {
    u16 unk0;
    u16 unk2;
} UnkStruct_Ov85_Pair;

typedef struct UnkStruct_Ov85_Quad {
    u16 unk0;
    u16 unk2;
    u16 unk4;
    u16 unk6;
} UnkStruct_Ov85_Quad;

typedef struct UnkStruct_Ov85_Octet {
    u16 unk0[8];
} UnkStruct_Ov85_Octet;

typedef struct UnkStruct_Ov85_021E5FE0_2C {
    u32 unk0;
    int unk4;
    u32 unk8;
    u8 unkC[4];
    int unk10;
    int unk14;
    int unk18[5];
    UnkStruct_Ov85_Quad unk2C;
    UnkStruct_Ov85_Octet unk34;
    UnkStruct_Ov85_Pair unk44[5];
    u8 unk58[0x28];
} UnkStruct_Ov85_021E5FE0_2C;

typedef struct UnkStruct_Ov85_021E5FE0_CC {
    int unk0;
    int unk4;
    int unk8;
} UnkStruct_Ov85_021E5FE0_CC;

typedef struct UnkStruct_Ov85_021E5FE0_D0 {
    u8 unk0[0x40];
    u16 unk40;
    u16 unk42;
    u8 unk44[2];
    s16 unk46;
} UnkStruct_Ov85_021E5FE0_D0;

struct UnkStruct_Ov85_021E5FE0 {
    u8 unk0[8];
    int unk8;
    u8 unkC[0x14];
    u32 unk20;
    Party *unk24;
    u8 unk28[4];
    UnkStruct_Ov85_021E5FE0_2C unk2C;
    u8 unkAC[0x20];
    UnkStruct_Ov85_021E5FE0_CC *unkCC;
    UnkStruct_Ov85_021E5FE0_D0 *unkD0;
    u8 unkD4[0x3C];
    fx32 unk110;
    u8 unk114[0x1BC];
    UnkStruct_Ov85_Entry unk2D0[13];
    u8 unkBC0[0x84];
    u16 unkC44;
    u16 unkC46;
    u8 unkC48[4];
    UnkStruct_Ov85_021E8374 unkC4C[5];
    u8 unkC9C[0xE4];
    NARC *unkD80;
    u8 unkD84[0x40];
    SysTask *unkDC4;
};

typedef struct UnkStruct_Ov85_021EA758 {
    int unk0;
    const UnkStruct_Ov85_Pair *unk4;
} UnkStruct_Ov85_021EA758;

extern const UnkStruct_Ov85_021EA758 ov85_021EA758[];

extern void ov85_021E6EA8(UnkStruct_Ov85_021E5FE0 *a0, int a1);
extern void ov85_021E7644(void *a0, fx32 a1);
extern void ov85_021E78A4(UnkStruct_Ov85_021E5FE0 *a0, fx32 a1);
extern Party *sub_02097018(void *a0, int a1);

static int _021EAA80[16] = {
    4, 6, 8, 10, 11, 12, 12, 12, 11, 10, 9, 8, 6, 4, 0, 0
};

void ov85_021E8530(fx32 *a0, fx32 a1);
void ov85_021E8428(UnkStruct_Ov85_021E5FE0 *a0, UnkStruct_Ov85_Entry *a1);
void ov85_021E8374(UnkStruct_Ov85_021E5FE0 *a0, UnkStruct_Ov85_021E8374 *a1);
void ov85_021E83C0(SysTask *a0, void *a1);
void ov85_021E84A4(SysTask *a0, void *a1);

BOOL ov85_021E834C(UnkStruct_Ov85_021E5FE0 *a0) {
    return a0->unkC46;
}

void ov85_021E8358(UnkStruct_Ov85_021E5FE0 *a0) {
    GF_ASSERT(a0->unkC46 == 0);
    a0->unkC46 = 1;
    a0->unkC44 = 1;
}

void ov85_021E8374(UnkStruct_Ov85_021E5FE0 *a0, UnkStruct_Ov85_021E8374 *a1) {
    switch (a1->unk0) {
    case 0:
        break;
    case 1:
        a1->unkC->unk50.y = FX32_ONE * _021EAA80[a1->unk4];
        a1->unk4++;

        if (a1->unk4 >= 16) {
            a1->unk4 = 0;
            a1->unk0++;
        }
        break;
    case 2:
        a1->unk8++;

        if (a1->unk8 >= 15) {
            a1->unk8 = 0;
            a1->unk0 = 1;
        }
        break;
    }
}

void ov85_021E83C0(SysTask *a0, void *a1) {
    int i;
    UnkStruct_Ov85_021E5FE0 *work = a1;
    UnkStruct_Ov85_021E8374 *entry = work->unkC4C;

    for (i = 0; i < 5; i++, entry++) {
        ov85_021E8374(work, entry);
    }
}

void ov85_021E83E0(UnkStruct_Ov85_021E5FE0 *a0) {
    memset(a0->unkC4C, 0, sizeof(a0->unkC4C));
    a0->unkDC4 = SysTask_CreateOnMainQueue(ov85_021E83C0, a0, 260);
    GF_ASSERT(a0->unkDC4);
}

void ov85_021E8418(UnkStruct_Ov85_021E5FE0 *a0) {
    SysTask_Destroy(a0->unkDC4);
}

void ov85_021E8428(UnkStruct_Ov85_021E5FE0 *a0, UnkStruct_Ov85_Entry *a1) {
    int index = a1->unkC;
    UnkStruct_Ov85_021E8374 *slot = &a0->unkC4C[index];

    GF_ASSERT(index < 5);
    GF_ASSERT(slot->unk0 == 0);

    slot->unk0 = 1;
    slot->unkC = a1;
}

void ov85_021E8454(UnkStruct_Ov85_021E5FE0 *a0) {
    u32 mask = a0->unk20;
    int i = 0;
    int count = a0->unk2C.unk4;

    while (i < count) {
        if (a0->unk2D0[i].unk0 && (mask & (1 << a0->unk2D0[i].unkC))) {
            ov85_021E8428(a0, &a0->unk2D0[i]);
        }

        i++;
    }
}

void ov85_021E84A4(SysTask *a0, void *a1) {
    int done = 0;
    UnkStruct_Ov85_021E84A4 *work = a1;

    if (work->unk4 == 1) {
        work->unk8--;

        if ((int)work->unk8 <= 0) {
            work->unk8 = 0;
            done = 1;
        }
    } else {
        work->unk8++;

        if ((int)work->unk8 >= 8) {
            work->unk8 = 8;
            done = 1;
        }
    }

    ov85_021E6EA8(work->unk0, work->unk8);

    if (done == 1) {
        Heap_Free(work);
        SysTask_Destroy(a0);
    }
}

void ov85_021E84EC(UnkStruct_Ov85_021E5FE0 *a0, BOOL a1) {
    SysTask *task;
    u32 values[2] = { 0, 8 };
    UnkStruct_Ov85_021E84A4 *work = Heap_AllocAtEnd(HEAP_ID_102, sizeof(UnkStruct_Ov85_021E84A4));

    work->unk0 = a0;
    work->unk4 = a1;
    work->unk8 = values[a1];

    task = SysTask_CreateOnMainQueue(ov85_021E84A4, work, 0);
    GF_ASSERT(task != NULL);
}

void ov85_021E8530(fx32 *a0, fx32 a1) {
    (*a0) += a1;

    while ((*a0) < 0) {
        (*a0) += (FX32_ONE * 360);
    }

    (*a0) %= (FX32_ONE * 360);
}

void ov85_021E8558(UnkStruct_Ov85_021E5FE0 *a0, fx32 a1) {
    ov85_021E7644(a0->unkD4, a1);
    ov85_021E78A4(a0, a1);
}

BOOL ov85_021E8570(UnkStruct_Ov85_021E5FE0 *a0) {
    a0->unk8++;

    if (a0->unk8 < (30 * 20)) {
        return FALSE;
    }

    a0->unk8 = (30 * 20);
    return TRUE;
}

void *ov85_021E8588(UnkStruct_Ov85_021E5FE0 *a0, u32 a1, BOOL a2) {
    void *buf;
    u32 size = NARC_GetMemberSize(a0->unkD80, a1);

    if (a2 == 1) {
        buf = Heap_Alloc(HEAP_ID_102, size);
    } else {
        buf = Heap_AllocAtEnd(HEAP_ID_102, size);
    }

    NARC_ReadWholeMember(a0->unkD80, a1, buf);
    return buf;
}

void ov85_021E85C4(UnkStruct_Ov85_021E5FE0 *a0, u32 a1) {
    if (a1 != 0) {
        a0->unk2C.unk8 = a1;
    }
}

void ov85_021E85CC(UnkStruct_Ov85_021E5FE0 *a0, const UnkStruct_Ov85_Quad *a1) {
    a0->unk2C.unk10 = 1;
    a0->unk2C.unk2C = *a1;
}

void *ov85_021E85F0(UnkStruct_Ov85_021E5FE0 *a0, u32 a1) {
    GF_ASSERT(a1 < 32);
    memset(a0->unkAC, 0, 32);
    return a0->unkAC;
}

void *ov85_021E8610(UnkStruct_Ov85_021E5FE0 *a0) {
    return a0->unkAC;
}

BOOL ov85_021E8614(UnkStruct_Ov85_021E5FE0 *a0, u16 a1) {
    u32 value = a0->unkD0->unk40;

    if (value & a1) {
        return TRUE;
    }

    return FALSE;
}

BOOL ov85_021E8628(UnkStruct_Ov85_021E5FE0 *a0) {
    int count = 0;
    int target = a0->unkCC->unk8 - 1;
    u32 bits = a0->unkD0->unk42;

    while (bits) {
        count += (bits & 0x1);
        bits >>= 1;
    }

    if (count >= target) {
        return TRUE;
    }

    return FALSE;
}

int ov85_021E8660(UnkStruct_Ov85_021E5FE0 *a0) {
    int count = 0;
    u32 bits = a0->unkD0->unk42;

    while (bits) {
        count += (bits & 0x1);
        bits >>= 1;
    }

    return count;
}

void ov85_021E8680(UnkStruct_Ov85_021E5FE0 *a0, const UnkStruct_Ov85_Pair *a1) {
    a0->unk2C.unk44[a1->unk0] = *a1;

    if (a1->unk2 == sub_0203769C()) {
        a0->unk2C.unk0 = a1->unk0;
    }
}

void ov85_021E86AC(UnkStruct_Ov85_021E5FE0 *a0, int a1) {
    a0->unk2C.unk4 = a1;
}

BOOL ov85_021E86B0(UnkStruct_Ov85_021E5FE0 *a0, int a1) {
    if (a1 != 0) {
        u32 mask = 1 << (u32)a1;

        if ((a0->unkD0->unk42 & mask) == 0) {
            return FALSE;
        }
    }

    return TRUE;
}

void ov85_021E86CC(UnkStruct_Ov85_021E5FE0 *a0, int a1) {
    int slotA;
    int slotB;
    Party *partyA;
    Party *partyB;
    Pokemon *monA;
    Pokemon *monB;

    partyA = a0->unk24;
    partyB = sub_02097018(a0->unkD0, a1);

    slotA = a0->unkCC->unk4;
    slotB = a0->unk2C.unk18[a1];

    monA = Party_GetMonByIndex(partyA, slotA);
    monB = Party_GetMonByIndex(partyB, slotB);

    MonSetTrainerMemo(monB, sub_02034818(sub_0203769C()), 5, 0, HEAP_ID_FIELD2);
    CopyPokemonToPokemon(monB, monA);
}

int ov85_021E8720(UnkStruct_Ov85_021E5FE0 *a0) {
    int count = 0;
    u32 bits = a0->unkD0->unk46;

    while (bits) {
        count += (bits & 0x1);
        bits >>= 1;
    }

    return count;
}

void ov85_021E8740(UnkStruct_Ov85_021E5FE0 *a0, int a1, int a2) {
    a0->unk2C.unk18[a1] = a2;
}

void ov85_021E8748(UnkStruct_Ov85_021E5FE0 *a0, const UnkStruct_Ov85_Octet *a1) {
    a0->unk2C.unk34 = *a1;
    a0->unk2C.unk14 = 1;
}

BOOL ov85_021E8764(UnkStruct_Ov85_021E5FE0 *a0, fx32 a1, int a2) {
    int count;
    fx32 angle;
    u32 low;
    u32 high;
    const UnkStruct_Ov85_021EA758 *table;
    const UnkStruct_Ov85_Pair *range;

    ov85_021E8530(&a1, -a0->unk110);

    angle = a1;
    ov85_021E8530(&angle, FX32_ONE * -4);
    low = ((angle) / FX32_ONE);

    angle = a1;
    ov85_021E8530(&angle, FX32_ONE * 5);
    high = ((angle) / FX32_ONE);

    table = &ov85_021EA758[a2];
    count = table->unk0;
    range = table->unk4;

    while (count) {
        if (((low >= range->unk0) && (low <= range->unk2)) || ((high >= range->unk0) && (high <= range->unk2))) {
            return TRUE;
        }

        range++;
        count--;
    }

    return FALSE;
}

BOOL ov85_021E87F0(Party *a0) {
    int i;
    int count;
    Pokemon *mon;

    count = Party_GetCount(a0);

    for (i = 0; i < count; i++) {
        mon = Party_GetMonByIndex(a0, i);

        if (GetMonData(mon, MON_DATA_IS_EGG, NULL)) {
            if (GetMonData(mon, MON_DATA_CHECKSUM_FAILED, NULL)) {
                return TRUE;
            }
        }
    }

    return FALSE;
}
