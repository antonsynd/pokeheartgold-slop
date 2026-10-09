#include "global.h"

#include "assert.h"
#include "heap.h"
#include "overlay_manager.h"
#include "player_data.h"
#include "poke_overlay.h"
#include "save.h"
#include "sys_task_api.h"
#include "system.h"
#include "unk_020318C8.h"
#include "unk_02037C94.h"
#include "unk_020915B0.h"

typedef void (*UnkFunc_ov45_0222E5D4)(void);

typedef struct UnkStruct_ov45_02229EE0 {
    SaveData *unk0;
    void *unk4;
    void *unk8;
    SysTask *unkC;
} UnkStruct_ov45_02229EE0;

typedef struct UnkStruct_ov45_02229EE0_args {
    u32 unk0;
    SaveData *unk4;
    void *unk8;
} UnkStruct_ov45_02229EE0_args;

typedef struct UnkStruct_ov45_0222E5D4 {
    UnkFunc_ov45_0222E5D4 unk0;
    UnkFunc_ov45_0222E5D4 unk4;
    UnkFunc_ov45_0222E5D4 unk8;
    UnkFunc_ov45_0222E5D4 unkC;
    UnkFunc_ov45_0222E5D4 unk10;
} UnkStruct_ov45_0222E5D4;

typedef struct UnkStruct_ov45_0222ECB8 {
    u32 unk0;
    u32 unk4;
} UnkStruct_ov45_0222ECB8;

typedef struct UnkStruct_ov45_0222AB0C {
    u32 unk0;
    u32 unk4;
} UnkStruct_ov45_0222AB0C;

typedef struct UnkStruct_ov45_1FC {
    u8 unk0_0 : 1;
    u8 unk0_1 : 1;
    u8 unk0_2 : 2;
    u8 unk0_4 : 1;
    u8 unk0_5 : 2;
    u8 unk0_7 : 1;
    u8 unk1;
    u8 unk2[2];
    s16 unk4;
    s16 unk6;
    s16 unk8;
    s16 unkA;
    u8 unkC[3];
    u8 unkF_0 : 4;
    u8 unkF_4 : 4;
} UnkStruct_ov45_1FC;

typedef struct UnkStruct_ov45_02229FF4 {
    SaveData *unk0;
    void *unk4;
    u32 unk8;
    u8 unkC[0xC8];
    u8 unkD4[4];
    u32 unkD8;
    u32 unkDC;
    u8 unkE0[8];
    PlayerProfile *unkE8[4];
    u32 unkF8;
    u32 unkFC;
    u32 unk100;
    u32 unk104;
    u8 unk108[0x1C0 - 0x108];
    u8 unk1C0[0x28];
    u8 unk1E8[0x14];
    UnkStruct_ov45_1FC unk1FC;
    u8 unk20C[0x3A0 - 0x20C];
    u8 unk3A0[0xC];
    u8 unk3AC[0x3CC - 0x3AC];
    u8 unk3CC[0x18];
    u8 unk3E4[0x49C - 0x3E4];
    u8 unk49C[0x4BC - 0x49C];
    u8 unk4BC[0x508 - 0x4BC];
    u8 unk508[0x528 - 0x508];
    enum HeapID unk528;
    u32 unk52C;
} UnkStruct_ov45_02229FF4;

typedef struct UnkStruct_ov45_02254AC4 {
    void *unk0;
    u32 unk4;
} UnkStruct_ov45_02254AC4;

extern UnkStruct_ov45_02254AC4 ov45_02254AC4[];

