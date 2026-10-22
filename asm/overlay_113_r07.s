	.include "macros.inc"
	.include "overlay_113.inc"
	.include "global.inc"
	.public ov113_021E5B70
	.extern ov113_021E5CF8
	.extern ov113_021E5D4C

	.text

	.text
	thumb_func_start ov113_021E5B70
ov113_021E5B70: ; 0x021E5B70
	push {r4, lr}
	add r4, r0, #0
	ldrh r1, [r4, #0x10]
	cmp r1, #0
	beq _021E5B80
	cmp r1, #1
	beq _021E5B8C
	b _021E5BAC
_021E5B80:
	bl ov113_021E5CF8
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
	b _021E5BAC
_021E5B8C:
	bl ov113_021E5D4C
	bl EnableTouchPad
	mov r0, #1
	bl InitializeTouchPad
	mov r1, #0
	mov r0, #0x45
	add r2, r1, #0
	bl Sound_SetSceneAndPlayBGM
	mov r0, #0
	strh r0, [r4, #0x10]
	mov r0, #1
	pop {r4, pc}
_021E5BAC:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov113_021E5B70

