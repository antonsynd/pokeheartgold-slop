	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225C148

    .text

	.text
	thumb_func_start ov49_0225C148
ov49_0225C148: ; 0x0225C148
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x54]
	add r4, r1, #0
	bl Sprite_Delete
	mov r0, #0
	str r0, [r5, #0x54]
	ldr r0, [r5, #0x58]
	bl SpriteTransfer_DeleteCharTransferTask
	ldr r0, [r5, #0x5c]
	bl SpriteTransfer_DeletePlttTransferTask
	mov r7, #0x13
	mov r6, #0
	lsl r7, r7, #4
_0225C16A:
	ldr r0, [r4, r7]
	ldr r1, [r5, #0x58]
	bl DestroySingle2DGfxResObj
	add r6, r6, #1
	add r5, r5, #4
	add r4, r4, #4
	cmp r6, #4
	blt _0225C16A
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_0225C148

