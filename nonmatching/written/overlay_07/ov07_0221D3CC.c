#include "global.h"

typedef struct UnkStruct_ov07_0221D3CC_Ctx {
    u8 filler_00[0x14];
    u16 attacker;
    u16 defender;
} UnkStruct_ov07_0221D3CC_Ctx;

typedef struct UnkStruct_ov07_0221D3CC {
    u8 filler_00[0xc0];
    UnkStruct_ov07_0221D3CC_Ctx *context;
} UnkStruct_ov07_0221D3CC;

extern u8 ov07_0221FA04(UnkStruct_ov07_0221D3CC *system, int battler);
extern int ov07_0223197C(UnkStruct_ov07_0221D3CC *system, int battler);

int ov07_0221D3CC(UnkStruct_ov07_0221D3CC *system, int role) {
    u32 callerR6;
    int result;
    int battler;
    __asm__ volatile("movs %0, r6" : "=l"(callerR6) : : "cc");
    result = callerR6;

    switch (role) {
    case 0:
        result = system->context->attacker;
        break;
    case 1:
        result = system->context->defender;
        break;
    case 2:
        result = ov07_0223197C(system, system->context->attacker);
        break;
    case 3:
        result = ov07_0223197C(system, system->context->defender);
        break;
    case 4:
        result = 0xff;
        for (battler = 0; battler < 4; battler++) {
            int type = ov07_0221FA04(system, battler);
            if (type == 0 || type == 2) {
                result = battler;
                break;
            }
        }
        if (result == 0xff) {
            result = 0;
        }
        break;
    case 5:
        result = 0xff;
        for (battler = 0; battler < 4; battler++) {
            int type = ov07_0221FA04(system, battler);
            if (type == 1 || type == 3) {
                result = battler;
                break;
            }
        }
        if (result == 0xff) {
            result = 0;
        }
        break;
    case 6:
        result = 0xff;
        for (battler = 0; battler < 4; battler++) {
            int type = ov07_0221FA04(system, battler);
            if (type == 4) {
                result = battler;
                break;
            }
        }
        if (result == 0xff) {
            result = 0;
        }
        break;
    case 7:
        result = 0xff;
        for (battler = 0; battler < 4; battler++) {
            int type = ov07_0221FA04(system, battler);
            if (type == 5) {
                result = battler;
                break;
            }
        }
        if (result == 0xff) {
            result = 0;
        }
        break;
    }

    return result;
}
