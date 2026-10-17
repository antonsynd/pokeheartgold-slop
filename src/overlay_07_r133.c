#include "global.h"

#include "sys_task.h"

typedef struct BattleAnimSystem {
    u8 filler_00[0x18];
    u32 *scriptPtr;
} BattleAnimSystem;

typedef struct Ov07_0221EEC0 {
    u8 filler_00[0xD];
    u8 unk0D;
    u8 filler_0E[2];
    int unk10;
    int unk14;
    int unk18;
} Ov07_0221EEC0;

static inline void BattleAnimScript_Next(BattleAnimSystem *system) {
    system->scriptPtr += 1;
}

static inline int BattleAnimScript_ReadWord(u32 *scriptPtr) {
    return *scriptPtr;
}

Ov07_0221EEC0 *ov07_0221DF1C(BattleAnimSystem *system);
u8 ov07_0221C4A8(BattleAnimSystem *system, int a1);
void ov07_0221ED14(SysTask *task, void *data);

void ov07_0221EEC0(BattleAnimSystem *system) {
    Ov07_0221EEC0 *data = ov07_0221DF1C(system);
    u32 value;

    data->unk0D = ov07_0221C4A8(system, 4);
    BattleAnimScript_Next(system);
    data->unk10 = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);
    value = BattleAnimScript_ReadWord(system->scriptPtr);
    BattleAnimScript_Next(system);
    data->unk14 = (value & 0xFFFF) + 3;
    data->unk18 = (value & 0xFFFF0000) >> 16;
    SysTask_CreateOnMainQueue(ov07_0221ED14, data, 0x44C);
}
