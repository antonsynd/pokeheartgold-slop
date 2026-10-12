	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_0224843C
	.public ov71_02248484
	.public ov71_02248530
	.public ov71_02248604
	.extern ov71_02246C6C
	.extern ov71_02246D40
	.extern ov71_02247000
	.extern ov71_022473A0
	.extern ov71_02247704
	.extern ov71_02247708
	.extern ov71_02248B54
	.extern ov71_02248D0C
	.extern ov71_02248E30
	.extern ov71_02248EB4
	.extern ov71_02249254
	.extern ov71_02249260
	.extern ov71_0224926C
	.extern ov71_0224BCE4
	.extern ov71_0224BCEC
	.extern ov71_0224BD1C
	.extern ov71_0224BD38
	.extern ov71_0224BD54
	.extern ov71_0224C0C4

	.text

	.text
	thumb_func_start ov71_0224843C
ov71_0224843C: ; 0x0224843C
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _0224844C
	cmp r1, #1
	beq _02248462
	b _0224847A
_0224844C:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0224847A
	ldr r0, _02248480 ; =ov71_0224C0C4
	mov r1, #0
	str r1, [r0]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _0224847A
_02248462:
	ldr r1, _02248480 ; =ov71_0224C0C4
	ldr r2, [r1]
	cmp r2, #0x1e
	bge _0224846E
	add r2, r2, #1
	str r2, [r1]
_0224846E:
	add r0, #0xd0
	ldr r0, [r0]
	cmp r0, #0
	beq _0224847A
	mov r0, #1
	pop {r4, pc}
_0224847A:
	mov r0, #0
	pop {r4, pc}
	nop
_02248480: .word ov71_0224C0C4
	thumb_func_end ov71_0224843C

	thumb_func_start ov71_02248484
ov71_02248484: ; 0x02248484
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, [r5]
	add r4, r0, #0
	cmp r1, #4
	bhi _0224852A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224849C: ; jump table
	.short _022484A6 - _0224849C - 2 ; case 0
	.short _022484B2 - _0224849C - 2 ; case 1
	.short _022484F6 - _0224849C - 2 ; case 2
	.short _0224850C - _0224849C - 2 ; case 3
	.short _02248522 - _0224849C - 2 ; case 4
_022484A6:
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0224852A
_022484B2:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #8
	ble _0224852A
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0]
	mov r1, #0
	mov r2, #0x1f
	mov r3, #0x18
	bl ov71_02248E30
	add r0, r4, #0
	bl ov71_02248EB4
	mov r1, #0x16
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0]
	mov r1, #0
	bl ov71_02247708
	add r4, #0xd8
	ldr r0, [r4]
	mov r1, #1
	bl ov71_02247704
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0224852A
_022484F6:
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov71_02249260
	cmp r0, #0
	beq _0224852A
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0224852A
_0224850C:
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov71_02249254
	cmp r0, #0
	beq _0224852A
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0224852A
_02248522:
	bl ov71_02248B54
	mov r0, #1
	pop {r3, r4, r5, pc}
_0224852A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov71_02248484

	thumb_func_start ov71_02248530
ov71_02248530: ; 0x02248530
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r1, [r5]
	add r4, r0, #0
	cmp r1, #4
	bhi _022485F4
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224854A: ; jump table
	.short _02248554 - _0224854A - 2 ; case 0
	.short _0224856A - _0224854A - 2 ; case 1
	.short _02248588 - _0224854A - 2 ; case 2
	.short _022485A4 - _0224854A - 2 ; case 3
	.short _022485E6 - _0224854A - 2 ; case 4
