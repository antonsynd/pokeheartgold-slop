#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02240F58
	.extern ov70_02240F3C
	.extern ov70_022410F0

	.text

	.text
	thumb_func_start ov70_02240F58
ov70_02240F58: ; 0x02240F58
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4]
	ldr r5, [r4, #0xc]
	cmp r0, #3
	bhi _02240FF6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02240F72: ; jump table
	.short _02240F7A - _02240F72 - 2 ; case 0
	.short _02240FA0 - _02240F72 - 2 ; case 1
	.short _02240FBA - _02240F72 - 2 ; case 2
	.short _02240FE2 - _02240F72 - 2 ; case 3
_02240F7A:
	ldr r0, [r4, #4]
	cmp r0, #0xa0
	ble _02240F8E
	mov r0, #0xa0
	str r0, [r4, #4]
	mov r1, #1
	add r0, r4, #0
	str r1, [r4]
	bl ov70_02240F3C
_02240F8E:
	ldr r0, [r4, #4]
	mov r1, #0x80
	add r2, r0, #5
	ldr r0, _02240FF8 ; =0x00000EE4
	str r2, [r4, #4]
	ldr r0, [r5, r0]
	bl ov70_022410F0
	pop {r4, r5, r6, pc}
_02240FA0:
	ldr r0, _02240FF8 ; =0x00000EE4
	ldr r0, [r5, r0]
	bl Sprite_IsAnimated
	cmp r0, #0
	bne _02240FF6
	add r0, r4, #0
	mov r1, #2
	bl ov70_02240F3C
	mov r0, #2
	str r0, [r4]
	pop {r4, r5, r6, pc}
_02240FBA:
	ldr r0, [r4, #4]
	cmp r0, #0x8a
	bgt _02240FD0
	mov r0, #0x8a
	str r0, [r4, #4]
	mov r1, #3
	add r0, r4, #0
	str r1, [r4]
	bl ov70_02240F3C
	b _02240FD4
_02240FD0:
	sub r0, r0, #2
	str r0, [r4, #4]
_02240FD4:
	ldr r0, _02240FF8 ; =0x00000EE4
	ldr r2, [r4, #4]
	ldr r0, [r5, r0]
	mov r1, #0x80
	bl ov70_022410F0
	pop {r4, r5, r6, pc}
_02240FE2:
	ldr r0, _02240FFC ; =0x0000060C
	bl PlaySE
	ldr r1, [r4, #0xc]
	ldr r0, _02241000 ; =0x000011DC
	mov r2, #1
	strh r2, [r1, r0]
	add r0, r6, #0
	bl DestroySysTaskAndEnvironment
_02240FF6:
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02240FF8: .word 0x00000EE4
_02240FFC: .word 0x0000060C
_02241000: .word 0x000011DC
	thumb_func_end ov70_02240F58

