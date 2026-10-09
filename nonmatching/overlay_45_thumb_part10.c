#include "global.h"

#include "assert.h"
#include "heap.h"
#include "location_gmm_dat.h"
#include "overlay_manager.h"
#include "player_data.h"
#include "poke_overlay.h"

typedef struct UnkStruct_ov45_0222CEB0 {
    u32 unk_00;
    u8 unk_04[4];
    u8 unk_08[0x14];
    u32 unk_1C;
    PlayerProfile *unk_20[4];
    void *unk_30;
} UnkStruct_ov45_0222CEB0;

typedef struct UnkStruct_ov45_0222D164 {
    UnkStruct_ov45_0222CEB0 unk_00;
    SaveData *saveData;
    u8 unk_38;
    u8 unk_39;
    u8 unk_3A[2];
} UnkStruct_ov45_0222D164;

typedef struct UnkStruct_ov45_0222D20C {
    UnkStruct_ov45_0222CEB0 unk_00;
    SaveData *saveData;
    u32 unk_38;
    u32 unk_3C;
} UnkStruct_ov45_0222D20C;

typedef struct UnkStruct_ov45_0222D354 {
    void *unk_00;
    u8 unk_04;
    u8 unk_05[3];
} UnkStruct_ov45_0222D354;

typedef struct UnkStruct_ov45_0222D3D8 {
    SaveData *saveData;
    void *unk_04;
    u32 unk_08;
} UnkStruct_ov45_0222D3D8;

typedef struct UnkStruct_ov45_Time {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
} UnkStruct_ov45_Time;

typedef struct UnkStruct_ov45_0222D638_Entry {
    u16 unk_00;
    u8 unk_02;
    u8 unk_03_0 : 4;
    u8 unk_03_4 : 4;
} UnkStruct_ov45_0222D638_Entry;

typedef struct UnkStruct_ov45_0222D638 {
    UnkStruct_ov45_0222D638_Entry unk_00[50];
} UnkStruct_ov45_0222D638;

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
    u32 unk_44;
} UnkStruct_ov45_Manager;

BOOL ov45_0222A33C(void *a0);
void ov45_0222A430(void *a0, u32 a1);
void ov45_0222A72C(void *a0, u32 a1);

void ov45_0222CDC4(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot, const OverlayManagerTemplate *template);
void ov45_0222CE2C(UnkStruct_ov45_Manager *manager, u32 index);
void ov45_0222CE78(UnkStruct_ov45_0222CEB0 *work, u32 heapID);
void ov45_0222CE94(UnkStruct_ov45_0222CEB0 *work);
void ov45_0222CEB0(UnkStruct_ov45_0222CEB0 *work, void *arg1, u32 heapID);

void ov45_0222D23C(UnkStruct_ov45_Slot *slot);
void ov45_0222D250(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot);
int ov45_0222D27C(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot);
void ov45_0222D2AC(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot, u32 heapID);
void ov45_0222D2E4(UnkStruct_ov45_Slot *slot);
void ov45_0222D2F8(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot);
int ov45_0222D324(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot);
void ov45_0222D354(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot, u32 heapID);
void ov45_0222D380(UnkStruct_ov45_Slot *slot);
int ov45_0222D38C(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot);
void ov45_0222D3B0(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot);
void ov45_0222D3C4(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot);
void ov45_0222D3D8(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot, u32 heapID);
void ov45_0222D410(UnkStruct_ov45_Slot *slot);
void ov45_0222D41C(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot);
void ov45_0222D428(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot);
void ov45_0222D434(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot, BOOL a2);
int ov45_0222D448(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot);
void ov45_0222D44C(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot, u32 heapID);
void ov45_0222D484(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot, u32 heapID);
void ov45_0222D4C0(UnkStruct_ov45_Slot *slot);
void ov45_0222D4CC(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot);
int ov45_0222D4DC(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot);

