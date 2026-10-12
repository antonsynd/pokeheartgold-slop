	.include "asm/macros.inc"
	.include "overlay_108.inc"
	.include "global.inc"
	.public ov108_021E9EB8
	.extern ov108_021EAC48

	.text

	.text
	thumb_func_start ov108_021E9EB8
ov108_021E9EB8: ; 0x021E9EB8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r4, _021E9EF8 ; =ov108_021EAC48
	mov r7, #0
	add r5, r6, #0
_021E9EC2:
	ldr r0, _021E9EFC ; =0x0000043C
	mov r1, #0x11
	lsl r1, r1, #6
	ldr r0, [r6, r0]
	ldr r1, [r6, r1]
	add r2, r4, #0
	bl SpriteSystem_CreateSpriteFromResourceHeader
	ldr r1, _021E9F00 ; =0x00000444
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	add r7, r7, #1
	add r4, #0x28
	add r5, r5, #4
	cmp r7, #4
	blt _021E9EC2
	ldr r0, _021E9F00 ; =0x00000444
	mov r1, #1
	ldr r0, [r6, r0]
	bl thunk_Sprite_SetPriority
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E9EF8: .word ov108_021EAC48
_021E9EFC: .word 0x0000043C
_021E9F00: .word 0x00000444
	thumb_func_end ov108_021E9EB8

