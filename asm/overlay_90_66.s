	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_0225A960
	.public ov90_0225B330
	.public ov90_0225B690

	.text

	thumb_func_start ov90_0225A960
ov90_0225A960: ; 0x0225A960
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x82
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov90_0225B690
	mov r0, #0x95
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl Heap_Free
	add r0, r4, #0
	bl ov90_0225B330
	pop {r4, pc}
	thumb_func_end ov90_0225A960

