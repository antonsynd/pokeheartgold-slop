#ifndef POKEHEARTGOLD_FRONTIER_OVERLAY_80_022372D8_H
#define POKEHEARTGOLD_FRONTIER_OVERLAY_80_022372D8_H

#include "battle/battle_setup.h"

void ov80_022372D8(u8 a0, int count, int a2, u8 a3, u16 *out);
void ov80_02237334(u8 a0, int count, u16 a2, int a3, u8 a4, u16 *out);
void ov80_02237448(int a0, u8 a1, int a2, u8 a3, u16 a4, u16 *a5, int a6);
BattleSetup *ov80_022375D0(void *work, void *fieldCtx);
u8 ov80_0223787C(u8 a0);
u8 ov80_02237920(u8 a0);
int ov80_0223792C(u8 a0);
u8 ov80_0223793C(void *work);
u16 ov80_022379C8(void *work);
fx32 ov80_02237A40(u32 a0);

#endif // POKEHEARTGOLD_FRONTIER_OVERLAY_80_022372D8_H
