	.include "asm/macros.inc"
	.include "overlay_48.inc"
	.include "global.inc"
	.public ov48_0225AA38

	.text

	.text
	thumb_func_start ov48_0225AA38
ov48_0225AA38: ; 0x0225AA38
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #3
	blo _0225AA48
	bl GF_AssertFail
_0225AA48:
	add r0, r5, r4
	strb r6, [r0, #4]
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov48_0225AA38

