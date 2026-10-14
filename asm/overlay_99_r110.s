	.include "macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public PokeathlonEventRecord_Main
	.extern _021EA5E4
	.extern ov99_021E8788
	.extern ov99_021E8828
	.extern ov99_021E8C50
	.extern ov99_021E90F4

	.text

	.text
	thumb_func_start PokeathlonEventRecord_Main
PokeathlonEventRecord_Main: ; 0x021E83F4
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	bl OverlayManager_GetData
	ldr r1, [r5]
	add r4, r0, #0
	cmp r1, #4
	bhi _021E84CC
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E8412: ; jump table
	.short _021E841C - _021E8412 - 2 ; case 0
	.short _021E8438 - _021E8412 - 2 ; case 1
	.short _021E8446 - _021E8412 - 2 ; case 2
	.short _021E84B8 - _021E8412 - 2 ; case 3
	.short _021E84C6 - _021E8412 - 2 ; case 4
_021E841C:
	mov r0, #6
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4, #0xc]
	add r2, r1, #0
	str r0, [sp, #8]
	mov r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	mov r0, #1
	str r0, [r5]
	b _021E84D6
_021E8438:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E84D6
	mov r0, #2
	str r0, [r5]
	b _021E84D6
_021E8446:
	add r1, r4, #0
	add r1, #0xb4
	ldr r1, [r1]
	cmp r1, #0
	beq _021E8464
	add r1, r4, #0
	add r1, #0xb0
	ldr r2, [r1]
	mov r1, #1
	eor r2, r1
	add r1, r4, #0
	add r1, #0xb0
	str r2, [r1]
	bl ov99_021E8828
_021E8464:
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0]
	cmp r0, #0
	beq _021E8482
	add r0, r4, #0
	bl ov99_021E8788
	add r0, r4, #0
	bl ov99_021E8C50
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb8
	str r1, [r0]
_021E8482:
	bl ov98_0221EF24
	cmp r0, #0
	bne _021E8494
	add r0, r4, #0
	bl ov99_021E90F4
	cmp r0, #0
	beq _021E84D6
_021E8494:
	ldr r0, _021E84E4 ; =0x000005DC
	bl PlaySE
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	mov r0, #3
	str r0, [r5]
	b _021E84D6
_021E84B8:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E84D6
	mov r0, #4
	str r0, [r5]
	b _021E84D6
_021E84C6:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021E84CC:
	ldr r0, _021E84E8 ; =_021EA5E4
	cmp r0, #0
	beq _021E84D6
	bl GF_AssertFail
_021E84D6:
	ldr r0, [r4, #0x14]
	bl ov98_0221E6CC
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021E84E4: .word 0x000005DC
_021E84E8: .word _021EA5E4
	thumb_func_end PokeathlonEventRecord_Main

