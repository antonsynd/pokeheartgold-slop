	.include "macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public PokeathlonMedals_Main
	.extern _021EA5D8
	.extern ov99_021E7598
	.extern ov99_021E7794
	.extern ov99_021E7BC8

	.text

	.text
	thumb_func_start PokeathlonMedals_Main
PokeathlonMedals_Main: ; 0x021E794C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	bl OverlayManager_GetData
	ldr r1, [r5]
	add r4, r0, #0
	cmp r1, #4
	bhi _021E7A28
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E796A: ; jump table
	.short _021E7974 - _021E796A - 2 ; case 0
	.short _021E7990 - _021E796A - 2 ; case 1
	.short _021E799E - _021E796A - 2 ; case 2
	.short _021E7A14 - _021E796A - 2 ; case 3
	.short _021E7A22 - _021E796A - 2 ; case 4
_021E7974:
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
	b _021E7A32
_021E7990:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E7A32
	mov r0, #2
	str r0, [r5]
	b _021E7A32
_021E799E:
	mov r1, #0xfd
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	lsl r1, r1, #2
	lsr r1, r1, #0x1f
	beq _021E79BA
	bl ov99_021E7794
	mov r1, #0xfd
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	ldr r0, _021E7A40 ; =0xDFFFFFFF
	and r0, r2
	str r0, [r4, r1]
_021E79BA:
	mov r0, #0xfd
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	beq _021E79DE
	add r0, r4, #0
	bl ov99_021E7598
	cmp r0, #0
	beq _021E7A32
	mov r1, #0xfd
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	ldr r0, _021E7A44 ; =0xEFFFFFFF
	and r0, r2
	str r0, [r4, r1]
	b _021E7A32
_021E79DE:
	add r0, r4, #0
	bl ov99_021E7BC8
	cmp r0, #0
	bne _021E79F0
	bl ov98_0221EF24
	cmp r0, #0
	beq _021E7A32
_021E79F0:
	ldr r0, _021E7A48 ; =0x000005DC
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
	b _021E7A32
_021E7A14:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E7A32
	mov r0, #4
	str r0, [r5]
	b _021E7A32
_021E7A22:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021E7A28:
	ldr r0, _021E7A4C ; =_021EA5D8
	cmp r0, #0
	beq _021E7A32
	bl GF_AssertFail
_021E7A32:
	ldr r0, _021E7A50 ; =0x00000404
	ldr r0, [r4, r0]
	bl ov98_0221E6CC
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_021E7A40: .word 0xDFFFFFFF
_021E7A44: .word 0xEFFFFFFF
_021E7A48: .word 0x000005DC
_021E7A4C: .word _021EA5D8
_021E7A50: .word 0x00000404
	thumb_func_end PokeathlonMedals_Main

