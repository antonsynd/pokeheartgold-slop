	.include "asm/macros.inc"
	.include "overlay_92.inc"
	.include "global.inc"
	.public ov92_02263108

	.text

	thumb_func_start ov92_02263108
ov92_02263108: ; 0x02263108
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r4, r2, #0
	add r6, r0, #0
	ldr r0, [r5]
	ldr r1, [r4]
	bl _fmul
	add r7, r0, #0
	ldr r0, [r5, #4]
	ldr r1, [r4, #4]
	bl _fmul
	add r1, r0, #0
	add r0, r7, #0
	bl _fsub
	add r7, r0, #0
	ldr r0, [r5, #8]
	ldr r1, [r4, #8]
	bl _fmul
	add r1, r0, #0
	add r0, r7, #0
	bl _fsub
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	ldr r1, [r4, #0xc]
	bl _fmul
	add r1, r0, #0
	add r0, r7, #0
	bl _fsub
	str r0, [r6]
	ldr r0, [r5, #8]
	ldr r1, [r4, #0xc]
	bl _fmul
	add r7, r0, #0
	ldr r0, [r5]
	ldr r1, [r4, #4]
	bl _fmul
	str r0, [sp]
	ldr r0, [r5, #4]
	ldr r1, [r4]
	bl _fmul
	add r1, r0, #0
	ldr r0, [sp]
	bl _fadd
	add r1, r0, #0
	add r0, r7, #0
	bl _fadd
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	ldr r1, [r4, #8]
	bl _fmul
	add r1, r0, #0
	add r0, r7, #0
	bl _fsub
	str r0, [r6, #4]
	ldr r0, [r5, #0xc]
	ldr r1, [r4, #4]
	bl _fmul
	add r7, r0, #0
	ldr r0, [r5, #8]
	ldr r1, [r4]
	bl _fmul
	str r0, [sp, #4]
	ldr r0, [r5]
	ldr r1, [r4, #8]
	bl _fmul
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	ldr r1, [r4, #0xc]
	bl _fmul
	add r1, r0, #0
	ldr r0, [sp, #8]
	bl _fsub
	add r1, r0, #0
	ldr r0, [sp, #4]
	bl _fadd
	add r1, r0, #0
	add r0, r7, #0
	bl _fadd
	str r0, [r6, #8]
	ldr r0, [r5, #0xc]
	ldr r1, [r4]
	bl _fmul
	str r0, [sp, #0xc]
	ldr r0, [r5]
	ldr r1, [r4, #0xc]
	bl _fmul
	add r7, r0, #0
	ldr r0, [r5, #4]
	ldr r1, [r4, #8]
	bl _fmul
	add r1, r0, #0
	add r0, r7, #0
	bl _fadd
	add r7, r0, #0
	ldr r0, [r5, #8]
	ldr r1, [r4, #4]
	bl _fmul
	add r1, r0, #0
	add r0, r7, #0
	bl _fsub
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	bl _fadd
	str r0, [r6, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov92_02263108

