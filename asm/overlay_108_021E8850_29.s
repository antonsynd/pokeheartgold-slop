	.include "asm/macros.inc"
	.include "overlay_108.inc"
	.include "global.inc"
	.public ov108_021E9E10
	.extern ov108_021EAAB0
	.extern ov108_021EAAD0
	.extern ov108_021EABA8

	.text

	.text
	thumb_func_start ov108_021E9E10
ov108_021E9E10: ; 0x021E9E10
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r1, [r4]
	mov r0, #0x20
	bl GF_CreateVramTransferManager
	ldr r0, [r4]
	bl SpriteSystem_Alloc
	ldr r1, _021E9E70 ; =0x0000043C
	ldr r2, _021E9E74 ; =ov108_021EAAD0
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	ldr r1, _021E9E78 ; =ov108_021EABA8
	mov r3, #1
	bl SpriteSystem_Init
	ldr r0, _021E9E70 ; =0x0000043C
	ldr r0, [r4, r0]
	bl SpriteManager_New
	mov r1, #0x11
	lsl r1, r1, #6
	str r0, [r4, r1]
	sub r0, r1, #4
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #4
	bl SpriteSystem_InitSprites
	mov r3, #0
	ldr r1, _021E9E70 ; =0x0000043C
	str r3, [sp]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	ldr r2, _021E9E7C ; =ov108_021EAAB0
	bl sub_0200D2A4
	ldr r0, [r4]
	bl thunk_ClearMainOAM
	ldr r0, [r4]
	bl thunk_ClearSubOAM
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_021E9E70: .word 0x0000043C
_021E9E74: .word ov108_021EAAD0
_021E9E78: .word ov108_021EABA8
_021E9E7C: .word ov108_021EAAB0
	thumb_func_end ov108_021E9E10