extern void *ov45_0222CD1C(void *a0, SaveData *a1, u32 a2, void *a3, enum HeapID heapId);
extern void ov45_0222CD84(void *a0);
extern int ov45_0222CD90(void *a0);
extern void ov45_0222CD68(void *a0);
extern void ov45_0222CDC0(void *a0);
extern void ov45_0222B2B4(void);
extern void ov45_0222B470(void);
extern void ov45_0222B530(void);
extern void ov45_0222B5A0(void);
extern void ov45_0222B75C(void);
extern void ov45_0222E5D4(enum HeapID heapId, SaveData *a1, u32 a2, UnkStruct_ov45_0222E5D4 *a3, void *a4);
extern void ov45_0222E688(void);
extern BOOL ov45_0222E9BC(void);
extern u32 ov45_0222ECDC(u32 a0);
extern void ov45_0222ECB8(UnkStruct_ov45_0222ECB8 *a0);
extern void *ov45_0222D860(enum HeapID heapId);
extern void ov45_0222D890(void *a0);
extern void ov45_0222D8A4(void *a0);
extern void ov45_0222D500(void *a0, UnkStruct_ov45_0222ECB8 *a1);
extern void ov45_0222B79C(void *a0, void *a1);
extern void ov45_0222B840(UnkStruct_ov45_02229FF4 *a0);
extern void ov45_0222B8A0(void *a0, SaveData *a1, enum HeapID heapId);
extern void ov45_0222BB58(void *a0);
extern void ov45_0222BB60(void *a0, void *a1, void *a2, void *a3);
extern void ov45_0222BC3C(void *a0);
extern void ov45_0222BCB8(void *a0);
extern void ov45_0222BCC8(void *a0, enum HeapID heapId);
extern void ov45_0222BCD8(void *a0);
extern void ov45_0222BD30(void *a0);
extern void ov45_0222BD40(void *a0);
extern void ov45_0222BE5C(void *a0);
extern void ov45_0222C388(void *a0);
extern void ov45_0222C3B0(void *a0);
extern void ov45_0222C8AC(void *a0);
extern void ov45_0222C978(void *a0, enum HeapID heapId);
extern void ov45_0222C994(void *a0);
extern void ov45_0222CAA0(void *a0);
extern void ov45_0222CB44(void *a0, SaveData *a1);
extern BOOL ov45_0222CCDC(void *a0);
extern void ov45_0222EE20(UnkStruct_ov45_02254AC4 *a0, int a1, void *a2);
extern void ov45_0222EE80(void);
extern void ov45_0222AB0C(void *a0, UnkStruct_ov45_0222AB0C *a1);

BOOL ov45_02229EE0(OverlayManager *a0, int *a1);
BOOL ov45_02229F70(OverlayManager *a0, int *a1);
BOOL ov45_02229F94(OverlayManager *a0, int *a1);
void ov45_02229FE0(SysTask *a0, void *a1);
UnkStruct_ov45_02229FF4 *ov45_02229FF4(SaveData *a0, enum HeapID heapId);
void ov45_0222A0F0(UnkStruct_ov45_02229FF4 *a0);
void ov45_0222A15C(UnkStruct_ov45_02229FF4 *a0);
void ov45_0222A1F8(UnkStruct_ov45_02229FF4 *a0);
u32 ov45_0222A1FC(const UnkStruct_ov45_02229FF4 *a0);
BOOL ov45_0222A208(const UnkStruct_ov45_02229FF4 *a0);
void *ov45_0222A210(UnkStruct_ov45_02229FF4 *a0);
void *ov45_0222A214(UnkStruct_ov45_02229FF4 *a0);
void *ov45_0222A22C(UnkStruct_ov45_02229FF4 *a0);
BOOL ov45_0222A230(UnkStruct_ov45_02229FF4 *a0, u32 a1);
BOOL ov45_0222A25C(UnkStruct_ov45_02229FF4 *a0, u32 a1);
BOOL ov45_0222A288(UnkStruct_ov45_02229FF4 *a0, int a1);
BOOL ov45_0222A2A0(UnkStruct_ov45_02229FF4 *a0, u32 a1);
SaveData *ov45_0222A2C8(UnkStruct_ov45_02229FF4 *a0);
BOOL ov45_0222A2CC(const UnkStruct_ov45_02229FF4 *a0);
BOOL ov45_0222A2E0(const UnkStruct_ov45_02229FF4 *a0);
BOOL ov45_0222A2F8(const UnkStruct_ov45_02229FF4 *a0);
void ov45_0222A310(UnkStruct_ov45_02229FF4 *a0);
BOOL ov45_0222A324(const UnkStruct_ov45_02229FF4 *a0);
BOOL ov45_0222A330(const UnkStruct_ov45_02229FF4 *a0);
BOOL ov45_0222A33C(const UnkStruct_ov45_02229FF4 *a0);
int ov45_0222A35C(const UnkStruct_ov45_02229FF4 *a0);
BOOL ov45_0222A374(const UnkStruct_ov45_02229FF4 *a0);
BOOL ov45_0222A394(const UnkStruct_ov45_02229FF4 *a0);
BOOL ov45_0222A3A0(const UnkStruct_ov45_02229FF4 *a0);
u32 ov45_0222A3BC(const UnkStruct_ov45_02229FF4 *a0);

BOOL ov45_02229EE0(OverlayManager *a0, int *a1) {
    UnkStruct_ov45_02229EE0 *v0;
    UnkStruct_ov45_02229EE0_args *v1;

    HandleLoadOverlay(42, OVY_LOAD_ASYNC);
    LoadDwcOverlay();
    LoadOVY38();

    sub_02039FD8(HEAP_ID_3);
    Heap_Create(HEAP_ID_3, HEAP_ID_111, 0x5000);

    v0 = OverlayManager_CreateAndGetData(a0, sizeof(UnkStruct_ov45_02229EE0), HEAP_ID_111);
    memset(v0, 0, sizeof(UnkStruct_ov45_02229EE0));

    v1 = OverlayManager_GetArgs(a0);

    v0->unk0 = v1->unk4;
    v0->unk4 = ov45_02229FF4(v0->unk0, HEAP_ID_111);
    v0->unk8 = ov45_0222CD1C(v1->unk8, v1->unk4, v1->unk0, v0->unk4, HEAP_ID_111);

    Main_SetVBlankIntrCB(NULL, NULL);
    HBlankInterruptDisable();

    v0->unkC = SysTask_CreateOnVWaitQueue(ov45_02229FE0, v0, 0);

    ov45_0222CD84(v0->unk8);

    return TRUE;
}

