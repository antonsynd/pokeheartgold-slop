	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public TradeSequence_Init
	.extern ov71_02246B28
	.extern ov71_02246C48
	.extern ov71_022473E4

	.text

	.text
	thumb_func_start TradeSequence_Init
TradeSequence_Init: ; 0x02246960
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	bl IsPaletteFadeFinished
	cmp r0, #0
	bne _02246970
	b _02246B0C
_02246970:
	mov r0, #3
	mov r1, #0x38
	lsl r2, r0, #0xf
	bl Heap_Create
	mov r0, #3
	mov r1, #0x39
	lsl r2, r0, #0xf
	bl Heap_Create
	bl ov71_022473E4
	mov r1, #0xfd
	mov r0, #3
	lsl r1, r1, #2
	mov r2, #1
	bl Sound_SetSceneAndPlayBGM
	mov r1, #0x56
	add r0, r5, #0
	lsl r1, r1, #2
	mov r2, #0x38
	bl OverlayManager_CreateAndGetData
	add r4, r0, #0
	bne _022469A6
	b _02246B06
_022469A6:
	add r0, r5, #0
	bl OverlayManager_GetArgs
	str r0, [r4]
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #0x38
	bl BgConfig_Alloc
	str r0, [r4, #8]
	mov r0, #0x19
	lsl r0, r0, #4
	mov r1, #0x38
	bl String_New
	str r0, [r4, #0x14]
	mov r0, #0
	mov r1, #0x1b
	mov r2, #0xb3
	mov r3, #0x38
	bl NewMsgDataFromNarc
	str r0, [r4, #0x10]
	mov r0, #0x38
	bl MessageFormat_New
	str r0, [r4, #0xc]
	ldr r2, [r4]
	ldr r0, [r2, #0x10]
	cmp r0, #1
	beq _022469EE
	cmp r0, #2
	beq _02246A20
	cmp r0, #4
	beq _02246A2C
	b _02246A44
_022469EE:
	ldr r0, [r4, #0xc]
	ldr r2, [r2]
	mov r1, #0
	bl BufferBoxMonNickname
	ldr r2, [r4]
	ldr r0, [r4, #0xc]
	ldr r2, [r2, #4]
	mov r1, #1
	bl BufferBoxMonNickname
	ldr r2, [r4]
	ldr r0, [r4, #0xc]
	ldr r2, [r2, #8]
	mov r1, #2
	bl BufferPlayersName
	ldr r0, [r4]
	ldr r0, [r0, #4]
	bl ov71_02246B28
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r4, r1]
	b _02246A44
_02246A20:
	ldr r0, [r4, #0xc]
	ldr r2, [r2]
	mov r1, #0
	bl BufferBoxMonNickname
	b _02246A44
_02246A2C:
	ldr r0, [r4, #0xc]
	ldr r2, [r2, #4]
	mov r1, #1
	bl BufferBoxMonNickname
	ldr r0, [r4]
	ldr r0, [r0, #4]
	bl ov71_02246B28
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r4, r1]
_02246A44:
	bl NNS_G2dInitOamManagerModule
	mov r0, #1
	str r0, [sp]
	mov r0, #0x7f
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r1, #0x38
	str r1, [sp, #0x10]
	mov r1, #0x80
	add r2, r0, #0
	bl OamManager_Create
	add r1, r4, #0
	mov r0, #0x40
	add r1, #0x1c
	mov r2, #0x38
	bl G2dRenderer_Init
	str r0, [r4, #0x18]
	add r0, r4, #0
	mov r2, #0x3a
	add r0, #0x1c
	mov r1, #0
	lsl r2, r2, #0xe
	bl G2dRenderer_SetSubSurfaceCoords
	ldr r0, [r4]
	mov r1, #5
	ldr r0, [r0]
	mov r2, #0
	bl GetBoxMonData
	mov r1, #0x53
	lsl r1, r1, #2
	strh r0, [r4, r1]
	ldr r0, [r4]
	mov r1, #5
	ldr r0, [r0, #4]
	mov r2, #0
	bl GetBoxMonData
	mov r1, #0x15
	lsl r1, r1, #4
	strh r0, [r4, r1]
	ldr r0, [r4]
	mov r1, #0x70
	ldr r0, [r0]
	mov r2, #0
	bl GetBoxMonData
	ldr r1, _02246B14 ; =0x0000014E
	mov r2, #0
	strh r0, [r4, r1]
	ldr r0, [r4]
	mov r1, #0x70
	ldr r0, [r0, #4]
	bl GetBoxMonData
	ldr r1, _02246B18 ; =0x00000152
	strh r0, [r4, r1]
	mov r0, #0
	add r1, r1, #2
	str r0, [r4, r1]
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	bl GfGfx_DisableEngineAPlanes
	bl GfGfx_DisableEngineBPlanes
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _02246B1C ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2]
	ldr r2, _02246B20 ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	ldr r0, _02246B24 ; =ov71_02246C48
	add r1, r4, #0
	mov r2, #1
	bl SysTask_CreateOnPrintQueue
	mov r1, #0x51
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0
	add r1, #0x10
	str r0, [r4, r1]
_02246B06:
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, pc}
_02246B0C:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02246B14: .word 0x0000014E
_02246B18: .word 0x00000152
_02246B1C: .word 0xFFFFE0FF
_02246B20: .word 0x04001000
_02246B24: .word ov71_02246C48
	thumb_func_end TradeSequence_Init

