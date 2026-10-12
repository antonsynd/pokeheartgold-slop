	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_0223A9E4
	.extern ov59_0223AE20

	.text

	.text
	thumb_func_start ov59_0223A9E4
ov59_0223A9E4: ; 0x0223A9E4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x14]
	bl MenuInputStateMgr_GetState
	str r0, [r5, #0x44]
	ldr r0, [r5, #4]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x18]
	str r0, [r5, #8]
	bl Save_PlayerData_GetOptionsAddr
	add r4, r0, #0
	bl Options_GetTextFrameDelay
	add r1, r5, #0
	add r1, #0x4b
	strb r0, [r1]
	add r0, r4, #0
	bl Options_GetFrame
	add r1, r5, #0
	add r1, #0x4c
	strb r0, [r1]
	ldr r0, [r5, #8]
	bl Save_ApricornBox_Get
	str r0, [r5, #0x14]
	ldr r1, [r5, #4]
	add r2, r5, #0
	ldr r1, [r1, #0x14]
	add r2, #0x18
	bl sub_02031CEC
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x18
	add r1, #0x20
	bl sub_02031DA0
	add r0, r5, #0
	bl ov59_0223AE20
	add r0, r5, #0
	add r0, #0x49
	ldrb r4, [r0]
	mov r1, #0
	cmp r4, #0
	ble _0223AA68
	ldr r0, [r5, #4]
	add r2, r5, #0
	ldrb r3, [r0, #0x1c]
_0223AA50:
	add r0, r2, #0
	add r0, #0x84
	ldrb r0, [r0]
	cmp r3, r0
	bne _0223AA60
	add r5, #0x4a
	strb r1, [r5]
	pop {r3, r4, r5, pc}
_0223AA60:
	add r1, r1, #1
	add r2, #0x34
	cmp r1, r4
	blt _0223AA50
_0223AA68:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov59_0223A9E4

