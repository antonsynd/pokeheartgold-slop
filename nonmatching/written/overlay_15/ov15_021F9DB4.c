#include "global.h"

typedef struct BagCursor BagCursor;
void BagCursor_Field_PocketGetPosition(BagCursor *cursor, u32 pocket, u8 *position, u8 *scroll);
u16 BagCursor_Field_GetPocket(BagCursor *cursor);

typedef struct {
    void *items;
    u16 cursorPos;
    u16 cursorScroll;
    u8 pocketType;
    u8 pad[3];
} Pocket_ov15_021F9DB4;

#define CTX(p) (*(u8 **)((p) + 0x234))

void ov15_021F9DB4(u8 *param0) {
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    union { u32 w; u8 b[4]; } tmp;
    Pocket_ov15_021F9DB4 *pockets;
    u16 i;
    u32 pocket;
    tmp.w = callerR3;

    CTX(param0)[0x64] = 0;
    pockets = (Pocket_ov15_021F9DB4 *)(CTX(param0) + 4);
    if (*(BagCursor **)(CTX(param0) + 0x6C) == NULL) {
        for (i = 0; i < 8; i++) {
            if (pockets[i].items != NULL) {
                pockets[i].cursorPos = 0;
                pockets[i].cursorScroll = 0;
            }
        }
        for (i = 0; i < 8; i++) {
            if (pockets[i].items != NULL) {
                CTX(param0)[0x64] = i;
                return;
            }
        }
        return;
    }
    for (i = 0; i < 8; i++) {
        if (pockets[i].items != NULL) {
            BagCursor_Field_PocketGetPosition(*(BagCursor **)(CTX(param0) + 0x6C), pockets[i].pocketType, &tmp.b[1], &tmp.b[0]);
            pockets[i].cursorPos = tmp.b[1];
            pockets[i].cursorScroll = tmp.b[0];
        }
    }
    pocket = BagCursor_Field_GetPocket(*(BagCursor **)(CTX(param0) + 0x6C));
    if (pockets[pocket].items == NULL) {
        for (i = 0; i < 8; i++) {
            if (pockets[i].items != NULL) {
                pocket = i;
                break;
            }
        }
    }
    for (i = 0; i < 8; i++) {
        if (pockets[i].items != NULL && pocket == pockets[i].pocketType) {
            CTX(param0)[0x64] = i;
            return;
        }
    }
}
