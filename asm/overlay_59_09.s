	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_02238578
	.public ov59_022385AC

	.text

	thumb_func_start ov59_02238578
ov59_02238578: ; 0x02238578
	push {r3, lr}
	bl ov59_022385AC
	cmp r0, #0
	beq _02238586
	mov r0, #4
	pop {r3, pc}
_02238586:
	mov r0, #0xe
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov59_02238578

