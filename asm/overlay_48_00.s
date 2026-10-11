	.include "asm/macros.inc"
	.include "overlay_48.inc"
	.include "global.inc"
	.public ov48_02258800
	.public ov48_02259090
	.public ov48_02259130
	.public ov48_022593F4
	.public ov48_02259464
	.public ov48_02259824
	.public ov48_022598EC
	.public ov48_02259BC0
	.public ov48_02259D00
	.public ov48_02259EAC
	.public ov48_0225A00C
	.public ov48_0225B068

	.text

	thumb_func_start ov48_02258800
ov48_02258800: ; 0x02258800
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	bl OverlayManager_GetArgs
	mov r2, #5
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x70
	lsl r2, r2, #0x10
	bl Heap_Create
	ldr r1, _0225890C ; =0x0000C724
	add r0, r4, #0
	mov r2, #0x70
	bl OverlayManager_CreateAndGetData
	ldr r2, _0225890C ; =0x0000C724
	mov r1, #0
	add r4, r0, #0
	bl memset
	ldr r0, [r5, #4]
	bl Save_WiFiHistory_Get
	str r0, [r4, #0xc]
	ldr r0, [r5, #4]
	bl Save_PlayerData_GetOptionsAddr
	str r0, [r4, #0x10]
	ldr r0, [r4, #0xc]
	bl WifiHistory_GetPlayerCountry
	str r0, [r4, #0x14]
	ldr r0, [r4, #0xc]
	bl WiFiHistory_GetPlayerRegion
	str r0, [r4, #0x18]
	ldr r0, [r5, #8]
	add r1, r5, #0
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov48_022593F4
	add r0, r4, #0
	ldr r1, [r4, #0x10]
	add r0, #0x20
	mov r2, #0x70
	bl ov48_02259464
	mov r0, #0x5e
	lsl r0, r0, #2
	add r1, r4, #0
	add r0, r4, r0
	add r1, #0x20
	mov r2, #0x70
	bl ov48_02259824
	mov r0, #0x5a
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0x70
	bl ov48_0225B068
	mov r0, #0x70
	str r0, [sp, #4]
	mov r2, sp
	ldr r1, [r4, #4]
	ldr r0, [r4, #8]
	sub r2, r2, #4
	str r1, [r2]
	str r0, [r2, #4]
	mov r0, #0x89
	ldr r3, [r2]
	lsl r0, r0, #2
	add r2, r4, #0
	ldr r1, [r5]
	add r0, r4, r0
	add r2, #0x20
	bl ov48_022598EC
	add r3, r4, #4
	ldr r0, _02258910 ; =0x0000C3CC
	ldmia r3!, {r1, r2}
	add r0, r4, r0
	mov r3, #0x70
	bl ov48_02259BC0
	ldr r0, _02258914 ; =0x0000C3E0
	mov r2, #0x5a
	add r1, r4, #0
	lsl r2, r2, #2
	add r0, r4, r0
	add r1, #0x20
	add r2, r4, r2
	mov r3, #0x70
	bl ov48_02259D00
	mov r2, #0x70
	str r2, [sp]
	mov r0, #0xc7
	lsl r0, r0, #8
	add r1, r4, #0
	add r2, #0xf8
	ldr r3, [r5, #4]
	add r0, r4, r0
	add r1, #0x20
	add r2, r4, r2
	bl ov48_02259EAC
	ldr r0, _02258918 ; =0x0000C40C
	mov r2, #0x5a
	add r1, r4, #0
	lsl r2, r2, #2
	add r0, r4, r0
	add r1, #0x20
	add r2, r4, r2
	mov r3, #0x70
	bl ov48_0225A00C
	add r0, r4, #0
	add r1, r5, #0
	bl ov48_02259130
	ldr r0, _0225891C ; =ov48_02259090
	add r1, r4, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0225890C: .word 0x0000C724
_02258910: .word 0x0000C3CC
_02258914: .word 0x0000C3E0
_02258918: .word 0x0000C40C
_0225891C: .word ov48_02259090
	thumb_func_end ov48_02258800

