	.include "macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_0223B8E4
	.extern ov59_0223C99C
	.extern ov59_0223CA90
	.extern ov59_0223CB08
	.extern ov59_0223CB30

	.text

	.text
	thumb_func_start ov59_0223B8E4
ov59_0223B8E4: ; 0x0223B8E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r6, _0223BA34 ; =ov59_0223CA90
	mov r7, #0
	add r4, r5, #0
_0223B8F0:
	mov r0, #0x96
	mov r1, #0x97
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl SpriteSystem_CreateSpriteFromResourceHeader
	mov r1, #0x26
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	mov r0, #0x26
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	mov r0, #0x26
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl Sprite_SetPriority
	add r7, r7, #1
	add r6, #0x28
	add r4, r4, #4
	cmp r7, #2
	ble _0223B8F0
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #2
	bl Sprite_SetAffineOverwriteMode
	mov r0, #0
	str r0, [sp]
	ldr r0, _0223BA38 ; =ov59_0223C99C
	str r0, [sp, #0xc]
	mov r0, #0x28
	str r0, [sp, #8]
	mov r0, #0x38
	str r0, [sp, #4]
_0223B95C:
	ldr r0, [sp, #0xc]
	mov r1, #0x96
	ldr r0, [r0]
	lsl r1, r1, #2
	add r0, r0, #3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	add r4, r5, r0
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	ldr r2, _0223BA3C ; =ov59_0223CB08
	bl SpriteSystem_CreateSpriteFromResourceHeader
	mov r1, #0x26
	ldr r2, [sp, #8]
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	lsl r2, r2, #0x10
	mov r1, #0x50
	asr r2, r2, #0x10
	bl Sprite_SetPositionXY
	mov r0, #0x26
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	mov r0, #0x26
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	ldr r0, [sp, #4]
	mov r7, #0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	mov r6, #0x40
	str r0, [sp, #0x10]
_0223B9B0:
	ldr r0, [sp, #0xc]
	ldr r2, _0223BA40 ; =ov59_0223CB30
	ldr r1, [r0]
	lsl r0, r1, #2
	add r0, r1, r0
	add r0, #8
	add r0, r7, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	add r4, r5, r0
	mov r0, #0x96
	mov r1, #0x97
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	bl SpriteSystem_CreateSpriteFromResourceHeader
	mov r1, #0x26
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r1, #0
	lsl r1, r6, #0x10
	ldr r0, [r4, r0]
	ldr r2, [sp, #0x10]
	asr r1, r1, #0x10
	bl Sprite_SetPositionXY
	mov r0, #0x26
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	mov r0, #0x26
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	mov r0, #0x26
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #2
	bl Sprite_SetAffineOverwriteMode
	add r7, r7, #1
	add r6, #0x10
	cmp r7, #5
	blt _0223B9B0
	ldr r0, [sp, #0xc]
	add r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r0, #0x20
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r0, #0x20
	str r0, [sp, #4]
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #5
	blt _0223B95C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0223BA34: .word ov59_0223CA90
_0223BA38: .word ov59_0223C99C
_0223BA3C: .word ov59_0223CB08
_0223BA40: .word ov59_0223CB30
	thumb_func_end ov59_0223B8E4

