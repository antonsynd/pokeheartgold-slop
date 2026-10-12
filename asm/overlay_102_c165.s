	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021EAFF0
	.extern ov102_021EAD5C
	.extern ov102_021EB088

	.text

	.text
	thumb_func_start ov102_021EAFF0
ov102_021EAFF0: ; 0x021EAFF0
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r0, #0x8c
	ldr r0, [r0]
	cmp r0, #0
	beq _021EB022
	add r2, r4, #0
	lsl r0, r1, #2
	add r2, #0x84
	add r0, r2, r0
	add r1, sp, #0
	bl ov102_021EAD5C
	add r1, sp, #0
	mov r2, #0
	ldrsh r0, [r1, r2]
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #2
	ldrsh r0, [r1, r0]
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	b _021EB032
_021EB022:
	mov r0, #2
	lsl r0, r0, #0x12
	str r0, [sp, #4]
	mov r0, #6
	lsl r0, r0, #0xe
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
_021EB032:
	ldr r0, [r4, #0x60]
	add r1, sp, #4
	bl Sprite_SetMatrix
	ldr r0, _021EB084 ; =0x000001E2
	ldrsh r1, [r4, r0]
	mov r0, #0xc0
	sub r0, r0, r1
	cmp r0, #0
	ble _021EB058
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _021EB066
_021EB058:
	lsl r0, r0, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_021EB066:
	bl _ffix
	ldr r1, [sp, #8]
	add r0, r1, r0
	str r0, [sp, #8]
	ldr r0, [r4, #0x64]
	add r1, sp, #4
	bl Sprite_SetMatrix
	add r0, r4, #0
	mov r1, #1
	bl ov102_021EB088
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
_021EB084: .word 0x000001E2
	thumb_func_end ov102_021EAFF0

