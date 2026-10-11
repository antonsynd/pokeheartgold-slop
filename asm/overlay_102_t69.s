	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E93E0
	.public ov102_021E940C
	.extern ov102_021EC788

	.text

	.text
	thumb_func_start ov102_021E93E0
ov102_021E93E0: ; 0x021E93E0
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x20]
	bl DoScheduledBgGpuUpdates
	ldr r0, [r4, #0x24]
	bl SpriteList_RenderAndAnimateSprites
	bl OamManager_ApplyAndResetBuffers
	ldr r3, _021E9404 ; =0x027E0000
	ldr r1, _021E9408 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_021E9404: .word 0x027E0000
_021E9408: .word 0x00003FF8
	thumb_func_end ov102_021E93E0

	thumb_func_start ov102_021E940C
ov102_021E940C: ; 0x021E940C
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	cmp r6, #0x20
	bhs _021E945A
	mov r0, #0x23
	mov r1, #0x18
	bl Heap_Alloc
	add r1, r0, #0
	beq _021E945E
	mov r4, #0
	str r4, [r1, #0x14]
	str r6, [r1, #0xc]
	str r5, [r1]
	ldr r0, [r5, #0x18]
	add r2, r5, #0
	str r0, [r1, #4]
	ldr r0, [r5, #0x1c]
	str r0, [r1, #8]
_021E9434:
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _021E9450
	ldr r0, _021E9460 ; =ov102_021EC788
	lsl r2, r6, #2
	ldr r0, [r0, r2]
	mov r2, #1
	str r4, [r1, #0x10]
	bl SysTask_CreateOnMainQueue
	lsl r1, r4, #2
	add r1, r5, r1
	str r0, [r1, #8]
	pop {r4, r5, r6, pc}
_021E9450:
	add r4, r4, #1
	add r2, r2, #4
	cmp r4, #4
	blt _021E9434
	pop {r4, r5, r6, pc}
_021E945A:
	bl GF_AssertFail
_021E945E:
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E9460: .word ov102_021EC788
	thumb_func_end ov102_021E940C

