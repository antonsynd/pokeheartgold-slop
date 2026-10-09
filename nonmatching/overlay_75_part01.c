#include "global.h"

#include "constants/sndseq.h"

#include "assert.h"
#include "heap.h"
#include "main.h"
#include "overlay_manager.h"
#include "player_data.h"
#include "pm_string.h"
#include "poke_overlay.h"
#include "save.h"
#include "sound_02004A44.h"
#include "system.h"
#include "title_screen.h"
#include "unk_02034B0C.h"
#include "unk_02037C94.h"
#include "unk_0203170C.h"
#include "unk_0203A3B0.h"
#include "unk_020915B0.h"

#define OVY_ID_INTRO_TITLE 60
#define OVY_ID_70          70

typedef struct UnkStruct_ov75_Args {
    u8 unk0[8];
    SaveData *saveData;
} UnkStruct_ov75_Args;

typedef struct UnkStruct_ov75_Dialog {
    u8 unk0[0x1C];
    String *unk1C;
} UnkStruct_ov75_Dialog;

typedef struct UnkStruct_ov75_Work {
    OverlayManager *unk0;
    SaveData *saveData;
    Options *options;
    void *unkC;
    NNSFndHeapHandle unk10;
    u8 unk14[0x78 - 0x14];
    u16 unk78;
    u8 unk7A;
    u8 unk7B;
    int unk7C;
    int unk80;
    int unk84;
    int unk88;
    int unk8C;
    u8 unk90[4];
    UnkStruct_ov75_Dialog *unk94;
    Unk020317F4 unk98;
    u8 unkFC[8];
    u32 unk104;
    u32 unk108;
    u8 unk10C;
    u8 unk10D[3];
    String *unk110;
    String *unk114;
    u8 unk118[4];
} UnkStruct_ov75_Work;

typedef struct UnkStruct_ov75_Screen {
    void *(*unk0)(UnkStruct_ov75_Work *work);
    void (*unk4)(UnkStruct_ov75_Work *work);
    const OverlayManagerTemplate *template;
    int unkC;
} UnkStruct_ov75_Screen;

extern const OverlayManagerTemplate ov75_022498F4;
extern const OverlayManagerTemplate ov75_022498E4;
extern const OverlayManagerTemplate _02102620;

extern void *ov75_02246EAC(UnkStruct_ov75_Work *work);
extern void ov75_02246EDC(UnkStruct_ov75_Work *work);
extern void ov75_02249780(String *src, char *dest, enum HeapID heapID);
extern BOOL ov75_02249838(String *str, enum HeapID heapID);
extern void ov00_021EC294(void *(*alloc)(int, u32, int), void (*free)(int, void *));
extern void ov00_021ECB40(void);
extern int ov00_021EC9D4(void);
extern void ov70_022378DC(void);
extern UnkStruct_ov75_Dialog *sub_02085400(enum HeapID heapID, int a1, int *a2, Options *options, int a4, int a5);
extern UnkStruct_ov75_Dialog *sub_0208541C(enum HeapID heapID, int a1, int *a2, Options *options, int a4, int a5, int a6, int a7);
extern void sub_02085438(UnkStruct_ov75_Dialog *dialog);

void *ov75_02246D00(UnkStruct_ov75_Work *work);
void ov75_02246D04(UnkStruct_ov75_Work *work);
void *ov75_02246D08(UnkStruct_ov75_Work *work);
void ov75_02246D40(UnkStruct_ov75_Work *work);
void *ov75_02246DB4(UnkStruct_ov75_Work *work);
void ov75_02246DFC(UnkStruct_ov75_Work *work);
void *ov75_02246E3C(UnkStruct_ov75_Work *work);
void ov75_02246E78(UnkStruct_ov75_Work *work);
void ov75_02246B48(UnkStruct_ov75_Work *work);
void ov75_02246B98(UnkStruct_ov75_Work *work);
void *ov75_02246BF0(int type, u32 size, int alignment);
void ov75_02246C18(int type, void *ptr);
void ov75_02246BCC(UnkStruct_ov75_Work *work, int a1, int a2);
void ov75_02246CD8(UnkStruct_ov75_Work *work, u32 a1);
void ov75_02246CF0(UnkStruct_ov75_Work *work, int a1);
int ov75_02246CF8(UnkStruct_ov75_Work *work);

NNSFndHeapHandle _02249BE0;

const UnkStruct_ov75_Screen ov75_02249904[] = {
    { ov75_02246D00, ov75_02246D04, &ov75_022498F4, 0 },
    { ov75_02246D08, ov75_02246D40, &_02102620, 0 },
    { ov75_02246DB4, ov75_02246DFC, &_02102620, 0 },
    { ov75_02246E3C, ov75_02246E78, &_02102620, 0 },
    { ov75_02246E3C, ov75_02246E78, &_02102620, 0 },
    { ov75_02246EAC, ov75_02246EDC, &ov75_022498E4, 1 },
};

