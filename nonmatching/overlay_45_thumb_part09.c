#include "global.h"

#include "assert.h"
#include "heap.h"
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

typedef struct UnkStruct_ov45_0222CF00 {
    SaveData *saveData;
    u32 unk_04;
    u32 unk_08;
    u8 unk_0C[0xC];
    u32 unk_18;
    void *unk_1C;
} UnkStruct_ov45_0222CF00;

typedef struct UnkStruct_ov45_0222CFF4 {
    u32 unk_00;
    SaveData *saveData;
    u32 unk_08;
    void *unk_0C;
} UnkStruct_ov45_0222CFF4;

typedef struct UnkStruct_ov45_0222D078 {
    u32 unk_00;
    u32 *unk_04;
    void *unk_08;
} UnkStruct_ov45_0222D078;

typedef struct UnkStruct_ov45_0222D0FC {
    SaveData *saveData;
    void *unk_04;
    u32 unk_08;
    u32 unk_0C;
    u32 unk_10;
} UnkStruct_ov45_0222D0FC;

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

typedef void (*ov45_CreateFunc)(UnkStruct_ov45_Manager *, UnkStruct_ov45_Slot *, u32);
typedef void (*ov45_DestroyFunc)(UnkStruct_ov45_Slot *);
typedef void (*ov45_EnterFunc)(UnkStruct_ov45_Manager *, UnkStruct_ov45_Slot *);
typedef int (*ov45_UpdateFunc)(UnkStruct_ov45_Manager *, UnkStruct_ov45_Slot *);

void *ov45_0222A5C0(void *a0);
void *ov45_0222A578(void *a0, int a1);
u32 ov45_0222AAC8(const void *a0);
void ov45_0222AB38(void *a0, void *a1);
void ov45_0222A498(void *a0, void *a1);
void ov45_0222A844(void *a0, PlayerProfile *a1, u32 a2);
u32 ov45_0222A210(void *a0);
u32 *ov45_0222A22C(void *a0);
u32 ov45_0222A214(void *a0);
BOOL ov45_0222A33C(void *a0);
void ov45_0222A430(void *a0, u32 a1);
void ov45_0222A72C(void *a0, u32 a1);
u32 ov45_0222AD2C(void *a0);
u32 ov45_0222AD3C(void *a0);

int ov49_02259AA4(OverlayManager *manager, int *state);
int ov49_02259C90(OverlayManager *manager, int *state);
int ov49_02259EF8(OverlayManager *manager, int *state);
int ov48_02258800(OverlayManager *manager, int *state);
int ov48_02258920(OverlayManager *manager, int *state);
int ov48_022589FC(OverlayManager *manager, int *state);
int ov88_02258800(OverlayManager *manager, int *state);
int ov88_022588C4(OverlayManager *manager, int *state);
int ov88_022589FC(OverlayManager *manager, int *state);
int ov46_02258800(OverlayManager *manager, int *state);
int ov46_0225892C(OverlayManager *manager, int *state);
int ov46_02258C38(OverlayManager *manager, int *state);
int ov91_0225C540(OverlayManager *manager, int *state);
int ov91_0225C58C(OverlayManager *manager, int *state);
int ov91_0225C9EC(OverlayManager *manager, int *state);

void ov45_0222CDC0(UnkStruct_ov45_Manager *manager);
void ov45_0222CDC4(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot, const OverlayManagerTemplate *template);
void ov45_0222CDE4(UnkStruct_ov45_Manager *manager, u32 index, u32 heapID);
void ov45_0222CE0C(UnkStruct_ov45_Manager *manager, u32 index);
void ov45_0222CE2C(UnkStruct_ov45_Manager *manager, u32 index);
int ov45_0222CE54(UnkStruct_ov45_Manager *manager, u32 index);
void ov45_0222CE78(UnkStruct_ov45_0222CEB0 *work, u32 heapID);
void ov45_0222CE94(UnkStruct_ov45_0222CEB0 *work);
void ov45_0222CEB0(UnkStruct_ov45_0222CEB0 *work, void *arg1, u32 heapID);
void ov45_0222CF00(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot, u32 heapID);
void ov45_0222CF24(UnkStruct_ov45_Slot *slot);
void ov45_0222CF40(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot);
int ov45_0222CF68(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot);
void ov45_0222CFF4(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot, u32 heapID);
void ov45_0222D01C(UnkStruct_ov45_Slot *slot);
void ov45_0222D028(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot);
int ov45_0222D054(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot);
void ov45_0222D078(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot, u32 heapID);
void ov45_0222D0BC(UnkStruct_ov45_Slot *slot);
void ov45_0222D0C8(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot);
int ov45_0222D0D8(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot);
void ov45_0222D0FC(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot, u32 heapID);
void ov45_0222D130(UnkStruct_ov45_Slot *slot);
void ov45_0222D13C(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot);
int ov45_0222D14C(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot);
void ov45_0222D164(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot, u32 heapID);
void ov45_0222D19C(UnkStruct_ov45_Slot *slot);
void ov45_0222D1B0(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot);
int ov45_0222D1DC(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot);
void ov45_0222D20C(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot, u32 heapID);

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
int ov45_0222D448(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot);
void ov45_0222D44C(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot, u32 heapID);
void ov45_0222D484(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot, u32 heapID);
void ov45_0222D4C0(UnkStruct_ov45_Slot *slot);
void ov45_0222D4CC(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot);
int ov45_0222D4DC(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot);

