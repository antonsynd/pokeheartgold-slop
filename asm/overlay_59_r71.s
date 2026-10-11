	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_0223B804
	.extern ov59_0223C968
	.extern ov59_0223C988
	.extern ov59_0223CA20

	.text

	.text
	thumb_func_start ov59_0223B804
ov59_0223B804: ; 0x0223B804
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r1, [r4]
	mov r0, #0x20
	bl GF_CreateVramTransferManager
	ldr r0, [r4]
	bl SpriteSystem_Alloc
	mov r1, #0x96
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	ldr r1, _0223B86C ; =ov59_0223CA20
	ldr r2, _0223B870 ; =ov59_0223C988
	mov r3, #3
	bl SpriteSystem_Init
	ldr r0, [r4]
	bl thunk_ClearMainOAM
	ldr r0, [r4]
	bl thunk_ClearSubOAM
	mov r0, #0x96
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl SpriteManager_New
	mov r1, #0x97
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r0, r1, #4
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #0x22
	bl SpriteSystem_InitSprites
	mov r3, #0
	mov r1, #0x96
	str r3, [sp]
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	ldr r2, _0223B874 ; =ov59_0223C968
	bl sub_0200D2A4
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223B86C: .word ov59_0223CA20
_0223B870: .word ov59_0223C988
_0223B874: .word ov59_0223C968
	thumb_func_end ov59_0223B804

