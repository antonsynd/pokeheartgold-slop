// WIP / DEFERRED (12/20 functions byte-match as of this session). This file is
// written and compiles cleanly; main.lsf is intentionally still pointing at
// asm/overlay_80_022310C4.o so the ROM keeps matching. To resume: flip main.lsf
// to src/frontier/overlay_80_022310C4.o and iterate on the remaining functions.
//
// Matching (verified via objdiff, modulo bl-reloc noise): ov80_022313C0,
// ov80_022314A0, ov80_022314DC, ov80_02231518, ov80_0223151C, ov80_022317C0,
// ov80_022317CC, ov80_022317D0, ov80_02231804, ov80_02231828, ov80_02231888,
// ov80_022319B0, ov80_02231A04, ov80_02231844 (jump-table; objdiff false SIZE).
//
// Still mismatching:
//  - ov80_022310C4 (big init, ~52B): the ov80_0223DD44 global-reload pattern and
//    loop-counter types differ. The asm uses u16 loop counters (narrowing ++,
//    unsigned bcc, indexed arr[i] via lsls#1) where this C uses int (walking
//    pointers); switch the loop counters to u16. Stack frame is 0x18 (asm) vs
//    0x14 here — local decl order / count differs. The global is re-loaded after
//    most calls; tune where `data = ov80_0223DD44` is re-fetched vs cached.
//  - ov80_022313C8 (~8B), ov80_0223157C (~8B): minor scheduling/cast deltas.
//  - ov80_022318D0 / ov80_02231930 (~4B each): missing a (u16) truncation after
//    the (u8) cast of FrontierSave_GetStat ((u16)(u8) is optimized away — needs a
//    form MWCC keeps).
//  - ov80_02231A14 (float, ~12B): close. Re-check the f32/f64 temp widths, the
//    double literals (5.0/1.0/0.5 -> _f2d/_d*/_d2f), the two ROUND12 shared-_ffix
//    sites, and the _fadd operand order. See patterns: float-to-fx32-shared-ffix,
//    fx32-const-rounds-vs-plain-shift.

#include <nitro/mi/memory.h>

#include "global.h"

#include "frontier/frontier_system.h"
#include "frontier/overlay_80_02229EE0.h"

#include "heap.h"
#include "party.h"
#include "player_avatar.h"
#include "pokemon.h"
#include "save.h"
#include "save_frontier.h"
#include "save_vars_flags.h"
#include "sys_vars.h"
#include "unk_0205BFF0.h"

// Save accessors defined in src/unk_02030A98.c; the frozen public header
// (include/unk_02030A98.h) mistypes several of these, so use local externs.
FrontierSave *Save_Frontier_GetStatic(SaveData *saveData);
u16 FrontierSave_GetStat(FrontierSave *fs, int stat, int bit);
u32 sub_02031108(FrontierSave *fs, int stat, int bit, u16 val);
void sub_0203126C(FrontierSave *fs, u32 stat, u32 bit, u16 newmax);
u32 sub_020313C4(SaveData *saveData, int idx, int a2, int a3, int type, enum HeapID heapID, int *p7, int *p8);
void sub_02030AF8(void *p);
void *sub_02030B04(SaveData *saveData);
void sub_02030B1C(void *p, u32 v);
void sub_02030B30(void *p_, u32 field, u32 idx, u32 a3, void *val_);
u16 sub_02030B88(void *p_, u32 field, u32 idx);
u8 sub_02030BD0(int idx, u8 *base);
void sub_02030BF4(int idx, u8 *base, u8 val);
void sub_02030C34(u8 *base);
int sub_02030C5C(SaveData *saveData);
void sub_02030C6C(u32 a0, u32 id, u32 bit, u32 a3, void *val);
int sub_02030CA0(int a0, int id, u8 bit, int a3, int a4);

// No header.
int sub_0205C0A0(u8 a, u32 b);
u32 sub_0205C0F4(u8 a);
void *ov80_02229F04(FrontierTrainerData *dst, u16 trainerId, enum HeapID heapId, NarcId narcId);
u16 ov80_0222A30C(u16 abilityId);
void ov80_0222A840(SaveData *saveData);

