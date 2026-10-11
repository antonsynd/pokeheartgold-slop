	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_0225DB18

	.text

	thumb_func_start ov91_0225DB18
ov91_0225DB18: ; 0x0225DB18
	push {r4, lr}
	add r4, r1, #0
	add r0, #0xc
	mov r1, #0
	mov r2, #1
	mov r3, #4
	bl DrawFrameAndWindow1
	mov r0, #2
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov90_02258C8C
	pop {r4, pc}
	thumb_func_end ov91_0225DB18

