	.include "asm/macros.inc"
	.include "overlay_111.inc"
	.include "global.inc"
	.public ov111_021E6738
	.extern ov111_021E6268
	.extern ov111_021E63D0
	.extern ov111_021E64C8

	.text

	.text
	thumb_func_start ov111_021E6738
ov111_021E6738: ; 0x021E6738
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	ldr r1, [sp, #0x18]
	add r5, r0, #0
	str r1, [sp]
	add r1, r2, #0
	add r2, r3, #0
	add r3, r4, #0
	bl ov111_021E63D0
	add r6, r0, #0
	mov r2, #0x14
	ldrsb r2, [r5, r2]
	ldr r0, [r6, #8]
	ldr r1, [r6]
	ldr r3, [r5]
	bl ov111_021E6268
	ldr r1, [r5, #8]
	add r0, r6, #0
	bl ov111_021E64C8
	lsl r0, r4, #2
	add r0, r5, r0
	str r6, [r0, #0x18]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov111_021E6738

