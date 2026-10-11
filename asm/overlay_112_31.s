#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021E7830
	.extern ov112_021E9C94
	.extern ov112_021FF54C
	.extern ov112_021FF550
	.extern ov112_021FF554
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021E7830
ov112_021E7830: ; 0x021E7830
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	bl OverlayManager_GetData
	ldr r1, [r5]
	add r4, r0, #0
	cmp r1, #4
	bhi _021E78E4
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E784E: ; jump table
	.short _021E7858 - _021E784E - 2 ; case 0
	.short _021E7866 - _021E784E - 2 ; case 1
	.short _021E7878 - _021E784E - 2 ; case 2
	.short _021E7898 - _021E784E - 2 ; case 3
	.short _021E78D6 - _021E784E - 2 ; case 4
_021E7858:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _021E78E4
	mov r0, #1
	str r0, [r5]
	b _021E78E4
_021E7866:
	ldr r2, [r4]
	mov r1, #0xc
	add r3, r2, #0
	mul r3, r1
	ldr r1, _021E78F8 ; =ov112_021FF54C
	ldr r1, [r1, r3]
	blx r1
	str r0, [r5]
	b _021E78E4
_021E7878:
	ldr r2, [r4]
	mov r1, #0xc
	add r3, r2, #0
	mul r3, r1
	ldr r1, _021E78FC ; =ov112_021FF550
	ldr r1, [r1, r3]
	blx r1
	str r0, [r5]
	ldr r3, _021E7900 ; =0x0001F2E0
	ldr r0, [r4, #0x18]
	ldrh r3, [r4, r3]
	mov r1, #5
	mov r2, #0
	bl BgSetPosTextAndCommit
	b _021E78E4
_021E7898:
	ldr r2, [r4]
	mov r1, #0xc
	add r3, r2, #0
	mul r3, r1
	ldr r1, _021E7904 ; =ov112_021FF554
	ldr r1, [r1, r3]
	blx r1
	str r0, [r5]
	ldr r0, [r4, #4]
	cmp r0, #0xb
	bne _021E78CC
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x9a
	str r0, [sp, #8]
	mov r0, #0
	ldr r3, _021E7908 ; =0x00007FFF
	add r1, r0, #0
	add r2, r0, #0
	bl BeginNormalPaletteFade
	mov r0, #4
	str r0, [r5]
	b _021E78E4
_021E78CC:
	str r0, [r4]
	add r0, r4, #0
	bl ov112_021E9C94
	b _021E78E4
_021E78D6:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _021E78E4
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021E78E4:
	ldr r0, _021E790C ; =0x0001E52C
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021E78F0
	bl SpriteSystem_DrawSprites
_021E78F0:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021E78F8: .word ov112_021FF54C
_021E78FC: .word ov112_021FF550
_021E7900: .word 0x0001F2E0
_021E7904: .word ov112_021FF554
_021E7908: .word 0x00007FFF
_021E790C: .word 0x0001E52C
	thumb_func_end ov112_021E7830

