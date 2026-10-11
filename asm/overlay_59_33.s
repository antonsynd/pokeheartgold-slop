	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_02239938
	.public ov59_022399F0
	.public ov59_02239A24

	.text

	thumb_func_start ov59_022399F0
ov59_022399F0: ; 0x022399F0
	push {r4, lr}
	add r4, r0, #0
	bl ov59_02239938
	add r0, r4, #0
	bl ov59_02239A24
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	pop {r4, pc}
	thumb_func_end ov59_022399F0