BOOL ov75_02246960(OverlayManager *man, int *state) {
    UnkStruct_ov75_Work *work;

    Heap_Create(HEAP_ID_3, HEAP_ID_115, 0x28000);
    Heap_Create(HEAP_ID_DEFAULT, HEAP_ID_89, 0x570);

    work = OverlayManager_CreateAndGetData(man, sizeof(UnkStruct_ov75_Work), HEAP_ID_115);
    MI_CpuClear8(work, sizeof(UnkStruct_ov75_Work));
    work->saveData = ((UnkStruct_ov75_Args *)OverlayManager_GetArgs(man))->saveData;
    work->options = Save_PlayerData_GetOptionsAddr(work->saveData);
    work->unk110 = String_New(100, HEAP_ID_115);
    work->unk114 = String_New(100, HEAP_ID_115);
    Sound_SetSceneAndPlayBGM(17, SEQ_GS_WIFI_ACCESS, 1);
    work->unk88 = 0;
    return TRUE;
}

BOOL ov75_022469D8(OverlayManager *man, int *state) {
    UnkStruct_ov75_Work *work = OverlayManager_GetData(man);
    void *args;

    if (work->unk7C == 1) {
        ov00_021ECB40();
        ov70_022378DC();
        sub_0203A930(3 - ov00_021EC9D4());
    }

    switch (*state) {
    case 0:
        ov75_02246B48(work);
        *state = 1;
        break;
    case 1:
        if (sub_02034DB8()) {
            _02249BE0 = work->unk10;
            ov00_021EC294(ov75_02246BF0, ov75_02246C18);
            work->unk7C = 1;
            *state = 2;
        }
        break;
    case 2:
        args = ov75_02249904[work->unk88].unk0(work);
        work->unk0 = OverlayManager_New(ov75_02249904[work->unk88].template, args, HEAP_ID_115);
        work->unk80 = work->unk88;
        work->unk88 = 6;
        *state = 3;
        break;
    case 3:
        if (OverlayManager_Run(work->unk0) == 1) {
            ov75_02249904[work->unk80].unk4(work);
            OverlayManager_Delete(work->unk0);

            if (work->unk88 == 6) {
                *state = 4;
            } else if (ov75_02249904[work->unk88].unkC == 1) {
                ov75_02246B98(work);
                *state = 2;
            } else if (work->unk7C == 1) {
                *state = 2;
            } else {
                *state = 0;
            }
        }
        break;
    case 4:
        return TRUE;
    }

    return FALSE;
}

BOOL ov75_02246B00(OverlayManager *man, int *state) {
    UnkStruct_ov75_Work *work = OverlayManager_GetData(man);

    ov75_02246B98(work);

    String_Delete(work->unk114);
    String_Delete(work->unk110);
    OverlayManager_FreeData(man);
    Heap_Destroy(HEAP_ID_115);
    Heap_Destroy(HEAP_ID_89);
    RegisterMainOverlay(OVY_ID_INTRO_TITLE, &gApplication_TitleScreen);
    return TRUE;
}

void ov75_02246B48(UnkStruct_ov75_Work *work) {
    if (work->unk7C == 0) {
        HandleLoadOverlay(OVY_ID_70, OVY_LOAD_ASYNC);
        LoadDwcOverlay();
        LoadOVY38();
        sub_02039FD8(HEAP_ID_115);
        work->unkC = Heap_Alloc(HEAP_ID_115, 0x20000 + 32);
        work->unk10 = NNS_FndCreateExpHeapEx((void *)(((u32)work->unkC + 31) / 32 * 32), 0x20000, 0);
        sub_02034D8C();
        Sys_ClearSleepDisableFlag(4);
    }
}

void ov75_02246B98(UnkStruct_ov75_Work *work) {
    if (work->unk7C == 1) {
        NNS_FndDestroyExpHeap(work->unk10);
        Heap_Free(work->unkC);
        UnloadOVY38();
        UnloadDwcOverlay();
        sub_02034DE0();
        UnloadOverlayByID(OVY_ID_70);
        work->unk7C = 0;
    }
}

void ov75_02246BCC(UnkStruct_ov75_Work *work, int a1, int a2) {
    work->unk88 = a1;
    work->unk8C = a2;
}

void ov75_02246BD8(UnkStruct_ov75_Work *work) {
    work->unk88 = 6;
}

void ov75_02246BE0(UnkStruct_ov75_Work *work, int a1) {
    work->unk7A = a1;
}

int ov75_02246BE8(UnkStruct_ov75_Work *work) {
    return work->unk7A;
}

void *ov75_02246BF0(int type, u32 size, int alignment) {
    OSIntrMode intrMode = OS_DisableInterrupts();
    void *ptr = NNS_FndAllocFromExpHeapEx(_02249BE0, size, alignment);
    OS_RestoreInterrupts(intrMode);
    return ptr;
}

