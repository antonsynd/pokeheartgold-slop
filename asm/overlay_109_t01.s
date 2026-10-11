	.include "asm/macros.inc"
	.include "overlay_109.inc"
	.include "global.inc"
	.public PhotoAlbum_Main
	.extern ov109_021E5BAC
	.extern ov109_021E5BF4
	.extern ov109_021E5C40
	.extern ov109_021E5C48
	.extern ov109_021E5C68
	.extern ov109_021E5C88
	.extern ov109_021E5C90
	.extern ov109_021E5C98
	.extern ov109_021E5CAC

	.text

	.text
	thumb_func_start PhotoAlbum_Main
PhotoAlbum_Main: ; 0x021E5968
	push {r3, r4, r5, lr}
	add r4, r1, #0
	bl OverlayManager_GetData
	ldr r1, [r4]
	add r5, r0, #0
	cmp r1, #9
	bhi _021E59E4
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E5984: ; jump table
	.short _021E5998 - _021E5984 - 2 ; case 0
	.short _021E59A0 - _021E5984 - 2 ; case 1
	.short _021E59A8 - _021E5984 - 2 ; case 2
	.short _021E59B0 - _021E5984 - 2 ; case 3
	.short _021E59B8 - _021E5984 - 2 ; case 4
	.short _021E59C0 - _021E5984 - 2 ; case 5
	.short _021E59C8 - _021E5984 - 2 ; case 6
	.short _021E59D0 - _021E5984 - 2 ; case 7
	.short _021E59D8 - _021E5984 - 2 ; case 8
	.short _021E59E0 - _021E5984 - 2 ; case 9
_021E5998:
	bl ov109_021E5BAC
	str r0, [r4]
	b _021E59E4
_021E59A0:
	bl ov109_021E5C40
	str r0, [r4]
	b _021E59E4
_021E59A8:
	bl ov109_021E5C48
	str r0, [r4]
	b _021E59E4
_021E59B0:
	bl ov109_021E5C68
	str r0, [r4]
	b _021E59E4
_021E59B8:
	bl ov109_021E5C88
	str r0, [r4]
	b _021E59E4
_021E59C0:
	bl ov109_021E5C90
	str r0, [r4]
	b _021E59E4
_021E59C8:
	bl ov109_021E5C98
	str r0, [r4]
	b _021E59E4
_021E59D0:
	bl ov109_021E5CAC
	str r0, [r4]
	b _021E59E4
_021E59D8:
	bl ov109_021E5BF4
	str r0, [r4]
	b _021E59E4
_021E59E0:
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E59E4:
	add r5, #0x94
	ldr r0, [r5]
	bl SpriteSystem_DrawSprites
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end PhotoAlbum_Main

