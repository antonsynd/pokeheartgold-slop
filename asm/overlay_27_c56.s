	.include "asm/macros.inc"
	.include "overlay_27.inc"
	.include "global.inc"
	.public ov27_0225C250
	.extern ov27_0225C434
	.extern ov27_0225C4AC
	.extern ov27_0225C72C
	.extern ov27_0225C80C
	.extern ov27_0225C914
	.extern ov27_0225D370
	.extern ov27_0225D38C
	.extern ov27_0225D3A8

	.text

	.text
	thumb_func_start ov27_0225C250
ov27_0225C250: ; 0x0225C250
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r7, r1, #0
	mov r0, #3
	str r2, [sp]
	mov r1, #8
	lsl r2, r0, #0xf
	str r3, [sp, #4]
	bl Heap_Create
	mov r0, #0
	bl GXS_SetGraphicsMode
	mov r0, #0x80
	bl GX_SetBankForSubBG
	mov r0, #1
	lsl r0, r0, #8
	bl GX_SetBankForSubOBJ
	ldr r2, _0225C37C ; =0x04001000
	ldr r0, _0225C380 ; =0xFFCFFFEF
	ldr r1, [r2]
	mov r3, #0
	and r1, r0
	mov r0, #0x10
	orr r0, r1
	str r0, [r2]
	ldr r2, _0225C384 ; =ov27_0225D370
	add r0, r5, #0
	mov r1, #4
	bl InitBgFromTemplate
	ldr r2, _0225C388 ; =ov27_0225D38C
	add r0, r5, #0
	mov r1, #5
	mov r3, #0
	bl InitBgFromTemplate
	ldr r2, _0225C38C ; =ov27_0225D3A8
	add r0, r5, #0
	mov r1, #6
	mov r3, #0
	bl InitBgFromTemplate
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	add r3, r0, #0
	bl BG_ClearCharDataRange
	mov r0, #5
	mov r1, #0x20
	mov r2, #0
	mov r3, #4
	bl BG_ClearCharDataRange
	mov r0, #6
	mov r1, #0x20
	mov r2, #0
	mov r3, #4
	bl BG_ClearCharDataRange
	add r0, r5, #0
	mov r1, #4
	bl BgClearTilemapBufferAndCommit
	add r0, r5, #0
	mov r1, #5
	bl BgClearTilemapBufferAndCommit
	mov r1, #0xe9
	ldr r0, _0225C390 ; =ov27_0225C434
	lsl r1, r1, #2
	mov r2, #0xa
	mov r3, #8
	bl CreateSysTaskAndEnvironment
	add r6, r0, #0
	bl SysTask_GetData
	add r4, r0, #0
	str r6, [r4, #0x1c]
	mov r0, #0
	str r0, [r4, #0x14]
	str r5, [r4, #0x18]
	ldr r1, [sp]
	str r7, [r4, #0x20]
	str r1, [r4, #0x24]
	str r0, [r4, #0x48]
	ldr r1, [sp, #4]
	str r0, [r4]
	str r1, [r4, #4]
	mov r1, #0xe7
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r1, r1, #4
	str r0, [r4, r1]
	str r0, [r4, #0x34]
	str r0, [r4, #0x44]
	mov r0, #4
	mov r1, #8
	bl FontID_Alloc
	ldr r1, [r4, #0x24]
	add r0, r4, #0
	add r1, #0xd2
	ldrb r1, [r1]
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1a
	bl ov27_0225C914
	add r0, r4, #0
	bl ov27_0225C4AC
	add r0, r4, #0
	bl ov27_0225C72C
	add r0, r4, #0
	mov r1, #0
	bl ov27_0225C80C
	ldr r2, _0225C37C ; =0x04001000
	ldr r0, _0225C394 ; =0xFFFF1FFF
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	mov r0, #1
	add r1, r0, #0
	bl GfGfx_EngineBTogglePlanes
	mov r0, #2
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #1
	bl TextFlags_SetCanTouchSpeedUpPrint
	add r0, r6, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225C37C: .word 0x04001000
_0225C380: .word 0xFFCFFFEF
_0225C384: .word ov27_0225D370
_0225C388: .word ov27_0225D38C
_0225C38C: .word ov27_0225D3A8
_0225C390: .word ov27_0225C434
_0225C394: .word 0xFFFF1FFF
	thumb_func_end ov27_0225C250

