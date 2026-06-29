#include "global.h"

#include "easy_chat.h"
#include "heap.h"
#include "location_gmm_dat.h"
#include "mail_message.h"
#include "player_data.h"
#include "pm_string.h"
#include "pokemon.h"
#include "sav_system_info.h"
#include "save.h"
#include "save_frontier.h"
#include "save_misc_data.h"
#include "save_wifi_history.h"
#include "string_util.h"
#include "unk_0205B3DC.h"

// NOTE: do not include unk_02030A98.h here. The frozen public header declares
// several of these functions with types that disagree with the matching
// definitions (e.g. sub_02030B04/sub_02030CC8 return pointers but are declared
// void, sub_02031188 takes an argument but is declared void(void)). The 15
// already-matched TUs keep including the frozen header; this defining TU uses
// local declarations to stay ABI-compatible without an IPA cascade.

struct UnkStruct_02030A98;
extern struct UnkStruct_02030A98 *sub_02027144(SaveData *saveData, enum HeapID heapID, int *ret_p);
extern int sub_02027158(SaveData *saveData, struct UnkStruct_02030A98 *data);
extern void sub_0202D240(void *a0);
extern void sub_0202D254(void *a0);
extern void sub_0202D274(void *a0);

FrontierSave *Save_Frontier_GetStatic(SaveData *saveData);

void sub_02030AA4(u32 a0, u32 id, u8 bit, u8 *val);
u32 sub_02030AD4(u32 a0, u32 id, u8 bit);
int sub_02030AE8(SaveData *saveData);
void sub_02030AF8(void *p);
void *sub_02030B04(SaveData *saveData);
u32 sub_02030B14(void *p);
void sub_02030B1C(void *p, u32 v);
void sub_02030B30(void *p_, u32 field, u32 idx, u32 a3, void *val_);
u16 sub_02030B88(void *p_, u32 field, u32 idx);
u8 sub_02030BD0(int idx, u8 *base);
void sub_02030BF4(int idx, u8 *base, u8 val);
void sub_02030C34(u8 *base);
int sub_02030C5C(SaveData *saveData);
void sub_02030C6C(u32 a0, u32 id, u32 bit, u32 a3, void *val_);
int sub_02030CA0(int a0, int id, u8 bit, int a3, int a4);
void sub_02030CBC(void *p);
void *sub_02030CC8(SaveData *saveData);
u32 sub_02030CD8(void *p);
void sub_02030CE0(void *p, u32 v);
void sub_02030CF4(void *p_, u32 field, u32 idx, u32 a3, void *val_);
u32 sub_02030D84(void *p_, u32 field, u32 idx, u32 a3);
u32 sub_02030E08(SaveData *saveData);
void sub_02030E18(u32 a0, u32 id, u32 bit, u32 a3, void *val_);
u32 sub_02030E58(u32 a0, u32 id, u8 bit, u32 a3, u32 a4);
void sub_02030E7C(void *p);
void *sub_02030E88(SaveData *saveData);
u32 sub_02030E98(u32 a0);
void sub_02030EA0(void *p, u32 v);
void sub_02030EB4(void *p_, u32 field, u32 idx, u32 a3, void *val_);
u16 sub_02030F34(void *p_, u32 field, u32 idx);
void *sub_02030FA0(SaveData *saveData);
void sub_02030FB0(void *p, u32 id, u32 bit, u32 a3, void *val_);
u32 sub_02030FE4(void *p, u32 id, u8 bit, u32 a3, u32 a4);
u32 Save_Frontier_sizeof(void);
void Save_Frontier_Init(FrontierSave *p);
void Save_Frontier_Commit(SaveData *saveData);
void Save_Frontier_Load(SaveData *saveData);
u16 FrontierSave_GetStat(FrontierSave *fs, int stat, int bit);
u32 sub_02031108(FrontierSave *fs, int stat, int bit, u16 val);
void sub_02031188(FrontierSave *fs);
void sub_020311AC(FrontierSave *fs, u8 idx);
void sub_02031214(FrontierSave *fs, u32 row);
void sub_02031228(FrontierSave *fs, int stat, int bit, u16 delta);
void sub_02031248(FrontierSave *fs, int stat, int bit, u16 delta);
void sub_0203126C(FrontierSave *fs, u32 stat, u32 bit, u16 newmax);
u32 sub_020312A4(void);
void sub_020312AC(void *p);
struct UnkStruct_02030A98 *sub_020312C4(SaveData *saveData, enum HeapID heapID, int *ret_p);
u32 sub_020312E0(SaveData *saveData, u16 *rec, u32 type, u32 idx);
u32 sub_020313C4(SaveData *saveData, int idx, int a2, int a3, int type, enum HeapID heapID, int *p7, int *p8);
void *sub_020314A4(enum HeapID heapID);
void sub_020314BC(void *p);
void sub_020314C4(u8 *out, SaveData *saveData);
String *sub_020315B8(u16 *nameArr, enum HeapID heapID);
u8 sub_020315D0(u8 *rec);
u16 sub_020315E0(u8 *rec);
u16 sub_020315F0(u8 *rec);
u8 sub_02031610(u8 *rec);
u8 sub_02031620(u8 *rec);
u8 sub_0203162C(u8 *rec);
String *sub_0203164C(u8 *rec, MailMessage *out, enum HeapID heapID);
u8 sub_020316F0(u8 *rec);
u8 sub_02031700(u8 *rec);

