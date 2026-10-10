#include "global.h"

/*
 * The asm copies two 6x6 s16 tables onto its stack (X at sp+0x54, Y at sp+0xC,
 * a zeroed 6-entry s16 array at sp+0) and indexes them with the battler types
 * returned by ov07_02231924. The types are 0-5 in the game, but to behave the
 * same for any index, the element is read at the address the asm would read:
 * entry_sp - 0xB0 + 0x54 (X) or entry_sp - 0xB0 + 0xC (Y) plus row*12 + col*2.
 * Inside the asm's frame image those addresses hold the ROM tables / zeros.
 */

extern const s16 ov07_02235440[6][6];
extern const s16 ov07_02235488[6][6];

extern void *sub_02015504(void);
extern int ov07_0221C468(void *system);
extern int ov07_0221C470(void *system);
extern int ov07_02231924(void *system, int battler);

typedef struct {
    u8 unk0[0x20];
    s32 **unk20; // 0x20
    u8 unk24[4];
    s32 posX; // 0x28
    s32 posY; // 0x2C
    s32 posZ; // 0x30
} UnkStruct_ov07_02220230;

#define FRAME_SIZE 0xB0
#define FRAME_READ(S, addr, out)                                                          \
    do {                                                                                  \
        u32 rel_ = (addr) - ((S) - FRAME_SIZE);                                           \
        if (rel_ < 0xC) {                                                                 \
            out = 0;                                                                      \
        } else if (rel_ < 0x54) {                                                         \
            out = ((const s16 *)ov07_02235488)[(rel_ - 0xC) / 2];                         \
        } else if (rel_ < 0x9C) {                                                         \
            out = ((const s16 *)ov07_02235440)[(rel_ - 0x54) / 2];                        \
        } else if (rel_ < 0xA8) {                                                         \
            out = ((const s16 *)savedRegs)[(rel_ - 0x9C) / 2];                            \
        } else {                                                                          \
            out = *(s16 *)(addr);                                                         \
        }                                                                                 \
    } while (0)

void ov07_02220230(UnkStruct_ov07_02220230 *emitter) {
    u32 savedRegs[3]; /* the caller's r4-r6, which the asm pushes at entry_sp - 0x14 */
    u32 S = (u32)__builtin_frame_address(0) + 8;
    void *system;
    int attacker, defender, attackerType, defenderType;
    u32 off;
    s16 x, y;

    __asm__ volatile("movs %0, r4" : "=l"(savedRegs[0]) : : "cc");
    __asm__ volatile("movs %0, r5" : "=l"(savedRegs[1]) : : "cc");
    __asm__ volatile("movs %0, r6" : "=l"(savedRegs[2]) : : "cc");

    system = sub_02015504();
    attacker = ov07_0221C468(system);
    defender = ov07_0221C470(system);
    attackerType = ov07_02231924(system, attacker);
    defenderType = ov07_02231924(system, defender);

    off = (u32)attackerType * 12 + (u32)defenderType * 2;
    FRAME_READ(S, S - FRAME_SIZE + 0x54 + off, x);
    emitter->posX = x * 0xac + (*emitter->unk20)[1];
    FRAME_READ(S, S - FRAME_SIZE + 0xC + off, y);
    emitter->posY = y * 0xac + (*emitter->unk20)[2];
    emitter->posZ = (*emitter->unk20)[3];
}
