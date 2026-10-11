	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_02260CE0

	.text

	thumb_func_start ov91_02260CE0
ov91_02260CE0: ; 0x02260CE0
	push {lr}
	sub sp, #0xc
	lsl r1, r1, #0xc
	str r1, [sp]
	mov r1, #2
	lsl r2, r2, #0xc
	lsl r1, r1, #0x14
	add r1, r2, r1
	str r1, [sp, #4]
	ldr r0, [r0, #4]
	add r1, sp, #0
	bl Sprite_SetMatrix
	add sp, #0xc
	pop {pc}
	.balign 4, 0
	thumb_func_end ov91_02260CE0