typedef struct FrontierRecordBits {
    u8 unk0 : 3;
    u8 unk3 : 1;
    u8 unk4 : 1;
} FrontierRecordBits;

typedef struct CardForm {
    u8 isEgg : 1;
    u8 form : 7;
} CardForm;

static FrontierSave sFrontierSave;

static void sub_02030A98(void *p) {
    MI_CpuFill8(p, 0, 4);
}

void sub_02030AA4(u32 a0, u32 id, u8 bit, u8 *val) {
    if (id == 0xa) {
        if (*val >= 1) {
            *(u8 *)a0 |= 1 << bit;
        } else {
            *(u8 *)a0 &= 0xff ^ (1 << bit);
        }
    }
}

u32 sub_02030AD4(u32 a0, u32 id, u8 bit) {
    if (id == 0xa) {
        return (*(u8 *)a0 >> bit) & 1;
    }
    return 0;
}

int sub_02030AE8(SaveData *saveData) {
    return (int)((u8 *)Save_Frontier_GetStatic(saveData) + 0x1618);
}

void sub_02030AF8(void *p) {
    MI_CpuFill8(p, 0, 0x54);
}

void *sub_02030B04(SaveData *saveData) {
    return (u8 *)Save_Frontier_GetStatic(saveData) + 0x8e0;
}

u32 sub_02030B14(void *p) {
    return ((FrontierRecordBits *)p)->unk3;
}

void sub_02030B1C(void *p, u32 v) {
    ((FrontierRecordBits *)p)->unk3 = v;
}

void sub_02030B30(void *p_, u32 field, u32 idx, u32 a3, void *val_) {
    u8 *p = p_;
    u8 *val = val_;
#pragma unused(a3)
    switch (field) {
    case 0:
        ((FrontierRecordBits *)p)->unk0 = *val;
        return;
    case 1:
        p[1] = *val;
        return;
    case 2:
        *(u16 *)(p + idx * 2 + 4) = *(u16 *)val;
        return;
    case 3:
        *(p + idx + 2) = *val;
        return;
    case 4:
        *(u16 *)(p + idx * 2 + 0x2c) = *(u16 *)val;
        return;
    default:
        GF_AssertFail();
        return;
    }
}

u16 sub_02030B88(void *p_, u32 field, u32 idx) {
    u8 *p = p_;
    switch (field) {
    case 0:
        return ((FrontierRecordBits *)p)->unk0;
    case 1:
        return p[1];
    case 2:
        return *(u16 *)(p + idx * 2 + 4);
    case 3:
        return *(p + idx + 2);
    case 4:
        return *(u16 *)(p + idx * 2 + 0x2c);
    default:
        GF_AssertFail();
        return 0;
    }
}

u8 sub_02030BD0(int idx, u8 *base) {
    return (base[((u32)idx << 23) >> 24] >> ((u8)(idx % 2) * 4)) & 0xf;
}

void sub_02030BF4(int idx, u8 *base, u8 val) {
    int byteIdx = ((u32)idx << 23) >> 24;
    u8 nibble = idx % 2;
    if (nibble == 0) {
        base[byteIdx] &= 0xf0;
    } else {
        base[byteIdx] &= 0xf;
    }
    base[byteIdx] |= (u8)(val << (nibble * 4));
}

