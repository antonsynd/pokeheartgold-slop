	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E94A4
	.public ov102_021EA20C
	.public ov102_021EC294

	.text

	thumb_func_start ov102_021EA20C
ov102_021EA20C: ; 0x021EA20C
	push {r4, lr}
	add r4, r1, #0
	mov r0, #0x1f
	ldr r1, [r4]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	mov r2, #0
	bl ov102_021EC294
	add r0, r4, #0
	bl ov102_021E94A4
	pop {r4, pc}
	thumb_func_end ov102_021EA20C

