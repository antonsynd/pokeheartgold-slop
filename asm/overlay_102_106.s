	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021EA270
	.public ov102_021EA2B4
	.public ov102_021EBD68

	.text

	thumb_func_start ov102_021EBD68
ov102_021EBD68: ; 0x021EBD68
	push {r3, r4, lr}
	sub sp, #0x2c
	add r4, r0, #0
	mov r2, #0
	ldr r0, [r4]
	add r1, sp, #8
	add r3, r2, #0
	bl ov102_021EA270
	mov r0, #3
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	add r1, sp, #8
	mov r2, #0x48
	mov r3, #0x38
	bl ov102_021EA2B4
	str r0, [r4, #0x30]
	mov r1, #8
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [r4, #0x30]
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r0, #4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	add r1, sp, #8
	mov r2, #0xf0
	mov r3, #0x50
	bl ov102_021EA2B4
	str r0, [r4, #0x34]
	mov r1, #0x18
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r0, #4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	add r1, sp, #8
	mov r2, #0xf0
	mov r3, #0x80
	bl ov102_021EA2B4
	str r0, [r4, #0x38]
	mov r1, #0x1a
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [r4, #0x38]
	mov r1, #0
	bl Sprite_SetDrawFlag
	add sp, #0x2c
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov102_021EBD68