void sub_02030C34(u8 *base) {
    int i;
    for (i = 0; i < 0x12; i++) {
        sub_02030BF4((u8)i, base, 0);
    }
}

static void sub_02030C50(void *p) {
    MI_CpuFill8(p, 0, 4);
}

int sub_02030C5C(SaveData *saveData) {
    return (int)((u8 *)Save_Frontier_GetStatic(saveData) + 0x161c);
}

void sub_02030C6C(u32 a0, u32 id, u32 bit, u32 a3, void *val_) {
    u8 *val = val_;
#pragma unused(a3)
    if (id == 5) {
        if (*val >= 1) {
            *(u8 *)a0 |= 1 << bit;
        } else {
            *(u8 *)a0 &= 0xff ^ (1 << bit);
        }
    } else {
        GF_AssertFail();
    }
}

int sub_02030CA0(int a0, int id, u8 bit, int a3, int a4) {
#pragma unused(a3)
#pragma unused(a4)
    if (id == 5) {
        return (*(u8 *)a0 >> bit) & 1;
    }
    GF_AssertFail();
    return 0;
}

void sub_02030CBC(void *p) {
    MI_CpuFill8(p, 0, 0x74);
}

void *sub_02030CC8(SaveData *saveData) {
    return (u8 *)Save_Frontier_GetStatic(saveData) + 0x8e0;
}

u32 sub_02030CD8(void *p) {
    return ((FrontierRecordBits *)p)->unk3;
}

void sub_02030CE0(void *p, u32 v) {
    ((FrontierRecordBits *)p)->unk3 = v;
}

void sub_02030CF4(void *p_, u32 field, u32 idx, u32 a3, void *val_) {
    u8 *p = p_;
    u8 *val = val_;
    switch (field) {
    case 0:
        ((FrontierRecordBits *)p)->unk0 = *val;
        return;
    case 1:
        p[1] = *val;
        return;
    case 2:
        *(u16 *)(p + idx * 2 + 0x22) = *(u16 *)val;
        return;
    case 3:
        *(p + idx * 4 + a3 + 0x2a) = *val;
        return;
    case 4:
        *(u32 *)(p + idx * 4 + 0x3c) = *(u32 *)val;
        return;
    case 5:
        *(u16 *)(p + idx * 2 + 0x4c) = *(u16 *)val;
        return;
    case 6:
        *(u16 *)(p + idx * 2 + 6) = *(u16 *)val;
        return;
    case 7:
        *(p + idx + 3) = *val;
        return;
    case 8:
        *(u16 *)(p + idx * 2 + 0x54) = *(u16 *)val;
        return;
    default:
        GF_AssertFail();
        return;
    }
}

u32 sub_02030D84(void *p_, u32 field, u32 idx, u32 a3) {
    u8 *p = p_;
    switch (field) {
    case 0:
        return ((FrontierRecordBits *)p)->unk0;
    case 1:
        return p[1];
    case 2:
        return *(u16 *)(p + idx * 2 + 0x22);
    case 3:
        return *(p + idx * 4 + a3 + 0x2a);
    case 4:
        return *(u32 *)(p + idx * 4 + 0x3c);
    case 5:
        return *(u16 *)(p + idx * 2 + 0x4c);
    case 6:
        return *(u16 *)(p + idx * 2 + 6);
    case 7:
        return *(p + idx + 3);
    case 8:
        return *(u16 *)(p + idx * 2 + 0x54);
    default:
        GF_AssertFail();
        return 0;
    }
}

static void sub_02030DFC(void *p) {
    MI_CpuFill8(p, 0, 4);
}

u32 sub_02030E08(SaveData *saveData) {
    return (u32)((u8 *)Save_Frontier_GetStatic(saveData) + 0x1620);
}

void sub_02030E18(u32 a0, u32 id, u32 bit, u32 a3, void *val_) {
    u8 *val = val_;
#pragma unused(a3)
    switch (id) {
    case 9:
        if (*val >= 1) {
            *(u8 *)a0 |= 1 << bit;
        } else {
            *(u8 *)a0 &= 0xff ^ (1 << bit);
        }
        break;
    case 0xa:
        *(u8 *)(a0 + 1) = 1;
        break;
    default:
        GF_AssertFail();
        break;
    }
}

