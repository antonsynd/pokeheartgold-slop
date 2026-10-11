#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223DE6C
	.extern ov70_02238D84
	.extern ov70_02238E50
	.extern ov70_0223E01C
	.extern ov70_0223E49C
	.extern ov70_0223E690
	.extern ov70_0223E76C

	.text

	.text
	thumb_func_start ov70_0223DE6C
ov70_0223DE6C: ; 0x0223DE6C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0x26
	lsl r0, r0, #4
	add r2, r4, r0
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	sub r0, #8
	mul r0, r1
	add r0, r2, r0
	bl ov70_0223E76C
	cmp r0, #0
	beq _0223DEC4
	mov r0, #0x12
	lsl r0, r0, #4
	ldrh r0, [r4, r0]
	cmp r0, #0x12
	beq _0223DEC4
	ldr r0, [r4]
	ldr r0, [r0, #8]
	bl Party_GetCount
	cmp r0, #6
	bne _0223DEC4
	ldr r0, _0223DF0C ; =0x00000F0F
	mov r2, #1
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x1c
	mov r3, #0
	str r2, [sp, #4]
	bl ov70_0223E01C
	add r0, r4, #0
	mov r1, #4
	mov r2, #1
	bl ov70_02238D84
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_0223DEC4:
	mov r3, #0x12
	lsl r3, r3, #4
	ldr r1, [r4]
	ldrh r2, [r4, r3]
	add r3, r3, #2
	ldr r0, [r1, #8]
	ldrh r3, [r4, r3]
	ldr r1, [r1, #0xc]
	bl ov70_0223E49C
	mov r1, #0x49
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #2
	str r0, [r4, #0x2c]
	ldr r0, _0223DF10 ; =0x000011FC
	mov r1, #1
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #7
	mov r2, #9
	bl ov70_02238E50
	mov r0, #0x4f
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, r4, #0
	bl ov70_0223E690
	mov r0, #0x4a
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #1
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
_0223DF0C: .word 0x00000F0F
_0223DF10: .word 0x000011FC
	thumb_func_end ov70_0223DE6C

