	.include "asm/macros.inc"
	.include "overlay_48.inc"
	.include "global.inc"
	.public ov48_02259724

	.text

	thumb_func_start ov48_02259724
ov48_02259724: ; 0x02259724
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	bl SpriteList_Delete
	mov r6, #0x13
	mov r4, #0
	lsl r6, r6, #4
_02259734:
	ldr r0, [r5, r6]
	bl Destroy2DGfxResObjMan
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02259734
	bl ObjCharTransfer_Destroy
	bl ObjPlttTransfer_Destroy
	bl OamManager_Free
	pop {r4, r5, r6, pc}
	thumb_func_end ov48_02259724

