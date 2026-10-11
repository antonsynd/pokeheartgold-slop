	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222D294

	.text

	.text
	thumb_func_start ov40_0222D294
ov40_0222D294: ; 0x0222D294
	push {r3, lr}
	mov r3, #1
	lsl r3, r3, #0x14
	bl ManagedSprite_GetPositionXYWithSubscreenOffset
	pop {r3, pc}
	thumb_func_end ov40_0222D294

