	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_02261790

	.text

	thumb_func_start ov91_02261790
ov91_02261790: ; 0x02261790
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x48]
	add r4, r1, #0
	bl TextOBJ_Destroy
	ldr r0, [r5, #0x60]
	bl SpriteTransfer_DeletePlttTransferTask
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x60]
	bl DestroySingle2DGfxResObj
	add r0, r5, #0
	add r0, #0x50
	bl sub_02021B5C
	ldr r0, [r5, #0x4c]
	bl sub_02013938
	ldr r0, [r5, #0x5c]
	bl String_Delete
	ldr r0, [r5, #0x34]
	bl Sprite_Delete
	ldr r0, [r5]
	bl SpriteTransfer_DeleteCharTransferTask
	ldr r0, [r5, #4]
	bl SpriteTransfer_DeletePlttTransferTask
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5]
	bl DestroySingle2DGfxResObj
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #4]
	bl DestroySingle2DGfxResObj
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	ldr r1, [r5, #8]
	bl DestroySingle2DGfxResObj
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0xc]
	bl DestroySingle2DGfxResObj
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov91_02261790

