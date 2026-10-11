	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222A290

	.text

	thumb_func_start ov43_0222A290
ov43_0222A290: ; 0x0222A290
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	add r6, r2, #0
	str r0, [r5, #4]
	mov r0, #0x80
	add r1, r6, #0
	bl String_New
	str r0, [r5, #0x58]
	mov r0, #0x80
	add r1, r6, #0
	bl String_New
	str r0, [r5, #0x5c]
	ldr r0, [r4, #4]
	bl MenuInputStateMgr_GetState
	str r0, [r5]
	ldr r0, [r5, #4]
	bl Save_PlayerData_GetOptionsAddr
	add r4, r0, #0
	bl Options_GetTextFrameDelay
	strb r0, [r5, #0xc]
	add r0, r4, #0
	bl Options_GetFrame
	strb r0, [r5, #0xd]
	add r0, r4, #0
	bl Options_GetButtonMode
	cmp r0, #1
	beq _0222A2DC
	mov r0, #1
	b _0222A2DE
_0222A2DC:
	mov r0, #0
_0222A2DE:
	strb r0, [r5, #0xe]
	mov r0, #1
	bl TextFlags_SetCanABSpeedUpPrint
	mov r0, #1
	bl TextFlags_SetCanTouchSpeedUpPrint
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov43_0222A290

