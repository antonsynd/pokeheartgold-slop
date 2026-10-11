	.include "asm/macros.inc"
	.include "overlay_48.inc"
	.include "global.inc"
	.public ov48_0225AC34

	.text

	.text
	thumb_func_start ov48_0225AC34
ov48_0225AC34: ; 0x0225AC34
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, _0225ACA8 ; =0x000005D8
	mov r1, #0
	bl StopSE
	mov r0, #0
	ldr r7, [sp]
	str r0, [sp, #8]
_0225AC4A:
	ldr r0, [sp]
	ldr r0, [r0, #0x3c]
	bl Sprite_Delete
	ldr r0, [r7, #0x6c]
	bl SpriteTransfer_DeleteCharTransferTask
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0225AC72
	ldr r0, [r7, #0x70]
	bl SpriteTransfer_DeletePlttTransferTask
	mov r0, #0x4d
	ldr r1, [sp, #4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r1, [r7, #0x70]
	bl DestroySingle2DGfxResObj
_0225AC72:
	ldr r5, [sp, #4]
	mov r4, #0
	add r6, r7, #0
_0225AC78:
	cmp r4, #1
	beq _0225AC88
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, [r6, #0x6c]
	bl DestroySingle2DGfxResObj
_0225AC88:
	add r4, r4, #1
	add r6, r6, #4
	add r5, r5, #4
	cmp r4, #4
	blt _0225AC78
	ldr r0, [sp]
	add r7, #0x10
	add r0, r0, #4
	str r0, [sp]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #0xc
	blt _0225AC4A
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0225ACA8: .word 0x000005D8
	thumb_func_end ov48_0225AC34

