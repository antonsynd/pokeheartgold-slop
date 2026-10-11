	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E9090
	.public ov102_021E909C
	.extern ov102_021E8F64
	.extern ov102_021E8F68
	.extern ov102_021E9198
	.extern ov102_021E93D4
	.extern ov102_021E93DC
	.extern ov102_021E93E0

	.text

	.text
	thumb_func_start ov102_021E9090
ov102_021E9090: ; 0x021E9090
	ldr r3, _021E9098 ; =ov102_021E8F64
	add r0, #0x70
	bx r3
	nop
_021E9098: .word ov102_021E8F64
	thumb_func_end ov102_021E9090

	thumb_func_start ov102_021E909C
ov102_021E909C: ; 0x021E909C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r6, r1, #0
	mov r1, #0x8d
	add r5, r0, #0
	mov r0, #0x23
	lsl r1, r1, #2
	bl Heap_Alloc
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	str r5, [r4, #0x18]
	add r0, r5, #0
	str r6, [r4, #0x1c]
	bl ov102_021E8F68
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov102_021E9198
	bl NNS_G2dInitOamManagerModule
	mov r2, #0
	str r2, [sp]
	mov r1, #0x7f
	str r1, [sp, #4]
	str r2, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r0, #0x23
	str r0, [sp, #0x10]
	mov r0, #1
	bl OamManager_Create
	add r1, r4, #0
	mov r0, #0x80
	add r1, #0x28
	mov r2, #0x23
	bl G2dRenderer_Init
	str r0, [r4, #0x24]
	mov r0, #0x23
	bl BgConfig_Alloc
	str r0, [r4, #0x20]
	ldr r0, _021E913C ; =ov102_021E93DC
	add r1, r4, #0
	mov r2, #2
	bl SysTask_CreateOnMainQueue
	str r0, [r4]
	ldr r0, _021E9140 ; =ov102_021E93E0
	add r1, r4, #0
	mov r2, #1
	bl ov102_021E93D4
	mov r1, #0
	str r0, [r4, #4]
	add r2, r4, #0
	add r0, r1, #0
_021E9122:
	add r1, r1, #1
	str r0, [r2, #8]
	add r2, r2, #4
	cmp r1, #4
	blt _021E9122
	mov r0, #4
	mov r1, #0x23
	bl FontID_Alloc
	add r0, r4, #0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_021E913C: .word ov102_021E93DC
_021E9140: .word ov102_021E93E0
	thumb_func_end ov102_021E909C

