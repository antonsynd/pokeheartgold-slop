	.include "asm/macros.inc"
	.include "overlay_64.inc"
	.include "global.inc"
	.public HallOfFameShowcase_Main
	.public ov64_021E5A88
	.extern ov64_021E605C
	.extern ov64_021E6288
	.extern ov64_021E62C8

	.text

	.text
	thumb_func_start HallOfFameShowcase_Main
HallOfFameShowcase_Main: ; 0x021E5A18
	push {r3, r4, r5, lr}
	add r4, r1, #0
	bl OverlayManager_GetData
	ldr r1, [r4]
	add r5, r0, #0
	cmp r1, #3
	bhi _021E5A74
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E5A34: ; jump table
	.short _021E5A3C - _021E5A34 - 2 ; case 0
	.short _021E5A48 - _021E5A34 - 2 ; case 1
	.short _021E5A58 - _021E5A34 - 2 ; case 2
	.short _021E5A68 - _021E5A34 - 2 ; case 3
_021E5A3C:
	bl ov64_021E6288
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E5A74
_021E5A48:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _021E5A74
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E5A74
_021E5A58:
	bl ov64_021E62C8
	cmp r0, #0
	bne _021E5A74
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E5A74
_021E5A68:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _021E5A74
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E5A74:
	add r0, r5, #0
	bl ov64_021E605C
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl SpriteSystem_DrawSprites
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end HallOfFameShowcase_Main

	thumb_func_start ov64_021E5A88
ov64_021E5A88: ; 0x021E5A88
	push {r3, lr}
	ldr r0, [r0, #4]
	bl DoScheduledBgGpuUpdates
	bl SpriteSystem_TransferOam
	ldr r3, _021E5AA4 ; =0x027E0000
	ldr r1, _021E5AA8 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r3, pc}
	nop
_021E5AA4: .word 0x027E0000
_021E5AA8: .word 0x00003FF8
	thumb_func_end ov64_021E5A88

