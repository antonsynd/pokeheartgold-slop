	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021EC988
	.public ov103_021ED2D4

	.text

	thumb_func_start ov103_021EC988
ov103_021EC988: ; 0x021EC988
	push {r4, lr}
	add r4, r1, #0
	bl OverlayManager_GetData
	add r1, r4, #0
	bl ov103_021ED2D4
	cmp r0, #0
	bne _021EC99E
	mov r0, #1
	pop {r4, pc}
_021EC99E:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov103_021EC988

