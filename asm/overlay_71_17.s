	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_02247340

	.text

	.text
	thumb_func_start ov71_02247340
ov71_02247340: ; 0x02247340
	push {r4, lr}
	sub sp, #0x20
	ldr r0, [r0, #0x18]
	str r0, [sp]
	lsl r0, r2, #0xc
	str r0, [sp, #8]
	lsl r0, r3, #0xc
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x28]
	str r1, [sp, #4]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x18]
	mov r0, #0x38
	str r0, [sp, #0x1c]
	add r0, sp, #0
	bl Sprite_Create
	add r4, r0, #0
	beq _0224737C
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl Sprite_SetAnimSpeed
_0224737C:
	add r0, r4, #0
	add sp, #0x20
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov71_02247340

