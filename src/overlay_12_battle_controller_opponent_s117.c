#include "global.h"

#include "battle/battle_system.h"

#include "render_window.h"

typedef struct Ov12_0225B1A8 {
    u8 filler_000[0x194];
    u8 unk194;
    u8 filler_195;
    u8 unk196;
} Ov12_0225B1A8;

void ov12_0226430C(BattleSystem *battleSystem, u8 a1, int a2);

void ov12_0225B1A8(BattleSystem *battleSystem, Ov12_0225B1A8 *ctx) {
    if (ctx->unk196 == 0) {
        BattleMessage msg;
        MsgData *msgLoader = BattleSystem_GetMessageLoader(battleSystem);

        msg.id = 0x39B;
        msg.tag = 0;
        BattleSystem_PrintBattleMessage(battleSystem, msgLoader, &msg, 0);
        ov12_0223BB80(battleSystem, WaitingIcon_New(BattleSystem_GetWindow(battleSystem, 0), 1));
    }
    ov12_0226430C(battleSystem, ctx->unk194, 0x37);
}
