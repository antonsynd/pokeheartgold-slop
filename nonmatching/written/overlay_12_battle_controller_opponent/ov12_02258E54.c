#include "global.h"
#include "battle/battle.h"
#include "battle/battle_system.h"

typedef void (*UnkFunc_ov12_02258E54)(BattleSystem *battleSys, void *opponentData, u32 fn, u32 offset);

extern UnkFunc_ov12_02258E54 ov12_0226D010[];

void ov12_02258E54(BattleSystem *battleSys, void *opponentData)
{
    u8 command;
    u32 offset;
    UnkFunc_ov12_02258E54 fn;

    command = ((u8 *)opponentData)[0x94];
    if (command != 0) {
        ((u8 *)opponentData)[0x1a8] = 0;
        command = ((u8 *)opponentData)[0x94];
        offset = command * 4;
        fn = ov12_0226D010[command];
        fn(battleSys, opponentData, (u32)fn, offset);
    }
}
