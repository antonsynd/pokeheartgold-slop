	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E6888
	.extern _021EA5CC

	.text

	.text
	thumb_func_start ov99_021E6888
ov99_021E6888: ; 0x021E6888
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	bl OverlayManager_GetData
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #4
	bhi _021E691A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E68A6: ; jump table
	.short _021E68B0 - _021E68A6 - 2 ; case 0
	.short _021E68CC - _021E68A6 - 2 ; case 1
	.short _021E68DA - _021E68A6 - 2 ; case 2
	.short _021E6906 - _021E68A6 - 2 ; case 3
	.short _021E6914 - _021E68A6 - 2 ; case 4
_021E68B0:
	mov r0, #6
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r5, #0xc]
	add r2, r1, #0
	str r0, [sp, #8]
	mov r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	mov r0, #1
	str r0, [r4]
	b _021E6924
_021E68CC:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E6924
	mov r0, #2
	str r0, [r4]
	b _021E6924
_021E68DA:
	bl ov98_0221EF24
	cmp r0, #0
	beq _021E6924
	ldr r0, _021E6930 ; =0x000005DC
	bl PlaySE
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	mov r0, #3
	str r0, [r4]
	b _021E6924
_021E6906:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E6924
	mov r0, #4
	str r0, [r4]
	b _021E6924
_021E6914:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021E691A:
	ldr r0, _021E6934 ; =_021EA5CC
	cmp r0, #0
	beq _021E6924
	bl GF_AssertFail
_021E6924:
	ldr r0, [r5, #0x14]
	bl ov98_0221E6CC
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_021E6930: .word 0x000005DC
_021E6934: .word _021EA5CC
	thumb_func_end ov99_021E6888

