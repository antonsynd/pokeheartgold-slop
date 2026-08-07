#include "unk_020961D8.h"

#include "field/fieldmap.h"

#include "field_system.h"
#include "heap.h"
#include "launch_application.h"
#include "mail_message.h"
#include "mail_misc.h"
#include "message_format.h"
#include "overlay_01.h"
#include "save_misc_data.h"
#include "screen_fade.h"

typedef struct BattleGreetingEditWork {
    FieldSystem *fieldSystem;
    MessageFormat *messageFormat;
    MailMessage mailMessage;
    EasyChatArgs *easyChatArgs;
    SAVE_MISC_DATA *saveMisc;
    int state;
    u32 unk1C;
    u16 *var_p;
} BattleGreetingEditWork;

static BOOL sub_02096260(TaskManager *taskman);
static void sub_02096248(BattleGreetingEditWork *work);

void sub_020961D8(TaskManager *taskManager, u16 *var_p) {
    FieldSystem *fieldSystem = TaskManager_GetFieldSystem(taskManager);
    BattleGreetingEditWork *work = Heap_Alloc(HEAP_ID_FIELD3, sizeof(BattleGreetingEditWork));
    work->fieldSystem = fieldSystem;
    work->messageFormat = MessageFormat_New(HEAP_ID_FIELD3);
    work->easyChatArgs = EasyChat_CreateArgs(2, 0, work->fieldSystem->saveData, &fieldSystem->menuInputState, HEAP_ID_FIELD3);
    work->saveMisc = Save_Misc_Get(fieldSystem->saveData);
    work->var_p = var_p;
    MailMsg_Init_WithBank(&work->mailMessage, 4);
    SaveMisc_GetBattleGreeting(work->saveMisc, &work->mailMessage);
    sub_02090D40(work->easyChatArgs);
    work->state = 0;
    TaskManager_Call(taskManager, sub_02096260, work);
}

static void sub_02096248(BattleGreetingEditWork *work) {
    EasyChat_FreeArgs(work->easyChatArgs);
    MessageFormat_Delete(work->messageFormat);
    Heap_Free(work);
}

static BOOL sub_02096260(TaskManager *taskman) {
    BattleGreetingEditWork *work = TaskManager_GetEnvironment(taskman);
    switch (work->state) {
    case 0:
        sub_02090D20(work->easyChatArgs, &work->mailMessage);
        sub_02090D34(work->easyChatArgs);
        EasyChat_LaunchApp(work->fieldSystem, work->easyChatArgs);
        work->state = 1;
        break;
    case 1:
        if (FieldSystem_ApplicationIsRunning(work->fieldSystem)) {
            break;
        }
        FieldSystem_LoadFieldOverlay(work->fieldSystem);
        work->state = 2;
        break;
    case 2:
        if (!sub_020505C8(work->fieldSystem)) {
            break;
        }
        FieldMap_FadeScreen(FADE_TYPE_BRIGHTNESS_IN);
        work->state = 3;
        break;
    case 3:
        if (!IsPaletteFadeFinished()) {
            break;
        }
        if (sub_02090D48(work->easyChatArgs)) {
            *work->var_p = 0;
            work->state = 4;
        } else {
            *work->var_p = 1;
            sub_02090D60(work->easyChatArgs, &work->mailMessage);
            SaveMisc_SetBattleGreeting(work->saveMisc, &work->mailMessage);
            work->state = 4;
        }
        break;
    case 4:
        sub_02096248(work);
        return TRUE;
    }
    return FALSE;
}
