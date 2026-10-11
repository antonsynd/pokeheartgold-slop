	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021EA270
	.public ov102_021EA2B4
	.public ov102_021EB950

	.text

	thumb_func_start ov102_021EB950
ov102_021EB950: ; 0x021EB950
	push {r3, r4, lr}
	sub sp, #0x2c
	add r4, r0, #0
	mov r2, #0
	ldr r0, [r4]
	add r1, sp, #8
	add r3, r2, #0
	bl ov102_021EA270
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	add r1, sp, #8
	mov r2, #0x30
	mov r3, #0x40
	bl ov102_021EA2B4
	str r0, [r4, #0x5c]
	mov r1, #4
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [r4, #0x5c]
	mov r1, #0
	bl Sprite_SetDrawFlag
	add sp, #0x2c
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov102_021EB950

