	.include "asm/macros.inc"
	.include "overlay_82.inc"
	.include "global.inc"
	.public ov82_0223FB08

	.text

	.text
	thumb_func_start ov82_0223FB08
ov82_0223FB08: ; 0x0223FB08
	push {r4, r5, r6, lr}
	sub sp, #0x80
	add r5, r0, #0
	mov r0, #0
	str r1, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	add r4, r3, #0
	str r0, [sp, #8]
	mov r3, #0
	str r3, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, #0x4b
	lsl r0, r0, #2
	add r6, r2, #0
	ldr r2, [r5, r0]
	str r2, [sp, #0x14]
	add r2, r0, #4
	ldr r2, [r5, r2]
	str r2, [sp, #0x18]
	add r2, r0, #0
	add r2, #8
	ldr r2, [r5, r2]
	add r0, #0xc
	str r2, [sp, #0x1c]
	ldr r0, [r5, r0]
	add r2, r1, #0
	str r0, [sp, #0x20]
	str r3, [sp, #0x24]
	str r3, [sp, #0x28]
	add r0, sp, #0x5c
	add r3, r1, #0
	bl CreateSpriteResourcesHeader
	ldr r0, [r5]
	mov r1, #0
	str r0, [sp, #0x2c]
	add r0, sp, #0x5c
	str r0, [sp, #0x30]
	mov r0, #1
	lsl r0, r0, #0xc
	str r1, [sp, #0x34]
	str r1, [sp, #0x38]
	str r1, [sp, #0x3c]
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	add r0, sp, #0x2c
	strh r1, [r0, #0x20]
	str r4, [sp, #0x50]
	add r0, sp, #0x80
	ldrb r0, [r0, #0x10]
	cmp r0, #0
	bne _0223FB7C
	mov r0, #1
	str r0, [sp, #0x54]
	b _0223FB80
_0223FB7C:
	mov r0, #2
	str r0, [sp, #0x54]
_0223FB80:
	mov r0, #0x69
	str r0, [sp, #0x58]
	add r0, sp, #0x80
	ldrb r0, [r0, #0x10]
	cmp r0, #1
	bne _0223FB96
	mov r0, #3
	ldr r1, [sp, #0x38]
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [sp, #0x38]
_0223FB96:
	add r0, sp, #0x2c
	bl Sprite_CreateAffine
	mov r1, #1
	add r4, r0, #0
	bl Sprite_SetAnimActiveFlag
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl Sprite_SetAnimSpeed
	add r0, r4, #0
	add r1, r6, #0
	bl Sprite_SetAnimCtrlSeq
	add r0, r4, #0
	add sp, #0x80
	pop {r4, r5, r6, pc}
	thumb_func_end ov82_0223FB08