// frontier/overlay_80_022372D8.h declares these, but it transitively pulls in
// the frozen unk_02030A98.h (via battle_setup.h -> save_arrays.h); use local
// externs to avoid the conflicting save-accessor declarations.
void ov80_022372D8(u8 a0, int count, int a2, u8 a3, u16 *out);
void ov80_02237334(u8 a0, int count, u16 a2, int a3, u8 a4, u16 *out);
void ov80_02237448(int a0, u8 a1, int a2, u8 a3, u16 a4, u16 *a5, int a6);
u8 ov80_0223787C(u8 a0);
u8 ov80_02237920(u8 a0);
int ov80_0223792C(u8 a0);
u8 ov80_0223793C(void *work);
u16 ov80_022379C8(void *work);
fx32 ov80_02237A40(u32 a0);

// Tables defined in asm/overlay_80_0222BDF4.s.
extern const u8 ov80_0223BDFC[];
extern const u8 ov80_0223BE10[];

void *ov80_0223DD44;

u32 ov80_022310C4(SaveData *saveData, u32 a, u8 b, u8 c, u8 d);
void ov80_022313C0(void *data, u32 a1);
void ov80_022314A0(void *data);
void ov80_022314DC(void *data, void *args);
void ov80_0223151C(void *data, u16 *out);
void ov80_0223157C(void *data, u32 a1);
u16 ov80_022317C0(void *data);
u16 ov80_022317CC(void *data);
u16 ov80_022317D0(void *data, u8 a1);
void ov80_02231804(void *data);
void ov80_02231828(void *data);
u16 ov80_02231844(void *data, u32 a, u32 b);
u16 ov80_02231888(void *data);
void ov80_022319B0(void *data);
void ov80_02231A04(void *data);

static void ov80_022313C8(void *data);
static u16 ov80_02231518(void *p, int unused);
static u16 ov80_022318D0(SaveData *a0, u8 a1, int a2, u16 *a3, u16 *a4);
static void ov80_02231930(SaveData *a0, u8 a1, int a2, u8 a3);
static u16 ov80_02231A14(void *data);

extern u16 ov80_0222AF10(void *data);
extern u16 ov80_0222AF54(void *data);
extern u16 ov80_0222AFB8(void *data);
extern u16 ov80_0222B024(void *data, u8 a);
extern u16 ov80_0222B070(void *data);

