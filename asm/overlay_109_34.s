	.include "asm/macros.inc"
	.include "overlay_109.inc"
	.include "global.inc"
	.public ov109_021E6DE4
	.extern ov109_021E78A8
	.extern ov109_021E78C8
	.extern ov109_021E79D0

	.text

	.text
	thumb_func_start ov109_021E6DE4
ov109_021E6DE4: ; 0x021E6DE4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r1, [r4]
	mov r0, #0x20
	bl GF_CreateVramTransferManager
	ldr r0, [r4]
	bl SpriteSystem_Alloc
	add r1, r4, #0
	add r1, #0x90
	str r0, [r1]
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0]
	ldr r1, _021E6E58 ; =ov109_021E79D0
	ldr r2, _021E6E5C ; =ov109_021E78C8
	mov r3, #3
	bl SpriteSystem_Init
	ldr r0, [r4]
	bl thunk_ClearMainOAM
	ldr r0, [r4]
	bl thunk_ClearSubOAM
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0]
	bl SpriteManager_New
	add r1, r4, #0
	add r1, #0x94
	str r0, [r1]
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x90
	add r1, #0x94
	ldr r0, [r0]
	ldr r1, [r1]
	mov r2, #5
	bl SpriteSystem_InitSprites
	mov r0, #1
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x90
	add r4, #0x94
	ldr r0, [r0]
	ldr r1, [r4]
	ldr r2, _021E6E60 ; =ov109_021E78A8
	mov r3, #2
	bl sub_0200D2A4
	add sp, #4
	pop {r3, r4, pc}
	nop
_021E6E58: .word ov109_021E79D0
_021E6E5C: .word ov109_021E78C8
_021E6E60: .word ov109_021E78A8
	thumb_func_end ov109_021E6DE4

