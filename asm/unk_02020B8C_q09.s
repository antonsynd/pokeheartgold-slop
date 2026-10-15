	.include "macros.inc"
	.include "unk_02020B8C.inc"
	.include "global.inc"
	.public sub_02020EF4

	.text

	.text
	thumb_func_start sub_02020EF4
sub_02020EF4: ; 0x02020EF4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	sub r1, r3, r4
	ldr r0, [sp, #0x18]
	add r6, r2, #0
	sub r0, r0, r6
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	beq _02020F1A
	lsl r0, r0, #0xc
	lsl r1, r1, #0xc
	bl FX_Div
	str r0, [sp]
	b _02020F20
_02020F1A:
	mov r0, #0xff
	lsl r0, r0, #0xc
	str r0, [sp]
_02020F20:
	ldr r0, [sp]
	lsl r2, r4, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ll_mul
	mov r3, #2
	mov r4, #0
	lsl r3, r3, #0xa
	lsl r2, r6, #0xc
	add r3, r0, r3
	adc r1, r4
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	orr r1, r0
	ldr r0, [sp]
	sub r1, r2, r1
	str r0, [r5]
	str r1, [sp, #4]
	str r1, [r5, #4]
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02020EF4