int ov46_02258CB4(OverlayManager *manager, int *state);
int ov46_02258DA8(OverlayManager *manager, int *state);
int ov46_02258EFC(OverlayManager *manager, int *state);
int ov47_02258800(OverlayManager *manager, int *state);
int ov47_02258898(OverlayManager *manager, int *state);
int ov47_022589A8(OverlayManager *manager, int *state);
int ov89_02258800(OverlayManager *manager, int *state);
int ov89_02258B04(OverlayManager *manager, int *state);
int ov89_02258F00(OverlayManager *manager, int *state);
int ov92_0225CAB4(OverlayManager *manager, int *state);
int ov92_0225CDF4(OverlayManager *manager, int *state);
int ov92_0225D36C(OverlayManager *manager, int *state);
int ov93_0225C540(OverlayManager *manager, int *state);
int ov93_0225C574(OverlayManager *manager, int *state);
int ov93_0225C6C0(OverlayManager *manager, int *state);

const OverlayManagerTemplate ov45_02254B04 = { ov46_02258CB4, ov46_02258DA8, ov46_02258EFC, 46 };
const OverlayManagerTemplate ov45_02254B14 = { ov89_02258800, ov89_02258B04, ov89_02258F00, 89 };
const OverlayManagerTemplate ov45_02254B24 = { ov89_02258800, ov89_02258B04, ov89_02258F00, 89 };
const OverlayManagerTemplate ov45_02254B34 = { ov93_0225C540, ov93_0225C574, ov93_0225C6C0, 93 };
const OverlayManagerTemplate ov45_02254B44 = { ov47_02258800, ov47_02258898, ov47_022589A8, 47 };
const OverlayManagerTemplate ov45_02254BA4 = { ov92_0225CAB4, ov92_0225CDF4, ov92_0225D36C, 92 };

void ov45_0222D23C(UnkStruct_ov45_Slot *slot) {
    UnkStruct_ov45_0222D20C *work = slot->unk_00;

    ov45_0222CE94(&work->unk_00);
    Heap_Free(slot->unk_00);
}

void ov45_0222D250(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot) {
    UnkStruct_ov45_0222D20C *work;

    HandleLoadOverlay(90, OVY_LOAD_ASYNC);

    work = slot->unk_00;
    ov45_0222CEB0(&work->unk_00, manager->unk_3C, manager->heapID);
    ov45_0222CDC4(manager, slot, &ov45_02254BA4);
}

int ov45_0222D27C(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot) {
    UnkStruct_ov45_0222D20C *work;

    UnloadOverlayByID(90);

    work = slot->unk_00;
    ov45_0222A430(manager->unk_3C, work->unk_00.unk_1C);
    ov45_0222A72C(manager->unk_3C, work->unk_00.unk_00);
    ov45_0222CE2C(manager, 0);
    return 0;
}

void ov45_0222D2AC(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot, u32 heapID) {
    UnkStruct_ov45_0222D164 *work;

    slot->unk_00 = Heap_Alloc(heapID, sizeof(UnkStruct_ov45_0222D164));
    memset(slot->unk_00, 0, sizeof(UnkStruct_ov45_0222D164));

    work = slot->unk_00;
    work->unk_38 = 0;
    work->unk_39 = 1;
    work->saveData = manager->saveData;
    ov45_0222CE78(&work->unk_00, heapID);
}

void ov45_0222D2E4(UnkStruct_ov45_Slot *slot) {
    UnkStruct_ov45_0222D164 *work = slot->unk_00;

    ov45_0222CE94(&work->unk_00);
    Heap_Free(slot->unk_00);
}

void ov45_0222D2F8(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot) {
    UnkStruct_ov45_0222D164 *work;

    HandleLoadOverlay(90, OVY_LOAD_ASYNC);

    work = slot->unk_00;
    ov45_0222CEB0(&work->unk_00, manager->unk_3C, manager->heapID);
    ov45_0222CDC4(manager, slot, &ov45_02254B34);
}

