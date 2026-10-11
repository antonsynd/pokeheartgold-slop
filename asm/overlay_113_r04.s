	.include "asm/macros.inc"
	.include "overlay_113.inc"
	.include "global.inc"
	.public ov113_021E5A48
	.public ov113_021E5A7C
	.extern ov113_021E5D80

	.text

	.text
	thumb_func_start ov113_021E5A48
ov113_021E5A48: ; 0x021E5A48
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	add r7, r0, #0
	add r6, r1, #0
	add r4, r5, #0
_021E5A52:
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #1
	bl Pokedex_GetSeenFormByIdx_Unown
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, r0, #0
	add r1, #0xe6
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #1
	bhi _021E5A70
	strb r0, [r6, r5]
	add r5, r5, #1
_021E5A70:
	add r4, r4, #1
	cmp r4, #0x1c
	blt _021E5A52
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov113_021E5A48

	thumb_func_start ov113_021E5A7C
ov113_021E5A7C: ; 0x021E5A7C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r0, [r0]
	bl MenuInputStateMgr_GetState
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	ldr r0, [r0, #4]
	bl Save_PlayerData_GetOptionsAddr
	add r4, r0, #0
	bl Options_GetTextFrameDelay
	strb r0, [r5, #0x18]
	add r0, r4, #0
	bl Options_GetFrame
	strb r0, [r5, #0x19]
	ldr r0, [r5, #4]
	ldr r0, [r0, #4]
	bl Save_Pokedex_Get
	str r0, [r5, #0xc]
	ldr r0, [r5, #4]
	ldr r0, [r0, #4]
	bl Save_VarsFlags_Get
	bl Save_VarsFlags_GetUnownReportLevel
	add r1, r5, #0
	add r1, #0x3c
	strb r0, [r1]
	add r0, r5, #0
	bl ov113_021E5D80
	strb r0, [r5, #0x1d]
	ldr r0, [r5, #0xc]
	mov r1, #1
	bl Pokedex_GetSeenFormNum_Unown
	strb r0, [r5, #0x1f]
	add r0, r5, #0
	add r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #4
	blo _021E5B10
	mov r1, #0
_021E5ADE:
	add r0, r5, r1
	add r0, #0x20
	strb r1, [r0]
	add r1, r1, #1
	cmp r1, #0x19
	ble _021E5ADE
	ldr r0, [r5, #0xc]
	add r1, sp, #0
	bl ov113_021E5A48
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	mov r4, #0
	cmp r3, #0
	ble _021E5B32
	add r2, sp, #0
_021E5AFE:
	ldrb r1, [r2]
	add r0, r5, r4
	add r0, #0x3a
	add r4, r4, #1
	strb r1, [r0]
	add r2, r2, #1
	cmp r4, r3
	blt _021E5AFE
	b _021E5B32
_021E5B10:
	ldrb r0, [r5, #0x1f]
	mov r4, #0
	cmp r0, #0
	ble _021E5B32
	mov r6, #1
_021E5B1A:
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	add r2, r6, #0
	bl Pokedex_GetSeenFormByIdx_Unown
	add r1, r5, r4
	add r1, #0x20
	strb r0, [r1]
	ldrb r0, [r5, #0x1f]
	add r4, r4, #1
	cmp r4, r0
	blt _021E5B1A
_021E5B32:
	ldrb r0, [r5, #0x1f]
	mov r1, #0xe
	bl _s32_div_f
	strb r0, [r5, #0x1c]
	ldrb r0, [r5, #0x1f]
	cmp r0, #0
	beq _021E5B52
	mov r1, #0xe
	bl _s32_div_f
	cmp r1, #0
	beq _021E5B52
	ldrb r0, [r5, #0x1c]
	add r0, r0, #1
	strb r0, [r5, #0x1c]
_021E5B52:
	ldrb r1, [r5, #0x1c]
	ldrb r0, [r5, #0x1d]
	add r0, r1, r0
	add r0, r0, #1
	strb r0, [r5, #0x1b]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov113_021E5A7C

