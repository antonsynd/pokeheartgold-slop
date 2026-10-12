	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0221C74C

	.text

	.text
	thumb_func_start ov07_0221C74C
ov07_0221C74C: ; 0x0221C74C
	ldr r1, [r0, #0x18]
	mov r3, #0
	add r1, r1, #4
	str r1, [r0, #0x18]
	add r2, r3, #0
_0221C756:
	add r1, r0, #0
	add r1, #0x94
	add r3, r3, #1
	add r0, r0, #4
	str r2, [r1]
	cmp r3, #0xa
	blt _0221C756
	bx lr
	.balign 4, 0
	thumb_func_end ov07_0221C74C

