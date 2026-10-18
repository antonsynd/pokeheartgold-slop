#include "global.h"

#include "files/msgdata/msg.naix"

#include "bg_window.h"
#include "message_format.h"
#include "msgdata.h"
#include "pm_string.h"

#define FRONTIER_MENU_ENTRIES_MAX 28

typedef struct FrontierScriptManager {
    u8 filler_00[0x34];
    enum HeapID heapId;
    u8 filler_38[0x2C];
    Window msgWindow;
} FrontierScriptManager;

typedef struct FrontierMenuEntry {
    const String *entry;
    int index;
} FrontierMenuEntry;

typedef struct FrontierMenuManager {
    FrontierScriptManager *scriptMan;
    u8 filler_004[0x14];
    Window *parent;
    String *choiceStringBuffers[FRONTIER_MENU_ENTRIES_MAX];
    MsgData *msgLoader;
    MessageFormat *strTemplate;
    u8 sysTaskDelay;
    u8 filler_095;
    u8 initialCursorPos;
    u8 canExitWithB : 1;
    u8 freeMsgLoaderOnDelete : 1;
    u8 unk97_2 : 6;
    u8 anchorX;
    u8 anchorY;
    u8 filler_09A;
    u8 optionCount;
    u8 filler_09C[4];
    u16 *selectedOptionPtr;
    u8 filler_0A4[0x10];
    FrontierMenuEntry menuChoiceStrings[FRONTIER_MENU_ENTRIES_MAX];
    u8 filler_194[0x28];
    FrontierMenuEntry listMenuChoiceStrings[FRONTIER_MENU_ENTRIES_MAX];
    u16 choicesAltTextEntryIDs[FRONTIER_MENU_ENTRIES_MAX];
    u16 cursorPos;
} FrontierMenuManager;

void ov80_0222E450(FrontierScriptManager *scriptMan, FrontierMenuManager *menuManager, u8 anchorX, u8 anchorY, u8 initialCursorPos, u8 canExitWithB, u16 *selectedOptionPtr, MessageFormat *strTemplate, MsgData *msgLoader) {
    int i;

    if (msgLoader == NULL) {
        menuManager->msgLoader = NewMsgDataFromNarc(MSGDATA_LOAD_LAZY, NARC_msgdata_msg, 191, scriptMan->heapId);
        menuManager->freeMsgLoaderOnDelete = TRUE;
    } else {
        menuManager->msgLoader = msgLoader;
        menuManager->freeMsgLoaderOnDelete = FALSE;
    }
    menuManager->strTemplate = strTemplate;
    menuManager->scriptMan = scriptMan;
    menuManager->selectedOptionPtr = selectedOptionPtr;
    *menuManager->selectedOptionPtr = 0;
    menuManager->canExitWithB = canExitWithB;
    menuManager->initialCursorPos = initialCursorPos;
    menuManager->anchorX = anchorX;
    menuManager->anchorY = anchorY;
    menuManager->optionCount = 0;
    menuManager->parent = &scriptMan->msgWindow;
    menuManager->sysTaskDelay = 3;
    menuManager->cursorPos = initialCursorPos;
    for (i = 0; i < FRONTIER_MENU_ENTRIES_MAX; i++) {
        menuManager->menuChoiceStrings[i].entry = NULL;
        menuManager->menuChoiceStrings[i].index = 0;
    }
    for (i = 0; i < FRONTIER_MENU_ENTRIES_MAX; i++) {
        menuManager->listMenuChoiceStrings[i].entry = NULL;
        menuManager->listMenuChoiceStrings[i].index = 0;
        menuManager->choicesAltTextEntryIDs[i] = 0xFF;
    }
    for (i = 0; i < FRONTIER_MENU_ENTRIES_MAX; i++) {
        menuManager->choiceStringBuffers[i] = String_New(80, scriptMan->heapId);
    }
    *menuManager->selectedOptionPtr = 0xEEEE;
}
