	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0223992C
	.extern ov40_022453A0

	.text

	.text
	thumb_func_start ov40_0223992C
ov40_0223992C: ; 0x0223992C
	push {r3, r4, r5}
	sub sp, #0xc
	ldr r5, _02239950 ; =ov40_022453A0
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #0
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5]
	str r0, [r4]
	ldr r0, [r2, #0x14]
	lsl r0, r0, #2
	ldr r0, [r3, r0]
	str r0, [r2, #0x20]
	add sp, #0xc
	pop {r3, r4, r5}
	bx lr
	nop
_02239950: .word ov40_022453A0
	thumb_func_end ov40_0223992C