u32 sub_02030E58(u32 a0, u32 id, u8 bit, u32 a3, u32 a4) {
#pragma unused(a3)
#pragma unused(a4)
    switch (id) {
    case 9:
        return (*(u8 *)a0 >> bit) & 1;
    case 0xa:
        return *(u8 *)(a0 + 1);
    default:
        GF_AssertFail();
        return 0;
    }
}

void sub_02030E7C(void *p) {
    MI_CpuFill8(p, 0, 0x48);
}

void *sub_02030E88(SaveData *saveData) {
    return (u8 *)Save_Frontier_GetStatic(saveData) + 0x8e0;
}

u32 sub_02030E98(u32 a0) {
    return ((FrontierRecordBits *)a0)->unk3;
}

void sub_02030EA0(void *p, u32 v) {
    ((FrontierRecordBits *)p)->unk3 = v;
}

void sub_02030EB4(void *p_, u32 field, u32 idx, u32 a3, void *val_) {
    u8 *p = p_;
    u8 *val = val_;
#pragma unused(a3)
    switch (field) {
    case 0:
        ((FrontierRecordBits *)p)->unk0 = *val;
        return;
    case 1:
        ((FrontierRecordBits *)p)->unk4 = *val;
        return;
    case 2:
        p[1] = *val;
        return;
    case 3:
        p[2] = *val;
        return;
    case 4:
        *(u16 *)(p + idx * 2 + 6) = *(u16 *)val;
        return;
    case 5:
        *(u16 *)(p + idx * 2 + 0xe) = *(u16 *)val;
        return;
    case 6:
        *(p + idx + 3) = *val;
        return;
    case 7:
        *(u16 *)(p + idx * 2 + 0x2a) = *(u16 *)val;
        return;
    default:
        GF_AssertFail();
        return;
    }
}

u16 sub_02030F34(void *p_, u32 field, u32 idx) {
    u8 *p = p_;
    switch (field) {
    case 0:
        return ((FrontierRecordBits *)p)->unk0;
    case 1:
        return ((FrontierRecordBits *)p)->unk4;
    case 2:
        return p[1];
    case 3:
        return p[2];
    case 4:
        return *(u16 *)(p + idx * 2 + 6);
    case 5:
        return *(u16 *)(p + idx * 2 + 0xe);
    case 6:
        return *(p + idx + 3);
    case 7:
        return *(u16 *)(p + idx * 2 + 0x2a);
    default:
        GF_AssertFail();
        return 0;
    }
}

static void sub_02030F94(void *p) {
    MI_CpuFill8(p, 0, 4);
}

void *sub_02030FA0(SaveData *saveData) {
    return (u8 *)Save_Frontier_GetStatic(saveData) + 0x1624;
}

void sub_02030FB0(void *p, u32 id, u32 bit, u32 a3, void *val_) {
    u8 *val = val_;
#pragma unused(a3)
    if (id == 8) {
        if (*val >= 1) {
            *(u8 *)p |= 1 << bit;
        } else {
            *(u8 *)p &= 0xff ^ (1 << bit);
        }
    } else {
        GF_AssertFail();
    }
}

u32 sub_02030FE4(void *p, u32 id, u8 bit, u32 a3, u32 a4) {
#pragma unused(a3)
#pragma unused(a4)
    if (id == 8) {
        return (*(u8 *)p >> bit) & 1;
    }
    GF_AssertFail();
    return 0;
}

u32 Save_Frontier_sizeof(void) {
    return 0x1628;
}

void Save_Frontier_Init(FrontierSave *p) {
    MI_CpuFill8(p, 0, 0x1628);
    sub_0202D240((u8 *)p + 0x954);
    sub_0202D254((u8 *)p + 0xabc);
    sub_0202D274((u8 *)p + 0xadc);
    sub_02030A98((u8 *)p + 0x1618);
    sub_02030C50((u8 *)p + 0x161c);
    sub_02030DFC((u8 *)p + 0x1620);
    sub_02030F94((u8 *)p + 0x1624);
    MI_CpuCopy8(p, &sFrontierSave, 0x1628);
}

