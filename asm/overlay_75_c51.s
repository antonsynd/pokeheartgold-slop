	.include "asm/macros.inc"
	.include "overlay_75.inc"
	.include "global.inc"
	.public ov75_02248584
	.extern ov75_02246BCC
	.extern ov75_02246BE0
	.extern ov75_02247854
	.extern ov75_02247890
	.extern ov75_022494CC
	.extern ov75_02249534
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov75_02248584
ov75_02248584: ; 0x02248584
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x44]
	bl ov75_02249534
	cmp r0, #1
	bne _0224859A
	add sp, #4
	mov r0, #0
	pop {r3, r4, pc}
_0224859A:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	cmp r0, #4
	bhi _02248678
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022485B0: ; jump table
	.short _022485BA - _022485B0 - 2 ; case 0
	.short _022485C8 - _022485B0 - 2 ; case 1
	.short _022485E6 - _022485B0 - 2 ; case 2
	.short _02248606 - _022485B0 - 2 ; case 3
	.short _02248646 - _022485B0 - 2 ; case 4
_022485BA:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4]
	b _02248678
_022485C8:
	ldr r0, _02248680 ; =0x00000F0F
	mov r2, #0xb
	str r0, [sp]
	ldr r1, [r4, #0x34]
	add r0, r4, #0
	mov r3, #1
	bl ov75_022494CC
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4]
	b _02248678
_022485E6:
	mov r1, #0x8d
	ldr r0, [r4, #4]
	lsl r1, r1, #2
	mov r2, #0
	bl ov75_02247890
	add r1, r4, #0
	add r1, #0x88
	str r0, [r1]
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4]
	b _02248678
_02248606:
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	bl YesNoPrompt_HandleInput
	cmp r0, #1
	bne _0224862C
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	bl YesNoPrompt_Destroy
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4]
	b _02248678
_0224862C:
	cmp r0, #2
	bne _02248678
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	bl YesNoPrompt_Destroy
	add r0, r4, #0
	mov r1, #0x22
	mov r2, #0
	bl ov75_02247854
	b _02248678
_02248646:
	ldr r0, [r4]
	ldr r0, [r0, #4]
	bl sub_0203A05C
	cmp r0, #0
	bne _0224866E
	ldr r0, [r4]
	mov r1, #5
	mov r2, #0
	bl ov75_02246BCC
	ldr r0, [r4]
	mov r1, #0xc
	bl ov75_02246BE0
	mov r0, #0x1d
	str r0, [r4, #8]
	add sp, #4
	mov r0, #0
	pop {r3, r4, pc}
_0224866E:
	add r0, r4, #0
	mov r1, #0x22
	mov r2, #0xc
	bl ov75_02247854
_02248678:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_02248680: .word 0x00000F0F
	thumb_func_end ov75_02248584

