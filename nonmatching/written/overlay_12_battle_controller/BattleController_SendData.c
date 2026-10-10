#include "global.h"
#include "battle/battle_system.h"

typedef struct {
    u8 recipient;
    u8 battler;
    u16 size;
} UnkStruct_BattleController_SendData;

void BattleController_SendData(BattleSystem *battleSys, int recipient, int battler, void *message, u8 size)
{
    int i;
    UnkStruct_BattleController_SendData info;
    u8 *src;
    u8 *dest;
    u16 *writeIndex;
    u16 *endIndex;

    if (recipient == 1) {
        dest = BattleSystem_GetRecvBufferPtr(battleSys);
        writeIndex = ov12_0223A984(battleSys);
        endIndex = ov12_0223A990(battleSys);
    } else {
        dest = BattleSystem_GetSendBufferPtr(battleSys);
        writeIndex = ov12_0223A960(battleSys);
        endIndex = ov12_0223A96C(battleSys);
    }

    if ((u32)(writeIndex[0] + 5 + size) > 0x1000) {
        endIndex[0] = writeIndex[0];
        writeIndex[0] = 0;
    }

    info.recipient = recipient;
    info.battler = battler;
    info.size = size;

    src = (u8 *)&info;
    for (i = 0; i < 4; i++) {
        dest[writeIndex[0]] = src[i];
        writeIndex[0]++;
    }

    src = (u8 *)message;
    for (i = 0; i < size; i++) {
        dest[writeIndex[0]] = src[i];
        writeIndex[0]++;
    }
}
