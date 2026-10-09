#include "global.h"

#include "heap.h"
#include "system.h"

typedef struct UnkStruct_Ov49_0225EEAC_Callbacks UnkStruct_Ov49_0225EEAC_Callbacks;
typedef struct UnkStruct_Ov49_0225EEAC_Slot UnkStruct_Ov49_0225EEAC_Slot;

typedef BOOL (*UnkFunc_Ov49_0225EEAC)(UnkStruct_Ov49_0225EEAC_Slot *slot, void *owner, u32 index);

struct UnkStruct_Ov49_0225EEAC_Callbacks {
    UnkFunc_Ov49_0225EEAC unk0;
    UnkFunc_Ov49_0225EEAC unk4;
};

typedef struct UnkStruct_Ov49_0225EEAC_State {
    const UnkStruct_Ov49_0225EEAC_Callbacks *unk0;
    void *unk4;
    void *unk8;
    u32 unkC;
} UnkStruct_Ov49_0225EEAC_State;

struct UnkStruct_Ov49_0225EEAC_Slot {
    u16 heapId;
    u8 unk2;
    u8 unk3;
    UnkStruct_Ov49_0225EEAC_State unk4;
    UnkStruct_Ov49_0225EEAC_State unk14;
};

typedef struct UnkStruct_Ov49_0225EEAC_Manager {
    u32 heapId;
    void *unk4;
    UnkStruct_Ov49_0225EEAC_Slot unk8[20];
    UnkStruct_Ov49_0225EEAC_Slot unk2D8;
} UnkStruct_Ov49_0225EEAC_Manager;

typedef struct UnkStruct_Ov49_0225F1A8_Args {
    u8 unk0[6];
    u16 unk6;
} UnkStruct_Ov49_0225F1A8_Args;

typedef void (*UnkFunc_Ov49_0225F260)(void *state, void *owner, u32 index, u8 id);

typedef struct UnkStruct_Ov49_0225F260_Entry {
    u8 unk0[8];
    int unk8;
    UnkStruct_Ov49_0225EEAC_Callbacks unkC;
    UnkFunc_Ov49_0225F260 unk14;
} UnkStruct_Ov49_0225F260_Entry;

extern const UnkStruct_Ov49_0225EEAC_Callbacks ov49_02269B78;
extern const UnkStruct_Ov49_0225EEAC_Callbacks ov49_02269BE0[];

extern void *ov49_02259FE8(void *a0);
extern UnkStruct_Ov49_0225F1A8_Args *ov49_02259FEC(void *a0);
extern UnkStruct_Ov49_0225EEAC_Manager *ov49_0225A010(void *a0);
extern u32 ov49_0225A02C(void *a0);
extern void ov45_0222A5E8(void *a0, int a1);

void ov49_0225EF98(UnkStruct_Ov49_0225EEAC_Manager *a0, u32 a1, const UnkStruct_Ov49_0225EEAC_Callbacks *a2, void *a3);
void ov49_0225EFC4(UnkStruct_Ov49_0225EEAC_Manager *a0, u32 a1, const UnkStruct_Ov49_0225EEAC_Callbacks *a2, void *a3);
void ov49_0225EF68(UnkStruct_Ov49_0225EEAC_Slot *a0);
void *ov49_0225EF84(UnkStruct_Ov49_0225EEAC_Slot *a0);
void ov49_0225F068(UnkStruct_Ov49_0225EEAC_Slot *a0, u32 a1, enum HeapID heapId);
void ov49_0225F074(UnkStruct_Ov49_0225EEAC_Slot *a0);
void ov49_0225F098(UnkStruct_Ov49_0225EEAC_Slot *a0, UnkStruct_Ov49_0225EEAC_Manager *a1, u32 a2, u32 a3);
void ov49_0225F0D8(UnkStruct_Ov49_0225EEAC_Slot *a0, const UnkStruct_Ov49_0225EEAC_Callbacks *a1, void *a2);
void ov49_0225F10C(UnkStruct_Ov49_0225EEAC_Slot *a0, BOOL a1);
void ov49_0225F110(UnkStruct_Ov49_0225EEAC_Slot *a0, const UnkStruct_Ov49_0225EEAC_Callbacks *a1, void *a2);
void ov49_0225F148(UnkStruct_Ov49_0225EEAC_Slot *a0);
BOOL ov49_0225F170(const UnkStruct_Ov49_0225EEAC_Slot *a0);
BOOL ov49_0225F180(const UnkStruct_Ov49_0225EEAC_Slot *a0);
void ov49_0225F190(UnkStruct_Ov49_0225EEAC_State *a0, const UnkStruct_Ov49_0225EEAC_Callbacks *a1, void *a2, u32 a3, void *a4);
void ov49_0225F19C(UnkStruct_Ov49_0225EEAC_State *a0);
void ov49_0225F018(UnkStruct_Ov49_0225EEAC_Manager *a0, u32 a1);

