	.include "asm/macros.inc"
	.include "overlay_41_02247828.inc"
	.include "global.inc"

    .text

	thumb_func_start ov41_02247828
ov41_02247828: ; 0x02247828
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, _0224784C ; =ov41_02247850
	mov r1, #0x10
	mov r2, #0xa
	mov r3, #0xd
	bl CreateSysTaskAndEnvironment
	bl SysTask_GetData
	str r5, [r0]
	str r4, [r0, #4]
	mov r1, #0
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	pop {r3, r4, r5, pc}
	nop
_0224784C: .word ov41_02247850
	thumb_func_end ov41_02247828

	thumb_func_start ov41_02247850
ov41_02247850: ; 0x02247850
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldr r1, [r4, #0xc]
	cmp r1, #9
	bls _0224785E
	b _022479A2
_0224785E:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224786A: ; jump table
	.short _0224787E - _0224786A - 2 ; case 0
	.short _0224789A - _0224786A - 2 ; case 1
	.short _022478AE - _0224786A - 2 ; case 2
	.short _022478E2 - _0224786A - 2 ; case 3
	.short _02247902 - _0224786A - 2 ; case 4
	.short _0224792C - _0224786A - 2 ; case 5
	.short _02247948 - _0224786A - 2 ; case 6
	.short _0224795C - _0224786A - 2 ; case 7
	.short _0224797E - _0224786A - 2 ; case 8
	.short _02247998 - _0224786A - 2 ; case 9
_0224787E:
	mov r0, #1
	str r0, [sp]
	mov r0, #8
	add r1, r0, #0
	sub r1, #0x18
	mov r2, #0
	mov r3, #0xa
	bl StartBrightnessTransition
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_0224789A:
	mov r0, #1
	bl IsBrightnessTransitionActive
	cmp r0, #0
	beq _022479A2
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_022478AE:
	ldr r0, [r4]
	bl ov41_02247B5C
	ldr r0, [r4]
	bl ov41_02247414
	ldr r0, [r4]
	bl ov41_02247588
	ldr r0, [r4]
	mov r1, #0
	bl ov41_02247480
	ldr r0, [r4]
	mov r2, #3
	add r3, r2, #0
	ldr r0, [r0, #0x40]
	mov r1, #1
	sub r3, #0x2b
	bl ScheduleSetBgPosText
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_022478E2:
	mov r1, #8
	add r2, r1, #0
	add r0, r4, #0
	sub r2, #0xd
	add r3, r1, #0
	bl ov41_02247A48
	cmp r0, #0
	beq _022479A2
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02247902:
	mov r0, #0x4e
	ldr r1, [r4]
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	add r2, r1, #0
	sub r2, #8
	bl ov41_0224A5A4
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #8
	blt _022479A2
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_0224792C:
	mov r1, #0
	mov r0, #1
	add r2, r1, #0
	str r0, [sp]
	mov r0, #8
	sub r2, #0x10
	mov r3, #0xa
	bl StartBrightnessTransition
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02247948:
	mov r0, #1
	bl IsBrightnessTransitionActive
	cmp r0, #0
	beq _022479A2
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_0224795C:
	mov r0, #0xda
	ldr r1, [r4]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #0
	add r2, r1, #0
	bl ov41_02248750
	cmp r0, #0
	bne _02247974
	bl GF_AssertFail
_02247974:
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_0224797E:
	mov r0, #0xda
	ldr r1, [r4]
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov41_02248998
	cmp r0, #0
	beq _022479A2
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02247998:
	ldr r1, [r4, #4]
	mov r2, #1
	str r2, [r1]
	bl DestroySysTaskAndEnvironment
_022479A2:
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov41_02247850

	thumb_func_start ov41_022479A8
ov41_022479A8: ; 0x022479A8
	push {r3, r4, r5, r6, r7, lr}
	str r1, [sp]
	add r6, r0, #0
	add r4, r2, #0
	bl sub_0202BC60
	ldr r1, [sp]
	ldr r2, [sp]
	add r1, #0x84
	ldr r1, [r1]
	add r0, r6, #0
	add r2, #0x78
	bl sub_0202BC88
	cmp r4, #0
	beq _022479E8
	add r0, r4, #0
	mov r1, #0xd
	bl PlayerProfile_GetPlayerName_NewString
	add r5, r0, #0
	add r0, r4, #0
	bl PlayerProfile_GetTrainerGender
	add r2, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0202BDC8
	add r0, r5, #0
	bl String_Delete
_022479E8:
	ldr r0, [sp]
	mov r5, #0
	add r7, r0, #0
	ldr r4, [r0, #0x1c]
	add r7, #0x14
	cmp r4, r7
	beq _02247A0E
_022479F6:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02247A08
	ldr r1, [r4]
	add r0, r6, #0
	add r2, r5, #0
	bl sub_0202BCAC
	add r5, r5, #1
_02247A08:
	ldr r4, [r4, #8]
	cmp r4, r7
	bne _022479F6
_02247A0E:
	ldr r0, [sp]
	ldr r4, [r0, #0xc]
	add r7, r0, #4
	cmp r4, r7
	beq _02247A30
_02247A18:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02247A2A
	ldr r1, [r4]
	add r0, r6, #0
	add r2, r5, #0
	bl sub_0202BCAC
	add r5, r5, #1
_02247A2A:
	ldr r4, [r4, #8]
	cmp r4, r7
	bne _02247A18
_02247A30:
	ldr r1, [sp]
	add r0, r6, #0
	ldr r1, [r1, #0x74]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0202BD60
	add r0, r6, #0
	bl sub_0202BC38
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov41_022479A8

	thumb_func_start ov41_02247A48
ov41_02247A48: ; 0x02247A48
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #8
	bge _02247A64
	mov r0, #0xfd
	ldr r3, [r5]
	lsl r0, r0, #2
	add r0, r3, r0
	bl ov41_022480F8
_02247A64:
	ldr r0, [r5, #8]
	cmp r0, #1
	blt _02247AA2
	ldr r0, [r5]
	mov r1, #2
	ldr r0, [r0, #0x40]
	add r2, r1, #0
	add r3, r4, #0
	bl ScheduleSetBgPosText
	ldr r0, [r5]
	mov r1, #1
	ldr r0, [r0, #0x40]
	mov r2, #2
	add r3, r4, #0
	bl ScheduleSetBgPosText
	ldr r0, [r5]
	mov r1, #2
	ldr r0, [r0, #0x40]
	mov r2, #5
	add r3, r6, #0
	bl ScheduleSetBgPosText
	ldr r0, [r5]
	mov r1, #1
	ldr r0, [r0, #0x40]
	mov r2, #5
	add r3, r6, #0
	bl ScheduleSetBgPosText
_02247AA2:
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	cmp r0, r7
	ble _02247AB0
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02247AB0:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov41_02247A48

	thumb_func_start ov41_02247AB4
ov41_02247AB4: ; 0x02247AB4
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	mov r2, #0
	ldr r0, [r4, #0x40]
	mov r1, #3
	add r3, r2, #0
	bl BgSetPosTextAndCommit
	mov r1, #3
	ldr r0, [r4, #0x40]
	add r2, r1, #0
	mov r3, #0
	bl BgSetPosTextAndCommit
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	ldr r0, [r4, #0x40]
	add r3, sp, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r0, #0x19
	strb r0, [r3, #0x10]
	mov r0, #4
	strb r0, [r3, #0x11]
	ldrb r0, [r3, #0x12]
	mov r1, #0xf
	ldr r2, _02247B54 ; =0x000006EC
	bic r0, r1
	ldr r1, [r4, r2]
	sub r2, #0x34
	lsl r1, r1, #0x18
	lsr r5, r1, #0x18
	mov r1, #0xf
	and r1, r5
	orr r0, r1
	strb r0, [r3, #0x12]
	ldr r0, [r4, r2]
	add r1, sp, #0
	bl YesNoPrompt_InitFromTemplate
	add r0, r4, #0
	mov r1, #1
	bl ov41_02247D1C
	ldr r0, _02247B58 ; =0x04000008
	mov r2, #3
	ldrh r3, [r0]
	mov r1, #2
	bic r3, r2
	orr r1, r3
	strh r1, [r0]
	ldrh r3, [r0, #2]
	mov r1, #1
	bic r3, r2
	orr r1, r3
	strh r1, [r0, #2]
	ldrh r3, [r0, #4]
	mov r1, #3
	bic r3, r2
	orr r1, r3
	strh r1, [r0, #4]
	ldrh r1, [r0, #6]
	bic r1, r2
	strh r1, [r0, #6]
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02247B54: .word 0x000006EC
_02247B58: .word 0x04000008
	thumb_func_end ov41_02247AB4

	thumb_func_start ov41_02247B5C
ov41_02247B5C: ; 0x02247B5C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02247B78 ; =0x000006B8
	ldr r0, [r4, r0]
	bl YesNoPrompt_Reset
	add r0, r4, #0
	bl ov41_02247D3C
	ldr r0, [r4, #0x40]
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	pop {r4, pc}
	.balign 4, 0
_02247B78: .word 0x000006B8
	thumb_func_end ov41_02247B5C

	thumb_func_start ov41_02247B7C
ov41_02247B7C: ; 0x02247B7C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02247BB0 ; =0x000006B8
	ldr r0, [r5, r0]
	bl YesNoPrompt_HandleInput
	add r4, r0, #0
	beq _02247B96
	cmp r4, #1
	beq _02247B9A
	cmp r4, #2
	beq _02247B9E
	b _02247BA0
_02247B96:
	mov r0, #4
	pop {r3, r4, r5, pc}
_02247B9A:
	mov r4, #8
	b _02247BA0
_02247B9E:
	mov r4, #9
_02247BA0:
	ldr r0, _02247BB0 ; =0x000006B8
	ldr r0, [r5, r0]
	bl YesNoPrompt_IsInTouchMode
	ldr r1, _02247BB4 ; =0x000006EC
	str r0, [r5, r1]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02247BB0: .word 0x000006B8
_02247BB4: .word 0x000006EC
	thumb_func_end ov41_02247B7C

	thumb_func_start ov41_02247BB8
ov41_02247BB8: ; 0x02247BB8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, _02247C70 ; =0x000006DC
	str r1, [sp, #0x14]
	ldr r0, [r5, r0]
	add r7, r2, #0
	add r4, r3, #0
	bl Options_GetFrame
	add r6, r0, #0
	mov r0, #0
	mov r1, #0xe0
	mov r2, #0xe
	bl LoadFontPal1
	str r4, [sp]
	add r0, sp, #0x20
	ldrb r1, [r0, #0x10]
	mov r2, #3
	add r3, r7, #0
	str r1, [sp, #4]
	ldrb r0, [r0, #0x14]
	ldr r1, _02247C74 ; =0x000006BC
	str r0, [sp, #8]
	mov r0, #7
	str r0, [sp, #0xc]
	mov r0, #0x5a
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x40]
	ldr r1, [r5, r1]
	bl AddWindowParameterized
	ldr r0, _02247C74 ; =0x000006BC
	mov r1, #0xf
	ldr r0, [r5, r0]
	bl FillWindowPixelBuffer
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	ldr r0, [r5, #0x40]
	mov r1, #3
	mov r2, #0x3c
	mov r3, #8
	bl LoadUserFrameGfx2
	ldr r0, _02247C74 ; =0x000006BC
	mov r1, #0
	ldr r0, [r5, r0]
	mov r2, #0x3c
	mov r3, #8
	bl DrawFrameAndWindow2
	mov r0, #0
	mov r1, #0x1b
	mov r2, #0xd7
	mov r3, #0xd
	bl NewMsgDataFromNarc
	ldr r1, [sp, #0x14]
	add r6, r0, #0
	bl NewString_ReadMsgData
	add r4, r0, #0
	mov r3, #0
	str r3, [sp]
	ldr r0, _02247C78 ; =0x0001020F
	str r3, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02247C74 ; =0x000006BC
	str r3, [sp, #0xc]
	ldr r0, [r5, r0]
	mov r1, #1
	add r2, r4, #0
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, #0
	bl String_Delete
	add r0, r6, #0
	bl DestroyMsgData
	ldr r0, _02247C74 ; =0x000006BC
	ldr r0, [r5, r0]
	bl CopyWindowToVram
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02247C70: .word 0x000006DC
_02247C74: .word 0x000006BC
_02247C78: .word 0x0001020F
	thumb_func_end ov41_02247BB8

	thumb_func_start ov41_02247C7C
ov41_02247C7C: ; 0x02247C7C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _02247CF4 ; =0x000006BC
	add r4, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0xf
	bl FillWindowPixelBuffer
	mov r0, #0
	mov r1, #0x1b
	mov r2, #0xd7
	mov r3, #0xd
	bl NewMsgDataFromNarc
	add r1, r4, #0
	add r7, r0, #0
	bl NewString_ReadMsgData
	add r6, r0, #0
	mov r0, #1
	lsl r0, r0, #8
	mov r1, #0xd
	bl String_New
	add r4, r0, #0
	ldr r0, _02247CF8 ; =0x000006E8
	add r1, r4, #0
	ldr r0, [r5, r0]
	add r2, r6, #0
	bl StringExpandPlaceholders
	mov r3, #0
	str r3, [sp]
	ldr r0, _02247CFC ; =0x0001020F
	str r3, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02247CF4 ; =0x000006BC
	str r3, [sp, #0xc]
	ldr r0, [r5, r0]
	mov r1, #1
	add r2, r4, #0
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, #0
	bl String_Delete
	add r0, r6, #0
	bl String_Delete
	add r0, r7, #0
	bl DestroyMsgData
	ldr r0, _02247CF4 ; =0x000006BC
	ldr r0, [r5, r0]
	bl CopyWindowToVram
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02247CF4: .word 0x000006BC
_02247CF8: .word 0x000006E8
_02247CFC: .word 0x0001020F
	thumb_func_end ov41_02247C7C

	thumb_func_start ov41_02247D00
ov41_02247D00: ; 0x02247D00
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02247D18 ; =0x000006BC
	ldr r0, [r4, r0]
	bl ClearWindowTilemapAndCopyToVram
	ldr r0, _02247D18 ; =0x000006BC
	ldr r0, [r4, r0]
	bl RemoveWindow
	pop {r4, pc}
	nop
_02247D18: .word 0x000006BC
	thumb_func_end ov41_02247D00

	thumb_func_start ov41_02247D1C
ov41_02247D1C: ; 0x02247D1C
	push {r3, lr}
	sub sp, #8
	mov r2, #0x1b
	str r2, [sp]
	mov r2, #2
	mov r3, #1
	str r2, [sp, #4]
	bl ov41_02247BB8
	add sp, #8
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov41_02247D1C

	thumb_func_start ov41_02247D34
ov41_02247D34: ; 0x02247D34
	ldr r3, _02247D38 ; =ov41_02247C7C
	bx r3
	.balign 4, 0
_02247D38: .word ov41_02247C7C
	thumb_func_end ov41_02247D34

	thumb_func_start ov41_02247D3C
ov41_02247D3C: ; 0x02247D3C
	ldr r3, _02247D40 ; =ov41_02247D00
	bx r3
	.balign 4, 0
_02247D40: .word ov41_02247D00
	thumb_func_end ov41_02247D3C

	thumb_func_start ov41_02247D44
ov41_02247D44: ; 0x02247D44
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xfd
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov41_022482B4
	add r1, r0, #0
	ldr r0, _02247D60 ; =0x00000568
	add r0, r4, r0
	bl ov41_0224AC98
	pop {r4, pc}
	nop
_02247D60: .word 0x00000568
	thumb_func_end ov41_02247D44

	thumb_func_start ov41_02247D64
ov41_02247D64: ; 0x02247D64
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	ldr r0, [r4, #0x40]
	add r3, sp, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r0, #0x19
	strb r0, [r3, #0x10]
	mov r0, #4
	strb r0, [r3, #0x11]
	ldrb r0, [r3, #0x12]
	mov r1, #0xf
	ldr r2, _02247DEC ; =0x000006EC
	bic r0, r1
	ldr r1, [r4, r2]
	sub r2, #0x34
	lsl r1, r1, #0x18
	lsr r5, r1, #0x18
	mov r1, #0xf
	and r1, r5
	orr r0, r1
	strb r0, [r3, #0x12]
	ldr r0, [r4, r2]
	bl YesNoPrompt_Reset
	ldr r0, _02247DF0 ; =0x000006B8
	add r1, sp, #0
	ldr r0, [r4, r0]
	bl YesNoPrompt_InitFromTemplate
	add r0, r4, #0
	mov r1, #2
	bl ov41_02247D34
	ldr r0, _02247DF4 ; =0x04000008
	mov r2, #3
	ldrh r3, [r0]
	mov r1, #2
	bic r3, r2
	orr r1, r3
	strh r1, [r0]
	ldrh r3, [r0, #2]
	mov r1, #1
	bic r3, r2
	orr r1, r3
	strh r1, [r0, #2]
	ldrh r3, [r0, #4]
	mov r1, #3
	bic r3, r2
	orr r1, r3
	strh r1, [r0, #4]
	ldrh r1, [r0, #6]
	bic r1, r2
	strh r1, [r0, #6]
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02247DEC: .word 0x000006EC
_02247DF0: .word 0x000006B8
_02247DF4: .word 0x04000008
	thumb_func_end ov41_02247D64

	thumb_func_start ov41_02247DF8
ov41_02247DF8: ; 0x02247DF8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02247E2C ; =0x000006B8
	ldr r0, [r5, r0]
	bl YesNoPrompt_HandleInput
	add r4, r0, #0
	beq _02247E12
	cmp r4, #1
	beq _02247E16
	cmp r4, #2
	beq _02247E1A
	b _02247E1C
_02247E12:
	mov r0, #5
	pop {r3, r4, r5, pc}
_02247E16:
	mov r4, #6
	b _02247E1C
_02247E1A:
	mov r4, #7
_02247E1C:
	ldr r0, _02247E2C ; =0x000006B8
	ldr r0, [r5, r0]
	bl YesNoPrompt_IsInTouchMode
	ldr r1, _02247E30 ; =0x000006EC
	str r0, [r5, r1]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02247E2C: .word 0x000006B8
_02247E30: .word 0x000006EC
	thumb_func_end ov41_02247DF8

	thumb_func_start ov41_02247E34
ov41_02247E34: ; 0x02247E34
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	str r1, [sp]
	add r7, r2, #0
	add r0, r3, #0
	sub r0, r0, r7
	mov r1, #3
	str r3, [sp, #4]
	ldr r4, [sp, #0x2c]
	ldr r5, [sp, #0x30]
	bl _u32_div_f
	add r1, r7, r0
	lsl r0, r0, #1
	add r0, r7, r0
	str r0, [sp, #8]
	ldr r0, [sp]
	str r1, [sp, #0xc]
	sub r0, r0, r6
	mov r1, #3
	bl _u32_div_f
	add r2, r6, r0
	lsl r0, r0, #1
	ldr r1, [sp, #0x28]
	add r0, r6, r0
	cmp r1, #0xf
	bhi _02247F36
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02247E7A: ; jump table
	.short _02247E9A - _02247E7A - 2 ; case 0
	.short _02247EA2 - _02247E7A - 2 ; case 1
	.short _02247EAA - _02247E7A - 2 ; case 2
	.short _02247EB2 - _02247E7A - 2 ; case 3
	.short _02247EBC - _02247E7A - 2 ; case 4
	.short _02247EC6 - _02247E7A - 2 ; case 5
	.short _02247ED0 - _02247E7A - 2 ; case 6
	.short _02247EDA - _02247E7A - 2 ; case 7
	.short _02247EE6 - _02247E7A - 2 ; case 8
	.short _02247EF0 - _02247E7A - 2 ; case 9
	.short _02247EFA - _02247E7A - 2 ; case 10
	.short _02247F04 - _02247E7A - 2 ; case 11
	.short _02247F10 - _02247E7A - 2 ; case 12
	.short _02247F1A - _02247E7A - 2 ; case 13
	.short _02247F24 - _02247E7A - 2 ; case 14
	.short _02247F2E - _02247E7A - 2 ; case 15
_02247E9A:
	str r7, [r4]
	add sp, #0x10
	str r6, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02247EA2:
	str r7, [r4]
	add sp, #0x10
	str r2, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02247EAA:
	str r7, [r4]
	add sp, #0x10
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02247EB2:
	ldr r0, [sp]
	str r7, [r4]
	add sp, #0x10
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02247EBC:
	ldr r0, [sp, #0xc]
	add sp, #0x10
	str r0, [r4]
	str r6, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02247EC6:
	ldr r0, [sp, #0xc]
	add sp, #0x10
	str r0, [r4]
	str r2, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02247ED0:
	ldr r1, [sp, #0xc]
	add sp, #0x10
	str r1, [r4]
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02247EDA:
	ldr r0, [sp, #0xc]
	str r0, [r4]
	ldr r0, [sp]
	add sp, #0x10
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02247EE6:
	ldr r0, [sp, #8]
	add sp, #0x10
	str r0, [r4]
	str r6, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02247EF0:
	ldr r0, [sp, #8]
	add sp, #0x10
	str r0, [r4]
	str r2, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02247EFA:
	ldr r1, [sp, #8]
	add sp, #0x10
	str r1, [r4]
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02247F04:
	ldr r0, [sp, #8]
	str r0, [r4]
	ldr r0, [sp]
	add sp, #0x10
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02247F10:
	ldr r0, [sp, #4]
	add sp, #0x10
	str r0, [r4]
	str r6, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02247F1A:
	ldr r0, [sp, #4]
	add sp, #0x10
	str r0, [r4]
	str r2, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02247F24:
	ldr r1, [sp, #4]
	add sp, #0x10
	str r1, [r4]
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_02247F2E:
	ldr r0, [sp, #4]
	str r0, [r4]
	ldr r0, [sp]
	str r0, [r5]
_02247F36:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov41_02247E34

	thumb_func_start ov41_02247F3C
ov41_02247F3C: ; 0x02247F3C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1]
	mov r2, #0
	str r0, [r4, #0x2c]
	ldr r0, [r1, #4]
	str r0, [r4, #0x30]
	ldr r0, [r1, #8]
	str r0, [r4, #0x34]
	ldr r0, [r1, #0xc]
	str r0, [r4, #0x38]
	ldr r0, [r1, #0x10]
	str r0, [r4, #0x3c]
	ldr r0, [r1, #0x14]
	str r0, [r4, #0x40]
	ldr r0, [r1, #0x18]
	str r0, [r4, #0x44]
	str r2, [r4, #0x74]
	ldr r0, [r1, #0x1c]
	str r0, [r4]
	add r0, r4, #4
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	add r0, r4, #0
	add r0, #0x14
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	str r2, [r4, #0x24]
	ldr r0, [r1, #0x20]
	add r1, r4, #0
	str r0, [r4, #0x28]
	ldr r0, [r4]
	add r1, #0x78
	mov r2, #3
	bl ov41_022499F0
	add r4, #0x14
	add r1, r4, #0
	bl ov41_02249A50
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov41_02247F3C

	thumb_func_start ov41_02247F90
ov41_02247F90: ; 0x02247F90
	push {r4, lr}
	add r4, r0, #0
	bl ov41_02248038
	add r0, r4, #0
	bl ov41_022480E0
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x88
	bl memset
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov41_02247F90

	thumb_func_start ov41_02247FAC
ov41_02247FAC: ; 0x02247FAC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, [sp, #0x20]
	add r6, r1, #0
	str r0, [sp]
	add r5, r2, #0
	add r0, r4, #0
	add r7, r3, #0
	ldr r1, [r4, #0x3c]
	add r0, #0x78
	add r2, r6, #0
	add r3, r5, #0
	bl ov41_022495F0
	add r0, r4, #0
	ldr r1, [sp, #0x1c]
	add r0, #0x78
	bl ov41_02249700
	add r4, #0x78
	ldr r2, [sp, #0x18]
	add r0, r4, #0
	add r1, r7, #0
	bl ov41_0224971C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov41_02247FAC

	thumb_func_start ov41_02247FE0
ov41_02247FE0: ; 0x02247FE0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	str r3, [sp]
	add r5, r1, #0
	add r4, r2, #0
	ldr r1, [r6, #0x3c]
	add r0, #0x78
	add r2, r5, #0
	add r3, r4, #0
	bl ov41_022495F0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov41_02247FE0

	thumb_func_start ov41_02247FFC
ov41_02247FFC: ; 0x02247FFC
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r0, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r5, r1, #0
	add r4, r2, #0
	add r0, r6, #0
	ldr r1, [r6, #0x3c]
	add r0, #0x78
	add r2, r5, #0
	add r3, r4, #0
	bl ov41_02249604
	add sp, #8
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov41_02247FFC

	thumb_func_start ov41_02248020
ov41_02248020: ; 0x02248020
	ldr r3, _0224802C ; =ov41_02249A50
	add r2, r0, #0
	add r0, r1, #0
	ldr r1, [r2, #0x20]
	bx r3
	nop
_0224802C: .word ov41_02249A50
	thumb_func_end ov41_02248020

	thumb_func_start ov41_02248030
ov41_02248030: ; 0x02248030
	ldr r3, _02248034 ; =ov41_02249A60
	bx r3
	.balign 4, 0
_02248034: .word ov41_02249A60
	thumb_func_end ov41_02248030

	thumb_func_start ov41_02248038
ov41_02248038: ; 0x02248038
	ldr r3, _02248040 ; =ov41_022496E8
	add r0, #0x78
	bx r3
	nop
_02248040: .word ov41_022496E8
	thumb_func_end ov41_02248038

	thumb_func_start ov41_02248044
ov41_02248044: ; 0x02248044
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r4, r0, #0
	ldr r5, [r4, #0x24]
	ldr r0, [r4, #0x28]
	cmp r5, r0
	bge _0224809E
	ldr r0, [r4, #0x44]
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	str r0, [sp, #4]
	ldr r5, [r4, #0x30]
	lsl r0, r1, #2
	ldr r0, [r5, r0]
	str r0, [sp, #8]
	ldr r0, [r4, #0x34]
	ldr r0, [r0]
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	str r1, [sp, #0x18]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x38]
	ldrb r0, [r0, r1]
	str r0, [sp, #0x1c]
	add r0, sp, #0
	bl ov41_02245EE0
	ldr r1, [sp, #0x30]
	add r5, r0, #0
	bl ov41_02246014
	ldr r0, [r4]
	add r1, r5, #0
	mov r2, #0
	bl ov41_022499F0
	add r1, r4, #4
	bl ov41_02249A50
	ldr r0, [r4, #0x24]
	add sp, #0x20
	add r0, r0, #1
	str r0, [r4, #0x24]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0224809E:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, pc}
	thumb_func_end ov41_02248044

	thumb_func_start ov41_022480A4
ov41_022480A4: ; 0x022480A4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r3, r2, #0
	ldr r5, [r4, #0x24]
	ldr r2, [r4, #0x28]
	cmp r5, r2
	bge _022480C2
	mov r2, #1
	bl ov41_02248324
	ldr r0, [r4, #0x24]
	add r0, r0, #1
	str r0, [r4, #0x24]
	mov r0, #1
	pop {r3, r4, r5, pc}
_022480C2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov41_022480A4

	thumb_func_start ov41_022480C8
ov41_022480C8: ; 0x022480C8
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl ov41_02249A60
	ldr r0, [r4, #0x24]
	sub r0, r0, #1
	str r0, [r4, #0x24]
	bpl _022480DE
	bl GF_AssertFail
_022480DE:
	pop {r4, pc}
	thumb_func_end ov41_022480C8

	thumb_func_start ov41_022480E0
ov41_022480E0: ; 0x022480E0
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl ov41_02249A70
	add r0, r4, #0
	add r0, #0x14
	bl ov41_02249A70
	mov r0, #0
	str r0, [r4, #0x24]
	pop {r4, pc}
	thumb_func_end ov41_022480E0

	thumb_func_start ov41_022480F8
ov41_022480F8: ; 0x022480F8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r5, #4
	add r4, r1, #0
	add r6, r2, #0
	bl ov41_02249BE8
	add r5, #0x14
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov41_02249BE8
	pop {r4, r5, r6, pc}
	thumb_func_end ov41_022480F8

	thumb_func_start ov41_02248114
ov41_02248114: ; 0x02248114
	ldr r3, _0224811C ; =ov41_02249BE8
	add r0, #0x14
	bx r3
	nop
_0224811C: .word ov41_02249BE8
	thumb_func_end ov41_02248114

	thumb_func_start ov41_02248120
ov41_02248120: ; 0x02248120
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	neg r4, r2
	neg r7, r1
	add r0, r5, #4
	add r1, r7, #0
	add r2, r4, #0
	add r6, r3, #0
	bl ov41_02249BE8
	ldr r2, [sp, #0x18]
	add r0, r5, #4
	add r1, r6, #0
	bl ov41_02249BE8
	add r0, r5, #0
	add r0, #0x14
	add r1, r7, #0
	add r2, r4, #0
	bl ov41_02249BE8
	add r5, #0x14
	ldr r2, [sp, #0x18]
	add r0, r5, #0
	add r1, r6, #0
	bl ov41_02249BE8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov41_02248120

	thumb_func_start ov41_02248158
ov41_02248158: ; 0x02248158
	ldr r3, _02248160 ; =ov41_02248164
	mov r1, #0
	mvn r1, r1
	bx r3
	.balign 4, 0
_02248160: .word ov41_02248164
	thumb_func_end ov41_02248158

	thumb_func_start ov41_02248164
ov41_02248164: ; 0x02248164
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r7, #0
	ldr r4, [r7, #0x1c]
	add r6, #0x14
	add r5, r1, #0
	cmp r4, r6
	beq _02248192
_02248174:
	ldr r0, [r4, #4]
	cmp r0, #0
	ldr r0, [r4]
	bne _02248184
	add r1, r5, #0
	bl ov41_02246014
	b _0224818A
_02248184:
	add r1, r5, #0
	bl ov41_02249700
_0224818A:
	ldr r4, [r4, #8]
	sub r5, r5, #1
	cmp r4, r6
	bne _02248174
_02248192:
	ldr r4, [r7, #0xc]
	add r6, r7, #4
	sub r5, #8
	cmp r4, r6
	beq _022481BA
_0224819C:
	ldr r0, [r4, #4]
	cmp r0, #0
	ldr r0, [r4]
	bne _022481AC
	add r1, r5, #0
	bl ov41_02246014
	b _022481B2
_022481AC:
	add r1, r5, #0
	bl ov41_02249700
_022481B2:
	ldr r4, [r4, #8]
	sub r5, r5, #1
	cmp r4, r6
	bne _0224819C
_022481BA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov41_02248164

	thumb_func_start ov41_022481BC
ov41_022481BC: ; 0x022481BC
	push {r3, lr}
	mov r1, #0x12
	add r0, sp, #0
	strb r1, [r0]
	mov r1, #0x8f
	strb r1, [r0, #1]
	mov r1, #0x8a
	strb r1, [r0, #2]
	mov r1, #0xf6
	strb r1, [r0, #3]
	add r0, sp, #0
	bl TouchscreenHitbox_TouchHeldIsIn
	pop {r3, pc}
	thumb_func_end ov41_022481BC

	thumb_func_start ov41_022481D8
ov41_022481D8: ; 0x022481D8
	push {r3, lr}
	mov r3, #0x12
	add r0, sp, #0
	strb r3, [r0]
	mov r3, #0x8f
	strb r3, [r0, #1]
	mov r3, #0x8a
	strb r3, [r0, #2]
	mov r3, #0xf6
	strb r3, [r0, #3]
	add r0, sp, #0
	bl TouchscreenHitbox_PointIsIn
	pop {r3, pc}
	thumb_func_end ov41_022481D8

	thumb_func_start ov41_022481F4
ov41_022481F4: ; 0x022481F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, [r0, #0x1c]
	str r0, [sp]
	str r0, [sp, #4]
	add r0, #0x14
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	str r0, [sp, #4]
	cmp r5, r0
	beq _0224822A
_0224820C:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov41_02249AA8
	cmp r0, #1
	bne _02248222
	add sp, #0xc
	add r0, r5, #0
	pop {r4, r5, r6, r7, pc}
_02248222:
	ldr r5, [r5, #8]
	ldr r0, [sp, #4]
	cmp r5, r0
	bne _0224820C
_0224822A:
	ldr r0, [sp]
	ldr r5, [r0, #0xc]
	add r0, r0, #4
	str r0, [sp, #8]
	cmp r5, r0
	beq _02248254
_02248236:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov41_02249AA8
	cmp r0, #1
	bne _0224824C
	add sp, #0xc
	add r0, r5, #0
	pop {r4, r5, r6, r7, pc}
_0224824C:
	ldr r5, [r5, #8]
	ldr r0, [sp, #8]
	cmp r5, r0
	bne _02248236
_02248254:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov41_022481F4

	thumb_func_start ov41_0224825C
ov41_0224825C: ; 0x0224825C
	push {r3, r4, r5, lr}
	sub sp, #0x30
	add r5, r0, #0
	ldr r0, [r5, #0x40]
	add r4, r1, #0
	str r0, [sp]
	mov r0, #0x1a
	lsl r1, r4, #2
	str r0, [sp, #4]
	add r0, r1, #0
	add r0, #0x86
	str r0, [sp, #8]
	add r0, r1, #0
	add r0, #0x87
	str r0, [sp, #0xc]
	mov r0, #0x88
	str r0, [sp, #0x14]
	mov r0, #0x10
	str r0, [sp, #0x18]
	mov r0, #2
	str r0, [sp, #0x1c]
	mov r0, #1
	str r0, [sp, #0x20]
	mov r0, #0xd
	str r0, [sp, #0x24]
	mov r0, #0
	add r1, #0x88
	str r0, [sp, #0x28]
	add r0, r5, #0
	str r1, [sp, #0x10]
	add r0, #0x48
	add r1, sp, #0
	str r2, [sp, #0x2c]
	bl ov41_02249C7C
	str r4, [r5, #0x74]
	add sp, #0x30
	pop {r3, r4, r5, pc}
	thumb_func_end ov41_0224825C

	thumb_func_start ov41_022482A8
ov41_022482A8: ; 0x022482A8
	ldr r3, _022482B0 ; =ov41_02249CC4
	add r0, #0x48
	bx r3
	nop
_022482B0: .word ov41_02249CC4
	thumb_func_end ov41_022482A8

	thumb_func_start ov41_022482B4
ov41_022482B4: ; 0x022482B4
	ldr r0, [r0, #0x24]
	bx lr
	thumb_func_end ov41_022482B4

	thumb_func_start ov41_022482B8
ov41_022482B8: ; 0x022482B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	ldr r6, [r7, #0x1c]
	mov r4, #0
	add r7, #0x14
	str r1, [sp]
	str r2, [sp, #4]
	add r5, r4, #0
	cmp r6, r7
	beq _02248316
_022482CE:
	add r0, r6, #0
	add r1, sp, #0xc
	add r2, sp, #8
	bl ov41_02248400
	cmp r4, #0
	bge _022482E0
	neg r1, r4
	b _022482E2
_022482E0:
	add r1, r4, #0
_022482E2:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bge _022482EC
	neg r2, r0
	b _022482EE
_022482EC:
	add r2, r0, #0
_022482EE:
	cmp r2, r1
	ble _022482F4
	add r4, r0, #0
_022482F4:
	cmp r5, #0
	bge _022482FC
	neg r1, r5
	b _022482FE
_022482FC:
	add r1, r5, #0
_022482FE:
	ldr r0, [sp, #8]
	cmp r0, #0
	bge _02248308
	neg r2, r0
	b _0224830A
_02248308:
	add r2, r0, #0
_0224830A:
	cmp r2, r1
	ble _02248310
	add r5, r0, #0
_02248310:
	ldr r6, [r6, #8]
	cmp r6, r7
	bne _022482CE
_02248316:
	ldr r0, [sp]
	str r4, [r0]
	ldr r0, [sp, #4]
	str r5, [r0]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov41_022482B8

	thumb_func_start ov41_02248324
ov41_02248324: ; 0x02248324
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	str r1, [sp, #0x10]
	add r0, r1, #0
	add r1, sp, #0x54
	add r2, sp, #0x50
	add r4, r3, #0
	bl ov41_02249B44
	ldr r0, [sp, #0x10]
	add r1, sp, #0x4c
	add r2, sp, #0x48
	bl ov41_02249B94
	add r0, sp, #0x30
	str r0, [sp]
	ldr r0, [sp, #0x10]
	add r1, sp, #0x44
	add r2, sp, #0x34
	add r3, sp, #0x40
	bl ov41_02249BAC
	mov r0, #0x76
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r5, #0
	str r0, [sp, #0x20]
	ldr r6, [sp, #0x54]
	ldr r0, [sp, #0x4c]
	ldr r7, [sp, #0x44]
	add r1, r6, r0
	ldr r0, [sp, #0x34]
	add r4, r5, #0
	sub r0, r1, r0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x48]
	str r0, [sp, #0x24]
	add r1, r0, r1
	ldr r0, [sp, #0x30]
	sub r0, r1, r0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x40]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0xc]
	str r0, [sp, #0x2c]
	add r0, #0x78
	str r0, [sp, #0x2c]
_02248388:
	str r4, [sp]
	add r0, sp, #0x3c
	str r0, [sp, #4]
	add r0, sp, #0x38
	str r0, [sp, #8]
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x1c]
	add r0, r1, r0
	ldr r1, [sp, #0x18]
	add r2, r6, r7
	bl ov41_02247E34
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x3c]
	ldr r2, [sp, #0x38]
	ldr r3, [sp, #0x20]
	bl ov41_02249820
	add r4, r4, #1
	orr r5, r0
	cmp r4, #0x10
	blt _02248388
	cmp r5, #0
	beq _022483DE
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _022483D0
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r1, #0x14
	str r1, [sp, #0xc]
	bl ov41_02249A50
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
_022483D0:
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r1, [r1, #0x20]
	bl ov41_02249A50
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
_022483DE:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _022483F2
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r1, r1, #4
	bl ov41_02249A50
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
_022483F2:
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r1, [r1, #0x10]
	bl ov41_02249A50
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov41_02248324

