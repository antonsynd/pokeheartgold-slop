	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021EAFF0
	.public ov102_021EB088
	.public ov102_021EB0C0
	.public ov102_021EB130
	.extern ov102_021EA268
	.extern ov102_021EAD5C

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

	thumb_func_start ov102_021EB088
ov102_021EB088: ; 0x021EB088
	push {r3, lr}
	add r2, r0, #0
	add r2, #0x8c
	ldr r2, [r2]
	cmp r2, #0
	beq _021EB0AA
	cmp r1, #0
	ldr r0, [r0, #0x60]
	beq _021EB0A2
	mov r1, #0
	bl Sprite_SetAnimCtrlSeq
	pop {r3, pc}
_021EB0A2:
	mov r1, #1
	bl Sprite_SetAnimCtrlSeq
	pop {r3, pc}
_021EB0AA:
	cmp r1, #0
	ldr r0, [r0, #0x60]
	beq _021EB0B8
	mov r1, #0xe
	bl Sprite_SetAnimCtrlSeq
	pop {r3, pc}
_021EB0B8:
	mov r1, #0xf
	bl Sprite_SetAnimCtrlSeq
	pop {r3, pc}
	thumb_func_end ov102_021EB088

	thumb_func_start ov102_021EB0C0
ov102_021EB0C0: ; 0x021EB0C0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	bl ov102_021EA268
	add r6, r0, #0
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	mov r0, #0
	ldr r2, _021EB12C ; =0x000001EE
	str r6, [sp]
	str r0, [sp, #4]
	ldrh r0, [r5, r2]
	mov r1, #0x19
	mov r3, #0xf
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	add r0, sp, #0
	strb r1, [r0, #0x10]
	mov r1, #0xc
	strb r1, [r0, #0x11]
	ldrb r1, [r0, #0x12]
	bic r1, r3
	add r3, r2, #2
	ldr r3, [r5, r3]
	ldr r3, [r3]
	lsl r3, r3, #0x18
	lsr r6, r3, #0x18
	mov r3, #0xf
	and r3, r6
	orr r1, r3
	strb r1, [r0, #0x12]
	ldrb r1, [r0, #0x12]
	mov r3, #0xf0
	bic r1, r3
	lsl r3, r4, #0x18
	lsr r3, r3, #0x18
	lsl r3, r3, #0x1c
	lsr r3, r3, #0x18
	orr r1, r3
	strb r1, [r0, #0x12]
	sub r0, r2, #6
	ldr r0, [r5, r0]
	add r1, sp, #0
	bl YesNoPrompt_InitFromTemplate
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021EB12C: .word 0x000001EE
	thumb_func_end ov102_021EB0C0

	thumb_func_start ov102_021EB130
ov102_021EB130: ; 0x021EB130
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl YesNoPrompt_HandleInput
	cmp r0, #1
	beq _021EB148
	cmp r0, #2
	beq _021EB14C
	b _021EB150
_021EB148:
	mov r4, #1
	b _021EB156
_021EB14C:
	mov r4, #0
	b _021EB156
_021EB150:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_021EB156:
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl YesNoPrompt_IsInTouchMode
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl YesNoPrompt_Reset
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov102_021EB130

