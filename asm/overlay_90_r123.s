	.include "macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_0225B7FC
	.public ov90_0225B8F0
	.extern ov90_0225888C
	.extern ov90_022588A4
	.extern ov90_02259BCC
	.extern ov90_02259D50
	.extern ov90_02259DAC
	.extern ov90_02259E18
	.extern ov90_02259E38
	.extern ov90_02259E8C
	.extern ov90_02259EE0
	.extern ov90_02259F7C
	.extern ov90_0225A134
	.extern ov90_0225C1F0

	.text

	.text
	thumb_func_start ov90_0225B7FC
ov90_0225B7FC: ; 0x0225B7FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r6, r1, #0
	add r5, r0, #0
	mov r0, #0x38
	add r4, r6, #0
	mul r4, r0
	add r0, r5, #0
	add r0, #0x4c
	str r0, [sp]
	str r6, [sp, #4]
	ldrb r0, [r5, #0x15]
	mov r3, #0x97
	lsl r3, r3, #2
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0xa0
	str r0, [sp, #0xc]
	add r0, r3, #0
	sub r0, #0x78
	ldr r0, [r5, r0]
	add r7, r5, r3
	str r0, [sp, #0x10]
	ldrh r0, [r5, #2]
	str r2, [sp, #0x18]
	sub r3, r3, #4
	str r0, [sp, #0x14]
	ldrb r1, [r5, #0x14]
	ldrb r2, [r5, #7]
	ldr r3, [r5, r3]
	add r0, r7, r4
	bl ov90_02259BCC
	add r0, r5, #0
	add r0, #0xc
	add r1, r6, #0
	bl ov90_0225888C
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xc
	bl ov90_022588A4
	lsl r1, r6, #2
	str r1, [sp, #0x1c]
	mov r1, #0
	str r1, [sp]
	ldr r2, [sp, #0x1c]
	str r0, [sp, #4]
	add r2, r5, r2
	add r1, r5, #0
	ldr r2, [r2, #0x3c]
	add r0, r7, r4
	add r1, #0x58
	mov r3, #8
	bl ov90_02259D50
	add r0, r5, r6
	add r0, #0x38
	ldrb r0, [r0]
	add r3, r5, r6
	add r1, r5, #0
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	add r3, #0x34
	ldrb r2, [r5, #5]
	ldrb r3, [r3]
	add r0, r7, r4
	add r1, #0x58
	bl ov90_02259DAC
	ldrb r0, [r5, #7]
	cmp r0, #0
	bne _0225B896
	mov r1, #5
	b _0225B898
_0225B896:
	mov r1, #6
_0225B898:
	ldr r3, [sp, #0x18]
	mov r0, #0
	add r6, r3, #1
	mov r3, #4
	sub r3, r3, r6
	lsl r6, r3, #1
	ldr r3, _0225B8EC ; =ov90_0225C1F0
	ldr r2, [sp, #0x1c]
	str r0, [sp]
	ldrsh r6, [r3, r6]
	mov r3, #0xb0
	str r1, [sp, #4]
	add r2, r5, r2
	sub r3, r3, r6
	add r1, r5, #0
	lsl r3, r3, #0x10
	ldr r2, [r2, #0x1c]
	add r0, r7, r4
	add r1, #0x58
	asr r3, r3, #0x10
	bl ov90_02259E38
	add r5, #0x4c
	add r0, r7, r4
	add r1, r5, #0
	bl ov90_02259E8C
	ldr r1, [sp, #0x18]
	add r0, r7, r4
	bl ov90_02259E18
	ldr r1, [sp, #0x18]
	add r0, r7, r4
	lsl r2, r1, #1
	ldr r1, _0225B8EC ; =ov90_0225C1F0
	ldrsh r1, [r1, r2]
	mov r2, #0
	bl ov90_02259EE0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225B8EC: .word ov90_0225C1F0
	thumb_func_end ov90_0225B7FC

	thumb_func_start ov90_0225B8F0
ov90_0225B8F0: ; 0x0225B8F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldrb r0, [r7, #0x14]
	cmp r0, #0
	ble _0225B94E
	mov r0, #0x97
	lsl r0, r0, #2
	add r6, r7, r0
	add r4, r7, #0
	add r5, r6, #0
_0225B90E:
	mov r0, #0x9b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0225B938
	add r0, r6, #0
	bl ov90_02259F7C
	str r0, [sp, #8]
	mov r0, #0xcf
	lsl r0, r0, #2
	add r0, r7, r0
	add r1, r5, #0
	bl ov90_0225A134
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0225B93C
	mov r0, #0
	str r0, [sp]
	b _0225B93C
_0225B938:
	mov r0, #0
	str r0, [sp]
_0225B93C:
	ldr r0, [sp, #4]
	ldrb r1, [r7, #0x14]
	add r0, r0, #1
	add r4, #0x38
	add r6, #0x38
	add r5, #0x38
	str r0, [sp, #4]
	cmp r0, r1
	blt _0225B90E
_0225B94E:
	ldr r0, [sp]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov90_0225B8F0

