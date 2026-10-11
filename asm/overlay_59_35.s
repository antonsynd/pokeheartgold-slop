	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_02239A24
	.public ov59_0223C6C4
	.public ov59_0223C7F0
	.public ov59_0223C840
	.public ov59_0223C8B8
	.public ov59_0223C8E0

	.text

	thumb_func_start ov59_02239A24
ov59_02239A24: ; 0x02239A24
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r6, _02239C5C ; =ov59_0223C7F0
	mov r7, #0
	add r4, r5, #0
_02239A2E:
	mov r0, #0x93
	mov r1, #0x25
	lsl r0, r0, #2
	lsl r1, r1, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl SpriteSystem_CreateSpriteFromResourceHeader
	mov r1, #0x95
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	mov r0, #0x95
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	add r7, r7, #1
	add r6, #0x28
	add r4, r4, #4
	cmp r7, #1
	ble _02239A2E
	mov r0, #0x96
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #2
	bl Sprite_SetPriority
	ldr r6, _02239C60 ; =ov59_0223C6C4
	mov r7, #0
_02239A76:
	add r0, r7, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	add r4, r5, r0
	mov r0, #0x93
	mov r1, #0x25
	lsl r0, r0, #2
	lsl r1, r1, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, _02239C64 ; =ov59_0223C840
	bl SpriteSystem_CreateSpriteFromResourceHeader
	mov r1, #0x95
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r6, r1]
	ldrsh r2, [r6, r2]
	ldr r0, [r4, r0]
	bl Sprite_SetPositionXY
	mov r0, #0x95
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl Sprite_SetAnimActiveFlag
	mov r0, #0x95
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	mov r0, #0x95
	lsl r0, r0, #2
	add r1, r7, #0
	ldr r0, [r4, r0]
	add r1, #9
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0x95
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	bl Sprite_SetPriority
	add r7, r7, #1
	add r6, r6, #4
	cmp r7, #7
	blt _02239A76
	add r0, r5, #0
	add r0, #0x44
	ldrb r0, [r0]
	cmp r0, #1
	beq _02239AF0
	cmp r0, #2
	beq _02239B56
	pop {r3, r4, r5, r6, r7, pc}
_02239AF0:
	ldr r7, _02239C5C ; =ov59_0223C7F0
	mov r4, #0
_02239AF4:
	add r0, r4, #0
	add r0, #9
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	add r6, r5, r0
	mov r0, #0x93
	mov r1, #0x25
	lsl r0, r0, #2
	lsl r1, r1, #4
	add r3, r4, #3
	mov r2, #0x28
	mul r2, r3
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r7, r2
	bl SpriteSystem_CreateSpriteFromResourceHeader
	mov r1, #0x95
	lsl r1, r1, #2
	str r0, [r6, r1]
	add r0, r1, #0
	ldr r0, [r6, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	mov r0, #0x95
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	add r4, r4, #1
	cmp r4, #2
	blt _02239AF4
	mov r0, #0x9e
	ldrb r1, [r5, #0x14]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, #0x10
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0x9e
	ldrb r1, [r5, #0x17]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r1, #5
	bl Sprite_SetPaletteOverride
	pop {r3, r4, r5, r6, r7, pc}
_02239B56:
	mov r0, #0x1c
	mov r7, #0
	mov r6, #0x70
	str r0, [sp]
_02239B5E:
	add r0, r7, #0
	add r0, #9
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	add r4, r5, r0
	mov r0, #0x93
	mov r1, #0x25
	lsl r0, r0, #2
	lsl r1, r1, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, _02239C68 ; =ov59_0223C8B8
	bl SpriteSystem_CreateSpriteFromResourceHeader
	mov r1, #0x95
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	lsl r2, r6, #0x10
	ldr r0, [r4, r0]
	mov r1, #0xa0
	asr r2, r2, #0x10
	bl Sprite_SetPositionXY
	mov r0, #0x95
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r0, #0x95
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	mov r0, #0x95
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [sp]
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0x95
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl Sprite_SetPriority
	ldr r0, [sp]
	add r7, r7, #1
	add r0, r0, #2
	add r6, #0x18
	str r0, [sp]
	cmp r7, #2
	blt _02239B5E
	mov r6, #0
_02239BCE:
	add r0, r6, #0
	add r0, #0xb
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	add r4, r5, r0
	mov r0, #0x93
	mov r1, #0x25
	lsl r0, r0, #2
	lsl r1, r1, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, _02239C6C ; =ov59_0223C8E0
	bl SpriteSystem_CreateSpriteFromResourceHeader
	mov r1, #0x95
	lsl r1, r1, #2
	str r0, [r4, r1]
	lsr r1, r6, #0x1f
	lsl r2, r6, #0x1f
	sub r2, r2, r1
	mov r0, #0x1f
	ror r2, r0
	add r7, r1, r2
	add r1, r6, r1
	asr r2, r1, #1
	mov r1, #0x15
	mvn r1, r1
	mul r1, r2
	mov r2, #0x28
	mov r0, #0x95
	mul r2, r7
	lsl r0, r0, #2
	add r1, #0x67
	add r2, #0x60
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r4, r0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl Sprite_SetPositionXY
	mov r0, #0x95
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r0, #0x95
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl Sprite_SetAnimActiveFlag
	mov r0, #0x95
	lsl r0, r0, #2
	lsl r1, r7, #1
	ldr r0, [r4, r0]
	add r1, #0x18
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0x95
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl Sprite_SetPriority
	add r6, r6, #1
	cmp r6, #4
	blt _02239BCE
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02239C5C: .word ov59_0223C7F0
_02239C60: .word ov59_0223C6C4
_02239C64: .word ov59_0223C840
_02239C68: .word ov59_0223C8B8
_02239C6C: .word ov59_0223C8E0
	thumb_func_end ov59_02239A24