_02248554:
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov71_0224926C
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _022485F4
_0224856A:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #2
	ble _022485F4
	mov r0, #0
	str r0, [r4, #8]
	add r4, #0xc4
	ldr r0, [r4]
	bl ov71_02246D40
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _022485F4
_02248588:
	add r1, r4, #0
	add r1, #0xc8
	ldr r1, [r1]
	cmp r1, #0
	bne _022485F4
	mov r1, #0x59
	lsl r1, r1, #2
	add r1, r4, r1
	bl ov71_02248D0C
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _022485F4
_022485A4:
	ldr r0, [r4, #8]
	cmp r0, #0x28
	bge _022485B8
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0x28
	bne _022485B8
	ldr r0, _022485FC ; =0x000006AF
	bl PlaySE
_022485B8:
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov71_02249254
	cmp r0, #0
	beq _022485F4
	mov r0, #4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x39
	str r0, [sp, #8]
	mov r0, #0
	ldr r3, _02248600 ; =0x00007FFF
	add r1, r0, #0
	add r2, r0, #0
	bl BeginNormalPaletteFade
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _022485F4
_022485E6:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _022485F4
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_022485F4:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_022485FC: .word 0x000006AF
_02248600: .word 0x00007FFF
	thumb_func_end ov71_02248530

	thumb_func_start ov71_02248604
ov71_02248604: ; 0x02248604
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, _02248880 ; =ov71_0224BD54
	bl GfGfx_SetBanks
	ldr r2, _02248884 ; =0x04000304
	ldr r0, _02248888 ; =0xFFFF7FFF
	ldrh r1, [r2]
	and r0, r1
	strh r0, [r2]
	ldr r0, _0224888C ; =ov71_0224BCEC
	bl SetBothScreensModesAndDisable
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	ldr r2, _02248890 ; =ov71_0224BD1C
	mov r1, #2
	mov r3, #1
	bl InitBgFromTemplate
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	ldr r2, _02248890 ; =ov71_0224BD1C
	mov r1, #6
	mov r3, #1
	bl InitBgFromTemplate
	bl OS_DisableInterrupts
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	ldr r2, _02248894 ; =ov71_0224BD38
	mov r1, #3
	mov r3, #2
	bl InitBgFromTemplate
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	ldr r2, _02248894 ; =ov71_0224BD38
	mov r1, #7
	mov r3, #2
	bl InitBgFromTemplate
	add r0, r5, #0
	bl OS_RestoreInterrupts
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x39
	add r2, r4, #0
	str r0, [sp, #0xc]
	add r2, #0xc0
	mov r1, #2
	ldr r2, [r2]
	mov r0, #0x59
	add r3, r1, #0
	bl GfGfxLoader_LoadCharData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x39
	add r2, r4, #0
	str r0, [sp, #0xc]
	add r2, #0xc0
	ldr r2, [r2]
	mov r0, #0x59
	mov r1, #2
	mov r3, #6
	bl GfGfxLoader_LoadCharData
	mov r1, #0
	str r1, [sp]
	add r2, r4, #0
	str r1, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x39
	str r0, [sp, #0xc]
	add r2, #0xc0
	ldr r2, [r2]
	mov r0, #0x59
	mov r3, #2
	bl GfGfxLoader_LoadScrnData
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x39
	add r2, r4, #0
	str r0, [sp, #0xc]
	add r2, #0xc0
	ldr r2, [r2]
	mov r0, #0x59
	mov r3, #6
	bl GfGfxLoader_LoadScrnData
	ldr r0, [r4]
	bl ov71_022473A0
	add r5, r0, #0
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x39
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x59
	mov r1, #3
	add r3, r2, #0
	bl GfGfxLoader_GXLoadPal
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x39
	str r0, [sp, #4]
	mov r0, #0x59
	mov r1, #3
	mov r2, #4
	mov r3, #0
	bl GfGfxLoader_GXLoadPal
	ldr r0, _02248898 ; =ov71_0224BCE4
	lsl r1, r5, #1
	ldrh r5, [r0, r1]
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	mov r0, #0x39
	str r0, [sp, #8]
	mov r0, #0x59
	mov r1, #3
	mov r2, #0
	add r3, r5, #0
	bl GfGfxLoader_GXLoadPalWithSrcOffset
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	mov r0, #0x39
	str r0, [sp, #8]
	mov r0, #0x59
	mov r1, #3
	mov r2, #4
	add r3, r5, #0
	bl GfGfxLoader_GXLoadPalWithSrcOffset
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x39
	add r2, r4, #0
	str r0, [sp, #0xc]
	add r2, #0xc0
	ldr r2, [r2]
	mov r0, #0x59
	mov r1, #5
	mov r3, #3
	bl GfGfxLoader_LoadCharData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x39
	add r2, r4, #0
	str r0, [sp, #0xc]
	add r2, #0xc0
	ldr r2, [r2]
	mov r0, #0x59
	mov r1, #5
	mov r3, #7
	bl GfGfxLoader_LoadCharData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x39
	add r2, r4, #0
	str r0, [sp, #0xc]
	add r2, #0xc0
	ldr r2, [r2]
	mov r0, #0x59
	mov r1, #4
	mov r3, #3
	bl GfGfxLoader_LoadScrnData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x39
	add r2, r4, #0
	str r0, [sp, #0xc]
	add r2, #0xc0
	ldr r2, [r2]
	mov r0, #0x59
	mov r1, #4
	mov r3, #7
	bl GfGfxLoader_LoadScrnData
	mov r0, #0x39
	mov r1, #0x60
	bl Heap_Alloc
	add r5, r0, #0
	beq _0224880A
	mov r0, #0
	add r1, r5, #0
	mov r2, #0x60
	bl MIi_CpuClear32
	add r0, r5, #0
	mov r1, #0x60
	bl DC_FlushRange
	bl GX_BeginLoadBGExtPltt
	bl GXS_BeginLoadBGExtPltt
	mov r1, #6
	add r0, r5, #0
	lsl r1, r1, #0xc
	mov r2, #0x60
	bl GX_LoadBGExtPltt
	mov r1, #6
	add r0, r5, #0
	lsl r1, r1, #0xc
	mov r2, #0x60
	bl GXS_LoadBGExtPltt
	bl GX_EndLoadBGExtPltt
	bl GXS_EndLoadBGExtPltt
	add r0, r5, #0
	bl Heap_Free
_0224880A:
	add r0, r4, #0
	add r0, #0xc0
	mov r3, #0xff
	ldr r0, [r0]
	mov r1, #6
	mov r2, #3
	mvn r3, r3
	bl BgSetPosTextAndCommit
	mov r0, #7
	mov r1, #0
	bl ToggleBgLayer
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	add r0, r4, #0
	add r0, #0xc0
	mov r1, #3
	ldr r0, [r0]
	add r2, r1, #0
	mov r3, #0
	bl BgSetPosTextAndCommit
	add r0, r4, #0
	add r0, #0xc8
	mov r1, #1
	bl ov71_02246C6C
	add r1, r4, #0
	add r1, #0xc4
	str r0, [r1]
	mov r0, #0x4a
	lsl r0, r0, #2
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0xd0
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0xc0
	mov r1, #0x12
	mov r2, #1
	ldr r0, [r0]
	lsl r1, r1, #6
	lsl r2, r2, #0xc
	mov r3, #1
	bl ov71_02247000
	add r4, #0xcc
	str r0, [r4]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02248880: .word ov71_0224BD54
_02248884: .word 0x04000304
_02248888: .word 0xFFFF7FFF
_0224888C: .word ov71_0224BCEC
_02248890: .word ov71_0224BD1C
_02248894: .word ov71_0224BD38
_02248898: .word ov71_0224BCE4
	thumb_func_end ov71_02248604