u32 ov80_022310C4(SaveData *saveData, u32 a, u8 b, u8 c, u8 d) {
    u8 *data;
    u8 *record;
    int n;
    int i;
    u16 lo;
    u16 hi;
    int staticBuf;

    ov80_0223DD44 = Heap_Alloc(HEAP_ID_FIELD2, 0xd98);
    MI_CpuFill8(ov80_0223DD44, 0, 0xd98);
    data = ov80_0223DD44;
    *(void **)(data + 0x6f8) = sub_02030B04(saveData);
    *(SaveData **)(data + 0x6fc) = saveData;
    *(u32 *)data = 0xb;
    data = ov80_0223DD44;
    *(Party **)(data + 0x264) = SaveArray_Party_Alloc(HEAP_ID_FIELD2);
    *(Pokemon **)(data + 0xd8c) = AllocMonZeroed(HEAP_ID_FIELD2);
    record = *(u8 **)(data + 0x6f8);
    staticBuf = sub_02030C5C(saveData);
    if (a == 0) {
        int gate;
        data = ov80_0223DD44;
        data[4] = b;
        n = ov80_0223787C(data[4]);
        data = ov80_0223DD44;
        data[5] = 0;
        sub_02030AF8(record);
        data = ov80_0223DD44;
        if (data[4] == 3) {
            gate = Save_VarsFlags_GetVar4052(Save_VarsFlags_Get(*(SaveData **)(data + 0x6fc)));
        } else {
            gate = sub_02030CA0(staticBuf, 5, 0, 0, 0);
        }
        if ((u8)gate == 1) {
            FrontierSave *fs;
            int stat;
            data = ov80_0223DD44;
            fs = Save_Frontier_GetStatic(*(SaveData **)(data + 0x6fc));
            data = ov80_0223DD44;
            stat = sub_0205C0CC(data[4]);
            data = ov80_0223DD44;
            *(u16 *)(data + 8) = FrontierSave_GetStat(fs, stat, sub_0205C268(sub_0205C0CC(data[4])));
        } else {
            data = ov80_0223DD44;
            *(u16 *)(data + 8) = 0;
            for (i = 0; i < 0x12; i++) {
                data = ov80_0223DD44;
                ov80_02231930(*(SaveData **)(data + 0x6fc), data[4], (u8)i, 0);
            }
        }
        data = ov80_0223DD44;
        data[0x260] = c;
        data[0x261] = d;
    } else {
        FrontierSave *fs;
        int stat;
        data = ov80_0223DD44;
        data[4] = sub_02030B88(record, 0, 0);
        n = ov80_0223787C(data[4]);
        data = ov80_0223DD44;
        data[5] = sub_02030B88(record, 1, 0);
        data = ov80_0223DD44;
        fs = Save_Frontier_GetStatic(*(SaveData **)(data + 0x6fc));
        data = ov80_0223DD44;
        stat = sub_0205C0CC(data[4]);
        *(u16 *)(data + 8) = FrontierSave_GetStat(fs, stat, sub_0205C268(sub_0205C0CC(data[4])));
        for (i = 0; i < n; i++) {
            data = ov80_0223DD44;
            data[0x260 + i] = sub_02030B88(record, 3, i);
        }
        for (i = 0; i < 0x14; i++) {
            data = ov80_0223DD44;
            *(u16 *)(data + 0x18 + i * 2) = sub_02030B88(record, 2, i);
        }
        for (i = 0; i < 0x14; i++) {
            data = ov80_0223DD44;
            *(u16 *)(data + 0x268 + i * 2) = (u8)sub_02030B88(record, 4, i);
        }
    }
    for (i = 0; i < n; i++) {
        data = ov80_0223DD44;
        *(u16 *)(data + 0x728 + i * 2) = GetMonData(Party_GetMonByIndex(SaveArray_Party_Get(*(SaveData **)(data + 0x6fc)), data[0x260 + i]), MON_DATA_HELD_ITEM, NULL);
    }
    data = ov80_0223DD44;
    *(u32 *)(data + 0x10) = 0;
    *(u16 *)(data + 0xa) = (int)*(u16 *)(data + 8) / 10;
    if (data[4] == 2) {
        for (i = 0; i < 0x12; i++) {
            data = ov80_0223DD44;
            sub_02030BF4((u8)i, data + 0x716, 9);
        }
    } else {
        for (i = 0; i < 0x12; i++) {
            u8 v;
            data = ov80_0223DD44;
            v = ov80_022318D0(saveData, data[4], (u8)i, &lo, &hi);
            data = ov80_0223DD44;
            sub_02030BF4((u8)i, data + 0x704 + data[4] * 9, v);
        }
    }
    data = ov80_0223DD44;
    if (ov80_0223792C(data[4]) == 1) {
        data = ov80_0223DD44;
        ov80_0222A840(*(SaveData **)(data + 0x6fc));
    }
    return (u32)ov80_0223DD44;
}

void ov80_022313C0(void *data, u32 a1) {
#pragma unused(a1)
    ov80_022313C8(data);
}

