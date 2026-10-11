	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_0225FB48

	.text

	thumb_func_start ov91_0225FB48
ov91_0225FB48: ; 0x0225FB48
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_020135AC
	ldr r0, [r5, #0x1c]
	bl SpriteList_Delete
	mov r6, #0x52
	mov r4, #0
	lsl r6, r6, #2
_0225FB62:
	ldr r0, [r5, r6]
	bl Destroy2DGfxResObjMan
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0225FB62
	bl ObjCharTransfer_Destroy
	bl ObjPlttTransfer_Destroy
	bl OamManager_Free
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov91_0225FB48

