	.include "asm/macros.inc"
	.include "overlay_37.inc"
	.include "global.inc"
	.public ov37_021E5A84
	.extern ov37_021E741C
	.extern ov37_021E7478
	.extern ov37_021E75C4
	.extern ov37_021E76F0
	.extern ov37_021E784C
	.extern ov37_021E7D20

	.text

	.text
	thumb_func_start ov37_021E5A84
ov37_021E5A84: ; 0x021E5A84
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	bl sub_0203769C
	cmp r0, #0
	bne _021E5AAA
	ldr r0, _021E5B80 ; =0x000093B4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021E5AAA
	bl sub_02033250
	ldr r1, _021E5B80 ; =0x000093B4
	ldr r2, [r4, r1]
	and r0, r2
	str r0, [r4, r1]
_021E5AAA:
	mov r0, #3
	ldr r1, [r5]
	lsl r0, r0, #8
	str r1, [r4, r0]
	ldr r1, [r5]
	add r0, r4, #0
	bl ov37_021E784C
	ldr r1, [r5]
	cmp r1, #3
	bhi _021E5B74
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E5ACC: ; jump table
	.short _021E5AD4 - _021E5ACC - 2 ; case 0
	.short _021E5B02 - _021E5ACC - 2 ; case 1
	.short _021E5B48 - _021E5ACC - 2 ; case 2
	.short _021E5B68 - _021E5ACC - 2 ; case 3
_021E5AD4:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E5B74
	bl sub_0203769C
	cmp r0, #0
	beq _021E5AFC
	bl ov37_021E75C4
	cmp r0, #2
	blt _021E5B74
	mov r1, #0
	mov r0, #0x80
	add r2, r1, #0
	bl sub_02037030
	mov r0, #1
	str r0, [r5]
	b _021E5B74
_021E5AFC:
	mov r0, #1
	str r0, [r5]
	b _021E5B74
_021E5B02:
	mov r0, #0xc1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	lsl r2, r0, #3
	ldr r0, _021E5B84 ; =ov37_021E7D20
	ldr r2, [r0, r2]
	cmp r2, #0
	beq _021E5B18
	add r0, r4, #0
	blx r2
	str r0, [r5]
_021E5B18:
	mov r0, #0x9e
	lsl r0, r0, #2
	ldr r2, _021E5B88 ; =0x000E0D0F
	add r0, r4, r0
	mov r1, #0
	add r3, r4, #0
	bl ov37_021E7478
	bl sub_0203769C
	cmp r0, #0
	bne _021E5B3E
	add r0, r4, #0
	bl ov37_021E76F0
	ldr r1, [r5]
	cmp r1, #1
	bne _021E5B3E
	str r0, [r5]
_021E5B3E:
	ldr r0, _021E5B8C ; =0x00004374
	add r0, r4, r0
	bl ov37_021E741C
	b _021E5B74
_021E5B48:
	mov r0, #0xc1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	lsl r3, r0, #3
	ldr r0, _021E5B84 ; =ov37_021E7D20
	ldr r2, [r0, r3]
	cmp r2, #0
	beq _021E5B74
	ldr r0, _021E5B90 ; =ov37_021E7D20 + 4
	ldr r0, [r0, r3]
	cmp r0, #0
	beq _021E5B74
	add r0, r4, #0
	blx r2
	str r0, [r5]
	b _021E5B74
_021E5B68:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E5B74
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E5B74:
	ldr r0, [r4, #0x34]
	bl SpriteList_RenderAndAnimateSprites
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021E5B80: .word 0x000093B4
_021E5B84: .word ov37_021E7D20
_021E5B88: .word 0x000E0D0F
_021E5B8C: .word 0x00004374
_021E5B90: .word ov37_021E7D20 + 4
	thumb_func_end ov37_021E5A84

