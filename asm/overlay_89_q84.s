	.include "macros.inc"
	.include "overlay_89.inc"
	.include "global.inc"
	.public ov89_0225B82C
	.extern ov89_0225ADA4

	.text

	.text
	thumb_func_start ov89_0225B82C
ov89_0225B82C: ; 0x0225B82C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	add r4, r5, #0
	add r4, #0x94
	cmp r0, #0
	beq _0225B846
	cmp r0, #1
	beq _0225B85E
	b _0225B8E0
_0225B846:
	add r0, r5, #0
	add r0, #0x1c
	add r1, sp, #8
	add r2, sp, #4
	add r3, sp, #0
	bl sub_020182B0
	ldr r0, [sp, #8]
	str r0, [r4, #8]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_0225B85E:
	add r0, r5, #0
	add r0, #0x1c
	add r1, sp, #8
	add r2, sp, #4
	add r3, sp, #0
	bl sub_020182B0
	ldr r1, [sp, #8]
	ldr r0, _0225B8F8 ; =0xFFFB0000
	cmp r1, r0
	blt _0225B88C
	mov r0, #5
	lsl r0, r0, #0x10
	cmp r1, r0
	bgt _0225B88C
	mov r0, #3
	ldr r1, [sp, #4]
	lsl r0, r0, #0x10
	cmp r1, r0
	bgt _0225B88C
	ldr r0, _0225B8FC ; =0xFFFD0000
	cmp r1, r0
	bge _0225B892
_0225B88C:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0225B892:
	mov r0, #2
	ldr r1, [r4, #4]
	lsl r0, r0, #0xe
	add r1, r1, r0
	mov r0, #0x5a
	lsl r0, r0, #0xe
	str r1, [r4, #4]
	cmp r1, r0
	blt _0225B8AA
	ldr r1, [r4, #4]
	sub r0, r1, r0
	str r0, [r4, #4]
_0225B8AA:
	ldr r0, [r4, #4]
	bl GF_SinDegFX32
	add r2, r0, #0
	asr r6, r2, #0x1f
	mov r7, #2
	add r0, r5, #0
	lsr r3, r2, #0x11
	lsl r6, r6, #0xf
	orr r6, r3
	lsl r3, r2, #0xf
	mov r2, #0
	lsl r7, r7, #0xa
	add r0, #0x1c
	add r3, r3, r7
	adc r6, r2
	ldr r1, [r4, #8]
	lsl r2, r6, #0x14
	lsr r3, r3, #0xc
	orr r3, r2
	add r1, r1, r3
	ldr r3, [sp, #4]
	lsl r2, r7, #1
	sub r2, r3, r2
	ldr r3, [sp]
	bl sub_020182A8
_0225B8E0:
	add r0, r5, #0
	add r4, #0xc
	add r0, #0x1c
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl ov89_0225ADA4
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0225B8F8: .word 0xFFFB0000
_0225B8FC: .word 0xFFFD0000
	thumb_func_end ov89_0225B82C

