#include "global.h"

typedef struct UnkSpriteInfo_ov07_02232020 {
    u8 pad_00[4];
    u8 pos[4];
    void *monSprite;
    u8 pad_0C[4];
    int battler;
} UnkSpriteInfo_ov07_02232020;

int ov07_0221C468(void *sys);
int ov07_0221C470(void *sys);
void *ov07_0221FA48(void *sys, int battler);
int ov07_0221FA04(void *sys, int battler);
int ov07_0221FAB0(void *sys);
int ov07_0223197C(void *sys, int battler);
int ov07_02231958(void *sys, int type);
int ov07_022319E0(int type);
void ov07_02231FA0(void *monSprite, void *pos);

#define ADD_SPRITE(battlerExpr, battlerExpr2)                                        \
    do {                                                                             \
        sprites[*count].monSprite = ov07_0221FA48(sys, (battlerExpr));               \
        if (sprites[*count].monSprite != NULL) {                                     \
            sprites[*count].battler = (battlerExpr2);                                \
            ov07_02231FA0(sprites[*count].monSprite, &sprites[*count].pos);          \
            (*count)++;                                                              \
        }                                                                            \
    } while (0)

void ov07_02232020(void *sys, u32 targets, UnkSpriteInfo_ov07_02232020 *sprites, int *count) {
    *count = 0;

    if ((targets & 0x40) == 0x40) {
        int attacker = ov07_0221C468(sys);
        int battler;
        int type;

        ADD_SPRITE(attacker, attacker);

        battler = ov07_0223197C(sys, attacker);
        ADD_SPRITE(battler, battler);

        type = ov07_0221FA04(sys, attacker);
        type = ov07_022319E0(type);
        battler = ov07_02231958(sys, type);
        ADD_SPRITE(battler, battler);

        battler = ov07_0223197C(sys, battler);
        ADD_SPRITE(battler, battler);
        return;
    }

    if ((targets & 0x20) == 0x20) {
        int attacker = ov07_0221C468(sys);
        int battler;
        int type;

        battler = ov07_0223197C(sys, attacker);
        if (battler != attacker) {
            ADD_SPRITE(battler, battler);
        }

        type = ov07_0221FA04(sys, attacker);
        type = ov07_022319E0(type);
        battler = ov07_02231958(sys, type);
        if (battler != attacker) {
            ADD_SPRITE(battler, battler);
        }

        battler = ov07_0223197C(sys, battler);
        if (battler != attacker) {
            ADD_SPRITE(battler, battler);
        }
        return;
    }

    if ((targets & 2) == 2) {
        ADD_SPRITE(ov07_0221C468(sys), ov07_0221C468(sys));
    }

    if (ov07_0221FAB0(sys) == 1) {
        if ((targets & 4) == 4) {
            ADD_SPRITE(ov07_0223197C(sys, ov07_0221C468(sys)), ov07_0223197C(sys, ov07_0221C468(sys)));
        }
    }

    if ((targets & 8) == 8) {
        ADD_SPRITE(ov07_0221C470(sys), ov07_0221C470(sys));
    }

    if (ov07_0221FAB0(sys) == 1) {
        if ((targets & 0x10) == 0x10) {
            ADD_SPRITE(ov07_0223197C(sys, ov07_0221C470(sys)), ov07_0223197C(sys, ov07_0221C470(sys)));
        }
    }
}