BOOL ov45_02229F70(OverlayManager *a0, int *a1) {
    UnkStruct_ov45_02229EE0 *v0;
    int v1;

    v0 = OverlayManager_GetData(a0);
    v1 = ov45_0222CD90(v0->unk8);

    ov45_0222A15C(v0->unk4);

    if (v1 == 1) {
        return TRUE;
    }

    return FALSE;
}

BOOL ov45_02229F94(OverlayManager *a0, int *a1) {
    UnkStruct_ov45_02229EE0 *v0 = OverlayManager_GetData(a0);

    SysTask_Destroy(v0->unkC);
    Main_SetVBlankIntrCB(NULL, NULL);
    HBlankInterruptDisable();

    ov45_0222CD68(v0->unk8);
    ov45_0222A0F0(v0->unk4);

    OverlayManager_FreeData(a0);
    Heap_Destroy(HEAP_ID_111);

    UnloadOverlayByID(42);
    UnloadOVY38();
    UnloadDwcOverlay();

    return TRUE;
}

void ov45_02229FE0(SysTask *a0, void *a1) {
    UnkStruct_ov45_02229EE0 *v0 = a1;

    ov45_0222CDC0(v0->unk8);
    ov45_0222A1F8(v0->unk4);
}

UnkStruct_ov45_02229FF4 *ov45_02229FF4(SaveData *a0, enum HeapID heapId) {
    UnkStruct_ov45_02229FF4 *v0 = Heap_Alloc(heapId, sizeof(UnkStruct_ov45_02229FF4));
    memset(v0, 0, sizeof(UnkStruct_ov45_02229FF4));

    v0->unk0 = a0;
    v0->unk528 = heapId;

    {
        UnkStruct_ov45_0222E5D4 v1;

        v1.unk0 = ov45_0222B2B4;
        v1.unk4 = ov45_0222B470;
        v1.unk8 = ov45_0222B530;
        v1.unkC = ov45_0222B5A0;
        v1.unk10 = ov45_0222B75C;

        ov45_0222E5D4(heapId, v0->unk0, 0x94, &v1, v0);
    }

    {
        int v2;

        v0->unk4 = ov45_0222D860(heapId);

        for (v2 = 0; v2 < 4; v2++) {
            v0->unkE8[v2] = PlayerProfile_New(heapId);
        }
    }

    ov45_0222B8A0(v0->unk108, v0->unk0, heapId);
    ov45_0222BD40(v0->unk1C0);
    ov45_0222BD30(v0->unk1E8);
    ov45_0222EE20(ov45_02254AC4, 8, v0);
    ov45_0222BC3C(&v0->unk1FC);
    ov45_0222C388(v0->unk20C);
    ov45_0222C8AC(v0->unk3AC);
    ov45_0222C978(v0->unk3E4, heapId);
    ov45_0222CB44(v0->unk4BC, v0->unk0);
    ov45_0222BCC8(v0->unk508, heapId);

    return v0;
}

void ov45_0222A0F0(UnkStruct_ov45_02229FF4 *a0) {
    {
        UnkStruct_020318C8 *v0;
        UnkStruct_ov45_0222AB0C v1;

        ov45_0222AB0C(&a0->unk108[0x20], &v1);

        v0 = sub_020318E8(a0->unk0);

        sub_020318FC(v0, v1.unk0);
        sub_02031900(v0, v1.unk4);
    }

    ov45_0222BCD8(a0->unk508);
    ov45_0222C994(a0->unk3E4);

    {
        ov45_0222EE80();
    }

    {
        int v2;

        ov45_0222D890(a0->unk4);

        for (v2 = 0; v2 < 4; v2++) {
            Heap_Free(a0->unkE8[v2]);
        }
    }

    ov45_0222E688();
    Heap_Free(a0);
}

