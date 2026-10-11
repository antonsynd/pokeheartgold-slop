	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021EAD98
	.extern ov102_021EAD48

	.text

	.text
	thumb_func_start ov102_021EAD98
ov102_021EAD98: ; 0x021EAD98
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, _021EADE8 ; =0x0000FFFF
	add r6, r3, #0
	add r4, r1, #0
	cmp r6, r0
	beq _021EADE2
	add r0, r2, #0
	add r1, sp, #0x10
	bl ov102_021EAD48
	ldr r1, [r5, #0x7c]
	add r0, r6, #0
	bl GetECWordIntoStringByIndex
	ldr r1, [r5, #0x7c]
	mov r0, #1
	mov r2, #0
	bl FontID_String_GetWidth
	add r3, sp, #0x10
	mov r0, #2
	ldrsh r0, [r3, r0]
	mov r6, #0
	mov r1, #1
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021EADEC ; =0x0005060E
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	ldrsh r3, [r3, r6]
	ldr r2, [r5, #0x7c]
	add r0, r4, #0
	bl AddTextPrinterParameterizedWithColor
_021EADE2:
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_021EADE8: .word 0x0000FFFF
_021EADEC: .word 0x0005060E
	thumb_func_end ov102_021EAD98