FrontierSave *Save_Frontier_GetStatic(SaveData *saveData) {
#pragma unused(saveData)
    return &sFrontierSave;
}

void Save_Frontier_Commit(SaveData *saveData) {
    MI_CpuCopy8(&sFrontierSave, SaveArray_Get(saveData, SAVE_UNK_19), 0x1628);
}

void Save_Frontier_Load(SaveData *saveData) {
    MI_CpuCopy8(SaveArray_Get(saveData, SAVE_UNK_19), &sFrontierSave, 0x1628);
}

u16 FrontierSave_GetStat(FrontierSave *fs, int stat, int bit) {
    if (stat < 0x70) {
        if (stat >= 0x64) {
            if (bit >= 0x10) {
                stat++;
                bit -= 0x10;
            }
            return (((u16 *)fs)[stat] >> bit) & 1;
        }
        return ((u16 *)fs)[stat];
    }
    if (bit == -1) {
        GF_AssertFail();
        return 0;
    }
    return fs->unk_0E0[bit][stat - 0x70];
}

u32 sub_02031108(FrontierSave *fs, int stat, int bit, u16 val) {
    if (val > 0x270f) {
        val = 0x270f;
    }
    if (stat < 0x70) {
        if (stat >= 0x64) {
            GF_ASSERT(bit != 0xff);
            if (bit >= 0x10) {
                stat++;
                bit -= 0x10;
            }
            if (val == 0) {
                ((u16 *)fs)[stat] &= 0xffff ^ (1 << bit);
            } else {
                ((u16 *)fs)[stat] |= 1 << bit;
            }
        } else {
            GF_ASSERT(bit == 0xff);
            ((u16 *)fs)[stat] = val;
        }
    } else {
        GF_ASSERT(bit != 0xff);
        fs->unk_0E0[bit][stat - 0x70] = val;
    }
    return val;
}

void sub_02031188(FrontierSave *fs) {
    int i;
    MI_CpuFill8((u8 *)fs + 0xe0, 0, 0x800);
    for (i = 0x64; i <= 0x6f; i++) {
        ((u16 *)fs)[i] = 0;
    }
}

void sub_020311AC(FrontierSave *fs, u8 idx) {
    int i;
    int j;
    GF_ASSERT(idx != 0xff);
    for (i = idx; i < 0x1f; i++) {
        MI_CpuCopy8(fs->unk_0E0[i + 1], fs->unk_0E0[i], 0x40);
        for (j = 0x64; j < 0x6f; j += 2) {
            sub_02031108(fs, j, i, FrontierSave_GetStat(fs, j, i + 1));
        }
    }
    MI_CpuFill8((u8 *)fs->unk_0E0 + 0x1f * 0x40, 0, 0x40);
}

void sub_02031214(FrontierSave *fs, u32 row) {
    MI_CpuFill8((u8 *)fs + 0xe0 + row * 0x40, 0, 0x40);
}

void sub_02031228(FrontierSave *fs, int stat, int bit, u16 delta) {
    u16 v = FrontierSave_GetStat(fs, stat, bit);
    v += delta;
    sub_02031108(fs, stat, bit, v);
}

void sub_02031248(FrontierSave *fs, int stat, int bit, u16 delta) {
    int v = FrontierSave_GetStat(fs, stat, bit) - delta;
    if (v < 0) {
        v = 0;
    }
    sub_02031108(fs, stat, bit, v);
}

void sub_0203126C(FrontierSave *fs, u32 stat, u32 bit, u16 newmax) {
    u16 cur = FrontierSave_GetStat(fs, stat, bit);
    if (cur < newmax) {
        sub_02031108(fs, stat, bit, newmax);
    } else if (cur > 0x270f) {
        sub_02031108(fs, stat, bit, 0x270f);
    }
}

u32 sub_020312A4(void) {
    return 0xba0;
}

void sub_020312AC(void *p) {
    MI_CpuFill8(p, 0, 0xba0);
    *(s32 *)p = -1;
}

struct UnkStruct_02030A98 *sub_020312C4(SaveData *saveData, enum HeapID heapID, int *ret_p) {
    return sub_02027144(saveData, heapID, ret_p);
}

static int sub_020312CC(SaveData *saveData, struct UnkStruct_02030A98 *data) {
    return sub_02027158(saveData, data) | SaveGameNormal(saveData);
}

