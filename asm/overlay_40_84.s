	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222D6D0
	.public ov40_022309CC

	.text

	thumb_func_start ov40_022309CC
ov40_022309CC: ; 0x022309CC
	push {r4, lr}
	add r4, r0, #0
	bl ov40_0222D6D0
	ldr r0, [r4, #4]
	bl Sprite_DeleteAndFreeResources
	pop {r4, pc}
	thumb_func_end ov40_022309CC

