#include "global.h"

#include "unk_02005D10.h"

typedef struct BattleAnimSystem {
    u8 filler_00[0x18];
    u32 *scriptPtr;
    u8 filler_1C[0x71];
    u8 unk8D;
} BattleAnimSystem;

static inline void BattleAnimScript_Next(BattleAnimSystem *system) {
    system->scriptPtr += 1;
}

static inline int BattleAnimScript_ReadWord(u32 *scriptPtr) {
    return *scriptPtr;
}

void ov07_0221F880(BattleAnimSystem *system) {
    if (IsCryFinished() == FALSE) {
        int value;

        BattleAnimScript_Next(system);
        value = BattleAnimScript_ReadWord(system->scriptPtr);
        BattleAnimScript_Next(system);
        system->unk8D = 0;
        sub_02006300(value);
    } else {
        system->unk8D = 1;
    }
}
