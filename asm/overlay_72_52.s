	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_022387D0
	.public ov72_02239FBC

	.text

	thumb_func_start ov72_02239FBC
ov72_02239FBC: ; 0x02239FBC
	push {r4, lr}
	add r4, r0, #0
	bl ov00_021EC8D8
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov72_022387D0
	mov r0, #0x2b
	str r0, [r4, #0x1c]
	mov r0, #3
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov72_02239FBC

