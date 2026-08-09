#include "global.h"

#include "constants/items.h"

#include "bag.h"
#include "bg_window.h"
#include "field_system.h"
#include "heap.h"
#include "message_format.h"
#include "msgdata.h"
#include "options.h"
#include "player_data.h"
#include "pm_string.h"
#include "render_window.h"
#include "task.h"
#include "text.h"
#include "unk_0202C034.h"
#include "unk_02030A98.h"
#include "unk_02034354.h"
#include "unk_02035900.h"

typedef struct {
    u32 unk0;
    u32 unk4;
    String *unk8;
    String *unkC;
    Window window;
    u8 unk20[0x10];
    FieldSystem *fieldSystem;
    SaveData *saveData;
    MessageFormat *messageFormat;
    MsgData *msgData;
    int textPrinterId;
    int state;
    int slots[16];
    int unk88;
    int unk8c;
    int unk90;
    int unk94;
    u16 unk98;
    u16 unk9a;
} Work; // size 0x9C

// Defined in still-asm sibling overlay_01_021F6830.s (shared work type).
extern void ov01_021F6A9C(FieldSystem *fieldSystem, int a1, void *a2);
extern BOOL ov01_021F6C28(Work *work);
extern BOOL ov01_021F6CA0(Work *work);

// Local externs (correct types differ from / are absent in the frozen headers).
extern BOOL sub_0203A1C4(SaveData *saveData, void *a1, enum HeapID heapID);
extern void sub_0203A280(SaveData *saveData, int a1, int a2, int a3, int a4);
extern u16 *sub_0202C23C(UnkStruct_021D2230 *a0, s32 a1);
extern BOOL sub_0202C2DC(UnkStruct_021D2230 *a0, s32 a1);
extern void sub_0202C338(UnkStruct_021D2230 *a0, s32 a1);
extern void sub_020311AC(FrontierSave *frontierSave, int a1);

static BOOL ov01_021F6CFC(Work *work);
static BOOL ov01_021F6D78(Work *work);
static BOOL ov01_021F6E44(Work *work);
static BOOL ov01_021F6E68(Work *work);
static BOOL ov01_021F6ED8(Work *work);
static BOOL ov01_021F6EFC(Work *work);
static BOOL ov01_021F6F44(Work *work);
static BOOL ov01_021F6F68(Work *work);
static BOOL ov01_021F6F94(Work *work);
static BOOL ov01_021F6FDC(Work *work);
static BOOL ov01_021F7060(Work *work);
static BOOL ov01_021F7084(Work *work);
static BOOL ov01_021F7100(TaskManager *taskman);
static void ov01_021F71C4(Work *work, int msgId);
static void ov01_021F722C(Work *work);
static void ov01_021F7268(Work *work);

void ov01_021F729C(FieldSystem *fieldSystem);

static BOOL ov01_021F6CFC(Work *work) {
    sub_0202C23C(sub_0202C6F4(work->saveData), 0);
    if (!sub_0203A1C4(work->saveData, work->slots, HEAP_ID_FIELD1)) {
        return TRUE;
    }
    work->unk88 = 0;
    LoadUserFrameGfx2(work->fieldSystem->bgConfig, GF_BG_LYR_MAIN_3, 0x1E2, 0xA, Options_GetFrame(Save_PlayerData_GetOptionsAddr(work->saveData)), HEAP_ID_FIELD1);
    LoadUserFrameGfx1(work->fieldSystem->bgConfig, GF_BG_LYR_MAIN_3, 0x3D9, 0xB, 0, HEAP_ID_FIELD1);
    work->state = 1;
    return FALSE;
}

