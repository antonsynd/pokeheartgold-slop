	.include "asm/macros.inc"
	.include "overlay_56.inc"
	.include "global.inc"
	.public ov56_021E5C20

	.text

	.text
	thumb_func_start ov56_021E5C20
ov56_021E5C20: ; 0x021E5C20
	push {r3, r4, r5, lr}
	mov r2, #2
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x29
	lsl r2, r2, #0x10
	bl Heap_Create
	add r0, r5, #0
	mov r1, #0xc4
	mov r2, #0x29
	bl OverlayManager_CreateAndGetData
	mov r1, #0
	mov r2, #0xc4
	add r4, r0, #0
	bl memset
	mov r0, #0x29
	str r0, [r4]
	add r0, r5, #0
	bl OverlayManager_GetArgs
	str r0, [r4, #0x1c]
	ldrh r0, [r0]
	ldr r1, _021E5C98 ; =0x0000FFFF
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xc]
	strb r0, [r4, #0xd]
	ldr r0, [r4, #0x1c]
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x11]
	ldr r0, [r4, #0x1c]
	ldrb r0, [r0, #3]
	strb r0, [r4, #0x12]
	ldrb r0, [r4, #0x11]
	strb r0, [r4, #0x16]
	strb r0, [r4, #0x17]
	ldr r0, [r4, #0x1c]
	strh r1, [r0]
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #4]
	bl Options_GetTextFrameDelay
	strb r0, [r4, #0x10]
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #4]
	bl Options_GetFrame
	strb r0, [r4, #0xb]
	mov r0, #1
	bl TextFlags_SetCanABSpeedUpPrint
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #8]
	bl MenuInputStateMgr_GetState
	strb r0, [r4, #0xa]
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E5C98: .word 0x0000FFFF
	thumb_func_end ov56_021E5C20

