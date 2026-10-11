	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222BF64
	.public ov40_0222BF80
	.public ov40_0222D874
	.public ov40_0222D88C
	.public ov40_0222DA00
	.public ov40_0222DA84
	.public ov40_0222DAA8
	.public ov40_0222DD08
	.public ov40_0222FB90
	.public ov40_0222FBB4
	.public ov40_0222FCCC
	.public ov40_0222FDC4
	.public ov40_022306E0
	.public ov40_022306F0
	.public ov40_02230944
	.public ov40_02230964
	.public ov40_0224428C
	.public ov40_022442CC
	.public ov40_022442F0
	.public ov40_022443B4
	.public ov40_02244494
	.public ov40_02244514
	.public ov40_0224462C
	.public ov40_0224483C
	.public ov40_02244920
	.public ov40_02244A84
	.public ov40_02245CA0
	.public ov40_02245CA4

	.text

	thumb_func_start ov40_02244514
ov40_02244514: ; 0x02244514
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0224452C
	cmp r1, #1
	beq _0224458A
	b _02244618
_0224452C:
	add r0, r4, #0
	add r0, #8
	mov r1, #1
	bl ov40_0222DA84
	cmp r0, #0
	beq _02244540
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_02244540:
	ldr r0, [r5, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	ldr r0, [r5, #0x58]
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #2
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	b _02244626
_0224458A:
	mov r0, #0
	add r1, r0, #0
	bl SetBgPriority
	mov r0, #1
	mov r1, #3
	bl SetBgPriority
	mov r0, #2
	mov r1, #0
	bl SetBgPriority
	mov r0, #3
	mov r1, #2
	bl SetBgPriority
	mov r0, #4
	mov r1, #0
	bl SetBgPriority
	mov r0, #5
	mov r1, #3
	bl SetBgPriority
	mov r0, #6
	mov r1, #1
	bl SetBgPriority
	mov r0, #7
	mov r1, #2
	bl SetBgPriority
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	mov r1, #0x3e
	mov r3, #3
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	mov r1, #0x3e
	mov r3, #7
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	add r0, r5, #0
	mov r1, #1
	bl ov40_02230964
	add r0, r5, #0
	bl ov40_0222D874
	add r0, r5, #0
	mov r1, #0
	bl ov40_02230964
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02244626
_02244618:
	mov r1, #0
	bl ov40_0222FB90
	add r0, r5, #0
	mov r1, #2
	bl ov40_0222BF80
_02244626:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov40_02244514

	thumb_func_start ov40_0224462C
ov40_0224462C: ; 0x0224462C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #6
	bls _02244640
	b _02244808
_02244640:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224464C: ; jump table
	.short _0224465A - _0224464C - 2 ; case 0
	.short _022446A6 - _0224464C - 2 ; case 1
	.short _022446FC - _0224464C - 2 ; case 2
	.short _0224473E - _0224464C - 2 ; case 3
	.short _02244782 - _0224464C - 2 ; case 4
	.short _0224478E - _0224464C - 2 ; case 5
	.short _022447D8 - _0224464C - 2 ; case 6
_0224465A:
	bl ov40_022443B4
	add r0, r4, #0
	mov r1, #0
	bl ov40_0224428C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x54
	mov r3, #7
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0224481E
_022446A6:
	add r0, r5, #0
	add r0, #8
	mov r1, #0
	bl ov40_0222DA84
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #0
	mov r3, #2
	bl ov40_0222DA00
	cmp r0, #0
	beq _022446E2
	ldr r2, _02244824 ; =0x0000086C
	ldr r1, _02244828 ; =0x0000011A
	ldr r2, [r4, r2]
	add r0, r4, #0
	bl ov40_022442F0
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_022446E2:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	b _0224481E
_022446FC:
	ldr r0, _0224482C ; =ov40_02245CA0
	bl TouchscreenHitbox_TouchNewIsIn
	cmp r0, #0
	beq _0224471E
	add r0, r4, #0
	bl ov40_02230944
	ldr r1, _02244830 ; =0x0000011B
	add r0, r4, #0
	mov r2, #0
	bl ov40_022442F0
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0224481E
_0224471E:
	ldr r0, _02244834 ; =ov40_02245CA4
	bl TouchscreenHitbox_TouchNewIsIn
	cmp r0, #0
	beq _0224481E
	add r0, r4, #0
	bl ov40_02230944
	mov r0, #1
	str r0, [r5, #0xc]
	add r0, r4, #0
	bl ov40_022442CC
	mov r0, #4
	str r0, [r4, #8]
	b _0224481E
_0224473E:
	ldr r0, _0224482C ; =ov40_02245CA0
	bl TouchscreenHitbox_TouchNewIsIn
	cmp r0, #0
	beq _02244760
	add r0, r4, #0
	bl ov40_02230944
	add r0, r4, #0
	bl ov40_022306E0
	mov r0, #0
	str r0, [r5, #0xc]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0224481E
_02244760:
	ldr r0, _02244834 ; =ov40_02245CA4
	bl TouchscreenHitbox_TouchNewIsIn
	cmp r0, #0
	beq _0224481E
	add r0, r4, #0
	bl ov40_02230944
	add r0, r4, #0
	bl ov40_022442CC
	mov r0, #1
	str r0, [r5, #0xc]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0224481E
_02244782:
	bl ov40_02244494
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0224481E
_0224478E:
	add r0, r5, #0
	add r0, #8
	mov r1, #1
	bl ov40_0222DA84
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #1
	mov r3, #0
	bl ov40_0222DA00
	cmp r0, #0
	beq _022447BE
	ldr r0, [r5, #0xc]
	cmp r0, #1
	bne _022447B8
	add r0, r4, #0
	mov r1, #3
	bl ov40_0222BF80
	b _022447BE
_022447B8:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_022447BE:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	b _0224481E
_022447D8:
	bl ov40_022306F0
	cmp r0, #0
	beq _022447FE
	add r0, r4, #0
	bl ov40_0222FDC4
	add r0, r4, #0
	bl ov40_0222FCCC
	ldr r1, _02244838 ; =0x0000011D
	add r0, r4, #0
	mov r2, #0
	bl ov40_022442F0
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0224481E
_022447FE:
	add r0, r4, #0
	mov r1, #3
	bl ov40_0222BF80
	b _0224481E
_02244808:
	bl System_GetTouchNew
	cmp r0, #0
	beq _0224481E
	add r0, r4, #0
	bl ov40_022442CC
	add r0, r4, #0
	mov r1, #3
	bl ov40_0222BF80
_0224481E:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02244824: .word 0x0000086C
_02244828: .word 0x0000011A
_0224482C: .word ov40_02245CA0
_02244830: .word 0x0000011B
_02244834: .word ov40_02245CA4
_02244838: .word 0x0000011D
	thumb_func_end ov40_0224462C

	thumb_func_start ov40_0224483C
ov40_0224483C: ; 0x0224483C
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _02244856
	cmp r1, #1
	beq _0224485A
	cmp r1, #2
	beq _02244860
	b _02244896
_02244856:
	add r0, r1, #1
	str r0, [r5, #8]
_0224485A:
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_02244860:
	add r0, r5, #0
	bl ov40_0222D88C
	ldr r0, [r5, #0x24]
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r5, #0x24]
	mov r1, #6
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r5, #0x24]
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r5, #0x24]
	mov r1, #7
	bl BgClearTilemapBufferAndCommit
	add r0, r5, #0
	mov r1, #1
	bl ov40_0222FB90
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0224491A
_02244896:
	bl ov40_0222FBB4
	cmp r0, #0
	beq _0224491A
	add r0, r4, #0
	add r0, #8
	mov r1, #0
	bl ov40_0222DA84
	cmp r0, #0
	beq _022448EA
	add r0, r5, #0
	bl ov40_0222DD08
	add r0, r4, #0
	add r0, #8
	bl ov40_0222DAA8
	ldr r0, [r5, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r5, #0x28]
	mov r2, #0xc
	mov r3, #0x10
	bl PaletteData_BlendPalettes
	mov r1, #1
	ldr r3, [r5, #0x10]
	add r0, r5, #0
	add r2, r1, #0
	bl ov40_0222BF64
	add r0, r5, #0
	mov r1, #5
	bl ov40_0222BF80
	add r0, r4, #0
	bl Heap_Free
	b _0224491A
_022448EA:
	ldr r0, [r5, #0x58]
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #2
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
_0224491A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov40_0224483C

	thumb_func_start ov40_02244920
ov40_02244920: ; 0x02244920
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r0, #0xaa
	ldrb r0, [r0]
	str r1, [sp]
	str r2, [sp, #4]
	add r1, sp, #0x28
	add r2, sp, #0x24
	bl sub_0202FEB8
	ldr r1, [sp, #4]
	mov r0, #0x40
	bl String_New
	add r4, r0, #0
	ldr r1, [sp, #4]
	mov r0, #0x40
	bl String_New
	str r0, [sp, #0x1c]
	ldr r0, [sp, #4]
	mov r1, #0x80
	bl Heap_Alloc
	add r5, r0, #0
	mov r0, #0
	ldr r1, [sp, #0x28]
	str r0, [sp, #0x20]
	cmp r1, #0
	ble _022449EA
	ldr r0, [sp]
	mov r7, #0
	mvn r7, r7
	str r0, [sp, #0x14]
	str r0, [sp, #0x10]
	add r0, #0x3c
	str r0, [sp, #0x10]
	str r0, [sp, #0xc]
	lsr r6, r7, #0x10
_0224496E:
	ldr r2, [sp, #0x14]
	mov r1, #7
	add r2, #0xe
_02244974:
	ldrh r0, [r2, #0x3c]
	cmp r0, r6
	beq _02244982
	sub r1, r1, #1
	sub r2, r2, #2
	cmp r1, r7
	bgt _02244974
_02244982:
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _0224499E
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #4]
	bl ov40_02244A84
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x10]
	mov r2, #8
	bl CopyStringToU16Array
	b _022449CC
_0224499E:
	add r0, r4, #0
	bl String_SetEmpty
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	bl CopyU16ArrayToString
	ldr r2, [sp, #0x1c]
	mov r0, #0
	add r1, r4, #0
	bl FontID_String_AllCharsValid
	cmp r0, #0
	bne _022449CC
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #4]
	bl ov40_02244A84
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x10]
	mov r2, #8
	bl CopyStringToU16Array
_022449CC:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x28]
	add r0, #0x34
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, #0x34
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r0, #0x34
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, r1
	blt _0224496E
_022449EA:
	mov r0, #0
	str r0, [sp, #8]
	cmp r1, #0
	ble _02244A6E
_022449F2:
	ldr r0, [sp]
	ldr r0, [r0, #4]
	bl Party_GetCount
	mov r6, #0
	str r0, [sp, #0x18]
	cmp r0, #0
	ble _02244A5C
_02244A02:
	ldr r0, [sp]
	add r1, r6, #0
	ldr r0, [r0, #4]
	bl Party_GetMonByIndex
	mov r1, #0xac
	mov r2, #0
	add r7, r0, #0
	bl GetMonData
	cmp r0, #0
	beq _02244A5C
	mov r0, #0
	add r1, r5, #0
	mov r2, #0x80
	bl MIi_CpuClear16
	add r0, r7, #0
	mov r1, #0x75
	add r2, r5, #0
	bl GetMonData
	add r0, r4, #0
	bl String_SetEmpty
	add r0, r4, #0
	add r1, r5, #0
	bl CopyU16ArrayToString
	ldr r2, [sp, #0x1c]
	mov r0, #0
	add r1, r4, #0
	bl FontID_String_AllCharsValid
	cmp r0, #0
	bne _02244A54
	add r0, r7, #0
	mov r1, #0xb3
	mov r2, #0
	bl SetMonData
_02244A54:
	ldr r0, [sp, #0x18]
	add r6, r6, #1
	cmp r6, r0
	blt _02244A02
_02244A5C:
	ldr r0, [sp]
	ldr r1, [sp, #0x28]
	add r0, r0, #4
	str r0, [sp]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, r1
	blt _022449F2
_02244A6E:
	add r0, r4, #0
	bl String_Delete
	ldr r0, [sp, #0x1c]
	bl String_Delete
	add r0, r5, #0
	bl Heap_Free
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov40_02244920

