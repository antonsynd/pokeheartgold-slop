	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_02259158

	.text

	thumb_func_start ov90_02259158
ov90_02259158: ; 0x02259158
	push {r3, lr}
	ldr r0, [r0]
	bl SpriteList_Delete
	bl ObjCharTransfer_Destroy
	bl ObjPlttTransfer_Destroy
	bl OamManager_Free
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov90_02259158