const OverlayManagerTemplate ov45_02254B54 = { ov91_0225C540, ov91_0225C58C, ov91_0225C9EC, 91 };
const OverlayManagerTemplate ov45_02254B64 = { ov46_02258800, ov46_0225892C, ov46_02258C38, 46 };
const OverlayManagerTemplate ov45_02254B74 = { ov88_02258800, ov88_022588C4, ov88_022589FC, 88 };
const OverlayManagerTemplate ov45_02254B84 = { ov48_02258800, ov48_02258920, ov48_022589FC, 48 };
const OverlayManagerTemplate ov45_02254B94 = { ov49_02259AA4, ov49_02259C90, ov49_02259EF8, 49 };

ov45_DestroyFunc _02254E20[13] = {
    ov45_0222CF24,
    ov45_0222D01C,
    ov45_0222D0BC,
    ov45_0222D380,
    ov45_0222D380,
    ov45_0222D130,
    ov45_0222D19C,
    ov45_0222D23C,
    ov45_0222D2E4,
    ov45_0222D410,
    ov45_0222D410,
    ov45_0222D4C0,
    ov45_0222D4C0,
};

ov45_EnterFunc ov45_02254E54[13] = {
    ov45_0222CF40,
    ov45_0222D028,
    ov45_0222D0C8,
    ov45_0222D3B0,
    ov45_0222D3C4,
    ov45_0222D13C,
    ov45_0222D1B0,
    ov45_0222D250,
    ov45_0222D2F8,
    ov45_0222D41C,
    ov45_0222D428,
    ov45_0222D4CC,
    ov45_0222D4CC,
};

ov45_CreateFunc ov45_02254E88[13] = {
    ov45_0222CF00,
    ov45_0222CFF4,
    ov45_0222D078,
    ov45_0222D354,
    ov45_0222D354,
    ov45_0222D0FC,
    ov45_0222D164,
    ov45_0222D20C,
    ov45_0222D2AC,
    ov45_0222D3D8,
    ov45_0222D3D8,
    ov45_0222D44C,
    ov45_0222D484,
};

ov45_UpdateFunc ov45_02254EBC[13] = {
    ov45_0222CF68,
    ov45_0222D054,
    ov45_0222D0D8,
    ov45_0222D38C,
    ov45_0222D38C,
    ov45_0222D14C,
    ov45_0222D1DC,
    ov45_0222D27C,
    ov45_0222D324,
    ov45_0222D448,
    ov45_0222D448,
    ov45_0222D4DC,
    ov45_0222D4DC,
};

void ov45_0222CDC0(UnkStruct_ov45_Manager *manager) {
    return;
}

void ov45_0222CDC4(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot, const OverlayManagerTemplate *template) {
    GF_ASSERT(manager->appMan == NULL);
    manager->appMan = OverlayManager_New(template, slot->unk_00, manager->heapID);
}

void ov45_0222CDE4(UnkStruct_ov45_Manager *manager, u32 index, u32 heapID) {
    GF_ASSERT(index < 13);
    ov45_02254E88[index](manager, &manager->unk_04[index], heapID);
}

void ov45_0222CE0C(UnkStruct_ov45_Manager *manager, u32 index) {
    GF_ASSERT(index < 13);
    _02254E20[index](&manager->unk_04[index]);
}

void ov45_0222CE2C(UnkStruct_ov45_Manager *manager, u32 index) {
    ov45_EnterFunc *table = ov45_02254E54;
    UnkStruct_ov45_Slot *slots = manager->unk_04;

    GF_ASSERT(index < 13);
    table[index](manager, slots + index);
    manager->unk_38 = index;
}

