#include "global.h"

extern int ov07_0221C468(void *system);
extern int ov07_0221C470(void *system);
extern u8 ov07_02231924(void *system, int battler);
extern const int ov07_02234D58[6][6];

int ov07_0221CD4C(void *system) {
    int attacker = ov07_0221C468(system);
    int defender = ov07_0221C470(system);
    int attackerType = ov07_02231924(system, attacker);
    int defenderType = ov07_02231924(system, defender);
    int index = ov07_02234D58[attackerType][defenderType];

    GF_ASSERT(index != 0xFF);

    return index;
}
