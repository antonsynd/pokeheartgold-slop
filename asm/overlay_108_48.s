	.include "asm/macros.inc"
	.include "overlay_108.inc"
	.include "global.inc"
	.public ov108_021E83F0
	.extern ov108_021E853C
	.extern ov108_021EA97C

	.text

	.text
	thumb_func_start ov108_021E83F0
ov108_021E83F0: ; 0x021E83F0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0xd3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021E8442
	bl SpriteManager_New
	mov r1, #0x35
	lsl r1, r1, #4
	str r0, [r4, r1]
	sub r0, r1, #4
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #0x8c
	bl SpriteSystem_InitSprites
	mov r1, #0xd3
	mov r0, #0
	lsl r1, r1, #2
	str r0, [sp]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	ldr r2, _021E8448 ; =ov108_021EA97C
	mov r3, #2
	bl sub_0200D2A4
	mov r0, #0x35
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl SpriteManager_GetSpriteList
	add r1, r0, #0
	mov r0, #0xd2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov108_021E853C
_021E8442:
	add sp, #4
	pop {r3, r4, pc}
	nop
_021E8448: .word ov108_021EA97C
	thumb_func_end ov108_021E83F0

