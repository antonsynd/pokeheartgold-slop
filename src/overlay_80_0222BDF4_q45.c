#include "global.h"

#include "frontier/frontier_script_context.h"

#include "list_menu_2d.h"
#include "sound.h"
#include "system.h"

typedef struct Ov80MenuOwner {
    u8 filler_00[0x34];
    enum HeapID heapID;
    u8 filler_38[0x3C];
    struct ListMenu2D *menu;
} Ov80MenuOwner;

u16 *ov80_0222BE24(FrontierScriptContext *ctx, u16 slot);

BOOL ov80_0222C4D0(FrontierScriptContext *ctx) {
    Ov80MenuOwner *owner = (Ov80MenuOwner *)ctx->frontierSystem;
    u16 *result = ov80_0222BE24(ctx, ctx->data[0]);
    int selection = Handle2dMenuInput_DeleteOnFinish(owner->menu, owner->heapID);

    if (selection == -1) {
        if (System_GetTouchNew() == TRUE) {
            PlaySE(SEQ_SE_DP_SELECT);
            selection = Get2dMenuSelection(owner->menu);
            Clear2dMenuWindowAndDelete(owner->menu, owner->heapID);
        } else {
            return FALSE;
        }
    }
    if (selection == 0) {
        *result = 0;
    } else {
        *result = 1;
    }
    return TRUE;
}
