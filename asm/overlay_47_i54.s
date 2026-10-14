	.include "macros.inc"
	.include "overlay_47.inc"
	.include "global.inc"
	.public ov47_02259DA4

	.text

	.text
	thumb_func_start ov47_02259DA4
ov47_02259DA4: ; 0x02259DA4
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #3
	blo _02259DB4
	bl GF_AssertFail
_02259DB4:
	lsl r2, r4, #2
	mov r1, #0
	ldr r2, [r5, r2]
	add r0, r6, #0
	add r3, r1, #0
	bl _ll_mul
	ldr r2, [r5, #0xc]
	ldr r3, [r5, #0x10]
	bl _ll_udiv
	pop {r4, r5, r6, pc}
	thumb_func_end ov47_02259DA4

