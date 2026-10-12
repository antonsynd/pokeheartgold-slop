	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_02240088
	.public ov81_022400D0
	.public ov81_022401C8
	.public ov81_02240210
	.public ov81_02240230
	.public ov81_022403C0
	.extern ov81_02240698
	.extern ov81_022406E0
	.extern ov81_02240728
	.extern ov81_02240770
	.extern ov81_022407A8
	.extern ov81_0224080C
	.extern ov81_022408B8
	.extern ov81_022413E0
	.extern ov81_02242FC8
	.extern ov81_02243028
	.extern ov81_02243480
	.extern ov81_022434A8
	.extern ov81_022434C4
	.extern ov81_022434E0
	.extern ov81_022434FC
	.extern ov81_02243518
	.extern ov81_02243534
	.extern ov81_02243550
	.extern ov81_0224356C

	.text

	.text
	thumb_func_start ov81_02240088
ov81_02240088: ; 0x02240088
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _0224009A
	cmp r0, #1
	beq _022400BA
	b _022400C8
_0224009A:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _022400C8
_022400BA:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _022400C8
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_022400C8:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov81_02240088

	thumb_func_start ov81_022400D0
ov81_022400D0: ; 0x022400D0
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _022400E2
	cmp r0, #1
	beq _022401AC
	b _022401C0
_022400E2:
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02240114
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl Delete2dMenu
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov81_022413E0
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov81_02242FC8
	mov r0, #0xdf
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_02240114:
	ldr r0, [r4, #0x20]
	mov r1, #0
	bl ov80_0222A7CC
	mov r1, #0xf
	lsl r1, r1, #6
	ldr r0, [r4, r1]
	add r1, #8
	ldrh r1, [r4, r1]
	add r1, r1, #2
	bl Party_GetMonByIndex
	bl Mon_GetBoxMon
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov81_022408B8
	mov r1, #0xf1
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, r1, #6
	ldrh r1, [r4, r1]
	bl Party_GetMonByIndex
	bl Mon_GetBoxMon
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #2
	bl ov81_022408B8
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xc0
	bl ov81_02243028
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl Save_PlayerData_GetOptionsAddr
	bl Options_GetTextFrameDelay
	mov r3, #1
	str r3, [sp]
	str r0, [sp, #4]
	add r1, r4, #0
	str r3, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	str r3, [sp, #0x14]
	add r0, r4, #0
	add r1, #0xc0
	mov r2, #0x10
	bl ov81_0224080C
	strb r0, [r4, #0x10]
	add r0, r4, #0
	add r0, #0xc0
	bl ScheduleWindowCopyToVram
	mov r0, #0x50
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _022401C0
_022401AC:
	ldrb r0, [r4, #0x10]
	bl TextPrinterCheckActive
	cmp r0, #0
	bne _022401C0
	mov r0, #0
	strb r0, [r4, #0x19]
	add sp, #0x18
	mov r0, #1
	pop {r4, pc}
_022401C0:
	mov r0, #0
	add sp, #0x18
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov81_022400D0

	thumb_func_start ov81_022401C8
ov81_022401C8: ; 0x022401C8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02240204
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl PokepicManager_HandleLoadImgAndOrPltt
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022401EA
	bl PaletteData_PushTransparentBuffers
_022401EA:
	ldr r0, [r4, #0x4c]
	bl DoScheduledBgGpuUpdates
	bl GF_RunVramTransferTasks
	bl OamManager_ApplyAndResetBuffers
	ldr r3, _02240208 ; =0x027E0000
	ldr r1, _0224020C ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
_02240204:
	pop {r4, pc}
	nop
_02240208: .word 0x027E0000
_0224020C: .word 0x00003FF8
	thumb_func_end ov81_022401C8

	thumb_func_start ov81_02240210
ov81_02240210: ; 0x02240210
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _0224022C ; =ov81_0224356C
	add r3, sp, #0
	mov r2, #5
_0224021A:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0224021A
	add r0, sp, #0
	bl GfGfx_SetBanks
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_0224022C: .word ov81_0224356C
	thumb_func_end ov81_02240210

	thumb_func_start ov81_02240230
ov81_02240230: ; 0x02240230
	push {r4, r5, lr}
	sub sp, #0xd4
	ldr r5, _0224039C ; =ov81_02243480
	add r3, sp, #0xc4
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r5, _022403A0 ; =ov81_022434A8
	add r3, sp, #0xa8
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #1
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x64
	bl BG_ClearCharDataRange
	add r0, r4, #0
	mov r1, #1
	bl BgClearTilemapBufferAndCommit
	ldr r5, _022403A4 ; =ov81_022434C4
	add r3, sp, #0x8c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #2
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	ldr r5, _022403A8 ; =ov81_022434FC
	add r3, sp, #0x70
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #3
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	ldr r5, _022403AC ; =ov81_02243518
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #4
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x64
	bl BG_ClearCharDataRange
	add r0, r4, #0
	mov r1, #4
	bl BgClearTilemapBufferAndCommit
	ldr r5, _022403B0 ; =ov81_022434E0
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #5
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	mov r0, #5
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x64
	bl BG_ClearCharDataRange
	add r0, r4, #0
	mov r1, #5
	bl BgClearTilemapBufferAndCommit
	ldr r5, _022403B4 ; =ov81_02243534
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #6
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #6
	bl BgClearTilemapBufferAndCommit
	ldr r5, _022403B8 ; =ov81_02243550
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #7
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #7
	bl BgClearTilemapBufferAndCommit
	ldr r1, _022403BC ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #1
	strh r2, [r1]
	add r1, r0, #0
	bl GfGfx_EngineATogglePlanes
	add sp, #0xd4
	pop {r4, r5, pc}
	.balign 4, 0
_0224039C: .word ov81_02243480
_022403A0: .word ov81_022434A8
_022403A4: .word ov81_022434C4
_022403A8: .word ov81_022434FC
_022403AC: .word ov81_02243518
_022403B0: .word ov81_022434E0
_022403B4: .word ov81_02243534
_022403B8: .word ov81_02243550
_022403BC: .word 0x04000008
	thumb_func_end ov81_02240230

	thumb_func_start ov81_022403C0
ov81_022403C0: ; 0x022403C0
	push {r4, lr}
	add r4, r0, #0
	bl ov81_02240210
	ldr r0, [r4, #0x4c]
	bl ov81_02240230
	mov r0, #0x64
	bl PaletteData_Init
	mov r1, #0x1a
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #2
	lsl r2, r1, #8
	mov r3, #0x64
	bl PaletteData_AllocBuffers
	mov r2, #0x1a
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	mov r1, #0
	add r2, #0x60
	mov r3, #0x64
	bl PaletteData_AllocBuffers
	bl ov81_02240770
	add r0, r4, #0
	mov r1, #6
	bl ov81_02240728
	add r0, r4, #0
	mov r1, #3
	bl ov81_02240698
	add r0, r4, #0
	mov r1, #2
	bl ov81_022406E0
	ldrb r0, [r4, #0x13]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	beq _02240426
	ldr r0, [r4, #0x4c]
	ldr r3, [r4, #0xc]
	mov r1, #6
	mov r2, #0
	bl BgSetPosTextAndCommit
_02240426:
	mov r0, #2
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	add r0, r4, #0
	mov r1, #7
	bl ov81_022407A8
	pop {r4, pc}
	thumb_func_end ov81_022403C0

