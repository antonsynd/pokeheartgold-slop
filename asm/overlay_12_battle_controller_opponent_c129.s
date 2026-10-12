#include "constants/pokemon.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_12_battle_controller_opponent.inc"
	.include "global.inc"
	.public ov12_0225E404

	.text

	.text
	thumb_func_start ov12_0225E404
ov12_0225E404: ; 0x0225E404
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r6, r1, #0
	str r0, [sp, #8]
	ldr r0, [r6]
	bl BattleSystem_GetBattleType
	add r4, r0, #0
	ldr r0, [r6]
	bl BattleSystem_GetBattleContext
	str r0, [sp, #0xc]
	ldr r0, _0225E4C8 ; =0x00000101
	tst r0, r4
	bne _0225E43A
	ldr r0, [r6]
	bl BattleSystem_GetBattleSpecial
	mov r1, #1
	tst r0, r1
	bne _0225E43A
	ldrb r1, [r6, #0x1d]
	ldr r0, [r6]
	bl BattleSystem_GetFieldSide
	cmp r0, #0
	bne _0225E44A
_0225E43A:
	ldrb r1, [r6, #0x1d]
	ldr r0, [r6]
	bl ov10_0221BEF4
	cmp r0, #0xff
	beq _0225E4C2
	add r4, r0, #1
	b _0225E4A2
_0225E44A:
	mov r7, #0
	add r4, r7, #0
	add r5, sp, #0x10
_0225E450:
	add r0, r4, #0
	bl MaskOfFlagNo
	ldrh r1, [r6, #0x22]
	tst r0, r1
	bne _0225E462
	add r0, r4, #1
	stmia r5!, {r0}
	add r7, r7, #1
_0225E462:
	add r4, r4, #1
	cmp r4, #4
	blt _0225E450
	ldr r0, [r6]
	bl BattleSystem_Random
	add r1, r7, #0
	bl _s32_div_f
	lsl r1, r1, #2
	add r0, sp, #0x10
	ldr r4, [r0, r1]
	mov r0, #1
	sub r3, r4, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	lsl r3, r3, #1
	add r3, r6, r3
	ldrb r2, [r6, #0x1d]
	ldrh r3, [r3, #0xc]
	ldr r0, [r6]
	ldr r1, [sp, #0xc]
	bl ov12_022506D4
	str r0, [sp]
	ldrb r3, [r6, #0x1d]
	ldr r0, [r6]
	ldr r1, [sp, #0xc]
	mov r2, #0xb
	bl ov12_022582B8
_0225E4A2:
	ldrb r1, [r6, #0x1d]
	ldr r0, [r6]
	add r2, r4, #0
	bl ov12_02262FE0
	ldrb r1, [r6, #0x1d]
	ldrb r2, [r6, #0x1c]
	ldr r0, [r6]
	bl ov12_0226430C
	add r0, r6, #0
	bl Heap_Free
	ldr r0, [sp, #8]
	bl SysTask_Destroy
_0225E4C2:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225E4C8: .word 0x00000101
	thumb_func_end ov12_0225E404

