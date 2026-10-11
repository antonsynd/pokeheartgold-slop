	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021EA270
	.public ov102_021EA2B4
	.public ov102_021EB4D0

	.text

	thumb_func_start ov102_021EB4D0
ov102_021EB4D0: ; 0x021EB4D0
	push {r3, r4, lr}
	sub sp, #0x2c
	add r4, r0, #0
	mov r2, #0
	ldr r0, [r4]
	add r1, sp, #8
	add r3, r2, #0
	bl ov102_021EA270
	mov r0, #5
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	add r1, sp, #8
	mov r2, #0xdc
	mov r3, #0x78
	bl ov102_021EA2B4
	str r0, [r4, #0xc]
	mov r1, #2
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl Sprite_SetDrawFlag
	add sp, #0x2c
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov102_021EB4D0

