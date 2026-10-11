	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_02237E94
	.public ov59_02238768

	.text

	thumb_func_start ov59_02237E94
ov59_02237E94: ; 0x02237E94
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x14]
	bl MenuInputStateMgr_GetState
	str r0, [r5, #0x40]
	ldr r0, [r5, #4]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x18]
	bl Save_PlayerData_GetOptionsAddr
	add r4, r0, #0
	bl Options_GetTextFrameDelay
	add r1, r5, #0
	add r1, #0x45
	strb r0, [r1]
	add r0, r4, #0
	bl Options_GetFrame
	add r1, r5, #0
	add r1, #0x46
	strb r0, [r1]
	ldr r0, [r5, #4]
	ldrb r1, [r0, #0x18]
	add r0, r5, #0
	add r0, #0x44
	strb r1, [r0]
	ldr r0, [r5, #4]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x10]
	str r0, [r5, #0x38]
	ldr r0, [r5, #4]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x18]
	bl Save_ApricornBox_Get
	str r0, [r5, #0x10]
	add r0, r5, #0
	bl ov59_02238768
	add r0, r5, #0
	add r0, #0x44
	ldrb r0, [r0]
	cmp r0, #3
	bne _02237F24
	add r0, r5, #0
	mov r1, #2
	add r0, #0x49
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #0
	add r0, #0x4a
	strb r1, [r0]
	ldr r0, [r5, #4]
	ldrb r1, [r0, #0x1a]
	add r0, r5, #0
	add r0, #0x4b
	strb r1, [r0]
	ldr r0, [r5, #4]
	ldrb r1, [r0, #0x1b]
	add r0, r5, #0
	add r0, #0x4c
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #1
	add r0, #0x44
	strb r1, [r0]
	ldr r0, [r5, #4]
	strb r1, [r0, #0x18]
_02237F24:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov59_02237E94

