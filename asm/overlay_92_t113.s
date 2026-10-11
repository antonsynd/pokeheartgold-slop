	.include "asm/macros.inc"
	.include "overlay_92.inc"
	.include "global.inc"
	.public ov92_02263218

	.text

	.text
	thumb_func_start ov92_02263218
ov92_02263218: ; 0x02263218
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r1, r0, #0
	bl _fadd
	add r4, r0, #0
	ldr r0, [r5, #8]
	add r1, r0, #0
	bl _fadd
	add r6, r0, #0
	ldr r0, [r5]
	add r1, r0, #0
	bl _fmul
	add r7, r0, #0
	ldr r0, [r5, #4]
	add r1, r0, #0
	bl _fadd
	add r1, r0, #0
	add r0, r7, #0
	bl _fadd
	add r1, r0, #0
	add r0, r6, #0
	bl _fadd
	add r1, r0, #0
	add r0, r4, #0
	bl _fadd
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov92_02263218

