	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222CBB4
	.extern ov43_0222A154
	.extern ov43_0222A1DC
	.extern ov43_0222A318
	.extern ov43_0222A338
	.extern ov43_0222CD44

	.text

	.text
	thumb_func_start ov43_0222CBB4
ov43_0222CBB4: ; 0x0222CBB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r2, #0
	add r7, r1, #0
	ldrb r1, [r5, #8]
	add r4, r0, #0
	ldr r6, [sp, #0x30]
	cmp r1, #6
	bls _0222CBC8
	b _0222CD26
_0222CBC8:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222CBD4: ; jump table
	.short _0222CBE2 - _0222CBD4 - 2 ; case 0
	.short _0222CC2A - _0222CBD4 - 2 ; case 1
	.short _0222CC64 - _0222CBD4 - 2 ; case 2
	.short _0222CC92 - _0222CBD4 - 2 ; case 3
	.short _0222CCAC - _0222CBD4 - 2 ; case 4
	.short _0222CCCE - _0222CBD4 - 2 ; case 5
	.short _0222CD12 - _0222CBD4 - 2 ; case 6
_0222CBE2:
	add r1, r5, #0
	add r2, r6, #0
	bl ov43_0222CD44
	str r0, [r4, #4]
	mov r0, #4
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [r5, #4]
	bl Save_PlayerData_GetOptionsAddr
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #0xc
	add r2, sp, #8
	bl sub_02085400
	str r0, [r4, #8]
	add r0, r7, #0
	bl ov43_0222A1DC
	ldr r0, _0222CD2C ; =gOverlayTemplate_NamingScreen
	ldr r1, [r4, #4]
	add r2, r6, #0
	bl OverlayManager_New
	str r0, [r4]
	mov r0, #1
	strb r0, [r5, #8]
	b _0222CD26
_0222CC2A:
	ldr r0, [r4]
	bl OverlayManager_Run
	cmp r0, #0
	beq _0222CD26
	ldr r0, [r4]
	bl OverlayManager_Delete
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _0222CC54
	ldr r0, _0222CD30 ; =_02102620
	ldr r1, [r4, #8]
	add r2, r6, #0
	bl OverlayManager_New
	str r0, [r4]
	mov r0, #2
	strb r0, [r5, #8]
	b _0222CD26
_0222CC54:
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov43_0222A318
	mov r0, #3
	strb r0, [r5, #8]
	b _0222CD26
_0222CC64:
	ldr r0, [r4]
	bl OverlayManager_Run
	cmp r0, #0
	beq _0222CD26
	ldr r0, [r4]
	bl OverlayManager_Delete
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	ldr r1, [r1, #0x18]
	ldr r2, [r2, #0x1c]
	add r0, r5, #0
	bl ov43_0222A338
	add r0, r5, #0
	mov r1, #0
	mov r2, #7
	bl ov43_0222A318
	mov r0, #3
	strb r0, [r5, #8]
	b _0222CD26
_0222CC92:
	ldr r0, [r4, #4]
	bl NamingScreen_DeleteArgs
	ldr r0, [r4, #8]
	bl sub_02085438
	add r0, r7, #0
	add r1, r6, #0
	bl ov43_0222A154
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222CCAC:
	add r1, r5, #0
	add r2, r6, #0
	bl ov43_0222CD44
	str r0, [r4, #4]
	add r0, r7, #0
	bl ov43_0222A1DC
	ldr r0, _0222CD2C ; =gOverlayTemplate_NamingScreen
	ldr r1, [r4, #4]
	add r2, r6, #0
	bl OverlayManager_New
	str r0, [r4]
	mov r0, #5
	strb r0, [r5, #8]
	b _0222CD26
_0222CCCE:
	ldr r0, [r4]
	bl OverlayManager_Run
	cmp r0, #0
	beq _0222CD26
	ldr r0, [r4]
	bl OverlayManager_Delete
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _0222CD02
	add r0, r5, #0
	mov r1, #1
	mov r2, #0xc
	bl ov43_0222A318
	ldr r1, [r4, #4]
	add r0, r5, #0
	ldr r1, [r1, #0x18]
	mov r2, #0
	bl ov43_0222A338
	mov r0, #6
	strb r0, [r5, #8]
	b _0222CD26
_0222CD02:
	add r0, r5, #0
	mov r1, #1
	mov r2, #0xd
	bl ov43_0222A318
	mov r0, #6
	strb r0, [r5, #8]
	b _0222CD26
_0222CD12:
	ldr r0, [r4, #4]
	bl NamingScreen_DeleteArgs
	add r0, r7, #0
	add r1, r6, #0
	bl ov43_0222A154
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222CD26:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0222CD2C: .word gOverlayTemplate_NamingScreen
_0222CD30: .word _02102620
	thumb_func_end ov43_0222CBB4