int ov45_0222CE54(UnkStruct_ov45_Manager *manager, u32 index) {
    ov45_UpdateFunc *table = ov45_02254EBC;
    UnkStruct_ov45_Slot *slots = manager->unk_04;

    GF_ASSERT(index < 13);
    return table[index](manager, slots + index);
}

void ov45_0222CE78(UnkStruct_ov45_0222CEB0 *work, u32 heapID) {
    int i;

    for (i = 0; i < 4; i++) {
        work->unk_20[i] = PlayerProfile_New(heapID);
    }
}

void ov45_0222CE94(UnkStruct_ov45_0222CEB0 *work) {
    int i;

    for (i = 0; i < 4; i++) {
        Heap_Free(work->unk_20[i]);
        work->unk_20[i] = NULL;
    }
}

void ov45_0222CEB0(UnkStruct_ov45_0222CEB0 *work, void *arg1, u32 heapID) {
    void *v0;
    void *v1;
    int i;

    v0 = ov45_0222A5C0(arg1);
    work->unk_00 = ov45_0222AAC8(v0);

    ov45_0222AB38(arg1, work->unk_08);
    ov45_0222A498(arg1, work->unk_04);

    work->unk_30 = arg1;
    work->unk_1C = 0;

    for (i = 0; i < 4; i++) {
        v1 = ov45_0222A578(arg1, work->unk_04[i]);

        if (v1 != NULL) {
            ov45_0222A844(v1, work->unk_20[i], heapID);
        }
    }
}

void ov45_0222CF00(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot, u32 heapID) {
    UnkStruct_ov45_0222CF00 *work;

    slot->unk_00 = Heap_Alloc(heapID, sizeof(UnkStruct_ov45_0222CF00));
    memset(slot->unk_00, 0, sizeof(UnkStruct_ov45_0222CF00));

    work = slot->unk_00;
    work->saveData = manager->saveData;
    work->unk_1C = manager->unk_3C;
}

void ov45_0222CF24(UnkStruct_ov45_Slot *slot) {
    GF_ASSERT(slot->unk_00);
    Heap_Free(slot->unk_00);
    slot->unk_00 = NULL;
}

void ov45_0222CF40(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot) {
    UnkStruct_ov45_0222CF00 *work;

    work = slot->unk_00;
    work->unk_04 = ov45_0222AD2C(manager->unk_3C);
    work->unk_08 = ov45_0222AD3C(manager->unk_3C);

    ov45_0222CDC4(manager, slot, &ov45_02254B94);
}

