#include "config.h"
	.include "macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E7AC0

	.text

	.text
	thumb_func_start ov73_021E7AC0
ov73_021E7AC0: ; 0x021E7AC0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r7, r2, #0
	str r3, [sp]
	bl Save_PlayerData_GetProfile
	add r4, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp]
	cmp r0, #0
	ble _021E7B36
_021E7ADA:
	mov r0, #0
	add r1, r5, #0
	mov r2, #0x48
	bl MIi_CpuClearFast
	add r0, r4, #0
	bl PlayerProfile_GetTrainerID
	str r0, [r5]
	add r0, r4, #0
	bl PlayerProfile_GetTrainerGender
	strb r0, [r5, #4]
	mov r0, #GAME_VERSION
	strb r0, [r5, #5]
	mov r0, #2
	strb r0, [r5, #6]
	add r0, r4, #0
	bl PlayerProfile_GetNamePtr
	add r1, r0, #0
	add r0, r5, #0
	add r0, #8
	mov r2, #8
	bl CopyU16StringArrayN
	add r3, r5, #0
	add r6, r7, #0
	add r3, #0x18
	mov r2, #6
_021E7B16:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E7B16
	mov r0, #0
	strb r0, [r5, #0x19]
	strb r0, [r5, #0x18]
	ldr r0, [sp, #4]
	add r7, #0x30
	add r0, r0, #1
	str r0, [sp, #4]
	add r1, r0, #0
	ldr r0, [sp]
	add r5, #0x48
	cmp r1, r0
	blt _021E7ADA
_021E7B36:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov73_021E7AC0