static void ov80_022313C8(void *data_) {
    u8 *data = data_;
    u8 mode = data[4];
    int v6 = 1;
    int v4 = 0;
    int v7;
    u16 species;
    int u;

    if (mode != 0) {
        v6 = 2;
    }
    v7 = sub_02030BD0(data[0x6f5], data + 0x704 + mode * 9);
    data[7] = ov80_02231A14(data);
    ov80_022372D8(data[0x6f5], v6, v7, data[5], (u16 *)(data + 0x18));
    ov80_02237334(data[4], v6, *(u16 *)(data + 0xa), v7, data[5], (u16 *)(data + 0x18));
    u = ((u8)data[5] << 1) * 2;
    species = *(u16 *)(data + 0x18 + u);
    if ((u16)(species + 0xfecd) <= 1) {
        v7 = (u8)ov80_0223793C(data);
    }
    species = *(u16 *)(data + 0x18 + u);
    if (species == 0x133) {
        v4 = 1;
    }
    if (species == 0x134) {
        v4 = 2;
    }
    {
        u16 sp;
        sp = (u16)GetMonData(Party_GetMonByIndex(*(Party **)(data + 0x264), 0), MON_DATA_SPECIES, NULL);
        ov80_02237448(1, data[0x6f4], v7, data[5], sp, (u16 *)(data + 0x268), v4);
    }
}

void ov80_022314A0(void *data_) {
    u8 *data = data_;
    if (data == NULL) {
        return;
    }
    if (*(void **)(data + 0x264) != NULL) {
        Heap_Free(*(void **)(data + 0x264));
    }
    if (*(void **)(data + 0xd8c) != NULL) {
        Heap_Free(*(void **)(data + 0xd8c));
    }
    MI_CpuFill8(data, 0, 0xd98);
    Heap_Free(data);
}

void ov80_022314DC(void *data_, void *args) {
    u8 *data = data_;
    *(u16 *)(data + 0x6f2) = ov80_02231518(args, 0);
    data[0x6f5] = (u8) * (u16 *)(data + 0x6f2);
    data[0x6f4] = ov80_02237920((u8) * (u16 *)(data + 0x6f2));
    if (data[0x6f5] >= 0x11) {
        data[0x6f5] = 0x11;
    }
}

static u16 ov80_02231518(void *p, int unused) {
#pragma unused(unused)
    return *(u16 *)((u8 *)p + 6);
}

void ov80_0223151C(void *data_, u16 *out) {
    u8 *data = data_;
    u8 mode = data[4];
    int a;
    int b;
    u32 cc;
    u32 dd;
    int local1;
    int local2;

    if (mode == 3) {
        *out = 0;
        return;
    }
    a = sub_0205C0F4(mode);
    b = sub_0205C11C(data[4]);
    cc = sub_0205C268(sub_0205C0F4(data[4]));
    dd = sub_0205C144(mode);
    *out = sub_020313C4(*(SaveData **)(data + 0x6fc), a, b, cc, dd, HEAP_ID_FIELD2, &local1, &local2);
}

