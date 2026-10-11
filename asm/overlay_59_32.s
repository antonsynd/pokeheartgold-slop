	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_022399B4

	.text

	thumb_func_start ov59_022399B4
ov59_022399B4: ; 0x022399B4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x58]
	bl TouchscreenListMenuSpawner_Destroy
	mov r1, #0x93
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl SpriteSystem_DestroySpriteManager
	mov r0, #0x25
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	sub r0, r0, #4
	ldr r0, [r4, r0]
	bl SpriteSystem_Free
	mov r0, #0x93
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	bl GF_DestroyVramTransferManager
	ldr r0, [r4]
	bl thunk_ClearMainOAM
	pop {r4, pc}
	thumb_func_end ov59_022399B4

