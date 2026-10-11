	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0223615C
	.public ov40_0223D540

	.text

	thumb_func_start ov40_0223615C
ov40_0223615C: ; 0x0223615C
	push {r4, lr}
	mov r2, #0x86
	lsl r2, r2, #4
	ldr r1, [r1]
	ldr r4, [r0, r2]
	cmp r1, #1
	beq _02236180
	bl ov40_0223D540
	mov r1, #0x8f
	lsl r1, r1, #2
	add r1, r4, r1
	mov r2, #5
	bl ov39_02227E8C
	mov r1, #0xb9
	lsl r1, r1, #2
	str r0, [r4, r1]
_02236180:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov40_0223615C

