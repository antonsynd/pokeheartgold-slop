	.include "asm/macros.inc"
	.include "overlay_111.inc"
	.include "global.inc"
	.public ov111_021E5AA0
	.extern ov111_021E5BE4
	.extern ov111_021E5C54
	.extern ov111_021E5D08
	.extern ov111_021E6770
	.extern ov111_021E6784
	.extern ov111_021E67A4
	.extern ov111_021E6888
	.extern ov111_021E68FC
	.extern ov111_021E6A2C

	.text

	.text
	thumb_func_start ov111_021E5AA0
ov111_021E5AA0: ; 0x021E5AA0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	mov r5, #0
	mvn r5, r5
	bl ov111_021E6A2C
	ldr r0, [r4, #0x24]
	bl ov111_021E6888
	cmp r0, #0
	beq _021E5ABC
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E5ABC:
	ldr r0, [r4, #0x30]
	cmp r0, #6
	bhi _021E5BC2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E5ACE: ; jump table
	.short _021E5ADC - _021E5ACE - 2 ; case 0
	.short _021E5AEA - _021E5ACE - 2 ; case 1
	.short _021E5AF6 - _021E5ACE - 2 ; case 2
	.short _021E5B70 - _021E5ACE - 2 ; case 3
	.short _021E5B88 - _021E5ACE - 2 ; case 4
	.short _021E5BA0 - _021E5ACE - 2 ; case 5
	.short _021E5BBE - _021E5ACE - 2 ; case 6
_021E5ADC:
	mov r5, #1
	add r0, r4, #0
	bl ov111_021E5BE4
	add r0, r5, #0
	str r0, [r4, #0x30]
	b _021E5BC6
_021E5AEA:
	add r0, r4, #0
	bl ov111_021E5C54
	mov r0, #2
	str r0, [r4, #0x30]
	b _021E5BC6
_021E5AF6:
	ldr r0, [r4, #0x18]
	bl YesNoPrompt_HandleInput
	cmp r0, #1
	beq _021E5B06
	cmp r0, #2
	beq _021E5B3A
	b _021E5BC6
_021E5B06:
	ldr r0, [r4, #0x18]
	bl YesNoPrompt_Reset
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r4, #0x20]
	mov r1, #0
	mov r2, #1
	mov r3, #0x48
	bl ov111_021E6770
	mov r1, #1
	ldr r0, [r4, #0x20]
	add r2, r1, #0
	mov r3, #0xf2
	bl ov111_021E6770
	add r0, r4, #0
	mov r1, #1
	bl ov111_021E5D08
	mov r0, #3
	str r0, [r4, #0x30]
	b _021E5BC6
_021E5B3A:
	ldr r0, [r4, #0x18]
	bl YesNoPrompt_Reset
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	mov r2, #1
	add r3, r2, #0
	ldr r0, [r4, #0x20]
	mov r1, #0
	sub r3, #0x33
	bl ov111_021E6770
	mov r1, #1
	ldr r0, [r4, #0x20]
	add r2, r1, #0
	mov r3, #0x48
	bl ov111_021E6770
	add r0, r4, #0
	mov r1, #2
	bl ov111_021E5D08
	mov r0, #4
	str r0, [r4, #0x30]
	b _021E5BC6
_021E5B70:
	ldr r0, [r4, #0x20]
	bl ov111_021E6784
	ldr r0, [r4, #0x20]
	bl ov111_021E67A4
	cmp r0, #0
	beq _021E5BC6
	mov r0, #5
	mov r5, #2
	str r0, [r4, #0x30]
	b _021E5BC6
_021E5B88:
	ldr r0, [r4, #0x20]
	bl ov111_021E6784
	ldr r0, [r4, #0x20]
	bl ov111_021E67A4
	cmp r0, #0
	beq _021E5BC6
	mov r0, #5
	mov r5, #3
	str r0, [r4, #0x30]
	b _021E5BC6
_021E5BA0:
	bl System_GetTouchNew
	cmp r0, #0
	bne _021E5BB2
	ldr r0, _021E5BDC ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _021E5BC6
_021E5BB2:
	ldr r0, _021E5BE0 ; =0x000005DC
	bl PlaySE
	mov r0, #6
	str r0, [r4, #0x30]
	b _021E5BC6
_021E5BBE:
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E5BC2:
	bl GF_AssertFail
_021E5BC6:
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _021E5BD6
	ldr r0, [r4, #0x24]
	add r1, r5, #0
	bl ov111_021E68FC
_021E5BD6:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021E5BDC: .word gSystem
_021E5BE0: .word 0x000005DC
	thumb_func_end ov111_021E5AA0

