	.include "macros.inc"
	.include "overlay_75.inc"
	.include "global.inc"
	.public ov75_022480B8
	.extern ov75_02247C70
	.extern ov75_02247D0C
	.extern ov75_02247D24
	.extern ov75_02248034
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov75_022480B8
ov75_022480B8: ; 0x022480B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0xa8
	ldr r1, [r1]
	cmp r1, #0
	beq _022480D6
	cmp r1, #1
	bne _022480CE
	b _02248220
_022480CE:
	cmp r1, #2
	bne _022480D4
	b _022482CE
_022480D4:
	b _0224837C
_022480D6:
	ldr r0, [r5, #0x34]
	mov r1, #0x2c
	bl NewString_ReadMsgData
	str r0, [sp, #0x14]
	bl String_CountLines
	add r1, r5, #0
	mov r2, #0
	add r1, #0xac
	str r2, [r1]
	add r1, r5, #0
	add r1, #0xb0
	str r2, [r1]
	add r1, r5, #0
	add r1, #0xb8
	str r2, [r1]
	add r1, r5, #0
	add r1, #0xb4
	str r0, [r1]
	mov r0, #5
	str r0, [sp]
	mov r0, #0x1e
	str r0, [sp, #4]
	mov r0, #0xc
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x94
	str r0, [sp, #0x10]
	add r1, r5, #0
	ldr r0, [r5, #4]
	add r1, #0xc4
	mov r2, #2
	mov r3, #1
	bl AddWindowParameterized
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1e
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x7f
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	add r1, r5, #0
	ldr r0, [r5, #4]
	add r1, #0xd4
	mov r2, #2
	mov r3, #1
	bl AddWindowParameterized
	add r0, r5, #0
	add r0, #0xc4
	mov r1, #0xf
	bl FillWindowPixelBuffer
	ldr r0, [sp, #0x14]
	bl String_GetLength
	mov r1, #0x74
	bl String_New
	add r7, r0, #0
	add r0, r5, #0
	mov r6, #0
	str r0, [sp, #0x18]
	add r0, #0xc4
	add r4, r6, #0
	str r0, [sp, #0x18]
_02248168:
	ldr r1, [sp, #0x14]
	add r0, r7, #0
	add r2, r6, #0
	bl String_GetLineN
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	mov r1, #0
	add r2, r7, #0
	mov r3, #4
	bl AddTextPrinterParameterized
	add r6, r6, #1
	add r4, #0x10
	cmp r6, #6
	blt _02248168
	ldr r0, [sp, #0x14]
	bl String_Delete
	add r0, r7, #0
	bl String_Delete
	add r0, r5, #0
	add r0, #0xc4
	mov r1, #1
	mov r2, #0x1f
	mov r3, #0xb
	bl DrawFrameAndWindow1
	add r0, r5, #0
	add r0, #0xc4
	bl CopyWindowToVram
	add r0, r5, #0
	add r0, #0xd4
	mov r1, #0xf
	bl FillWindowPixelBuffer
	add r0, r5, #0
	add r0, #0xd4
	mov r1, #1
	mov r2, #0x1f
	mov r3, #0xb
	bl DrawFrameAndWindow1
	add r0, r5, #0
	add r0, #0xd4
	bl CopyWindowToVram
	mov r0, #0x74
	bl ListMenuCursorNew
	add r1, r5, #0
	add r1, #0xe4
	str r0, [r1]
	add r0, r5, #0
	add r0, #0x48
	mov r1, #0xf
	bl FillWindowPixelBuffer
	add r0, r5, #0
	add r0, #0x48
	mov r1, #1
	bl ClearFrameAndWindow2
	add r0, r5, #0
	add r0, #0x48
	bl ClearWindowTilemapAndCopyToVram
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	add r0, r5, #0
	mov r1, #0
	add r0, #0xbc
	str r1, [r0]
	add r0, r5, #0
	add r0, #0xc0
	str r1, [r0]
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xa8
	str r1, [r0]
	b _022483D8
_02248220:
	ldr r1, _022483E4 ; =gSystem
	add r0, #0xac
	ldr r2, [r1, #0x4c]
	ldr r4, [r0]
	mov r0, #0x40
	tst r0, r2
	beq _02248248
	cmp r4, #0
	beq _022482BA
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0]
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0xac
	str r1, [r0]
	ldr r0, _022483E8 ; =0x000005DC
	bl PlaySE
	b _022482BA
_02248248:
	mov r0, #0x80
	tst r0, r2
	beq _0224829C
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0]
	add r1, r4, #6
	cmp r1, r0
	bge _0224826E
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xac
	str r1, [r0]
	ldr r0, _022483E8 ; =0x000005DC
	bl PlaySE
_0224826E:
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0]
	add r1, r0, #6
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0]
	cmp r1, r0
	bne _022482BA
	add r0, r5, #0
	bl ov75_02247C70
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xa8
	str r1, [r0]
	ldr r0, _022483E8 ; =0x000005DC
	bl PlaySE
	b _022482BA
_0224829C:
	ldr r1, [r1, #0x48]
	mov r0, #2
	tst r0, r1
	beq _022482BA
	ldr r0, _022483E8 ; =0x000005DC
	bl PlaySE
	add r0, r5, #0
	mov r1, #2
	add r0, #0xb8
	str r1, [r0]
	add r0, r5, #0
	mov r1, #0xff
	add r0, #0xa8
	str r1, [r0]
_022482BA:
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0]
	cmp r4, r0
	bne _022482C6
	b _022483D8
_022482C6:
	add r0, r5, #0
	bl ov75_02248034
	b _022483D8
_022482CE:
	ldr r1, _022483E4 ; =gSystem
	mov r2, #0x10
	ldr r1, [r1, #0x48]
	tst r2, r1
	bne _022482DE
	mov r2, #0x20
	tst r2, r1
	beq _022482FC
_022482DE:
	add r0, r5, #0
	add r0, #0xb0
	ldr r1, [r0]
	mov r0, #1
	eor r1, r0
	add r0, r5, #0
	add r0, #0xb0
	str r1, [r0]
	ldr r0, _022483E8 ; =0x000005DC
	bl PlaySE
	add r0, r5, #0
	bl ov75_02247C70
	b _022483D8
_022482FC:
	mov r2, #1
	tst r2, r1
	beq _02248326
	add r0, #0xb0
	ldr r1, [r0]
	mov r0, #2
	sub r1, r0, r1
	add r0, r5, #0
	add r0, #0xb8
	str r1, [r0]
	ldr r0, _022483E8 ; =0x000005DC
	bl PlaySE
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xa8
	str r1, [r0]
	b _022483D8
_02248326:
	mov r2, #2
	add r3, r1, #0
	tst r3, r2
	beq _02248348
	add r0, #0xb8
	str r2, [r0]
	ldr r0, _022483E8 ; =0x000005DC
	bl PlaySE
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xa8
	str r1, [r0]
	b _022483D8
_02248348:
	mov r2, #0x40
	tst r1, r2
	beq _022483D8
	bl ov75_02247D0C
	ldr r0, _022483E8 ; =0x000005DC
	bl PlaySE
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0]
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0xa8
	str r1, [r0]
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0]
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0xac
	str r1, [r0]
	add r0, r5, #0
	bl ov75_02248034
	b _022483D8
_0224837C:
	add r0, #0xc4
	mov r1, #0
	bl sub_0200E5D4
	add r0, r5, #0
	add r0, #0xc4
	bl ClearWindowTilemapAndCopyToVram
	add r0, r5, #0
	add r0, #0xc4
	bl RemoveWindow
	add r0, r5, #0
	add r0, #0xd4
	mov r1, #0
	bl sub_0200E5D4
	add r0, r5, #0
	add r0, #0xd4
	bl ClearWindowTilemapAndCopyToVram
	add r0, r5, #0
	add r0, #0xd4
	bl RemoveWindow
	add r0, r5, #0
	add r0, #0xe4
	ldr r0, [r0]
	bl DestroyListMenuCursorObj
	ldr r0, [r5, #4]
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	mov r0, #8
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	add r0, r5, #0
	mov r1, #0
	add r0, #0xa8
	str r1, [r0]
	add r5, #0xb8
	add sp, #0x1c
	ldr r0, [r5]
	pop {r4, r5, r6, r7, pc}
_022483D8:
	add r0, r5, #0
	bl ov75_02247D24
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_022483E4: .word gSystem
_022483E8: .word 0x000005DC
	thumb_func_end ov75_022480B8