u32 sub_020312E0(SaveData *saveData, u16 *rec, u32 type, u32 idx) {
    if (!Save_CheckExtraChunksExist(saveData)) {
        return 0;
    }
    switch (type) {
    case 0:
        return *(u16 *)((u8 *)rec + idx * 2 + 4);
    case 1:
        return *(u16 *)((u8 *)rec + idx * 2 + 0x3e2);
    case 2:
        return *(u16 *)((u8 *)rec + idx * 2 + 0x7c0);
    default:
        GF_AssertFail();
        return 0;
    }
}

static u32 sub_0203132C(u16 *rec, u32 type, u32 idx, u16 val) {
    if (val > 0x270f) {
        val = 0x270f;
    }
    switch (type) {
    case 0:
        *(u16 *)((u8 *)rec + idx * 2 + 4) = val;
        break;
    case 1:
        *(u16 *)((u8 *)rec + idx * 2 + 0x3e2) = val;
        break;
    case 2:
        *(u16 *)((u8 *)rec + idx * 2 + 0x7c0) = val;
        break;
    default:
        GF_AssertFail();
        return 0;
    }
    return val;
}

static u32 sub_02031378(SaveData *saveData, u16 *rec, u32 type, u32 idx, u16 newval) {
    u32 cur;
    if (!Save_CheckExtraChunksExist(saveData)) {
        return 0;
    }
    cur = sub_020312E0(saveData, rec, type, idx);
    if (cur < newval) {
        return sub_0203132C(rec, type, idx, newval);
    } else if (cur > 0x270f) {
        return sub_0203132C(rec, type, idx, 0x270f);
    }
    return cur;
}

u32 sub_020313C4(SaveData *saveData, int idx, int a2, int a3, int type, enum HeapID heapID, int *p7, int *p8) {
    FrontierSave *fs;
    u16 v14;
    int v10;
    int ret = 0;
    int r4;
    struct UnkStruct_02030A98 *record;

    GF_ASSERT(idx >= 0x22 && idx <= 0x3c);
    {
        int valid = 0;
        int t = a2 - 0x24;
        if ((u32)t <= 0x18 && (0x01001001 & (1 << t))) {
            valid = 1;
        }
        GF_ASSERT(valid);
    }
    *p7 = 1;
    *p8 = 2;
    if (a3 != 0xff) {
        return 0;
    }
    if (!Save_CheckExtraChunksExist(saveData)) {
        return 0;
    }
    fs = Save_Frontier_GetStatic(saveData);
    v14 = FrontierSave_GetStat(fs, idx, a3);
    v10 = FrontierSave_GetStat(fs, a2, a3);
    record = sub_020312C4(saveData, heapID, p7);
    if (*p7 != 1) {
        r4 = 0;
    } else {
        r4 = sub_020312E0(saveData, (u16 *)record, type, v10);
    }
    sub_02031378(saveData, (u16 *)record, type, v10, v14);
    if (v14 != r4) {
        *p8 = sub_020312CC(saveData, record);
        ret = 1;
    }
    if (record != NULL) {
        Heap_Free(record);
    }
    return ret;
}

void *sub_020314A4(enum HeapID heapID) {
    void *p = Heap_Alloc(heapID, 0x80);
    MI_CpuFill8(p, 0, 0x80);
    return p;
}

void sub_020314BC(void *p) {
    Heap_Free(p);
}

