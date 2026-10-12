#include "constants/pokemon.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_12_battle_controller_opponent.inc"
	.include "global.inc"
	.public ov12_02261EF0

	.text

	.text
	thumb_func_start ov12_02261EF0
ov12_02261EF0: ; 0x02261EF0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl BattleSystem_GetBattleType
	mov r1, #4
	tst r0, r1
	beq _02261F0A
	cmp r4, #0
	beq _02261F0E
	cmp r4, #1
	beq _02261F0E
_02261F0A:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_02261F0E:
	add r0, r5, #0
	add r1, r6, #0
	bl BattleSystem_GetPlayerProfile
	bl PlayerProfile_GetVersion
	cmp r0, #0
	beq _02261F24
	cmp r0, #0xc
	beq _02261F2C
	b _02261F32
_02261F24:
	add r4, #0x7d
	lsl r0, r4, #0x18
	lsr r4, r0, #0x18
	b _02261F32
_02261F2C:
	add r4, #0x7f
	lsl r0, r4, #0x18
	lsr r4, r0, #0x18
_02261F32:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov12_02261EF0

