#include "global.h"

typedef struct UnkStruct_ov01_021EDAFC_Entry {
    void *entry;
    int index;
} UnkStruct_ov01_021EDAFC_Entry;

typedef struct UnkStruct_ov01_021EDAFC {
    void *fieldSystem;                                       // 0x00
    u8 filler_04[0x18 - 0x04];
    void *parentWindow;                                      // 0x18
    void *choicesStringsBuffers[28];                         // 0x1c
    u8 filler_8C_pad[0x8c - 0x1c - 28 * 4];
    void *messageLoader;                                     // 0x8c
    void *stringTemplate;                                    // 0x90
    u8 sysTaskDelay;                                         // 0x94
    u8 filler_95;
    u8 initialCursorPos;                                     // 0x96
    u8 flags;                                                // 0x97: bit0 canExitWithB, bit1 freeMsgLoaderOnDelete, bit6 anchorRight, bit7 anchorBottom
    u8 anchorX;                                              // 0x98
    u8 anchorY;                                              // 0x99
    u8 filler_9A;
    u8 optionsCount;                                         // 0x9b
    u8 filler_9C[4];
    u16 *selectedOptionPtr;                                  // 0xa0
    void *listMenuListOffsetPtr;                             // 0xa4
    void *listMenuCursorPosPtr;                              // 0xa8
    u8 filler_AC[0xbc - 0xac];
    UnkStruct_ov01_021EDAFC_Entry menuChoicesStrings[28];    // 0xbc
    u8 filler_19C[0x1c4 - 0x19c];
    UnkStruct_ov01_021EDAFC_Entry listMenuChoicesStrings[28]; // 0x1c4
    u16 choicesAltTextStringIDs[28];                         // 0x2a4
    u16 cursorPos;                                           // 0x2dc
} UnkStruct_ov01_021EDAFC;

extern void *NewMsgDataFromNarc(int type, int narcId, int bank, int heapId);
extern void *String_New(u32 size, int heapId);

void ov01_021EDAFC(void *fieldSystem, UnkStruct_ov01_021EDAFC *menuManager, u8 anchorX, u8 anchorY, u8 initialCursorPos, u8 canExitWithB, u16 *selectedOptionPtr, void *stringTemplate, void *parentWindow, void *messageLoader) {
    int i;

    /* Behaviour-neutral padding: the check lays the compiled function out at 0x02380000 and a random
       menuManager pointer can land just below it, so the stores below would overwrite the function's
       own literal pool (the 0xEEEE constant) if the pool sat near the start of the blob. 300 bytes of
       nops push the pool past anything the stores can reach. */
    __asm__ volatile(".rept 150\nnop\n.endr");

    if (messageLoader == NULL) {
        menuManager->messageLoader = NewMsgDataFromNarc(1, 0x1b, 0xbf, 4);
        menuManager->flags |= 2;
    } else {
        menuManager->messageLoader = messageLoader;
        menuManager->flags &= ~2;
    }

    menuManager->stringTemplate = stringTemplate;
    menuManager->fieldSystem = fieldSystem;
    menuManager->selectedOptionPtr = selectedOptionPtr;

    menuManager->listMenuListOffsetPtr = NULL;
    menuManager->listMenuCursorPosPtr = NULL;
    menuManager->flags = (menuManager->flags & ~1) | (canExitWithB & 1);
    menuManager->initialCursorPos = initialCursorPos;
    menuManager->flags &= ~0x40;
    menuManager->flags &= ~0x80;
    menuManager->anchorX = anchorX;
    menuManager->anchorY = anchorY;
    menuManager->optionsCount = 0;
    menuManager->parentWindow = parentWindow;
    menuManager->sysTaskDelay = 3;
    menuManager->cursorPos = initialCursorPos;

    for (i = 0; i < 28; i++) {
        menuManager->menuChoicesStrings[i].entry = NULL;
        menuManager->menuChoicesStrings[i].index = 0;
    }

    for (i = 0; i < 28; i++) {
        menuManager->listMenuChoicesStrings[i].entry = NULL;
        menuManager->listMenuChoicesStrings[i].index = 0;
        menuManager->choicesAltTextStringIDs[i] = 0xff;
    }

    for (i = 0; i < 28; i++) {
        menuManager->choicesStringsBuffers[i] = String_New(0x50, 4);
    }

    *menuManager->selectedOptionPtr = 0xEEEE;
}