int ov45_0222CF68(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot) {
    UnkStruct_ov45_0222CF00 *work = slot->unk_00;

    switch (work->unk_18) {
    case 0:
        ov45_0222CE2C(manager, 9);
        break;
    case 1:
        ov45_0222CE2C(manager, 1);
        break;
    case 2:
        ov45_0222CE2C(manager, 2);
        break;
    case 6:
        ov45_0222CE2C(manager, 3);
        break;
    case 7:
        ov45_0222CE2C(manager, 4);
        break;
    case 3:
        ov45_0222CE2C(manager, 6);
        break;
    case 4:
        ov45_0222CE2C(manager, 7);
        break;
    case 5:
        ov45_0222CE2C(manager, 8);
        break;
    case 8:
        ov45_0222CE2C(manager, 10);
        break;
    case 9:
        ov45_0222CE2C(manager, 11);
        break;
    case 10:
        ov45_0222CE2C(manager, 12);
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    return 0;
}

void ov45_0222CFF4(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot, u32 heapID) {
    UnkStruct_ov45_0222CFF4 *work;

    slot->unk_00 = Heap_Alloc(heapID, sizeof(UnkStruct_ov45_0222CFF4));
    memset(slot->unk_00, 0, sizeof(UnkStruct_ov45_0222CFF4));

    work = slot->unk_00;
    work->saveData = manager->saveData;
    work->unk_0C = manager->unk_3C;
}

void ov45_0222D01C(UnkStruct_ov45_Slot *slot) {
    Heap_Free(slot->unk_00);
}

void ov45_0222D028(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot) {
    UnkStruct_ov45_0222CFF4 *work;

    work = slot->unk_00;
    work->unk_00 = ov45_0222A214(manager->unk_3C);
    work->unk_08 = *ov45_0222A22C(manager->unk_3C);

    ov45_0222CDC4(manager, slot, &ov45_02254B84);
}

int ov45_0222D054(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot) {
    if (ov45_0222A33C(manager->unk_3C)) {
        ov45_0222CE2C(manager, 10);
    } else {
        ov45_0222CE2C(manager, 0);
    }

    return 0;
}

void ov45_0222D078(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot, u32 heapID) {
    UnkStruct_ov45_0222D078 *work;

    slot->unk_00 = Heap_Alloc(heapID, sizeof(UnkStruct_ov45_0222D078));
    memset(slot->unk_00, 0, sizeof(UnkStruct_ov45_0222D078));

    work = slot->unk_00;
    work->unk_00 = ov45_0222A210(manager->unk_3C);
    work->unk_04 = ov45_0222A22C(manager->unk_3C);
    work->unk_08 = manager->unk_3C;
}

void ov45_0222D0BC(UnkStruct_ov45_Slot *slot) {
    Heap_Free(slot->unk_00);
}

void ov45_0222D0C8(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot) {
    ov45_0222CDC4(manager, slot, &ov45_02254B74);
}

int ov45_0222D0D8(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot) {
    if (ov45_0222A33C(manager->unk_3C)) {
        ov45_0222CE2C(manager, 10);
    } else {
        ov45_0222CE2C(manager, 0);
    }

    return 0;
}

void ov45_0222D0FC(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot, u32 heapID) {
    UnkStruct_ov45_0222D0FC *work;

    slot->unk_00 = Heap_Alloc(heapID, sizeof(UnkStruct_ov45_0222D0FC));
    memset(slot->unk_00, 0, sizeof(UnkStruct_ov45_0222D0FC));

    work = slot->unk_00;
    work->saveData = manager->saveData;
    work->unk_04 = manager->unk_3C;
    work->unk_08 = manager->unk_39;
    work->unk_0C = manager->unk_44;
}

void ov45_0222D130(UnkStruct_ov45_Slot *slot) {
    Heap_Free(slot->unk_00);
}

void ov45_0222D13C(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot) {
    ov45_0222CDC4(manager, slot, &ov45_02254B64);
}

int ov45_0222D14C(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot) {
    UnkStruct_ov45_0222D0FC *work = slot->unk_00;

    if (work->unk_10 == 0) {
        return 1;
    }

    ov45_0222CE2C(manager, 0);
    return 0;
}

void ov45_0222D164(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot, u32 heapID) {
    UnkStruct_ov45_0222D164 *work;

    slot->unk_00 = Heap_Alloc(heapID, sizeof(UnkStruct_ov45_0222D164));
    memset(slot->unk_00, 0, sizeof(UnkStruct_ov45_0222D164));

    work = slot->unk_00;
    work->unk_38 = 0;
    work->unk_39 = 1;
    work->saveData = manager->saveData;

    ov45_0222CE78(&work->unk_00, heapID);
}

void ov45_0222D19C(UnkStruct_ov45_Slot *slot) {
    UnkStruct_ov45_0222D164 *work = slot->unk_00;

    ov45_0222CE94(&work->unk_00);
    Heap_Free(slot->unk_00);
}

void ov45_0222D1B0(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot) {
    HandleLoadOverlay(90, OVY_LOAD_ASYNC);

    {
        UnkStruct_ov45_0222D164 *work;

        work = slot->unk_00;
        ov45_0222CEB0(&work->unk_00, manager->unk_3C, manager->heapID);
    }

    ov45_0222CDC4(manager, slot, &ov45_02254B54);
}

int ov45_0222D1DC(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot) {
    UnloadOverlayByID(90);

    {
        UnkStruct_ov45_0222D164 *work;

        work = slot->unk_00;

        ov45_0222A430(manager->unk_3C, work->unk_00.unk_1C);
        ov45_0222A72C(manager->unk_3C, work->unk_00.unk_00);
    }

    ov45_0222CE2C(manager, 0);

    return 0;
}

void ov45_0222D20C(UnkStruct_ov45_Manager *manager, UnkStruct_ov45_Slot *slot, u32 heapID) {
    UnkStruct_ov45_0222D20C *work;

    slot->unk_00 = Heap_Alloc(heapID, sizeof(UnkStruct_ov45_0222D20C));
    memset(slot->unk_00, 0, sizeof(UnkStruct_ov45_0222D20C));

    work = slot->unk_00;
    work->unk_3C = 0;
    work->unk_38 = 1;
    work->saveData = manager->saveData;

    ov45_0222CE78(&work->unk_00, heapID);
}
