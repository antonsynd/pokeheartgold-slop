	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E9090
	.public ov102_021E94A4
	.public ov102_021EA144
	.public ov102_021EB170

	.text

	thumb_func_start ov102_021EA144
ov102_021EA144: ; 0x021EA144
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #4]
	ldr r4, [r5]
	bl ov102_021E9090
	add r1, r0, #0
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov102_021EB170
	add r0, r5, #0
	bl ov102_021E94A4
	pop {r3, r4, r5, pc}
	thumb_func_end ov102_021EA144