void sub_020314C4(u8 *out, SaveData *saveData) {
    OSOwnerInfo ownerInfo;
    int species;
    int form;
    int isEgg;
    PlayerProfile *profile;
    SAVE_MISC_DATA *miscData;
    SaveWiFiHistory *wifi;
    int i;
    u16 *greeting;

    profile = Save_PlayerData_GetProfile(saveData);
    wifi = Save_WiFiHistory_Get(saveData);
    Save_SysInfo_Get(saveData);
    miscData = (SAVE_MISC_DATA *)Save_Misc_Const_Get(saveData);
    OS_GetOwnerInfo(&ownerInfo);
    SaveMisc_GetFavoriteMon(miscData, &species, &form, &isEgg);
    MI_CpuFill8(out, 0, 0x80);
    CopyU16StringArray((u16 *)out, PlayerProfile_GetNamePtr(profile));
    *(u32 *)(out + 0x10) = PlayerProfile_GetTrainerID(profile);
    out[0x14] = PlayerProfile_GetTrainerGender(profile);
    *(u16 *)(out + 0x1c) = species;
    ((CardForm *)(out + 0x1b))->form = form;
    ((CardForm *)(out + 0x1b))->isEgg = isEgg;
    out[0x17] = WifiHistory_GetPlayerCountry(wifi);
    out[0x18] = WiFiHistory_GetPlayerRegion(wifi);
    for (i = 0, greeting = (u16 *)out; i < 0x28; i++) {
        greeting[0x10] = 0xffff;
        greeting++;
    }
    SaveMisc_GetBattleGreeting(miscData, (MailMessage *)(out + 0x20));
    out[0x15] = ownerInfo.birthday.month;
    out[0x16] = GetUnionRoomAvatarAttrBySprite(PlayerProfile_GetTrainerGender(profile), PlayerProfile_GetAvatar(profile), 0);
    out[0x19] = GAME_VERSION;
    out[0x1a] = 2;
    *(u16 *)(out + 0x7c) = SaveArray_CalcCRC16(saveData, out, 0x7c);
}

String *sub_020315B8(u16 *nameArr, enum HeapID heapID) {
    String *str = String_New(0xf, heapID);
    CopyU16ArrayToStringN(str, nameArr, 0xf);
    return str;
}

u8 sub_020315D0(u8 *rec) {
    u8 v = rec[0x14];
    if (v != 0 && v != 1) {
        v = 0;
    }
    return v;
}

u16 sub_020315E0(u8 *rec) {
    u16 v = *(u16 *)(rec + 0x1c);
    if (v >= 0x1ef) {
        v = 0;
    }
    return v;
}

u16 sub_020315F0(u8 *rec) {
    u16 species = *(u16 *)(rec + 0x1c);
    if (species >= 0x1ef) {
        return 0;
    }
    return sub_02070438(species, ((CardForm *)(rec + 0x1b))->form);
}

u8 sub_02031610(u8 *rec) {
    u8 v = ((CardForm *)(rec + 0x1b))->isEgg;
    if (v > 1) {
        v = 1;
    }
    return v;
}

u8 sub_02031620(u8 *rec) {
    u8 v = rec[0x17];
    if (v >= 0xea) {
        v = 0;
    }
    return v;
}

u8 sub_0203162C(u8 *rec) {
    u8 country = rec[0x17];
    u8 region;
    if (country >= 0xea) {
        return 0;
    }
    region = rec[0x18];
    if ((u32)LocationGmmDatRegionCountGetByCountryMsgNo(country) < region) {
        region = 0;
    }
    return region;
}

String *sub_0203164C(u8 *rec, MailMessage *out, enum HeapID heapID) {
    u32 category;
    u32 msgNo;
    int count = 0;

    if (rec[0x1e] == 0) {
        u16 *o = (u16 *)out;
        o[0] = *(u16 *)(rec + 0x20);
        o[1] = *(u16 *)(rec + 0x22);
        o[2] = *(u16 *)(rec + 0x24);
        o[3] = *(u16 *)(rec + 0x26);
        if (o[0] >= 5) {
            count++;
        } else if (o[1] > 0x13) {
            count++;
        } else if ((o[2] != 0xffff && GetCategoryAndMsgNoByECWordIdx(o[2], &category, &msgNo) == 0) || (o[3] != 0xffff && GetCategoryAndMsgNoByECWordIdx(o[3], &category, &msgNo) == 0)) {
            count++;
        }
        if (count > 0) {
            MailMsg_Init_WithBank(out, 4);
            o[1] = 0;
            o[2] = GetECWordIndexByPair(0x11f, 0x63);
            o[3] = 0xffff;
        }
        return NULL;
    } else {
        String *str = String_New(0x28, heapID);
        CopyU16ArrayToStringN(str, (u16 *)(rec + 0x20), 0x28);
        return str;
    }
}

u8 sub_020316F0(u8 *rec) {
    u8 v = rec[0x15];
    if (v < 1 || v > 0xc) {
        v = 1;
    }
    return v;
}

u8 sub_02031700(u8 *rec) {
    u8 v = rec[0x16];
    if (v > 0xf) {
        v = 0;
    }
    return v;
}
