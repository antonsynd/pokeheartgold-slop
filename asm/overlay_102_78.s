	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021EB1E0
	.public ov102_021EB29C

	.text

	thumb_func_start ov102_021EB1E0
ov102_021EB1E0: ; 0x021EB1E0
	push {r4, lr}
	add r4, r0, #0
	bl ov102_021EB29C
	ldr r0, [r4, #0x14]
	bl DestroyMsgData
	add r0, r4, #0
	bl Heap_Free
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov102_021EB1E0

