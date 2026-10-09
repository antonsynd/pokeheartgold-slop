#include "global.h"

#include "assert.h"
#include "easy_chat.h"
#include "heap.h"
#include "math_util.h"
#include "overlay_manager.h"
#include "save.h"

typedef struct UnkStruct_ov45_0222C8C8 {
    u8 unk_00[9];
    u8 unk_09[3];
    u8 unk_0C[20];
} UnkStruct_ov45_0222C8C8;

typedef struct UnkStruct_ov45_0222C944 {
    u8 unk_00[20];
} UnkStruct_ov45_0222C944;

typedef struct UnkStruct_ov45_0222CA10 {
    u16 unk_00[4];
} UnkStruct_ov45_0222CA10;

typedef struct UnkStruct_ov45_0222C978 {
    u8 unk_00[20];
    UnkStruct_ov45_0222CA10 unk_14[20];
    WallpaperPasswordBank *unk_B4;
} UnkStruct_ov45_0222C978;

#pragma pack(push, 4)
typedef struct UnkStruct_ov45_0222CA7C {
    u32 unk_00;
    s64 unk_04;
    s32 unk_0C;
    s32 unk_10;
    u32 unk_14;
    u32 unk_18;
} UnkStruct_ov45_0222CA7C;
#pragma pack(pop)

typedef struct UnkStruct_ov45_0222CB44 {
    s32 unk_00[13];
    u8 unk_34[13];
    u8 unk_41;
    u8 unk_42;
    u8 unk_43;
    SaveData *saveData;
    u16 unk_48;
    u16 unk_4A;
} UnkStruct_ov45_0222CB44;

