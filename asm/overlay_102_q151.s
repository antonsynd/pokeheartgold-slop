	.include "macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021EAB30
	.extern ov102_021E8F90
	.extern ov102_021E8FA8
	.extern ov102_021EAC44
	.extern ov102_021EAC70
	.extern ov102_021EAC7C
	.extern ov102_021EAD70
	.extern ov102_021EAD98

	.text

	.text
	thumb_func_start ov102_021EAB30
ov102_021EAB30: ; 0x021EAB30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r0, [r0, #4]
	mov r1, #0x23
	bl ov102_021E8FA8
	mov r4, #0
	str r0, [sp, #0x20]
	mov r0, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	add r0, #0x94
	str r4, [sp, #0x1c]
	add r5, r4, #0
	bl ov102_021EAC44
	ldr r7, [sp, #0x10]
	add r0, r7, #0
	add r6, r7, #0
	str r0, [sp, #0x24]
	add r0, #0x94
	add r6, #0x84
	str r0, [sp, #0x24]
_021EAB64:
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x20]
	bl ov102_021EAC7C
	cmp r0, #3
	bhi _021EABFC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EAB7C: ; jump table
	.short _021EAB84 - _021EAB7C - 2 ; case 0
	.short _021EABAC - _021EAB7C - 2 ; case 1
	.short _021EABF2 - _021EAB7C - 2 ; case 2
	.short _021EABF8 - _021EAB7C - 2 ; case 3
_021EAB84:
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021EAC18 ; =0x0003040D
	ldr r2, [sp, #0x20]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	mov r1, #1
	add r3, r5, #0
	bl AddTextPrinterParameterizedWithColor
	ldr r1, [sp, #0x20]
	mov r0, #1
	mov r2, #0
	bl FontID_String_GetWidth
	add r5, r5, r0
	b _021EABFC
_021EABAC:
	add r1, r5, #0
	add r0, r7, #0
	add r1, #0x32
	add r0, #0x84
	strh r1, [r0]
	add r1, r4, #0
	add r0, r7, #0
	add r1, #8
	add r0, #0x86
	strh r1, [r0]
	ldr r0, [sp, #0x14]
	add r1, r6, #0
	bl ov102_021EAD70
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x1c]
	ldr r0, [r0, #4]
	bl ov102_021E8F90
	add r3, r0, #0
	ldr r0, _021EAC1C ; =0x0000FFFF
	cmp r3, r0
	beq _021EABE4
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	add r2, r6, #0
	bl ov102_021EAD98
_021EABE4:
	ldr r0, [sp, #0x1c]
	add r7, r7, #4
	add r0, r0, #1
	add r6, r6, #4
	str r0, [sp, #0x1c]
	add r5, #0x64
	b _021EABFC
_021EABF2:
	add r4, #0x10
	mov r5, #0
	b _021EABFC
_021EABF8:
	mov r0, #0
	str r0, [sp, #0x18]
_021EABFC:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _021EAB64
	ldr r0, [sp, #0x10]
	add r0, #0x94
	str r0, [sp, #0x10]
	bl ov102_021EAC70
	ldr r0, [sp, #0x20]
	bl String_Delete
	ldr r0, [sp, #0x1c]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EAC18: .word 0x0003040D
_021EAC1C: .word 0x0000FFFF
	thumb_func_end ov102_021EAB30