static BOOL ov01_021F6D78(Work *work) {
    int i;
    work->unk88 = -1;
    for (i = 0; i < sub_02037454(); i++) {
        if (work->slots[i] == 2) {
            work->unk88 = i;
            work->slots[i] = 0;
            break;
        }
    }
    if (work->unk88 == -1) {
        return TRUE;
    }
    if (Bag_HasItem(Save_Bag_Get(work->saveData), ITEM_PAL_PAD, 1, HEAP_ID_FIELD1) == TRUE) {
        BufferPlayersName(work->messageFormat, 0, sub_02034818(work->unk88));
        ov01_021F71C4(work, 0x3E);
        work->state = 2;
        return FALSE;
    }
    {
        UnkStruct_021D2230 *store = sub_0202C6F4(work->saveData);
        int i;
        for (i = 0; i < 0x20; i++) {
            if (!sub_0202C2DC(store, i)) {
                sub_0203A280(work->saveData, work->unk88, i, 4, 0);
                break;
            }
        }
    }
    work->state = 1;
    return FALSE;
}

static BOOL ov01_021F6E44(Work *work) {
    if (!TextPrinterCheckActive(work->textPrinterId)) {
        work->unk98 = 0;
        work->state = 3;
    }
    return FALSE;
}

static BOOL ov01_021F6E68(Work *work) {
    if (!ov01_021F6CA0(work)) {
        if (work->unk90 == 0) {
            int i;
            UnkStruct_021D2230 *store = sub_0202C6F4(work->saveData);
            for (i = 0; i < 0x20; i++) {
                if (!sub_0202C2DC(store, i)) {
                    sub_0203A280(work->saveData, work->unk88, i, 4, 0);
                    break;
                }
            }
            if (i == 0x20) {
                ov01_021F71C4(work, 0x3F);
                work->state = 4;
                return FALSE;
            }
        }
        work->state = 1;
        return FALSE;
    }
    return FALSE;
}

static BOOL ov01_021F6ED8(Work *work) {
    if (!TextPrinterCheckActive(work->textPrinterId)) {
        work->unk98 = 0;
        work->state = 5;
    }
    return FALSE;
}

static BOOL ov01_021F6EFC(Work *work) {
    if (!ov01_021F6CA0(work)) {
        if (work->unk90 == 0) {
            work->unk9a = 0;
            work->state = 8;
        } else {
            BufferPlayersName(work->messageFormat, 0, sub_02034818(work->unk88));
            ov01_021F71C4(work, 0x40);
            work->state = 6;
        }
    }
    return FALSE;
}

static BOOL ov01_021F6F44(Work *work) {
    if (!TextPrinterCheckActive(work->textPrinterId)) {
        work->unk98 = 0;
        work->state = 7;
    }
    return FALSE;
}

static BOOL ov01_021F6F68(Work *work) {
    if (!ov01_021F6CA0(work)) {
        if (work->unk90 == 0) {
            work->state = 0xC;
        } else {
            ov01_021F71C4(work, 0x3F);
            work->state = 4;
        }
    }
    return FALSE;
}

static BOOL ov01_021F6F94(Work *work) {
    switch (work->unk9a) {
    case 0:
        ov01_021F6A9C(work->fieldSystem, 6, &work->unk94);
        work->unk9a++;
        break;
    case 1:
        if (ov01_021F6C28(work) == TRUE) {
            work->unk9a = 0;
            work->state = 9;
        }
        break;
    }
    return FALSE;
}

static BOOL ov01_021F6FDC(Work *work) {
    switch (work->unk94) {
    case -2:
        BufferPlayersName(work->messageFormat, 0, sub_02034818(work->unk88));
        ov01_021F71C4(work, 0x40);
        work->state = 6;
        break;
    case -1:
        break;
    default: {
        UnkStruct_021D2230 *store;
        PlayerProfile *profile;
        work->unk8c = work->unk94;
        store = sub_0202C6F4(work->saveData);
        profile = PlayerProfile_New(HEAP_ID_FIELD1);
        Save_Profile_PlayerName_Set(profile, sub_0202C254(store, work->unk8c));
        BufferPlayersName(work->messageFormat, 0, profile);
        Heap_Free(profile);
        ov01_021F71C4(work, 0x41);
        work->state = 0xA;
        break;
    }
    }
    return FALSE;
}

static BOOL ov01_021F7060(Work *work) {
    if (!TextPrinterCheckActive(work->textPrinterId)) {
        work->unk98 = 0;
        work->state = 0xB;
    }
    return FALSE;
}

