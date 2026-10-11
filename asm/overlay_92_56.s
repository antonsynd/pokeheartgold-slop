	.include "asm/macros.inc"
	.include "overlay_92.inc"
	.include "global.inc"
	.public ov92_022632B4

	.text

	thumb_func_start ov92_022632B4
ov92_022632B4: ; 0x022632B4
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	ldr r0, [r4]
	add r1, r6, #0
	bl _fdiv
	str r0, [r5]
	ldr r0, [r4, #4]
	add r1, r6, #0
	bl _fdiv
	str r0, [r5, #4]
	ldr r0, [r4, #8]
	add r1, r6, #0
	bl _fdiv
	str r0, [r5, #8]
	ldr r0, [r4, #0xc]
	add r1, r6, #0
	bl _fdiv
	str r0, [r5, #0xc]
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov92_022632B4

