	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_0223B804
	.public ov59_0223B8B0
	.public ov59_0223B8E4

	.text

	thumb_func_start ov59_0223B8B0
ov59_0223B8B0: ; 0x0223B8B0
	push {r4, lr}
	add r4, r0, #0
	bl ov59_0223B804
	add r0, r4, #0
	bl ov59_0223B8E4
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	pop {r4, pc}
	thumb_func_end ov59_0223B8B0