void ov75_02246C18(int type, void *ptr) {
    if (ptr != NULL) {
        OSIntrMode intrMode = OS_DisableInterrupts();
        NNS_FndFreeToExpHeap(_02249BE0, ptr);
        OS_RestoreInterrupts(intrMode);
    }
}

void ov75_02246C3C(UnkStruct_ov75_Work *work) {
    char *buffer = Heap_Alloc(HEAP_ID_115, 100);

    ov75_02249780(work->unk110, buffer, HEAP_ID_115);
    sub_0203175C(work->saveData, buffer);
    Heap_Free(buffer);
}

void ov75_02246C68(UnkStruct_ov75_Work *work) {
    sub_02031780(work->saveData, 1, work->unk78);
    sub_02031780(work->saveData, 2, work->unk108);
}

void ov75_02246C8C(UnkStruct_ov75_Work *work) {
    sub_02031780(work->saveData, 3, work->unk104);
}

void ov75_02246CA0(UnkStruct_ov75_Work *work) {
    u32 value = sub_0203186C(work->saveData, &work->unk98);
    ov75_02246CD8(work, value);
}

void ov75_02246CB8(UnkStruct_ov75_Work *work) {
    ov75_02249780(work->unk110, work->unk98.unk24, HEAP_ID_115);
}

void ov75_02246CCC(UnkStruct_ov75_Work *work) {
    work->unk98.unk62 = work->unk108;
}

void ov75_02246CD8(UnkStruct_ov75_Work *work, u32 a1) {
    work->unk78 = a1;
}

u32 ov75_02246CE0(UnkStruct_ov75_Work *work) {
    return work->unk108;
}

u32 ov75_02246CE8(UnkStruct_ov75_Work *work) {
    return work->unk104;
}

void ov75_02246CF0(UnkStruct_ov75_Work *work, int a1) {
    work->unk10C = a1;
}

int ov75_02246CF8(UnkStruct_ov75_Work *work) {
    return work->unk10C;
}

void *ov75_02246D00(UnkStruct_ov75_Work *work) {
    return work;
}

void ov75_02246D04(UnkStruct_ov75_Work *work) {
    return;
}

void *ov75_02246D08(UnkStruct_ov75_Work *work) {
    int args[4];

    args[0] = 4;
    args[1] = 4;
    args[2] = 4;
    args[3] = 4;

    work->unk94 = sub_02085400(HEAP_ID_115, 16, args, Save_PlayerData_GetOptionsAddr(work->saveData), 4, 0);
    return work->unk94;
}

void ov75_02246D40(UnkStruct_ov75_Work *work) {
    UnkStruct_ov75_Dialog *dialog = work->unk94;

    if (ov75_02249838(dialog->unk1C, HEAP_ID_115)) {
        ov75_02246CF0(work, 1);
    } else if (ov75_02246CF8(work) == 2) {
        if (String_Compare(work->unk110, dialog->unk1C) != 0) {
            ov75_02246CF0(work, 3);
        } else {
            ov75_02246CF0(work, 0);
        }
    } else {
        String_Copy(work->unk110, dialog->unk1C);
        ov75_02246CF0(work, 2);
    }

    sub_02085438(dialog);
    ov75_02246BCC(work, 0, 0);
}

void *ov75_02246DB4(UnkStruct_ov75_Work *work) {
    int args[4];

    args[0] = 3;
    args[1] = 4;
    args[2] = 0;
    args[3] = 0;

    work->unk94 = sub_0208541C(HEAP_ID_115, 7, args, Save_PlayerData_GetOptionsAddr(work->saveData), 5, 1, 1, work->unk78);
    return work->unk94;
}

void ov75_02246DFC(UnkStruct_ov75_Work *work) {
    BOOL ok;
    UnkStruct_ov75_Dialog *dialog = work->unk94;

    work->unk108 = (u64)String_atoi(dialog->unk1C, &ok) % 10000;
    GF_ASSERT(ok);
    sub_02085438(dialog);
    ov75_02246BCC(work, 0, 0);
}

void *ov75_02246E3C(UnkStruct_ov75_Work *work) {
    int args[4];

    args[0] = 4;
    args[1] = 0;
    args[2] = 0;
    args[3] = 0;

    work->unk94 = sub_02085400(HEAP_ID_115, 4, args, Save_PlayerData_GetOptionsAddr(work->saveData), 6, 0);
    return work->unk94;
}

void ov75_02246E78(UnkStruct_ov75_Work *work) {
    BOOL ok;
    UnkStruct_ov75_Dialog *dialog = work->unk94;

    work->unk104 = String_atoi(dialog->unk1C, &ok);
    GF_ASSERT(ok);
    sub_02085438(dialog);
    ov75_02246BCC(work, 0, 0);
}
