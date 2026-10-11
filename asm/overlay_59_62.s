	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_0223B878

	.text

	thumb_func_start ov59_0223B878
ov59_0223B878: ; 0x0223B878
	push {r4, lr}
	mov r1, #0x96
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl SpriteSystem_DestroySpriteManager
	mov r0, #0x97
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	sub r0, r0, #4
	ldr r0, [r4, r0]
	bl SpriteSystem_Free
	mov r0, #0x96
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	bl GF_DestroyVramTransferManager
	ldr r0, [r4]
	bl thunk_ClearMainOAM
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov59_0223B878