typedef struct UnkStruct_ov45_02254A28 {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_ov45_02254A28;

typedef struct UnkStruct_ov45_02254A84 {
    u16 graphicsID;
    u16 unk_02;
} UnkStruct_ov45_02254A84;

typedef struct UnkStruct_ov45_Slot {
    void *unk_00;
} UnkStruct_ov45_Slot;

typedef struct UnkStruct_ov45_Manager {
    OverlayManager *appMan;
    UnkStruct_ov45_Slot unk_04[13];
    u8 unk_38;
    u8 unk_39;
    u16 heapID;
    void *unk_3C;
    SaveData *saveData;
    void *unk_44;
} UnkStruct_ov45_Manager;

void ov45_0222CDE4(UnkStruct_ov45_Manager *manager, u32 index, u32 heapID);
void ov45_0222CE0C(UnkStruct_ov45_Manager *manager, u32 index);
void ov45_0222CE2C(UnkStruct_ov45_Manager *manager, u32 index);
int ov45_0222CE54(UnkStruct_ov45_Manager *manager, u32 index);
void ov45_0222ECB8(s64 *dst);

void ov45_0222C8C8(UnkStruct_ov45_0222C8C8 *work, u32 a1, u32 a2);
u32 ov45_0222C900(const UnkStruct_ov45_0222C8C8 *work);
void ov45_0222C944(UnkStruct_ov45_0222C944 *work, u32 index, BOOL a2);
BOOL ov45_0222C95C(const UnkStruct_ov45_0222C944 *work, u32 index);
void ov45_0222C978(UnkStruct_ov45_0222C978 *work, u32 heapID);
void ov45_0222C994(UnkStruct_ov45_0222C978 *work);
void ov45_0222C9A0(UnkStruct_ov45_0222C978 *work, u32 index, BOOL a2, u32 a3);
BOOL ov45_0222C9D0(const UnkStruct_ov45_0222C978 *work, u32 index);
const UnkStruct_ov45_0222CA10 *ov45_0222C9EC(const UnkStruct_ov45_0222C978 *work, u32 index);
void ov45_0222CA10(WallpaperPasswordBank *bank, u32 a1, UnkStruct_ov45_0222CA10 *dst);
void ov45_0222CA7C(UnkStruct_ov45_0222CA7C *work, u32 a1, u32 a2);
void ov45_0222CA8C(UnkStruct_ov45_0222CA7C *work);
void ov45_0222CAA0(UnkStruct_ov45_0222CA7C *work);
u32 ov45_0222CB3C(const UnkStruct_ov45_0222CA7C *work);
int ov45_0222CB40(const UnkStruct_ov45_0222CA7C *work);
void ov45_0222CB44(UnkStruct_ov45_0222CB44 *work, SaveData *saveData);
void ov45_0222CB74(UnkStruct_ov45_0222CB44 *work, int a1, s32 a2);
BOOL ov45_0222CBD0(UnkStruct_ov45_0222CB44 *work, s32 a1, s32 a2);
int ov45_0222CC00(UnkStruct_ov45_0222CB44 *work);
int ov45_0222CC50(UnkStruct_ov45_0222CB44 *work, u32 index);
s32 ov45_0222CC7C(UnkStruct_ov45_0222CB44 *work, u32 index);
void ov45_0222CCA4(UnkStruct_ov45_0222CB44 *work);
void ov45_0222CCB8(UnkStruct_ov45_0222CB44 *work);
BOOL ov45_0222CCDC(const UnkStruct_ov45_0222CB44 *work);
u32 ov45_0222CCE4(u32 graphicsID);
u32 ov45_0222CD04(u32 index);
UnkStruct_ov45_Manager *ov45_0222CD1C(BOOL a0, SaveData *saveData, void *a2, void *a3, u32 heapID);
void ov45_0222CD68(UnkStruct_ov45_Manager *manager);
void ov45_0222CD84(UnkStruct_ov45_Manager *manager);
int ov45_0222CD90(UnkStruct_ov45_Manager *manager);

const UnkStruct_ov45_02254A28 _02254A28[5] = {
    { 2, 0x50 },
    { 1, 2 },
    { 3, 0x8E },
    { 1, 2 },
    { 4, 0x1E },
};

const UnkStruct_ov45_02254A84 ov45_02254A84[16] = {
    { 0x03, 0 },
    { 0x05, 0 },
    { 0x0B, 0 },
    { 0x1F, 0 },
    { 0x32, 0 },
    { 0x33, 0 },
    { 0x3E, 0 },
    { 0x46, 0 },
    { 0x06, 1 },
    { 0x07, 1 },
    { 0x0D, 1 },
    { 0x0E, 1 },
    { 0x23, 1 },
    { 0x25, 1 },
    { 0x2A, 1 },
    { 0x3F, 1 },
};

void ov45_0222C8C8(UnkStruct_ov45_0222C8C8 *work, u32 a1, u32 a2) {
    u32 v0;

    GF_ASSERT(a2 < 20);
    GF_ASSERT(a1 < 27);

    if (work->unk_0C[a2] == 0) {
        v0 = a1 / 3;
        work->unk_00[v0] /= 2;
        work->unk_0C[a2] = 1;
    }
}

u32 ov45_0222C900(const UnkStruct_ov45_0222C8C8 *work) {
    int i;
    u32 total;
    u32 roll;
    u32 sum;

    total = 0;
    for (i = 0; i < 9; i++) {
        total += work->unk_00[i];
    }

    roll = MTRandom() % total;
    sum = 0;
    for (i = 0; i < 9; i++) {
        if (sum <= roll && sum + work->unk_00[i] > roll) {
            return i * 3;
        }
        sum += work->unk_00[i];
    }

    GF_ASSERT(FALSE);
    return 0;
}

void ov45_0222C944(UnkStruct_ov45_0222C944 *work, u32 index, BOOL a2) {
    GF_ASSERT(index < 20);

    if (index < 20) {
        work->unk_00[index] = a2;
    }
}

BOOL ov45_0222C95C(const UnkStruct_ov45_0222C944 *work, u32 index) {
    GF_ASSERT(index < 20);

    if (index < 20) {
        return work->unk_00[index];
    }

    return FALSE;
}

void ov45_0222C978(UnkStruct_ov45_0222C978 *work, u32 heapID) {
    MI_CpuClear8(work, sizeof(UnkStruct_ov45_0222C978));
    work->unk_B4 = WallpaperPasswordBank_Create(heapID);
}

void ov45_0222C994(UnkStruct_ov45_0222C978 *work) {
    WallpaperPasswordBank_Delete(work->unk_B4);
}

void ov45_0222C9A0(UnkStruct_ov45_0222C978 *work, u32 index, BOOL a2, u32 a3) {
    GF_ASSERT(index < 20);

    if (index < 20) {
        work->unk_00[index] = a2;

        if (a2 == TRUE) {
            ov45_0222CA10(work->unk_B4, a3, &work->unk_14[index]);
        }
    }
}

BOOL ov45_0222C9D0(const UnkStruct_ov45_0222C978 *work, u32 index) {
    GF_ASSERT(index < 20);

    if (index < 20) {
        return work->unk_00[index];
    }

    return FALSE;
}

const UnkStruct_ov45_0222CA10 *ov45_0222C9EC(const UnkStruct_ov45_0222C978 *work, u32 index) {
    GF_ASSERT(index < 20);

    if (index < 20) {
        if (work->unk_00[index]) {
            return &work->unk_14[index];
        }
    }

    return NULL;
}

void ov45_0222CA10(WallpaperPasswordBank *bank, u32 a1, UnkStruct_ov45_0222CA10 *dst) {
    u32 count;
    union {
        u32 val1;
        u8 val2[4];
    } v0;

    count = WallpaperPasswordBank_GetCount(bank);
    v0.val1 = a1;

    dst->unk_00[0] = WallpaperPasswordBank_GetWordAtIndex(bank, (v0.val2[3] + v0.val2[0]) % count);
    dst->unk_00[1] = WallpaperPasswordBank_GetWordAtIndex(bank, (v0.val2[0] + v0.val2[1]) % count);
    dst->unk_00[2] = WallpaperPasswordBank_GetWordAtIndex(bank, (v0.val2[1] + v0.val2[2]) % count);
    dst->unk_00[3] = WallpaperPasswordBank_GetWordAtIndex(bank, (v0.val2[2] + v0.val2[3]) % count);
}

void ov45_0222CA7C(UnkStruct_ov45_0222CA7C *work, u32 a1, u32 a2) {
    work->unk_00 = 0;
    work->unk_0C = 0;
    work->unk_10 = (a2 - a1) * 30;
}

void ov45_0222CA8C(UnkStruct_ov45_0222CA7C *work) {
    work->unk_00 = 1;
    work->unk_0C = 0;

    ov45_0222ECB8(&work->unk_04);
}

void ov45_0222CAA0(UnkStruct_ov45_0222CA7C *work) {
    s64 now;
    s64 elapsed;
    u32 v2;
    u32 v3;
    int i;

    if (work->unk_00) {
        ov45_0222ECB8(&now);
        elapsed = now - work->unk_04;

        if (work->unk_0C < (elapsed * 30)) {
            work->unk_0C = (elapsed * 30);
        }

        if (work->unk_0C < work->unk_10) {
            work->unk_0C++;

            v2 = (work->unk_0C * 256) / work->unk_10;
            v3 = 0;

            for (i = 0; i < 5; i++) {
                v3 += _02254A28[i].unk_02;

                if (v3 >= v2) {
                    if (work->unk_14 != _02254A28[i].unk_00) {
                        work->unk_14 = _02254A28[i].unk_00;
                        work->unk_18 = 0;
                    }

                    break;
                }
            }
        } else {
            if (work->unk_14 != 5) {
                work->unk_14 = 5;
                work->unk_18 = 0;
            }

            if (work->unk_18 >= 120) {
                work->unk_14 = 0;
                work->unk_00 = 0;
            }
        }

        work->unk_18++;
    }
}

u32 ov45_0222CB3C(const UnkStruct_ov45_0222CA7C *work) {
    return work->unk_18;
}

int ov45_0222CB40(const UnkStruct_ov45_0222CA7C *work) {
    return work->unk_14;
}

void ov45_0222CB44(UnkStruct_ov45_0222CB44 *work, SaveData *saveData) {
    int i;

    for (i = 0; i < 13; i++) {
        work->unk_34[i] = 24;
        work->unk_00[i] = -1;
    }

    work->unk_41 = 0;
    work->unk_42 = 0;
    work->saveData = saveData;

    ov45_0222CCA4(work);
}

void ov45_0222CB74(UnkStruct_ov45_0222CB44 *work, int a1, s32 a2) {
    ov45_0222CCB8(work);

    if (((work->unk_42 + 1) % 13) == work->unk_41) {
        ov45_0222CC00(work);
    }

    work->unk_34[work->unk_42] = a1;
    work->unk_00[work->unk_42] = a2;
    work->unk_42 = (work->unk_42 + 1) % 13;

    ov45_0222CCA4(work);
}

BOOL ov45_0222CBD0(UnkStruct_ov45_0222CB44 *work, s32 a1, s32 a2) {
    int i;
    BOOL found = FALSE;

    ov45_0222CCB8(work);

    for (i = 0; i < 13; i++) {
        if (work->unk_00[i] == a1) {
            work->unk_00[i] = a2;
            found = TRUE;
        }
    }

    ov45_0222CCA4(work);

    return found;
}

int ov45_0222CC00(UnkStruct_ov45_0222CB44 *work) {
    u8 v0;

    ov45_0222CCB8(work);

    if (work->unk_42 == work->unk_41) {
        return 24;
    }

    v0 = work->unk_34[work->unk_41];

    work->unk_34[work->unk_41] = 24;
    work->unk_00[work->unk_42] = -1;
    work->unk_41 = (work->unk_41 + 1) % 13;

    ov45_0222CCA4(work);

    return v0;
}

int ov45_0222CC50(UnkStruct_ov45_0222CB44 *work, u32 index) {
    s32 v0;

    GF_ASSERT(index < 12);

    ov45_0222CCB8(work);

    index++;
    v0 = work->unk_42 - index;

    if (v0 < 0) {
        v0 += 13;
    }

    return work->unk_34[v0];
}

s32 ov45_0222CC7C(UnkStruct_ov45_0222CB44 *work, u32 index) {
    s32 v0;

    GF_ASSERT(index < 12);

    ov45_0222CCB8(work);

    index++;
    v0 = work->unk_42 - index;

    if (v0 < 0) {
        v0 += 13;
    }

    return work->unk_00[v0];
}

void ov45_0222CCA4(UnkStruct_ov45_0222CB44 *work) {
    work->unk_48 = SaveArray_CalcCRC16(work->saveData, work, 0x44);
}

void ov45_0222CCB8(UnkStruct_ov45_0222CB44 *work) {
    u32 crc = SaveArray_CalcCRC16(work->saveData, work, 0x44);

    if (crc != work->unk_48) {
        GF_ASSERT(FALSE);
        work->unk_4A = 1;
    }
}

BOOL ov45_0222CCDC(const UnkStruct_ov45_0222CB44 *work) {
    return work->unk_4A;
}

u32 ov45_0222CCE4(u32 graphicsID) {
    int i;

    for (i = 0; i < 16; i++) {
        if (ov45_02254A84[i].graphicsID == graphicsID) {
            return i;
        }
    }

    return 16;
}

u32 ov45_0222CD04(u32 index) {
    if (index < 16) {
        return ov45_02254A84[index].graphicsID;
    }

    return 0xFFFF;
}

UnkStruct_ov45_Manager *ov45_0222CD1C(BOOL a0, SaveData *saveData, void *a2, void *a3, u32 heapID) {
    UnkStruct_ov45_Manager *manager = Heap_Alloc(heapID, sizeof(UnkStruct_ov45_Manager));
    int i;

    memset(manager, 0, sizeof(UnkStruct_ov45_Manager));

    manager->unk_3C = a3;
    manager->saveData = saveData;
    manager->unk_44 = a2;
    manager->unk_39 = a0;
    manager->heapID = heapID;

    for (i = 0; i < 13; i++) {
        ov45_0222CDE4(manager, i, heapID);
    }

    return manager;
}

void ov45_0222CD68(UnkStruct_ov45_Manager *manager) {
    int i;

    for (i = 0; i < 13; i++) {
        ov45_0222CE0C(manager, i);
    }

    Heap_Free(manager);
}

void ov45_0222CD84(UnkStruct_ov45_Manager *manager) {
    ov45_0222CE2C(manager, 5);
}

int ov45_0222CD90(UnkStruct_ov45_Manager *manager) {
    int result = 0;

    if (manager->appMan != NULL) {
        if (OverlayManager_Run(manager->appMan)) {
            OverlayManager_Delete(manager->appMan);
            manager->appMan = NULL;
            result = ov45_0222CE54(manager, manager->unk_38);
        }
    }

    return result;
}
