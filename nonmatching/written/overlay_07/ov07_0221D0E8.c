#include "global.h"

typedef struct UnkStruct_ov07_0221D0E8 UnkStruct_ov07_0221D0E8;

/* The script handler is called with r0 = system; r1-r3 are whatever the
   argument-copy loops leave in those registers (see below). */
typedef void (*UnkFunc_ov07_0221D0E8)(UnkStruct_ov07_0221D0E8 *system, u32 r1, u32 r2, u32 r3);

struct UnkStruct_ov07_0221D0E8 {
    u8 filler_00[0x18];
    u32 *scriptPtr;
    u8 filler_1C[0x94 - 0x1c];
    u32 params[10];
};

extern UnkFunc_ov07_0221D0E8 ov07_02223038(u32 id);

void ov07_0221D0E8(UnkStruct_ov07_0221D0E8 *system) {
    u32 id;
    UnkFunc_ov07_0221D0E8 fn;
    u32 count;
    u32 i;
    u32 *params;
    u32 r1, r2, r3;

    system->scriptPtr++;
    id = *system->scriptPtr;
    system->scriptPtr++;
    fn = ov07_02223038(id);

    count = *system->scriptPtr;
    system->scriptPtr++;

    params = system->params;
    r1 = 0;
    for (i = 0; i < count; i++) {
        r1 = *system->scriptPtr;
        params[i] = r1;
        system->scriptPtr++;
    }

    if ((int)i < 10) {
        r1 = 0;
        r2 = (u32)system + 4 * 10;
        for (; (int)i < 10; i++) {
            params[i] = 0;
        }
        r3 = i;
    } else {
        r2 = (u32)&system->scriptPtr;
        r3 = i;
    }

    fn(system, r1, r2, r3);
}