int ov45_0222D324(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot) {
    UnkStruct_ov45_0222D164 *work;

    UnloadOverlayByID(90);

    work = slot->unk_00;
    ov45_0222A430(manager->unk_3C, work->unk_00.unk_1C);
    ov45_0222A72C(manager->unk_3C, work->unk_00.unk_00);
    ov45_0222CE2C(manager, 0);
    return 0;
}

void ov45_0222D354(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot, u32 heapID) {
    UnkStruct_ov45_0222D354 *work;

    slot->unk_00 = Heap_Alloc(heapID, sizeof(UnkStruct_ov45_0222D354));
    memset(slot->unk_00, 0, sizeof(UnkStruct_ov45_0222D354));

    work = slot->unk_00;
    work->unk_00 = manager->unk_3C;
}

void ov45_0222D380(UnkStruct_ov45_Slot *slot) {
    Heap_Free(slot->unk_00);
}

int ov45_0222D38C(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot) {
    if (ov45_0222A33C(manager->unk_3C)) {
        ov45_0222CE2C(manager, 10);
    } else {
        ov45_0222CE2C(manager, 0);
    }
    return 0;
}

void ov45_0222D3B0(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot) {
    UnkStruct_ov45_0222D354 *work = slot->unk_00;

    work->unk_04 = 0;
    ov45_0222CDC4(manager, slot, &ov45_02254B24);
}

void ov45_0222D3C4(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot) {
    UnkStruct_ov45_0222D354 *work = slot->unk_00;

    work->unk_04 = 1;
    ov45_0222CDC4(manager, slot, &ov45_02254B14);
}

void ov45_0222D3D8(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot, u32 heapID) {
    UnkStruct_ov45_0222D3D8 *work;

    slot->unk_00 = Heap_Alloc(heapID, sizeof(UnkStruct_ov45_0222D3D8));
    memset(slot->unk_00, 0, sizeof(UnkStruct_ov45_0222D3D8));

    work = slot->unk_00;
    work->saveData = manager->saveData;
    work->unk_04 = manager->unk_3C;
}

void ov45_0222D410(UnkStruct_ov45_Slot *slot) {
    Heap_Free(slot->unk_00);
}

void ov45_0222D41C(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot) {
    ov45_0222D434(manager, slot, 0);
}

void ov45_0222D428(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot) {
    ov45_0222D434(manager, slot, 1);
}

void ov45_0222D434(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot, BOOL a2) {
    UnkStruct_ov45_0222D3D8 *work;

    work = slot->unk_00;
    work->unk_08 = a2;
    ov45_0222CDC4(manager, slot, &ov45_02254B04);
}

int ov45_0222D448(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot) {
    return 1;
}

void ov45_0222D44C(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot, u32 heapID) {
    UnkStruct_ov45_0222D3D8 *work;

    slot->unk_00 = Heap_Alloc(heapID, sizeof(UnkStruct_ov45_0222D3D8));
    memset(slot->unk_00, 0, sizeof(UnkStruct_ov45_0222D3D8));

    work = slot->unk_00;
    work->saveData = manager->saveData;
    work->unk_04 = manager->unk_3C;
    work->unk_08 = 0;
}

void ov45_0222D484(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot, u32 heapID) {
    UnkStruct_ov45_0222D3D8 *work;

    slot->unk_00 = Heap_Alloc(heapID, sizeof(UnkStruct_ov45_0222D3D8));
    memset(slot->unk_00, 0, sizeof(UnkStruct_ov45_0222D3D8));

    work = slot->unk_00;
    work->saveData = manager->saveData;
    work->unk_04 = manager->unk_3C;
    work->unk_08 = 1;
}

void ov45_0222D4C0(UnkStruct_ov45_Slot *slot) {
    Heap_Free(slot->unk_00);
}

void ov45_0222D4CC(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot) {
    ov45_0222CDC4(manager, slot, &ov45_02254B44);
}

int ov45_0222D4DC(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot) {
    if (ov45_0222A33C(manager->unk_3C)) {
        ov45_0222CE2C(manager, 10);
    } else {
        ov45_0222CE2C(manager, 0);
    }
    return 0;
}