UnkStruct_Ov49_0225EEAC_Manager *ov49_0225EEAC(void *a0, enum HeapID heapId) {
    UnkStruct_Ov49_0225EEAC_Manager *manager = Heap_Alloc(heapId, sizeof(UnkStruct_Ov49_0225EEAC_Manager));
    int i;

    memset(manager, 0, sizeof(UnkStruct_Ov49_0225EEAC_Manager));
    manager->heapId = heapId;
    manager->unk4 = a0;

    for (i = 0; i < 20; i++) {
        ov49_0225F068(&manager->unk8[i], i, heapId);
    }

    ov49_0225F068(&manager->unk2D8, 0, heapId);

    return manager;
}

void ov49_0225EEF8(UnkStruct_Ov49_0225EEAC_Manager *a0) {
    int i;

    for (i = 0; i < 20; i++) {
        ov49_0225F074(&a0->unk8[i]);
    }

    ov49_0225F074(&a0->unk2D8);
    Heap_Free(a0);
}

void ov49_0225EF24(UnkStruct_Ov49_0225EEAC_Manager *a0) {
    ov49_0225F018(a0, 0);
}

void ov49_0225EF30(UnkStruct_Ov49_0225EEAC_Manager *a0) {
    ov49_0225F018(a0, 1);
}

void *ov49_0225EF3C(UnkStruct_Ov49_0225EEAC_Slot *a0) {
    return a0->unk4.unk8;
}

void *ov49_0225EF40(UnkStruct_Ov49_0225EEAC_Slot *a0, u32 size) {
    GF_ASSERT(a0->unk4.unk4 == NULL);

    a0->unk4.unk4 = Heap_Alloc(a0->heapId, size);
    memset(a0->unk4.unk4, 0, size);

    return a0->unk4.unk4;
}

void ov49_0225EF68(UnkStruct_Ov49_0225EEAC_Slot *a0) {
    GF_ASSERT(a0->unk4.unk4 != NULL);
    Heap_Free(a0->unk4.unk4);
    a0->unk4.unk4 = NULL;
}

void *ov49_0225EF84(UnkStruct_Ov49_0225EEAC_Slot *a0) {
    return a0->unk4.unk4;
}

u32 ov49_0225EF88(const UnkStruct_Ov49_0225EEAC_Slot *a0) {
    return a0->unk4.unkC;
}

void ov49_0225EF8C(UnkStruct_Ov49_0225EEAC_Slot *a0, u32 a1) {
    a0->unk4.unkC = a1;
}

void ov49_0225EF90(UnkStruct_Ov49_0225EEAC_Slot *a0) {
    a0->unk4.unkC++;
}

void ov49_0225EF98(UnkStruct_Ov49_0225EEAC_Manager *a0, u32 a1, const UnkStruct_Ov49_0225EEAC_Callbacks *a2, void *a3) {
    GF_ASSERT(a0);
    GF_ASSERT(a1 < 20);

    ov49_0225F0D8(&a0->unk8[a1], a2, a3);
}

void ov49_0225EFC4(UnkStruct_Ov49_0225EEAC_Manager *a0, u32 a1, const UnkStruct_Ov49_0225EEAC_Callbacks *a2, void *a3) {
    GF_ASSERT(a0);
    GF_ASSERT(a1 < 20);

    ov49_0225F110(&a0->unk8[a1], a2, a3);
}

void ov49_0225EFF0(UnkStruct_Ov49_0225EEAC_Manager *a0, u32 a1, BOOL a2) {
    GF_ASSERT(a0);
    GF_ASSERT(a1 < 20);

    ov49_0225F10C(&a0->unk8[a1], a2);
}

void ov49_0225F018(UnkStruct_Ov49_0225EEAC_Manager *a0, u32 a1) {
    int i;

    if (ov49_0225F180(&a0->unk2D8) == 1) {
        ov49_0225F098(&a0->unk2D8, a0, a1, 0);
        return;
    }

    for (i = 0; i < 20; i++) {
        if (ov49_0225F180(&a0->unk8[i]) == 1) {
            ov49_0225F098(&a0->unk8[i], a0, a1, i);
        }
    }
}

void ov49_0225F068(UnkStruct_Ov49_0225EEAC_Slot *a0, u32 a1, enum HeapID heapId) {
    a0->heapId = heapId;
    a0->unk2 = 1;
    a0->unk3 = a1;
}

void ov49_0225F074(UnkStruct_Ov49_0225EEAC_Slot *a0) {
    if (a0->unk4.unk4 != NULL) {
        Heap_Free(a0->unk4.unk4);
    }

    if (a0->unk14.unk4 != NULL) {
        Heap_Free(a0->unk14.unk4);
    }

    memset(a0, 0, sizeof(UnkStruct_Ov49_0225EEAC_Slot));
}

