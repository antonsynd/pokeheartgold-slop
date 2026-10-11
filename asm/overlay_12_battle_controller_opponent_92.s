#include "constants/pokemon.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_12_battle_controller_opponent.inc"
	.include "global.inc"
	.public ov12_0225E154
	.extern ov12_0226D140
	.extern ov12_0226D141

	.text

	.text
	thumb_func_start ov12_0225E154
ov12_0225E154: ; 0x0225E154
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4]
	bl ov12_0223B694
	add r5, r0, #0
	ldr r0, [r4]
	bl BattleSystem_GetBattleContext
	mov r2, #0
	ldrb r1, [r4, #9]
	add r3, r2, #0
	bl GetBattlerVar
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x1a
	bl GetMonBaseStat
	ldr r2, _0225E1CC ; =ov12_0226D140
	lsl r1, r5, #1
	ldrb r2, [r2, r1]
	mul r2, r0
	add r0, r2, #0
	ldr r2, _0225E1D0 ; =ov12_0226D141
	ldrb r1, [r2, r1]
	bl _s32_div_f
	add r5, r0, #0
	ldr r0, [r4]
	bl BattleSystem_Random
	mov r1, #0xff
	bl _s32_div_f
	cmp r1, r5
	ldr r0, [r4]
	bgt _0225E1AC
	ldrb r1, [r4, #9]
	mov r2, #4
	bl ov12_02262F24
	b _0225E1B4
_0225E1AC:
	ldrb r1, [r4, #9]
	mov r2, #5
	bl ov12_02262F24
_0225E1B4:
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #8]
	ldr r0, [r4]
	bl ov12_0226430C
	add r0, r4, #0
	bl Heap_Free
	add r0, r6, #0
	bl SysTask_Destroy
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0225E1CC: .word ov12_0226D140
_0225E1D0: .word ov12_0226D141
	thumb_func_end ov12_0225E154

