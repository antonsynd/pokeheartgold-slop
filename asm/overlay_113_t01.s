	.include "asm/macros.inc"
	.include "overlay_113.inc"
	.include "global.inc"
	.public UnownReport_Main
	.extern ov113_021E5BC4
	.extern ov113_021E5C0C
	.extern ov113_021E5C60
	.extern ov113_021E5C68

	.text

	.text
	thumb_func_start UnownReport_Main
UnownReport_Main: ; 0x021E5968
	push {r3, r4, r5, lr}
	add r4, r1, #0
	bl OverlayManager_GetData
	ldr r1, [r4]
	add r5, r0, #0
	cmp r1, #4
	bhi _021E59B2
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E5984: ; jump table
	.short _021E598E - _021E5984 - 2 ; case 0
	.short _021E5996 - _021E5984 - 2 ; case 1
	.short _021E599E - _021E5984 - 2 ; case 2
	.short _021E59A6 - _021E5984 - 2 ; case 3
	.short _021E59AE - _021E5984 - 2 ; case 4
_021E598E:
	bl ov113_021E5BC4
	str r0, [r4]
	b _021E59B2
_021E5996:
	bl ov113_021E5C0C
	str r0, [r4]
	b _021E59B2
_021E599E:
	bl ov113_021E5C60
	str r0, [r4]
	b _021E59B2
_021E59A6:
	bl ov113_021E5C68
	str r0, [r4]
	b _021E59B2
_021E59AE:
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E59B2:
	add r0, r5, #0
	add r0, #0xb0
	ldr r0, [r0]
	bl SpriteSystem_DrawSprites
	add r5, #0xb4
	ldr r0, [r5]
	bl SpriteSystem_DrawSprites
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end UnownReport_Main