static BOOL ov01_021F7084(Work *work) {
    UnkStruct_021D2230 *store = sub_0202C6F4(work->saveData);
    if (!ov01_021F6CA0(work)) {
        if (work->unk90 == 0) {
            sub_020311AC(Save_Frontier_GetStatic(work->saveData), work->unk8c);
            sub_0202C338(store, work->unk8c);
            sub_0203A280(work->saveData, work->unk88, 0x1F, 4, 0);
            work->state = 1;
        } else {
            BufferPlayersName(work->messageFormat, 0, sub_02034818(work->unk88));
            ov01_021F71C4(work, 0x40);
            work->state = 6;
        }
    }
    return FALSE;
}

static BOOL ov01_021F7100(TaskManager *taskman) {
    Work *work = TaskManager_GetEnvironment(taskman);
    TaskManager_GetFieldSystem(taskman);
    switch (work->state) {
    case 0:
        if (ov01_021F6CFC(work)) {
            work->state = 0xC;
        }
        break;
    case 1:
        if (ov01_021F6D78(work)) {
            work->state = 0xC;
        }
        break;
    case 2:
        ov01_021F6E44(work);
        break;
    case 3:
        ov01_021F6E68(work);
        break;
    case 4:
        ov01_021F6ED8(work);
        break;
    case 5:
        ov01_021F6EFC(work);
        break;
    case 6:
        ov01_021F6F44(work);
        break;
    case 7:
        ov01_021F6F68(work);
        break;
    case 8:
        ov01_021F6F94(work);
        break;
    case 9:
        ov01_021F6FDC(work);
        break;
    case 10:
        ov01_021F7060(work);
        break;
    case 11:
        ov01_021F7084(work);
        break;
    case 12:
        ov01_021F7268(work);
        Heap_Free(work);
        sub_0203E30C();
        return TRUE;
    }
    return FALSE;
}

static void ov01_021F71C4(Work *work, int msgId) {
    if (WindowIsInUse(&work->window)) {
        RemoveWindow(&work->window);
    }
    ReadMsgDataIntoString(work->msgData, msgId, work->unk8);
    StringExpandPlaceholders(work->messageFormat, work->unkC, work->unk8);
    DialogBox_AddWindowToLayer3(work->fieldSystem->bgConfig, &work->window, GF_BG_LYR_MAIN_3);
    DialogBox_LoadFrame(&work->window, Save_PlayerData_GetOptionsAddr(work->fieldSystem->saveData));
    work->textPrinterId = DialogBox_PrintMessage(&work->window, work->unkC, Save_PlayerData_GetOptionsAddr(work->fieldSystem->saveData), 1);
}

static void ov01_021F722C(Work *work) {
    MI_CpuFill8(work, 0, sizeof(Work));
    work->messageFormat = MessageFormat_New(HEAP_ID_FIELD1);
    work->msgData = NewMsgDataFromNarc(MSGDATA_LOAD_DIRECT, (NarcId)0x1B, 0x30B, HEAP_ID_FIELD1);
    work->unkC = String_New(0x6E, HEAP_ID_FIELD1);
    work->unk8 = String_New(0x6E, HEAP_ID_FIELD1);
}

static void ov01_021F7268(Work *work) {
    DestroyMsgData(work->msgData);
    MessageFormat_Delete(work->messageFormat);
    String_Delete(work->unkC);
    String_Delete(work->unk8);
    if (WindowIsInUse(&work->window)) {
        RemoveWindow(&work->window);
    }
}

void ov01_021F729C(FieldSystem *fieldSystem) {
    TaskManager *taskman = fieldSystem->taskman;
    Work *work = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(Work));
    ov01_021F722C(work);
    work->fieldSystem = fieldSystem;
    work->saveData = fieldSystem->saveData;
    work->state = 0;
    if (taskman == NULL) {
        FieldSystem_CreateTask(fieldSystem, ov01_021F7100, work);
    } else {
        TaskManager_Call(taskman, ov01_021F7100, work);
    }
}
