	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E9144
	.public ov102_021E91BC

	.text

	thumb_func_start ov102_021E9144
ov102_021E9144: ; 0x021E9144
	push {r4, r5, r6, lr}
	add r6, r0, #0
	beq _021E9196
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	mov r0, #4
	bl FontID_Release
	mov r4, #0
	add r5, r6, #0
_021E915C:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021E9166
	bl SysTask_Destroy
_021E9166:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021E915C
	ldr r0, [r6]
	bl SysTask_Destroy
	ldr r0, [r6, #4]
	bl SysTask_Destroy
	bl OamManager_Free
	ldr r0, [r6, #0x24]
	bl SpriteList_Delete
	add r0, r6, #0
	bl ov102_021E91BC
	ldr r0, [r6, #0x20]
	bl Heap_Free
	add r0, r6, #0
	bl Heap_Free
_021E9196:
	pop {r4, r5, r6, pc}
	thumb_func_end ov102_021E9144

