	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public ov80_0222F458
	.extern ov80_0222E268
	.extern ov80_0222E3B8
	.extern ov80_0222F4D0

	.text

	.text
	thumb_func_start ov80_0222F458
ov80_0222F458: ; 0x0222F458
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	ldr r0, [r0]
	add r6, r2, #0
	bl Frontier_GetLaunchArgs
	ldrh r2, [r4]
	ldr r1, _0222F4C8 ; =0x0000FFFF
	cmp r2, r1
	bne _0222F498
	mov r0, #1
	mov r1, #0x1b
	add r2, r6, #0
	mov r3, #0x20
	bl NewMsgDataFromNarc
	add r6, r0, #0
	mov r0, #0
	str r0, [sp]
	ldrh r2, [r4, #2]
	ldr r0, [r5]
	add r1, r6, #0
	mov r3, #1
	bl ov80_0222E268
	add r0, r6, #0
	bl DestroyMsgData
	b _0222F4BC
_0222F498:
	ldr r0, [r0, #8]
	bl Save_PlayerData_GetOptionsAddr
	bl Options_GetTextFrameDelay
	add r1, r0, #0
	ldrh r0, [r4, #4]
	str r0, [sp]
	mov r0, #6
	ldrsh r0, [r4, r0]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldrh r2, [r4]
	ldrh r3, [r4, #2]
	ldr r0, [r5]
	bl ov80_0222E3B8
_0222F4BC:
	ldr r1, _0222F4CC ; =ov80_0222F4D0
	add r0, r5, #0
	bl FrontierScriptContext_Pause
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_0222F4C8: .word 0x0000FFFF
_0222F4CC: .word ov80_0222F4D0
	thumb_func_end ov80_0222F458

