	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_0223BD4C
	.public ov59_0223BE18

	.text

	thumb_func_start ov59_0223BE18
ov59_0223BE18: ; 0x0223BE18
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	add r2, r6, #0
	ldr r1, [r6]
	ldr r3, [r5]
	add r0, #0x16
	add r2, #0x10
	bl CalcMonPokeathlonStars
	mov r4, #0
_0223BE30:
	lsl r2, r4, #0x18
	add r0, r5, #0
	add r1, r6, #0
	lsr r2, r2, #0x18
	bl ov59_0223BD4C
	add r4, r4, #1
	cmp r4, #5
	blt _0223BE30
	pop {r4, r5, r6, pc}
	thumb_func_end ov59_0223BE18

