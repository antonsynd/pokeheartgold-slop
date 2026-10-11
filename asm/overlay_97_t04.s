	.include "asm/macros.inc"
	.include "overlay_97.inc"
	.include "global.inc"
	.public ov97_0221E700
	.public ov97_0221E7F4
	.public ov97_0221E814
	.public ov97_0221E834
	.extern _0221FC98
	.extern ov97_0221E864
	.extern ov97_0221E88C
	.extern ov97_0221E91C
	.extern ov97_0221E97C
	.extern ov97_0221EC14
	.extern ov97_0221EE84
	.extern ov97_0221EEA4
	.extern ov97_0221FCA8
	.extern ov97_0221FCCC

	.text

	.text
	thumb_func_start ov97_0221E700
ov97_0221E700: ; 0x0221E700
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r0, #0
	bl OverlayManager_GetArgs
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #0x34
	mov r2, #0x5c
	ldr r5, [r7]
	bl OverlayManager_CreateAndGetData
	mov r1, #0
	mov r2, #0x34
	add r4, r0, #0
	bl memset
	mov r0, #0x5c
	bl BgConfig_Alloc
	str r0, [r4]
	ldr r0, [r5]
	str r0, [r4, #0x2c]
	add r0, r7, #0
	add r0, #0x84
	ldr r0, [r0]
	str r0, [r4, #0x30]
	bl ov97_0221E7F4
	mov r0, #0x5c
	mov r1, #3
	mov r2, #0x13
	bl sub_020932E0
	str r0, [r4, #8]
	mov r0, #0x5c
	bl ov97_0221EE84
	str r0, [r4, #0xc]
	ldr r0, [r4]
	bl ov97_0221E814
	bl ov97_0221E834
	add r0, r4, #0
	bl ov97_0221E864
	ldr r0, [r7]
	mov r6, #0
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0221E76A
	mov r6, #1
_0221E76A:
	ldr r0, [r5]
	bl SaveArray_PCStorage_Get
	add r7, r0, #0
	ldr r0, [r5]
	bl SaveArray_Party_Get
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, #0x12
	str r0, [sp, #0xc]
	ldr r0, _0221E7E4 ; =ov97_0221E91C
	add r2, r7, #0
	str r0, [sp, #0x10]
	ldr r0, _0221E7E8 ; =ov97_0221E97C
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r0, #0x10
	str r0, [sp, #0x18]
	ldr r0, _0221E7EC ; =ov97_0221EC14
	str r0, [sp, #0x1c]
	str r4, [sp, #0x20]
	ldr r0, [r4, #8]
	ldr r1, [r4]
	bl sub_02093440
	mov r0, #2
	bl sub_0203A994
	ldr r2, [r4, #0x30]
	ldrb r3, [r5, #0xf]
	lsl r2, r2, #0x18
	ldr r0, [r4, #0xc]
	ldr r1, [r4]
	lsr r2, r2, #0x18
	bl ov97_0221EEA4
	ldr r0, _0221E7F0 ; =ov97_0221E88C
	add r1, r4, #0
	bl Main_SetVBlankIntrCB
	mov r0, #0
	str r0, [r4, #4]
	bl ResetAllTextPrinters
	mov r1, #0x1e
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x5c
	bl LoadFontPal0
	mov r0, #2
	mov r1, #0x5c
	bl FontID_Alloc
	mov r0, #1
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0221E7E4: .word ov97_0221E91C
_0221E7E8: .word ov97_0221E97C
_0221E7EC: .word ov97_0221EC14
_0221E7F0: .word ov97_0221E88C
	thumb_func_end ov97_0221E700

	thumb_func_start ov97_0221E7F4
ov97_0221E7F4: ; 0x0221E7F4
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _0221E810 ; =ov97_0221FCCC
	add r3, sp, #0
	mov r2, #5
_0221E7FE:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0221E7FE
	add r0, sp, #0
	bl GfGfx_SetBanks
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_0221E810: .word ov97_0221FCCC
	thumb_func_end ov97_0221E7F4

	thumb_func_start ov97_0221E814
ov97_0221E814: ; 0x0221E814
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _0221E830 ; =ov97_0221FCA8
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
_0221E830: .word ov97_0221FCA8
	thumb_func_end ov97_0221E814

	thumb_func_start ov97_0221E834
ov97_0221E834: ; 0x0221E834
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _0221E860 ; =_0221FC98
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl ObjCharTransfer_Init
	mov r0, #0x14
	mov r1, #0x5c
	bl ObjPlttTransfer_Init
	bl ObjCharTransfer_ClearBuffers
	bl ObjPlttTransfer_Reset
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
_0221E860: .word _0221FC98
	thumb_func_end ov97_0221E834

