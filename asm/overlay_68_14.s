	.include "asm/macros.inc"
	.include "overlay_68.inc"
	.include "global.inc"
	.public ov68_021E5F68
	.extern ov68_021E7898
	.extern ov68_021E7A18
	.extern ov68_021E7A90
	.extern ov68_021E7AB4
	.extern ov68_021E7B94

	.text

	.text
	thumb_func_start ov68_021E5F68
ov68_021E5F68: ; 0x021E5F68
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl GridInputHandler_GetNextInput
	mov r1, #0x73
	lsl r1, r1, #2
	strh r0, [r4, r1]
	sub r0, r1, #4
	ldr r0, [r4, r0]
	bl GridInputHandler_HandleInput_AllowHold
	mov r1, #2
	add r5, r0, #0
	mvn r1, r1
	cmp r5, r1
	bhi _021E5FB8
	bhs _021E604E
	cmp r5, #7
	bhi _021E5FB0
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E5FA0: ; jump table
	.short _021E5FC8 - _021E5FA0 - 2 ; case 0
	.short _021E5FC8 - _021E5FA0 - 2 ; case 1
	.short _021E5FC8 - _021E5FA0 - 2 ; case 2
	.short _021E5FC8 - _021E5FA0 - 2 ; case 3
	.short _021E604E - _021E5FA0 - 2 ; case 4
	.short _021E604E - _021E5FA0 - 2 ; case 5
	.short _021E601E - _021E5FA0 - 2 ; case 6
	.short _021E603E - _021E5FA0 - 2 ; case 7
_021E5FB0:
	mov r0, #3
	mvn r0, r0
	cmp r5, r0
	b _021E604E
_021E5FB8:
	add r0, r1, #1
	cmp r5, r0
	bhi _021E5FC2
	beq _021E601E
	b _021E604E
_021E5FC2:
	add r0, r1, #2
	cmp r5, r0
	b _021E604E
_021E5FC8:
	bl System_GetTouchNew
	cmp r0, #0
	ldr r0, [r4]
	bne _021E5FF6
	ldrh r0, [r0, #0x16]
	add r1, r0, r5
	mov r0, #0x6e
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	cmp r1, r0
	bhs _021E604E
	ldr r0, _021E6054 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	add r1, r5, #0
	bl ov68_021E7A18
	add r0, r4, #0
	bl ov68_021E7B94
	pop {r3, r4, r5, pc}
_021E5FF6:
	ldrh r0, [r0, #0x16]
	add r1, r0, r5
	mov r0, #0x6e
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	cmp r1, r0
	bhs _021E6014
	ldr r0, _021E6054 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	add r1, r5, #0
	bl ov68_021E7A18
	b _021E604E
_021E6014:
	add r0, r4, #0
	mov r1, #5
	bl ov68_021E7A18
	b _021E604E
_021E601E:
	ldr r0, _021E6054 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	mov r1, #5
	bl ov68_021E7A18
	add r0, r4, #0
	mov r1, #0
	bl ov68_021E7898
	add r0, r4, #0
	mov r1, #0xe
	bl ov68_021E7A90
	pop {r3, r4, r5, pc}
_021E603E:
	ldr r0, _021E6054 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	mov r1, #0xf
	bl ov68_021E7AB4
	pop {r3, r4, r5, pc}
_021E604E:
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_021E6054: .word 0x000005DD
	thumb_func_end ov68_021E5F68

