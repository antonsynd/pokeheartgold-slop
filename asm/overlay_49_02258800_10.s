	.include "asm/macros.inc"
	.include "overlay_49_02258800.inc"
	.include "global.inc"
	.public ov49_02258C1C
	.public ov49_0225927C

    .text

	thumb_func_start ov49_0225927C
ov49_0225927C: ; 0x0225927C
	push {r3, r4, lr}
	sub sp, #4
	add r4, sp, #0
	strh r1, [r4]
	strb r2, [r4, #2]
	add r1, sp, #0
	strb r3, [r4, #3]
	bl ov49_02258C1C
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov49_0225927C

