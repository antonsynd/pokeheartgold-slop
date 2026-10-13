	.include "asm/macros.inc"
	.include "overlay_89.inc"
	.include "global.inc"
	.public ov89_0225B46C
	.extern ov89_0225A958
	.extern ov89_0225AB64
	.extern ov89_0225ADA4

	.text

	.text
	thumb_func_start ov89_0225B46C
ov89_0225B46C: ; 0x0225B46C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x94
	add r4, r5, #0
	ldr r0, [r0]
	add r4, #0x94
	cmp r0, #3
	bls _0225B484
	b _0225B5DE
_0225B484:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225B490: ; jump table
	.short _0225B498 - _0225B490 - 2 ; case 0
	.short _0225B4F8 - _0225B490 - 2 ; case 1
	.short _0225B532 - _0225B490 - 2 ; case 2
	.short _0225B558 - _0225B490 - 2 ; case 3
_0225B498:
	add r0, r5, #0
	add r0, #0x1c
	mov r1, #2
	bl sub_020182EC
	ldr r1, _0225B5F4 ; =0x00000AAA
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	mov r0, #2
	lsl r0, r0, #0xc
	cmp r6, r0
	blo _0225B4EA
	mov r1, #9
	lsl r1, r1, #6
	ldr r1, [r5, r1]
	ldr r0, [r5, #0x18]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x18
	bl ov89_0225AB64
	mov r0, #1
	lsl r0, r0, #0xe
	sub r0, r6, r0
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r1, [r5, #0x18]
	add r0, r7, #0
	bl ov89_0225A958
	mov r1, #9
	lsl r1, r1, #6
	ldr r2, [r5, r1]
	mov r0, #0xf0
	bic r2, r0
	mov r0, #0x10
	orr r0, r2
	str r0, [r5, r1]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_0225B4EA:
	add r0, r5, #0
	add r0, #0x1c
	add r1, r6, #0
	mov r2, #2
	bl sub_020182E0
	b _0225B5DE
_0225B4F8:
	mov r1, #9
	lsl r1, r1, #6
	ldr r2, [r5, r1]
	mov r0, #0xf0
	bic r2, r0
	add r0, r5, #0
	str r2, [r5, r1]
	add r0, #0x1c
	mov r1, #2
	bl sub_020182EC
	ldr r1, _0225B5F4 ; =0x00000AAA
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #1
	lsl r0, r0, #0xe
	cmp r1, r0
	bhs _0225B526
	ldr r0, [r4]
	mov r1, #0
	add r0, r0, #1
	str r0, [r4]
_0225B526:
	add r0, r5, #0
	add r0, #0x1c
	mov r2, #2
	bl sub_020182E0
	b _0225B5DE
_0225B532:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #4
	blt _0225B5DE
	add r0, r5, #0
	add r0, #0x1c
	add r1, sp, #8
	add r2, sp, #4
	add r3, sp, #0
	bl sub_020182B0
	ldr r0, [sp, #4]
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_0225B558:
	add r0, r5, #0
	add r0, #0x1c
	add r1, sp, #8
	add r2, sp, #4
	add r3, sp, #0
	bl sub_020182B0
	ldr r1, [sp, #8]
	ldr r0, _0225B5F8 ; =0xFFFB0000
	cmp r1, r0
	blt _0225B586
	mov r0, #5
	lsl r0, r0, #0x10
	cmp r1, r0
	bgt _0225B586
	mov r0, #3
	ldr r1, [sp, #4]
	lsl r0, r0, #0x10
	cmp r1, r0
	bgt _0225B586
	ldr r0, _0225B5FC ; =0xFFFD0000
	cmp r1, r0
	bge _0225B58C
_0225B586:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0225B58C:
	mov r0, #2
	ldr r1, [r4, #4]
	lsl r0, r0, #0xe
	add r1, r1, r0
	mov r0, #0x5a
	lsl r0, r0, #0xe
	str r1, [r4, #4]
	cmp r1, r0
	blt _0225B5A4
	ldr r1, [r4, #4]
	sub r0, r1, r0
	str r0, [r4, #4]
_0225B5A4:
	ldr r0, [r4, #4]
	bl GF_SinDegFX32
	add r2, r0, #0
	mov r1, #1
	add r0, r5, #0
	ldr r3, [sp, #8]
	lsl r1, r1, #0xc
	sub r1, r3, r1
	asr r3, r2, #0x1f
	lsr r6, r2, #0x11
	lsl r3, r3, #0xf
	orr r3, r6
	mov r6, #1
	lsl r6, r6, #0xc
	lsl r2, r2, #0xf
	lsr r6, r6, #1
	add r0, #0x1c
	add r6, r2, r6
	ldr r2, _0225B600 ; =0x00000000
	ldr r7, [r4, #0xc]
	adc r3, r2
	lsl r2, r3, #0x14
	lsr r3, r6, #0xc
	orr r3, r2
	add r2, r7, r3
	ldr r3, [sp]
	bl sub_020182A8
_0225B5DE:
	add r0, r5, #0
	add r4, #0x10
	add r0, #0x1c
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl ov89_0225ADA4
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0225B5F4: .word 0x00000AAA
_0225B5F8: .word 0xFFFB0000
_0225B5FC: .word 0xFFFD0000
_0225B600: .word 0x00000000
	thumb_func_end ov89_0225B46C