void ov80_0223157C(void *data_, u32 a1) {
    u8 *data = data_;
    int staticBuf;
    FrontierSave *fs;
    Pokemon *mon;
    int stat;
    u16 streak;
    u16 cur;
    int i;
    u16 stage[1];
    u8 staging[12];

    staticBuf = sub_02030C5C(*(SaveData **)(data + 0x6fc));
    fs = Save_Frontier_GetStatic(*(SaveData **)(data + 0x6fc));
    staging[8] = data[4];
    sub_02030B30(*(void **)(data + 0x6f8), 0, 0, 0, staging + 8);
    sub_02030B1C(*(void **)(data + 0x6f8), 1);
    mon = Party_GetMonByIndex(SaveArray_Party_Get(*(SaveData **)(data + 0x6fc)), data[0x260]);
    streak = (u16)GetMonData(mon, MON_DATA_SPECIES, NULL);
    stat = sub_0205C11C(data[4]);
    cur = FrontierSave_GetStat(fs, stat, sub_0205C268(sub_0205C11C(data[4])));
    staging[8] = data[5];
    sub_02030B30(*(void **)(data + 0x6f8), 1, 0, 0, staging + 8);
    stat = sub_0205C0CC(data[4]);
    sub_02031108(fs, stat, sub_0205C268(sub_0205C0CC(data[4])), *(u16 *)(data + 8));
    if (a1 != 2) {
        if (data[4] == 3) {
            if (cur == streak) {
                int s = sub_0205C0F4(data[4]);
                sub_0203126C(fs, s, sub_0205C268(sub_0205C0F4(data[4])), *(u16 *)(data + 8));
            } else {
                int s = sub_0205C0F4(data[4]);
                sub_02031108(fs, s, sub_0205C268(sub_0205C0F4(data[4])), *(u16 *)(data + 8));
            }
        } else {
            int s = sub_0205C0F4(data[4]);
            sub_02031108(fs, s, sub_0205C268(sub_0205C0F4(data[4])), *(u16 *)(data + 8));
        }
        staging[8] = data[6];
        sub_02030C6C((u32)staticBuf, 5, data[4], 0, staging + 8);
        if (data[4] == 3) {
            sub_02031108(fs, 0x6a, sub_0205C268(0x6a), data[6]);
        }
    }
    for (i = 0; i < 0x14; i++) {
        stage[0] = *(u16 *)(data + 0x18 + i * 2);
        sub_02030B30(*(void **)(data + 0x6f8), 2, (u8)i, 0, stage);
    }
    for (i = 0; i < 2; i++) {
        staging[8] = data[0x260 + i];
        sub_02030B30(*(void **)(data + 0x6f8), 3, (u8)i, 0, staging + 8);
    }
    for (i = 0; i < 0x12; i++) {
        staging[8] = sub_02030BD0((u8)i, data + 0x704 + data[4] * 9);
        ov80_02231930(*(SaveData **)(data + 0x6fc), data[4], (u8)i, staging[8]);
    }
    for (i = 0; i < 0x14; i++) {
        stage[0] = *(u16 *)(data + 0x268 + i * 2);
        sub_02030B30(*(void **)(data + 0x6f8), 4, (u8)i, 0, stage);
    }
    stat = sub_0205C11C(data[4]);
    sub_02031108(fs, stat, sub_0205C268(sub_0205C11C(data[4])), (u16)GetMonData(mon, MON_DATA_SPECIES, NULL));
}

u16 ov80_022317C0(void *data_) {
    u8 *data = data_;
    data[5]++;
    return data[5];
}

u16 ov80_022317CC(void *data_) {
    u8 *data = data_;
    return data[5];
}

u16 ov80_022317D0(void *data_, u8 a1) {
    u8 *data = data_;
    u8 buf[0x30];
    void *raw;
    raw = ov80_02229F04((FrontierTrainerData *)buf, *(u16 *)(data + 0x18 + (u8)(a1 + data[5] * 2) * 2), HEAP_ID_FIELD2, NARC_a_2_0_2);
    Heap_Free(raw);
    return ov80_0222A30C((u8) * (u16 *)(buf + 4));
}

void ov80_02231804(void *data_) {
    u8 *data = data_;
    sub_02030C34(data + 0x704 + data[4] * 9);
    ov80_0223157C(data, 1);
}

void ov80_02231828(void *data_) {
    u8 *data = data_;
    data[6] = 1;
    if (*(u16 *)(data + 0xa) < 0x12) {
        (*(u16 *)(data + 0xa))++;
    }
    data[5] = 0;
    ov80_0223157C(data, 0);
}

u16 ov80_02231844(void *data, u32 a, u32 b) {
    switch (a) {
    case 0:
        return ov80_0222AF10(data);
    case 1:
        return ov80_0222AF54(data);
    case 2:
        return ov80_0222AFB8(data);
    case 3:
        return ov80_0222B024(data, (u8)b);
    case 4:
    case 5:
    case 6:
        return 0;
    case 7:
        return ov80_0222B070(data);
    }
    return 0;
}

u16 ov80_02231888(void *data_) {
    u8 *data = data_;
    u8 mode = data[4];
    u16 bracket = *(u16 *)(data + 0xa);
    u16 result;

    if (mode <= 1) {
        if (bracket >= 0x12) {
            result = 0xc;
        } else {
            result = ov80_0223BDFC[bracket];
        }
    } else {
        if (bracket >= 0x12) {
            result = 0x17;
        } else {
            result = ov80_0223BE10[bracket];
        }
    }
    if (mode == 0) {
        if (*(u16 *)(data + 8) == 0x32 || *(u16 *)(data + 8) == 0xaa) {
            result = 0x14;
        }
    } else if (mode == 2) {
        result = 0xc;
    }
    return result;
}

