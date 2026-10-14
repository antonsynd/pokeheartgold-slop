	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_02237C9C
	.public ov40_02237D6C
	.public ov40_02237D94
	.public ov40_02238290
	.extern ov40_0222BF80
	.extern ov40_0222C710
	.extern ov40_0222D980
	.extern ov40_0222DA00
	.extern ov40_0222DA84
	.extern ov40_0222DED0
	.extern ov40_0222DFB0
	.extern ov40_0222EED0
	.extern ov40_0222F734
	.extern ov40_0222F740
	.extern ov40_0222F858
	.extern ov40_0222F9E0
	.extern ov40_0222FA5C
	.extern ov40_022306C0
	.extern ov40_0223077C
	.extern ov40_02230964
	.extern ov40_02230CDC
	.extern ov40_02230DCC
	.extern ov40_02236EB4
	.extern ov40_02236F38
	.extern ov40_02236FE0
	.extern ov40_02237008
	.extern ov40_02237030
	.extern ov40_02237AC0
	.extern ov40_0223D540
	.extern ov40_0223D5CC
	.extern ov40_02245268
	.extern ov40_02245310

	.text

	.text
	thumb_func_start ov40_02237C9C
ov40_02237C9C: ; 0x02237C9C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	mov r1, #0x86
	lsl r1, r1, #4
	str r0, [sp, #0x14]
	ldr r0, [r0, r1]
	mov r1, #0x6d
	str r0, [sp, #0x24]
	mov r0, #1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	lsl r1, r1, #2
	ldr r5, _02237D60 ; =ov40_02245268
	mov r7, #0
	add r4, r0, r1
_02237CBA:
	add r0, r4, #0
	bl InitWindow
	ldrb r0, [r5, #1]
	add r1, r4, #0
	mov r2, #2
	str r0, [sp]
	ldrb r0, [r5, #2]
	str r0, [sp, #4]
	ldrb r0, [r5, #3]
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldrb r3, [r5]
	ldr r0, [r0, #0x24]
	bl AddWindowParameterized
	add r0, r4, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	cmp r7, #0
	bne _02237D16
	mov r1, #0xe
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x24]
	lsl r1, r1, #6
	ldr r2, [r2, r1]
	ldr r1, _02237D64 ; =0x00000136
	ldr r0, [r0, #0x48]
	add r1, r2, r1
	bl NewString_ReadMsgData
	add r6, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ov40_022306C0
	str r0, [sp, #0x1c]
	mov r0, #0
	str r0, [sp, #0x18]
_02237D16:
	cmp r6, #0
	beq _02237D3C
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02237D68 ; =0x000F0D00
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r2, r6, #0
	bl AddTextPrinterParameterizedWithColor
	add r0, r6, #0
	bl String_Delete
_02237D3C:
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	ldrb r1, [r5, #2]
	ldrb r0, [r5, #3]
	add r7, r7, #1
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #0x20]
	add r4, #0x10
	add r0, r0, r2
	add r5, r5, #4
	str r0, [sp, #0x20]
	cmp r7, #1
	blo _02237CBA
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02237D60: .word ov40_02245268
_02237D64: .word 0x00000136
_02237D68: .word 0x000F0D00
	thumb_func_end ov40_02237C9C

	thumb_func_start ov40_02237D6C
ov40_02237D6C: ; 0x02237D6C
	push {r3, r4, r5, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	mov r0, #0x6d
	lsl r0, r0, #2
	mov r4, #0
	add r5, r1, r0
_02237D7C:
	add r0, r5, #0
	bl ClearWindowTilemapAndCopyToVram
	add r0, r5, #0
	bl RemoveWindow
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #1
	blo _02237D7C
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov40_02237D6C

	thumb_func_start ov40_02237D94
ov40_02237D94: ; 0x02237D94
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	bl ov40_0223D5CC
	cmp r0, #0
	bne _02237DAE
	add sp, #0x14
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_02237DAE:
	ldr r0, [r4, #8]
	cmp r0, #8
	bls _02237DB6
	b _02238140
_02237DB6:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02237DC2: ; jump table
	.short _02237DD4 - _02237DC2 - 2 ; case 0
	.short _02237E1A - _02237DC2 - 2 ; case 1
	.short _02237EA8 - _02237DC2 - 2 ; case 2
	.short _02237EE8 - _02237DC2 - 2 ; case 3
	.short _02237F06 - _02237DC2 - 2 ; case 4
	.short _02237FAE - _02237DC2 - 2 ; case 5
	.short _02237FEC - _02237DC2 - 2 ; case 6
	.short _0223806C - _02237DC2 - 2 ; case 7
	.short _022380B4 - _02237DC2 - 2 ; case 8
_02237DD4:
	ldr r0, _02238124 ; =0x000006F4
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_020879E0
	add r0, r4, #0
	bl ov40_02237008
	add r0, r4, #0
	bl ov40_02236FE0
	ldr r0, [r4, #0x24]
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	mov r2, #8
	mov r1, #0x69
	str r2, [sp]
	mov r3, #0x12
	str r3, [sp, #4]
	mov r0, #1
	lsl r1, r1, #2
	str r0, [sp, #8]
	add r0, r5, r1
	add r1, r1, #4
	add r1, r5, r1
	bl ov40_0222D980
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_02237E1A:
	mov r0, #0x6b
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	bl ov40_0222DA84
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r5, r1
	add r1, r1, #4
	add r1, r5, r1
	mov r2, #1
	mov r3, #0
	bl ov40_0222DA00
	cmp r0, #0
	beq _02237E8A
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x3e
	mov r3, #3
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	mov r1, #3
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	add r3, r1, #0
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x4e
	mov r3, #7
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_02237E8A:
	ldr r0, [r4, #0x58]
	mov r3, #0x6b
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r3, r3, #2
	ldr r3, [r5, r3]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r1, #3
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	b _02238272
_02237EA8:
	mov r1, #0x6f
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #0x80
	mov r3, #0x60
	bl ov40_0223077C
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_020879E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0x18
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_02087A08
	ldr r1, _02238128 ; =0x00000121
	add r0, r4, #0
	bl ov40_0222DED0
	ldr r0, _0223812C ; =0x0000057D
	bl PlaySE
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02238272
_02237EE8:
	add r0, r4, #0
	bl ov40_0223D540
	mov r1, #0xe
	lsl r1, r1, #6
	ldr r1, [r5, r1]
	bl ov39_0222748C
	cmp r0, #1
	beq _02237EFE
	b _02238272
_02237EFE:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02238272
_02237F06:
	add r0, r4, #0
	bl ov40_0222DFB0
	add r0, r4, #0
	bl ov40_0223D540
	add r1, sp, #0x10
	bl ov39_02227D44
	cmp r0, #1
	ldr r0, _0223812C ; =0x0000057D
	bne _02237F9A
	mov r1, #0
	bl StopSE
	ldr r3, [sp, #0x10]
	add r0, r4, #0
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #4]
	mov r1, #3
	bl ov40_02230CDC
	mov r0, #0xe2
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r0, _02238130 ; =0x00002F64
	str r1, [r5, r0]
	add r0, r4, #0
	mov r1, #1
	bl ov40_02230964
	add r0, r4, #0
	bl ov40_02236EB4
	ldr r0, _02238124 ; =0x000006F4
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_020879E0
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_020878B0
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_020879E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_02087A08
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	ldr r0, [r4, #0x24]
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	add r0, r4, #0
	mov r1, #0
	bl ov40_02230964
	mov r0, #7
	str r0, [r4, #8]
	b _02238272
_02237F9A:
	mov r1, #0
	bl StopSE
	ldr r0, _02238134 ; =0x00000577
	bl PlaySE
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02238272
_02237FAE:
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_020879E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_02087A08
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _02237FE6
	ldr r0, [r4, #8]
	ldr r1, _02238138 ; =0x00000126
	add r0, r0, #1
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0xc]
	add r0, r4, #0
	bl ov40_0222DED0
	b _02238272
_02237FE6:
	mov r0, #0xff
	str r0, [r4, #8]
	b _02238272
_02237FEC:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #0x3c
	bge _02237FFE
	bl System_GetTouchNew
	cmp r0, #1
	bne _02238082
_02237FFE:
	mov r0, #0
	str r0, [r4, #0xc]
	add r0, r4, #0
	bl ov40_0222DFB0
	ldr r0, _02238130 ; =0x00002F64
	mov r1, #0
	str r1, [r5, r0]
	add r0, r4, #0
	mov r1, #1
	bl ov40_02230964
	add r0, r4, #0
	bl ov40_02236EB4
	ldr r0, _02238124 ; =0x000006F4
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_020879E0
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_020878B0
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_020879E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_02087A08
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	ldr r0, [r4, #0x24]
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	add r0, r4, #0
	mov r1, #0
	bl ov40_02230964
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02238272
_0223806C:
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r5, r1
	add r1, r1, #4
	add r1, r5, r1
	mov r2, #1
	mov r3, #0
	bl ov40_0222DA00
	cmp r0, #0
	bne _02238084
_02238082:
	b _02238272
_02238084:
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x4f
	mov r3, #7
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02238272
_022380B4:
	mov r0, #0x6b
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl ov40_0222DA84
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r5, r1
	add r1, r1, #4
	add r1, r5, r1
	mov r2, #0
	mov r3, #2
	bl ov40_0222DA00
	cmp r0, #0
	beq _02238104
	add r0, r4, #0
	mov r1, #2
	bl ov40_0222C710
	ldr r1, _0223813C ; =0x00000113
	add r0, r4, #0
	bl ov40_02237030
	add r0, r4, #0
	bl ov40_02236F38
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	add r0, r4, #0
	mov r1, #3
	bl ov40_0222BF80
_02238104:
	ldr r0, [r4, #0x58]
	mov r3, #0x6b
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r3, r3, #2
	ldr r3, [r5, r3]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r1, #3
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	b _02238272
	nop
_02238124: .word 0x000006F4
_02238128: .word 0x00000121
_0223812C: .word 0x0000057D
_02238130: .word 0x00002F64
_02238134: .word 0x00000577
_02238138: .word 0x00000126
_0223813C: .word 0x00000113
_02238140:
	mov r0, #0x6b
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl ov40_0222DA84
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r5, r1
	add r1, r1, #4
	mov r2, #0
	add r1, r5, r1
	add r3, r2, #0
	bl ov40_0222DA00
	cmp r0, #0
	beq _0223823A
	add r0, r4, #0
	bl ov40_02237C9C
	add r0, r4, #0
	bl ov40_02238290
	add r0, r4, #0
	mov r1, #1
	bl ov40_02230964
	ldr r0, _02238278 ; =0x00002EAC
	ldr r3, _0223827C ; =ov40_02245310
	add r2, r5, r0
	mov r6, #5
_0223817E:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r6, r6, #1
	bne _0223817E
	ldr r0, [r3]
	mov r1, #0xe2
	str r0, [r2]
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	ldr r0, _02238280 ; =0x00002EB0
	add r1, #0xf4
	str r2, [r5, r0]
	add r0, r4, r1
	add r1, r4, #0
	mov r2, #2
	bl ov40_0222F9E0
	ldr r0, _02238284 ; =0x0000049C
	add r0, r4, r0
	bl ov40_0222F734
	ldr r3, _02238278 ; =0x00002EAC
	ldr r0, _02238284 ; =0x0000049C
	add r2, r5, r3
	sub r3, #0xa0
	add r0, r4, r0
	add r1, r4, #0
	add r3, r5, r3
	bl ov40_0222EED0
	ldr r1, _02238288 ; =0x0000047C
	add r0, r4, r1
	add r1, #0x20
	add r1, r4, r1
	bl ov40_0222FA5C
	ldr r0, _02238284 ; =0x0000049C
	add r1, r4, #0
	add r0, r4, r0
	mov r2, #1
	bl ov40_0222F740
	ldr r0, _02238284 ; =0x0000049C
	mov r1, #0x38
	add r0, r4, r0
	mov r2, #0xb0
	bl ov40_0222F858
	add r0, r4, #0
	mov r1, #0
	bl ov40_02230964
	add r0, r4, #0
	bl ov40_02237AC0
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	ldr r3, _0223828C ; =0x000004D8
	mov r1, #0x6f
	ldr r6, [r4, r3]
	mov r3, #0x18
	mul r3, r6
	lsl r1, r1, #4
	add r3, #0x44
	lsl r3, r3, #0x10
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #0x10
	asr r3, r3, #0x10
	bl ov40_0223077C
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_020879E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0xc
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_02087A08
	add r0, r4, #0
	mov r1, #5
	bl ov40_0222BF80
_0223823A:
	ldr r0, [r4, #0x58]
	mov r3, #0x6b
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r3, r3, #2
	ldr r3, [r5, r3]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r1, #3
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	ldr r0, [r4, #0x58]
	mov r3, #0x6b
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r3, r3, #2
	ldr r3, [r5, r3]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r1, #2
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
_02238272:
	mov r0, #0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_02238278: .word 0x00002EAC
_0223827C: .word ov40_02245310
_02238280: .word 0x00002EB0
_02238284: .word 0x0000049C
_02238288: .word 0x0000047C
_0223828C: .word 0x000004D8
	thumb_func_end ov40_02237D94

	thumb_func_start ov40_02238290
ov40_02238290: ; 0x02238290
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	str r0, [sp]
	ldr r7, [r0, r1]
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	mov r6, #0
	cmp r0, #0
	ble _022382FA
	add r4, r7, #0
	add r5, r7, #0
_022382AA:
	mov r0, #0x14
	mov r1, #0x6d
	bl String_New
	ldr r1, _022382FC ; =0x00002E10
	str r0, [r4, r1]
	add r0, r1, #0
	mov r1, #0xe3
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, r1]
	bl CopyU16ArrayToString
	ldr r1, _022382FC ; =0x00002E10
	ldr r0, [sp]
	ldr r1, [r4, r1]
	bl ov40_02230DCC
	mov r0, #0x1e
	mov r1, #0x6d
	bl String_New
	ldr r1, _02238300 ; =0x00002E0C
	str r0, [r4, r1]
	add r0, r1, #0
	mov r1, #0xe3
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	ldr r0, [r4, r0]
	add r1, #0x80
	bl CopyU16ArrayToString
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	add r6, r6, #1
	add r4, #8
	add r5, r5, #4
	cmp r6, r0
	blt _022382AA
_022382FA:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022382FC: .word 0x00002E10
_02238300: .word 0x00002E0C
	thumb_func_end ov40_02238290

