	.include "macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_0225B38C
	.extern ov90_0225927C
	.extern ov90_02259464
	.extern ov90_02259538
	.extern ov90_02259554

	.text

	.text
	thumb_func_start ov90_0225B38C
ov90_0225B38C: ; 0x0225B38C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r0, [r4]
	add r5, r1, #0
	add r6, r2, #0
	cmp r0, #0xc
	bhi _0225B42C
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0225B3A8: ; jump table
	.short _0225B3C2 - _0225B3A8 - 2 ; case 0
	.short _0225B3F4 - _0225B3A8 - 2 ; case 1
	.short _0225B404 - _0225B3A8 - 2 ; case 2
	.short _0225B420 - _0225B3A8 - 2 ; case 3
	.short _0225B436 - _0225B3A8 - 2 ; case 4
	.short _0225B448 - _0225B3A8 - 2 ; case 5
	.short _0225B494 - _0225B3A8 - 2 ; case 6
	.short _0225B4AC - _0225B3A8 - 2 ; case 7
	.short _0225B4C0 - _0225B3A8 - 2 ; case 8
	.short _0225B4D8 - _0225B3A8 - 2 ; case 9
	.short _0225B4EC - _0225B3A8 - 2 ; case 10
	.short _0225B50C - _0225B3A8 - 2 ; case 11
	.short _0225B52A - _0225B3A8 - 2 ; case 12
_0225B3C2:
	mov r0, #6
	str r0, [sp]
	mov r0, #0
	mov r2, #1
	ldr r5, [sp, #0x20]
	str r2, [sp, #4]
	add r1, r0, #0
	add r3, r0, #0
	str r5, [sp, #8]
	bl BeginNormalPaletteFade
	ldr r1, [sp, #0x20]
	mov r0, #0
	bl sub_0203A948
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0225B3EC
	add r0, r5, #0
	bl ov00_021E69A8
_0225B3EC:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0225B530
_0225B3F4:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0225B42C
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0225B530
_0225B404:
	add r0, r6, #0
	add r1, r3, #0
	bl ov90_0225927C
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #3
	mov r3, #1
	bl ov90_02259464
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0225B530
_0225B420:
	add r0, r5, #0
	mov r1, #1
	bl ov90_02259538
	cmp r0, #1
	beq _0225B42E
_0225B42C:
	b _0225B530
_0225B42E:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0225B530
_0225B436:
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #8
	bl YesNoPrompt_InitFromTemplate
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0225B530
_0225B448:
	ldr r0, [r4, #4]
	bl YesNoPrompt_HandleInput
	sub r1, r0, #1
	cmp r1, #1
	bhi _0225B530
	cmp r0, #1
	bne _0225B464
	mov r1, #0
	mov r0, #0x16
	add r2, r1, #0
	bl sub_02037030
	b _0225B472
_0225B464:
	cmp r0, #2
	bne _0225B472
	mov r1, #0
	mov r0, #0x17
	add r2, r1, #0
	bl sub_02037030
_0225B472:
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0xf
	mov r3, #1
	bl ov90_02259464
	add r0, r5, #0
	mov r1, #1
	bl ov90_02259554
	ldr r0, [r4, #4]
	bl YesNoPrompt_Reset
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0225B530
_0225B494:
	ldrb r1, [r4, #0x1e]
	cmp r1, #0
	beq _0225B530
	ldrb r1, [r4, #0x1f]
	cmp r1, #0
	beq _0225B4A6
	mov r0, #0xa
	strb r0, [r4]
	b _0225B530
_0225B4A6:
	add r0, r0, #1
	strb r0, [r4]
	b _0225B530
_0225B4AC:
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #6
	mov r3, #1
	bl ov90_02259464
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0225B530
_0225B4C0:
	add r0, r5, #0
	mov r1, #1
	bl ov90_02259538
	cmp r0, #1
	bne _0225B530
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	mov r0, #0x66
	strh r0, [r4, #2]
	b _0225B530
_0225B4D8:
	ldrh r0, [r4, #2]
	sub r0, r0, #1
	strh r0, [r4, #2]
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _0225B530
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0225B530
_0225B4EC:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	mov r1, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	add r2, r1, #0
	str r0, [sp, #8]
	mov r0, #4
	add r3, r1, #0
	bl BeginNormalPaletteFade
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0225B530
_0225B50C:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0225B530
	bl sub_0203A914
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0225B522
	bl ov00_021E6A4C
_0225B522:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _0225B530
_0225B52A:
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0225B530:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov90_0225B38C

