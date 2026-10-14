	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_02239F18
	.extern ov59_0223A268
	.extern ov59_0223A2D0

	.text

	.text
	thumb_func_start ov59_02239F18
ov59_02239F18: ; 0x02239F18
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #0
	str r1, [sp]
	add r1, sp, #0
	add r4, r0, #0
	bl ov59_0223A2D0
	ldr r1, [sp]
	cmp r1, #0
	bne _02239F34
	add r0, r4, #0
	bl ov59_0223A268
_02239F34:
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov59_02239F18