void ov45_0222D500(UnkStruct_ov45_Time *dst, const s64 *seconds) {
    RTCDate date;
    RTCTime time;

    RTC_ConvertSecondToDateTime(&date, &time, *seconds);

    dst->unk_00 = time.hour;
    dst->unk_01 = time.minute;
    dst->unk_02 = time.second;
}

void ov45_0222D524(const UnkStruct_ov45_Time *a, const UnkStruct_ov45_Time *b, UnkStruct_ov45_Time *out) {
    u32 carry;
    UnkStruct_ov45_Time x;
    UnkStruct_ov45_Time y;

    x = *a;
    y = *b;

    x.unk_02 += y.unk_02;
    carry = x.unk_02 / 60;
    x.unk_01 += carry;
    out->unk_02 = x.unk_02 % 60;

    x.unk_01 += y.unk_01;
    carry = x.unk_01 / 60;
    x.unk_00 += carry;
    out->unk_01 = x.unk_01 % 60;

    x.unk_00 += y.unk_00;
    out->unk_00 = x.unk_00 % 24;
}

void ov45_0222D594(const UnkStruct_ov45_Time *a, const UnkStruct_ov45_Time *b, UnkStruct_ov45_Time *out) {
    u32 borrow;
    s32 diff;
    UnkStruct_ov45_Time x;
    UnkStruct_ov45_Time y;

    x = *a;
    y = *b;

    diff = (s8)x.unk_02 - (s8)y.unk_02;
    if (diff < 0) {
        borrow = (-diff / 60) + 1;
        x.unk_02 += 60 * borrow;
        x.unk_01 -= borrow;
    }
    out->unk_02 = x.unk_02 - y.unk_02;

    diff = (s8)x.unk_01 - (s8)y.unk_01;
    if (diff < 0) {
        borrow = (-diff / 60) + 1;
        x.unk_01 += 60 * borrow;
        x.unk_00 -= borrow;
    }
    out->unk_01 = x.unk_01 - y.unk_01;

    diff = (s8)x.unk_00 - (s8)y.unk_00;
    if (diff < 0) {
        borrow = (-diff / 24) + 1;
        x.unk_00 += 24 * borrow;
    }
    out->unk_00 = x.unk_00 - y.unk_00;
}

void ov45_0222D638(UnkStruct_ov45_0222D638 *list, u16 country, u8 region, BOOL flag) {
    int i;
    BOOL found;
    u32 regionCount;

    if (country == 0) {
        return;
    }

    regionCount = LocationGmmDatRegionCountGetByCountryMsgNo(country);
    if (region > regionCount) {
        return;
    }

    found = FALSE;
    for (i = 0; i < 50; i++) {
        if (list->unk_00[i].unk_03_4 == 0) {
            found = TRUE;
        } else if (list->unk_00[i].unk_00 == country && list->unk_00[i].unk_02 == region) {
            if (flag == TRUE) {
                return;
            }
            found = TRUE;
        }

        if (found) {
            list->unk_00[i].unk_00 = country;
            list->unk_00[i].unk_02 = region;
            list->unk_00[i].unk_03_0 = flag;
            list->unk_00[i].unk_03_4 = 1;
            return;
        }
    }
}

u16 ov45_0222D6B0(const UnkStruct_ov45_0222D638 *list, u8 index) {
    GF_ASSERT(index < 50);
    GF_ASSERT(list->unk_00[index].unk_03_4 == 1);
    return list->unk_00[index].unk_00;
}

u8 ov45_0222D6D4(const UnkStruct_ov45_0222D638 *list, u8 index) {
    GF_ASSERT(index < 50);
    GF_ASSERT(list->unk_00[index].unk_03_4 == 1);
    return list->unk_00[index].unk_02;
}

BOOL ov45_0222D6FC(const UnkStruct_ov45_0222D638 *list, u8 index) {
    GF_ASSERT(index < 50);
    GF_ASSERT(list->unk_00[index].unk_03_4 == 1);
    return list->unk_00[index].unk_03_0;
}
