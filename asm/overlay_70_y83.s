#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223A260
	.extern ov70_02238D84
	.extern ov70_02238E50
	.extern ov70_0223A4F4

	.text

	.text
	thumb_func_start ov70_0223A260
ov70_0223A260: ; 0x0223A260
	push {r4, lr}
	sub sp, #8
	ldr r1, _0223A2C0 ; =gSystem
	add r4, r0, #0
	ldr r2, [r1, #0x48]
	mov r1, #1
	add r3, r2, #0
	tst r3, r1
	bne _0223A27A
	ldr r3, _0223A2C4 ; =gSystem + 0x40
	ldrh r3, [r3, #0x24]
	cmp r3, #0
	beq _0223A2A4
_0223A27A:
	ldr r0, _0223A2C8 ; =0x00000F0F
	mov r1, #5
	str r0, [sp]
	mov r0, #0x4f
	lsl r0, r0, #2
	add r0, r4, r0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #1
	mov r3, #0
	bl ov70_0223A4F4
	add r0, r4, #0
	mov r1, #3
	mov r2, #7
	bl ov70_02238D84
	ldr r0, _0223A2CC ; =0x000005DC
	bl PlaySE
	b _0223A2B8
_0223A2A4:
	mov r3, #2
	tst r2, r3
	beq _0223A2B8
	mov r2, #0
	str r3, [r4, #0x2c]
	bl ov70_02238E50
	ldr r0, _0223A2CC ; =0x000005DC
	bl PlaySE
_0223A2B8:
	mov r0, #3
	add sp, #8
	pop {r4, pc}
	nop
_0223A2C0: .word gSystem
_0223A2C4: .word gSystem + 0x40
_0223A2C8: .word 0x00000F0F
_0223A2CC: .word 0x000005DC
	thumb_func_end ov70_0223A260