void ov49_0225F098(UnkStruct_Ov49_0225EEAC_Slot *a0, UnkStruct_Ov49_0225EEAC_Manager *a1, u32 a2, u32 a3) {
    UnkFunc_Ov49_0225EEAC func;

    if (a0->unk2 == 0) {
        return;
    }

    switch (a2) {
    case 0:
        func = a0->unk4.unk0->unk0;
        break;
    case 1:
        func = a0->unk4.unk0->unk4;
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    if (func != NULL) {
        if (func(a0, a1->unk4, a3) == 1) {
            ov49_0225F148(a0);
        }
    }
}

void ov49_0225F0D8(UnkStruct_Ov49_0225EEAC_Slot *a0, const UnkStruct_Ov49_0225EEAC_Callbacks *a1, void *a2) {
    GF_ASSERT(ov49_0225F170(a0) == 1);
    GF_ASSERT(a0->unk4.unk4 == NULL);

    ov49_0225F190(&a0->unk4, a1, a2, 0, NULL);
}

void ov49_0225F10C(UnkStruct_Ov49_0225EEAC_Slot *a0, BOOL a1) {
    a0->unk2 = a1;
}

void ov49_0225F110(UnkStruct_Ov49_0225EEAC_Slot *a0, const UnkStruct_Ov49_0225EEAC_Callbacks *a1, void *a2) {
    GF_ASSERT(ov49_0225F170(a0) == 1);
    a0->unk14 = a0->unk4;

    ov49_0225F190(&a0->unk4, a1, a2, 0, NULL);
}

void ov49_0225F148(UnkStruct_Ov49_0225EEAC_Slot *a0) {
    GF_ASSERT(a0->unk4.unk4 == NULL);
    a0->unk4 = a0->unk14;

    ov49_0225F19C(&a0->unk14);
}

BOOL ov49_0225F170(const UnkStruct_Ov49_0225EEAC_Slot *a0) {
    if (a0->unk14.unk0 == NULL) {
        return TRUE;
    }

    return FALSE;
}

BOOL ov49_0225F180(const UnkStruct_Ov49_0225EEAC_Slot *a0) {
    if (a0->unk4.unk0 == NULL) {
        return FALSE;
    }

    return TRUE;
}

void ov49_0225F190(UnkStruct_Ov49_0225EEAC_State *a0, const UnkStruct_Ov49_0225EEAC_Callbacks *a1, void *a2, u32 a3, void *a4) {
    a0->unk0 = a1;
    a0->unkC = a3;
    a0->unk4 = a4;
    a0->unk8 = a2;
}

void ov49_0225F19C(UnkStruct_Ov49_0225EEAC_State *a0) {
    a0->unk0 = NULL;
    a0->unkC = 0;
    a0->unk4 = NULL;
    a0->unk8 = NULL;
}

void ov49_0225F1A8(void *a0) {
    UnkStruct_Ov49_0225F1A8_Args *args;
    UnkStruct_Ov49_0225EEAC_Manager *manager;
    u32 index;

    args = ov49_02259FEC(a0);
    manager = ov49_0225A010(a0);
    index = ov49_0225A02C(a0);

    ov45_0222A5E8(ov49_02259FE8(a0), 1);
    GF_ASSERT(args->unk6 < 4);
    ov49_0225EF98(manager, index, &ov49_02269BE0[args->unk6], NULL);
}

void ov49_0225F1F0(void *a0) {
    int i;
    u32 index;
    UnkStruct_Ov49_0225EEAC_Manager *manager;

    index = ov49_0225A02C(a0);
    manager = ov49_0225A010(a0);

    for (i = 0; i < 20; i++) {
        if (index != i) {
            ov49_0225EF98(manager, i, &ov49_02269B78, NULL);
        }
    }
}

BOOL ov49_0225F224(int a0) {
    u32 mask;

    switch (a0) {
    case 0:
        mask = PAD_KEY_UP;
        break;
    case 1:
        mask = PAD_KEY_DOWN;
        break;
    case 2:
        mask = PAD_KEY_LEFT;
        break;
    case 3:
        mask = PAD_KEY_RIGHT;
        break;
    }

    if (gSystem.heldKeys & mask) {
        return TRUE;
    }

    return FALSE;
}

void ov49_0225F260(UnkStruct_Ov49_0225EEAC_Slot *a0, void *a1, u32 a2, const UnkStruct_Ov49_0225F260_Entry *a3, u32 a4) {
    int i;
    int j;
    void *state;
    UnkStruct_Ov49_0225EEAC_Manager *manager;

    state = ov49_0225EF84(a0);
    manager = ov49_0225A010(a1);

    i = 0;

    while (a3[i].unk8 != 3) {
        for (j = 0; j < 8; j++) {
            if (a3[i].unk0[j] == 0xFF) {
                break;
            }

            if (a3[i].unk0[j] == a4) {
                switch (a3[i].unk8) {
                case 0:
                    ov49_0225EF68(a0);
                    ov49_0225EF98(manager, a2, &a3[i].unkC, NULL);
                    break;
                case 1:
                    if (a3[i].unk14) {
                        a3[i].unk14(state, a1, a2, a3[i].unk0[j]);
                    }

                    ov49_0225EFC4(manager, a2, &a3[i].unkC, NULL);
                    break;
                }

                return;
            }
        }

        i++;
    }

    GF_ASSERT(FALSE);
    return;
}
