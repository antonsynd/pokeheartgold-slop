	.include "asm/macros.inc"
	.include "overlay_108.inc"
	.include "global.inc"
	.public ov108_021E733C
	.extern ov108_021E756C
	.extern ov108_021E8540
	.extern ov108_021EA7F8
	.extern ov108_021EA820
	.extern ov108_021EA848
	.extern ov108_021EA870

	.text

	.text
	thumb_func_start ov108_021E733C
ov108_021E733C: ; 0x021E733C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r4, #0
	add r7, r5, #0
	add r6, r5, #0
_021E7348:
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	str r1, [sp, #0x10]
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	add r3, r0, #0
	mov r0, #0x80
	str r0, [sp]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrb r0, [r7, #0x1c]
	ldr r2, [sp, #0x10]
	mov r1, #0x48
	mul r1, r2
	str r0, [sp, #8]
	mov r0, #1
	mov r2, #0x48
	mul r2, r3
	str r0, [sp, #0xc]
	mov r0, #0xd2
	lsl r0, r0, #2
	add r1, #0x38
	add r2, #0x38
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r5, r0]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	mov r3, #2
	bl ov108_021E8540
	mov r1, #0xdb
	lsl r1, r1, #2
	str r0, [r6, r1]
	add r4, r4, #1
	add r7, #0x7a
	add r6, r6, #4
	cmp r4, #6
	blt _021E7348
	mov r4, #0
	add r6, r5, #0
_021E73A4:
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	add r7, r1, #0
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	add r2, r0, #0
	mov r0, #0x80
	str r0, [sp]
	add r0, r4, #6
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, _021E74FC ; =0x000184DE
	mov r3, #0x48
	ldrb r1, [r5, r0]
	mov r0, #6
	mul r3, r2
	mul r0, r1
	add r0, r4, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #1
	mov r1, #0x50
	str r0, [sp, #0xc]
	mov r0, #0xd2
	mul r1, r7
	lsl r0, r0, #2
	add r1, #0x30
	add r3, #0x38
	lsl r2, r3, #0x10
	lsl r1, r1, #0x10
	ldr r0, [r5, r0]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	mov r3, #3
	bl ov108_021E8540
	mov r1, #0xe1
	lsl r1, r1, #2
	str r0, [r6, r1]
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #6
	blt _021E73A4
	sub r1, #0x38
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	ldr r2, _021E7500 ; =ov108_021EA7F8
	bl SpriteSystem_CreateSpriteFromResourceHeader
	mov r1, #0xd5
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #8
	sub r1, r1, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, _021E7500 ; =ov108_021EA7F8
	bl SpriteSystem_CreateSpriteFromResourceHeader
	mov r1, #0xd6
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #0xc
	sub r1, #8
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, _021E7500 ; =ov108_021EA7F8
	bl SpriteSystem_CreateSpriteFromResourceHeader
	mov r1, #0x36
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #0x14
	sub r1, #0x10
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, _021E7504 ; =ov108_021EA820
	bl SpriteSystem_CreateSpriteFromResourceHeader
	mov r1, #0xd7
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #0x10
	sub r1, #0xc
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, _021E7508 ; =ov108_021EA848
	bl SpriteSystem_CreateSpriteFromResourceHeader
	mov r1, #0xd9
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #0x18
	sub r1, #0x14
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, _021E750C ; =ov108_021EA870
	bl SpriteSystem_CreateSpriteFromResourceHeader
	mov r1, #0xda
	lsl r1, r1, #2
	str r0, [r5, r1]
	sub r1, #0x10
	ldr r0, [r5, r1]
	mov r1, #3
	bl thunk_Sprite_SetPriority
	mov r0, #0xd9
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #3
	bl thunk_Sprite_SetPriority
	mov r0, #0xda
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #3
	bl thunk_Sprite_SetPriority
	mov r0, #0x36
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl thunk_Sprite_SetPriority
	mov r0, #0x36
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #5
	bl thunk_Sprite_SetDrawPriority
	mov r0, #0xd5
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl thunk_Sprite_SetDrawFlag
	mov r0, #0xd6
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl thunk_Sprite_SetDrawFlag
	mov r0, #0x36
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl thunk_Sprite_SetDrawFlag
	mov r0, #0xd7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl thunk_Sprite_SetDrawFlag
	add r0, r5, #0
	bl ov108_021E756C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021E74FC: .word 0x000184DE
_021E7500: .word ov108_021EA7F8
_021E7504: .word ov108_021EA820
_021E7508: .word ov108_021EA848
_021E750C: .word ov108_021EA870
	thumb_func_end ov108_021E733C

