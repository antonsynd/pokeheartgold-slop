	.include "asm/macros.inc"
	.include "overlay_75.inc"
	.include "global.inc"
	.public ov75_02246F0C
	.public ov75_02247118
	.extern ov75_02246BE0
	.extern ov75_02246BE8
	.extern ov75_02247234
	.extern ov75_0224725C
	.extern ov75_02247450
	.extern ov75_02247790
	.extern ov75_02249B30
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov75_02246F0C
ov75_02246F0C: ; 0x02246F0C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	bl GfGfx_DisableEngineAPlanes
	bl GfGfx_DisableEngineBPlanes
	mov r1, #1
	lsl r1, r1, #0x1a
	ldr r0, [r1]
	ldr r2, _022470F4 ; =0xFFFFE0FF
	and r0, r2
	str r0, [r1]
	ldr r0, _022470F8 ; =0x04001000
	ldr r3, [r0]
	and r2, r3
	str r2, [r0]
	ldr r3, [r1]
	ldr r2, _022470FC ; =0xFFFF1FFF
	and r3, r2
	str r3, [r1]
	ldr r3, [r0]
	add r1, #0x50
	and r2, r3
	str r2, [r0]
	mov r2, #0
	strh r2, [r1]
	add r0, #0x50
	strh r2, [r0]
	mov r2, #7
	mov r0, #3
	mov r1, #0x74
	lsl r2, r2, #0x10
	bl Heap_Create
	ldr r1, _02247100 ; =0x0000041C
	add r0, r4, #0
	mov r2, #0x74
	bl OverlayManager_CreateAndGetData
	ldr r2, _02247100 ; =0x0000041C
	mov r1, #0
	add r5, r0, #0
	bl MI_CpuFill8
	add r0, r4, #0
	bl OverlayManager_GetArgs
	str r0, [r5]
	mov r0, #0x74
	bl BgConfig_Alloc
	str r0, [r5, #4]
	mov r0, #0x40
	mov r1, #0x74
	bl GF_CreateVramTransferManager
	mov r0, #4
	mov r1, #8
	bl SetKeyRepeatTimers
	ldr r0, [r5, #4]
	bl ov75_0224725C
	bl sub_020210BC
	mov r0, #4
	bl sub_02021148
	mov r0, #0xb
	mov r1, #0x40
	mov r2, #0x74
	bl MessageFormat_New_Custom
	str r0, [r5, #0x20]
	ldr r2, _02247104 ; =0x00000307
	mov r0, #0
	mov r1, #0x1b
	mov r3, #0x74
	bl NewMsgDataFromNarc
	str r0, [r5, #0x24]
	ldr r2, _02247108 ; =0x0000030A
	mov r0, #0
	mov r1, #0x1b
	mov r3, #0x74
	bl NewMsgDataFromNarc
	mov r2, #0x32
	str r0, [r5, #0x2c]
	mov r0, #0
	mov r1, #0x1b
	lsl r2, r2, #4
	mov r3, #0x74
	bl NewMsgDataFromNarc
	str r0, [r5, #0x30]
	mov r0, #0
	mov r1, #0x1b
	mov r2, #0xed
	mov r3, #0x74
	bl NewMsgDataFromNarc
	str r0, [r5, #0x28]
	mov r0, #0
	mov r1, #0x1b
	mov r2, #0xbc
	mov r3, #0x74
	bl NewMsgDataFromNarc
	str r0, [r5, #0x34]
	ldr r0, _0224710C ; =0x0000010E
	mov r1, #0x74
	bl String_New
	str r0, [r5, #0x38]
	mov r0, #1
	lsl r0, r0, #8
	mov r1, #0x74
	bl String_New
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x24]
	mov r1, #0x1f
	bl NewString_ReadMsgData
	str r0, [r5, #0x3c]
	add r0, r5, #0
	bl ov75_02247450
	add r0, r5, #0
	bl ov75_02247790
	ldr r0, [r5]
	bl ov75_02246BE8
	cmp r0, #0xc
	beq _02247032
	cmp r0, #0x16
	beq _0224705E
	b _02247074
_02247032:
	bl ov00_021EC5B4
	cmp r0, #0
	bne _02247058
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl sub_0203A05C
	cmp r0, #1
	bne _02247058
	mov r0, #0xc
	str r0, [r5, #8]
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl sub_02039528
	bl sub_0203A880
	b _0224707C
_02247058:
	mov r0, #0
	str r0, [r5, #8]
	b _0224707C
_0224705E:
	add r0, r5, #0
	mov r1, #0
	add r0, #0xe8
	str r1, [r0]
	bl sub_0203A880
	ldr r0, [r5]
	bl ov75_02246BE8
	str r0, [r5, #8]
	b _0224707C
_02247074:
	ldr r0, [r5]
	bl ov75_02246BE8
	str r0, [r5, #8]
_0224707C:
	ldr r0, [r5]
	mov r1, #0
	bl ov75_02246BE0
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x74
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	mov r0, #1
	add r1, r0, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #2
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #1
	add r1, r0, #0
	bl GfGfx_EngineBTogglePlanes
	mov r0, #2
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	ldr r0, _02247110 ; =gSystem + 0x60
	mov r1, #1
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	mov r0, #1
	bl TextFlags_SetCanABSpeedUpPrint
	mov r0, #0
	bl TextFlags_SetAutoScrollParam
	mov r0, #0
	bl TextFlags_SetCanTouchSpeedUpPrint
	ldr r0, _02247114 ; =ov75_02247234
	add r1, r5, #0
	bl Main_SetVBlankIntrCB
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_022470F4: .word 0xFFFFE0FF
_022470F8: .word 0x04001000
_022470FC: .word 0xFFFF1FFF
_02247100: .word 0x0000041C
_02247104: .word 0x00000307
_02247108: .word 0x0000030A
_0224710C: .word 0x0000010E
_02247110: .word gSystem + 0x60
_02247114: .word ov75_02247234
	thumb_func_end ov75_02246F0C

	thumb_func_start ov75_02247118
ov75_02247118: ; 0x02247118
	push {r4, r5, r6, lr}
	add r5, r1, #0
	bl OverlayManager_GetData
	ldr r1, [r5]
	add r4, r0, #0
	cmp r1, #0
	beq _02247132
	cmp r1, #1
	beq _02247140
	cmp r1, #2
	beq _0224716C
	b _02247178
_02247132:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _02247178
	mov r0, #1
	str r0, [r5]
	b _02247178
_02247140:
	ldr r6, [r4, #8]
	ldr r1, _0224717C ; =ov75_02249B30
	lsl r2, r6, #2
	ldr r1, [r1, r2]
	blx r1
	ldr r1, [r4, #8]
	cmp r6, r1
	beq _02247162
	add r1, r4, #0
	mov r2, #0
	add r1, #0x94
	str r2, [r1]
	add r1, r4, #0
	add r1, #0x9c
	str r2, [r1]
	add r4, #0x98
	str r2, [r4]
_02247162:
	cmp r0, #1
	bne _02247178
	mov r0, #2
	str r0, [r5]
	b _02247178
_0224716C:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _02247178
	mov r0, #1
	pop {r4, r5, r6, pc}
_02247178:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0224717C: .word ov75_02249B30
	thumb_func_end ov75_02247118