void ov45_0222A15C(UnkStruct_ov45_02229FF4 *a0) {
    ov45_0222D8A4(a0->unk4);

    {
        UnkStruct_ov45_0222ECB8 v0;

        ov45_0222ECB8(&v0);
        a0->unkD8 = v0.unk0;
        a0->unkDC = v0.unk4;
        ov45_0222D500(a0->unkD4, &v0);
    }

    {
        ov45_0222B840(a0);
    }

    {
        ov45_0222BE5C(a0->unk1C0);
    }

    ov45_0222BD30(a0->unk1E8);
    ov45_0222BB58(&a0->unkF8);
    ov45_0222BB60(&a0->unk1FC, &a0->unkF8, a0->unk20C, a0->unk49C);
    ov45_0222BCB8(a0->unk3A0);
    ov45_0222C3B0(a0->unk20C);
    ov45_0222CAA0(a0->unk49C);

    {
        BOOL v1;

        v1 = ov45_0222CCDC(a0->unk4BC);

        if (v1 == 1) {
            a0->unk52C = 1;
        }
    }
}

void ov45_0222A1F8(UnkStruct_ov45_02229FF4 *a0) {
    return;
}

u32 ov45_0222A1FC(const UnkStruct_ov45_02229FF4 *a0) {
    return a0->unk52C;
}

BOOL ov45_0222A208(const UnkStruct_ov45_02229FF4 *a0) {
    return ov45_0222E9BC();
}

void *ov45_0222A210(UnkStruct_ov45_02229FF4 *a0) {
    return a0->unk4;
}

void *ov45_0222A214(UnkStruct_ov45_02229FF4 *a0) {
    ov45_0222B79C(a0->unk108, a0->unkC);

    return a0->unkC;
}

void *ov45_0222A22C(UnkStruct_ov45_02229FF4 *a0) {
    return a0->unkD4;
}

BOOL ov45_0222A230(UnkStruct_ov45_02229FF4 *a0, u32 a1) {
    if (a0->unkF8 & (1 << a1)) {
        a0->unkF8 &= ~(1 << a1);
        return TRUE;
    }

    return FALSE;
}

BOOL ov45_0222A25C(UnkStruct_ov45_02229FF4 *a0, u32 a1) {
    if (a0->unkFC & (1 << a1)) {
        a0->unkFC &= ~(1 << a1);
        return TRUE;
    }

    return FALSE;
}

BOOL ov45_0222A288(UnkStruct_ov45_02229FF4 *a0, int a1) {
    if (a0->unk100 & (1 << a1)) {
        return TRUE;
    }

    return FALSE;
}

BOOL ov45_0222A2A0(UnkStruct_ov45_02229FF4 *a0, u32 a1) {
    if (a0->unk104 & (1 << a1)) {
        a0->unk104 &= ~(1 << a1);
        return TRUE;
    }

    return FALSE;
}

SaveData *ov45_0222A2C8(UnkStruct_ov45_02229FF4 *a0) {
    return a0->unk0;
}

BOOL ov45_0222A2CC(const UnkStruct_ov45_02229FF4 *a0) {
    GF_ASSERT(a0);
    return ov45_0222ECDC(4);
}

BOOL ov45_0222A2E0(const UnkStruct_ov45_02229FF4 *a0) {
    GF_ASSERT(a0);

    return a0->unk1FC.unkF_0;
}

BOOL ov45_0222A2F8(const UnkStruct_ov45_02229FF4 *a0) {
    GF_ASSERT(a0);
    return a0->unk1FC.unkF_4;
}

void ov45_0222A310(UnkStruct_ov45_02229FF4 *a0) {
    a0->unk1FC.unkF_4 = 1;
}

BOOL ov45_0222A324(const UnkStruct_ov45_02229FF4 *a0) {
    return a0->unk1FC.unk0_0;
}

BOOL ov45_0222A330(const UnkStruct_ov45_02229FF4 *a0) {
    return a0->unk1FC.unk0_7;
}

BOOL ov45_0222A33C(const UnkStruct_ov45_02229FF4 *a0) {
    if ((a0->unk1FC.unk0_1 == 1) && (a0->unk1FC.unk4 <= 0)) {
        return TRUE;
    } else {
        return FALSE;
    }
}

int ov45_0222A35C(const UnkStruct_ov45_02229FF4 *a0) {
    if (a0->unk1FC.unk8 <= 0) {
        return a0->unk1FC.unk0_2;
    }

    return 0;
}

BOOL ov45_0222A374(const UnkStruct_ov45_02229FF4 *a0) {
    if ((a0->unk1FC.unk0_4 == 1) && (a0->unk1FC.unkA <= 0)) {
        return TRUE;
    }

    return FALSE;
}

BOOL ov45_0222A394(const UnkStruct_ov45_02229FF4 *a0) {
    return a0->unk1FC.unk0_5;
}

BOOL ov45_0222A3A0(const UnkStruct_ov45_02229FF4 *a0) {
    if ((a0->unk8 == 1) && (a0->unk1FC.unk6 <= 0)) {
        return TRUE;
    }

    return FALSE;
}

u32 ov45_0222A3BC(const UnkStruct_ov45_02229FF4 *a0) {
    if (a0->unk1FC.unk6 <= 0) {
        return a0->unk1FC.unk1;
    }

    return 1;
}
