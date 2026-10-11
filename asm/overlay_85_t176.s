	.include "asm/macros.inc"
	.include "overlay_85.inc"
	.include "global.inc"
	.public ov85_021E88AC
	.public ov85_021E8A08
	.extern ov85_021E8BB0
	.extern ov85_021E8C14
	.extern ov85_021E8C3C
	.extern ov85_021E8C5C
	.extern ov85_021E8D64
	.extern ov85_021E8E6C
	.extern ov85_021E8F58
	.extern ov85_021E8F88
	.extern ov85_021E9084
	.extern ov85_021E9160
	.extern ov85_021E9EC0
	.extern ov85_021E9FD0
	.extern ov85_021EA1AC
	.extern ov85_021EA3F0
	.extern ov85_021EA9E0

	.text

	.text
	thumb_func_start ov85_021E88AC
ov85_021E88AC: ; 0x021E88AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r4, r0, #0
	bl OverlayManager_GetArgs
	add r6, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	beq _021E88C8
	cmp r0, #1
	bne _021E88C6
	b _021E89E4
_021E88C6:
	b _021E89EE
_021E88C8:
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	bl GfGfx_DisableEngineAPlanes
	bl GfGfx_DisableEngineBPlanes
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021E89F4 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2]
	ldr r2, _021E89F8 ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	mov r0, #3
	mov r1, #0x66
	lsl r2, r2, #7
	bl Heap_Create
	mov r0, #0xd9
	mov r1, #0x66
	bl NARC_New
	add r7, r0, #0
	bne _021E890A
	bl GF_AssertFail
_021E890A:
	ldr r1, _021E89FC ; =0x00004AB0
	add r0, r4, #0
	mov r2, #0x66
	bl OverlayManager_CreateAndGetData
	ldr r2, _021E89FC ; =0x00004AB0
	add r4, r0, #0
	mov r1, #0
	bl memset
	str r4, [r6, #0x38]
	str r6, [r4, #0xc]
	ldr r0, [r6, #0x30]
	str r0, [r4, #0x10]
	mov r0, #0x66
	bl BgConfig_Alloc
	str r0, [r4, #0x14]
	mov r0, #0x66
	bl MessageFormat_New
	str r0, [r4, #0x34]
	mov r0, #0
	mov r1, #0x1b
	mov r2, #0xcf
	mov r3, #0x66
	bl NewMsgDataFromNarc
	str r0, [r4, #0x38]
	mov r0, #4
	mov r1, #8
	bl SetKeyRepeatTimers
	bl ov85_021E8C3C
	ldr r0, [r4, #0x14]
	bl ov85_021E8C5C
	mov r0, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x66
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #0x11
	add r2, r1, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	add r0, r4, #0
	add r1, r7, #0
	bl ov85_021E8E6C
	ldr r0, _021E8A00 ; =ov85_021E8C14
	add r1, r4, #0
	bl Main_SetVBlankIntrCB
	add r0, r4, #0
	add r1, r7, #0
	bl ov85_021E8D64
	bl ov85_021E8F58
	add r0, r4, #0
	add r1, r7, #0
	bl ov85_021E8F88
	add r0, r4, #0
	bl ov85_021E9084
	add r0, r4, #0
	bl ov85_021E9160
	mov r1, #0
	mov r0, #0x34
	add r2, r1, #0
	bl Sound_SetSceneAndPlayBGM
	ldr r0, [r6, #0x30]
	bl sub_02096CE0
	bl sub_0203897C
	mov r0, #3
	bl sub_02038C1C
	bl sub_0203769C
	cmp r0, #0
	bne _021E89C6
	mov r0, #0xd
	bl sub_0205A904
_021E89C6:
	bl sub_0203A880
	ldr r0, _021E8A04 ; =ov85_021E8BB0
	add r1, r4, #0
	mov r2, #5
	bl SysTask_CreateOnVBlankQueue
	str r0, [r4, #0x30]
	add r0, r7, #0
	bl NARC_Delete
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021E89EE
_021E89E4:
	mov r0, #0
	str r0, [r5]
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021E89EE:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021E89F4: .word 0xFFFFE0FF
_021E89F8: .word 0x04001000
_021E89FC: .word 0x00004AB0
_021E8A00: .word ov85_021E8C14
_021E8A04: .word ov85_021E8BB0
	thumb_func_end ov85_021E88AC

	thumb_func_start ov85_021E8A08
ov85_021E8A08: ; 0x021E8A08
	push {r4, lr}
	bl OverlayManager_GetData
	add r4, r0, #0
	bl System_GetTouchNew
	cmp r0, #0
	beq _021E8A1E
	ldr r0, _021E8AFC ; =gSystem
	mov r1, #1
	str r1, [r0, #0x5c]
_021E8A1E:
	bl sub_0203769C
	cmp r0, #0
	bne _021E8A3A
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0x30]
	cmp r0, #0
	beq _021E8A3A
	bl sub_02033250
	ldr r2, [r4, #0x10]
	ldr r1, [r2, #0x30]
	and r0, r1
	str r0, [r2, #0x30]
_021E8A3A:
	ldr r1, [r4]
	cmp r1, #3
	bhi _021E8AF0
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E8A4C: ; jump table
	.short _021E8A54 - _021E8A4C - 2 ; case 0
	.short _021E8A7E - _021E8A4C - 2 ; case 1
	.short _021E8ACC - _021E8A4C - 2 ; case 2
	.short _021E8AE4 - _021E8A4C - 2 ; case 3
_021E8A54:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E8AF0
	mov r0, #1
	str r0, [r4]
	bl sub_0203769C
	cmp r0, #0
	beq _021E8AF0
	bl ov85_021E9FD0
	cmp r0, #2
	ble _021E8AF0
	mov r2, #0
	ldr r0, [r4, #0x10]
	mov r1, #4
	add r3, r2, #0
	bl sub_02096D4C
	b _021E8AF0
_021E8A7E:
	mov r0, #0xd5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	lsl r2, r0, #2
	ldr r0, _021E8B00 ; =ov85_021EA9E0
	ldr r2, [r0, r2]
	cmp r2, #0
	beq _021E8A94
	add r0, r4, #0
	blx r2
	str r0, [r4]
_021E8A94:
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0x24]
	cmp r0, #0
	bne _021E8AAC
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r2, _021E8B04 ; =0x00010300
	add r0, r4, r0
	mov r1, #0
	add r3, r4, #0
	bl ov85_021E9EC0
_021E8AAC:
	add r0, r4, #0
	bl ov85_021EA1AC
	bl sub_0203769C
	cmp r0, #0
	bne _021E8AF0
	add r0, r4, #0
	mov r1, #1
	bl ov85_021EA3F0
	ldr r1, [r4]
	cmp r1, #1
	bne _021E8AF0
	str r0, [r4]
	b _021E8AF0
_021E8ACC:
	mov r0, #0xd5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	lsl r2, r0, #2
	ldr r0, _021E8B00 ; =ov85_021EA9E0
	ldr r2, [r0, r2]
	cmp r2, #0
	beq _021E8AF0
	add r0, r4, #0
	blx r2
	str r0, [r4]
	b _021E8AF0
_021E8AE4:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E8AF0
	mov r0, #1
	pop {r4, pc}
_021E8AF0:
	ldr r0, [r4, #0x60]
	bl SpriteList_RenderAndAnimateSprites
	mov r0, #0
	pop {r4, pc}
	nop
_021E8AFC: .word gSystem
_021E8B00: .word ov85_021EA9E0
_021E8B04: .word 0x00010300
	thumb_func_end ov85_021E8A08