static u16 ov80_022318D0(SaveData *a0, u8 a1, int a2, u16 *a3, u16 *a4) {
    FrontierSave *fs = Save_Frontier_GetStatic(a0);
    int stat = sub_0205C0A0(a1, a2);
    u16 v = (u16)(u8)FrontierSave_GetStat(fs, stat, sub_0205C268(sub_0205C0A0(a1, a2)));
    *a3 = v & 0xf;
    *a4 = v >> 4;
    if (a2 % 2 == 0) {
        return *a3;
    }
    return *a4;
}

static void ov80_02231930(SaveData *a0, u8 a1, int a2, u8 a3) {
    FrontierSave *fs;
    int stat;
    u16 lo;
    u16 hi;
    u8 packed;
    ov80_022318D0(a0, a1, a2, &lo, &hi);
    packed = (u8)((hi << 4) | lo);
    if (a2 % 2 == 0) {
        packed &= 0xf0;
    } else {
        packed &= 0xf;
    }
    packed |= (u8)(a3 << (a2 % 2 * 4));
    fs = Save_Frontier_GetStatic(a0);
    stat = sub_0205C0A0(a1, a2);
    sub_02031108(fs, stat, sub_0205C268(sub_0205C0A0(a1, a2)), packed);
}

void ov80_022319B0(void *data_) {
    u8 *data = data_;
    int i;
    if (data[4] == 2) {
        return;
    }
    for (i = 0; i < 0x11; i++) {
        if (sub_02030BD0((u8)i, data + 0x704 + data[4] * 9) < 0xa) {
            break;
        }
    }
    if (i == 0x11) {
        for (i = 0; i < 0x11; i++) {
            sub_02030BF4((u8)i, data + 0x704 + data[4] * 9, 9);
        }
    }
}

void ov80_02231A04(void *data_) {
    u8 *data = data_;
    *(fx32 *)(data + 0xc) = ov80_02237A40(ov80_022379C8(data));
}

static u16 ov80_02231A14(void *data_) {
    u8 *data = data_;
    int v4 = sub_02030BD0(data[0x6f5], data + 0x704 + data[4] * 9);
    int total = ov80_022379C8(data);
    fx32 fxC;
    f32 t;
    int B;
    f32 C;
    f32 result;
    f32 sum;
    f32 D;
    f32 acc;
    int r;
    int i;

    if (data[4] == 2) {
        return (u16)total;
    }
    if (total > 0) {
        t = 0.5f + (f32)(total << 12);
    } else {
        t = (f32)(total << 12) - 0.5f;
    }
    fxC = *(fx32 *)(data + 0xc);
    B = (s32)t - fxC * 3;
    C = (f32)(5.0 * (double)((f32)fxC / 4096.0f));
    if ((double)((f32)total / C) < 1.0) {
        result = (f32)v4;
    } else {
        int p = total * v4;
        f32 pr;
        if (p > 0) {
            pr = 0.5f + (f32)(p << 12);
        } else {
            pr = (f32)(p << 12) - 0.5f;
        }
        result = (f32)(s32)pr / 4096.0f / C;
    }
    sum = 0.0f;
    for (i = 0; i < 0x12; i++) {
        if (i == data[0x6f5]) {
            sum = (f32)((double)sum + 1.0);
        } else if (sub_02030BD0((u8)i, data + 0x704 + data[4] * 9) != 0) {
            sum = (f32)((double)sum + 1.0);
        }
    }
    if ((double)sum != 0.0) {
        sum = (f32)((double)sum - 1.0);
    }
    D = (f32)((double)sum * 0.5);
    acc = D + ((f32)B / 4096.0f + result);
    r = (s32)acc;
    if (acc != (f32)(s32)acc) {
        r++;
    }
    if (r > total) {
        r = total;
    }
    if (r > 0x64) {
        r = 0x64;
    }
    return (u16)r;
}
