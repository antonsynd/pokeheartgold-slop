	.include "macros.inc"
	.include "overlay_117.inc"
	.include "global.inc"
	.public ov117_0225F524
	.extern ov117_0225F420
	.extern ov117_0225F470

	.text

	.text
	thumb_func_start ov117_0225F524
ov117_0225F524: ; 0x0225F524
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	str r0, [sp, #0x14]
	ldr r0, [r5]
	add r6, r2, #0
	mov r7, #4
	ldr r4, [r5, #0xc]
	cmp r0, #0xc
	bls _0225F53A
	b _0225FA98
_0225F53A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225F546: ; jump table
	.short _0225F560 - _0225F546 - 2 ; case 0
	.short _0225F72E - _0225F546 - 2 ; case 1
	.short _0225F744 - _0225F546 - 2 ; case 2
	.short _0225F76A - _0225F546 - 2 ; case 3
	.short _0225F79C - _0225F546 - 2 ; case 4
	.short _0225F806 - _0225F546 - 2 ; case 5
	.short _0225F820 - _0225F546 - 2 ; case 6
	.short _0225F860 - _0225F546 - 2 ; case 7
	.short _0225F944 - _0225F546 - 2 ; case 8
	.short _0225F95E - _0225F546 - 2 ; case 9
	.short _0225F99E - _0225F546 - 2 ; case 10
	.short _0225FA16 - _0225F546 - 2 ; case 11
	.short _0225FA26 - _0225F546 - 2 ; case 12
_0225F560:
	mov r1, #0x6f
	add r0, r7, #0
	lsl r1, r1, #2
	bl Heap_Alloc
	mov r2, #0x6f
	str r0, [r5, #0xc]
	mov r1, #0
	lsl r2, r2, #2
	bl memset
	ldr r4, [r5, #0xc]
	mov r1, #1
	add r0, r4, #4
	add r2, r1, #0
	bl ov01_021F05C4
	mov r0, #1
	str r0, [sp]
	ldrb r0, [r6, #1]
	mov r2, #5
	lsl r2, r2, #6
	str r0, [sp, #4]
	ldrb r0, [r6, #2]
	add r1, r4, #4
	add r2, r4, r2
	str r0, [sp, #8]
	ldrb r0, [r6, #3]
	str r0, [sp, #0xc]
	ldr r0, _0225F8D8 ; =0x000927C0
	str r0, [sp, #0x10]
	ldrb r3, [r6]
	ldr r0, [r5, #0x20]
	bl ov01_021F0614
	mov r0, #0
	mov r2, #5
	str r0, [sp]
	lsl r2, r2, #6
	str r0, [sp, #4]
	add r1, r4, r2
	add r0, r4, #4
	lsl r2, r2, #0xc
	lsl r3, r7, #0x11
	bl ov01_021F0718
	str r0, [r4]
	mov r1, #0
	bl Sprite_SetDrawFlag
	ldr r0, [r4]
	mov r1, #1
	bl Sprite_SetOamMode
	ldr r0, [r4]
	mov r1, #0
	bl Sprite_SetPriority
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #5
	mov r1, #0x6a
	lsl r0, r0, #0x12
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #4
	lsl r2, r7, #0x11
	str r2, [r4, r0]
	mov r0, #0
	add r1, #8
	str r0, [r4, r1]
	add r0, r7, #0
	str r0, [sp]
	ldr r0, _0225F8DC ; =0x04000050
	mov r1, #2
	mov r2, #0x3d
	mov r3, #0xc
	bl G2x_SetBlendAlpha_
	mov r0, #2
	mov r1, #0
	bl SetBgPriority
	mov r0, #3
	mov r1, #1
	bl SetBgPriority
	mov r0, #1
	mov r1, #2
	bl SetBgPriority
	mov r0, #0
	mov r1, #3
	bl SetBgPriority
	mov r0, #1
	mov r1, #0
	bl ToggleBgLayer
	mov r0, #2
	mov r1, #0
	bl ToggleBgLayer
	mov r0, #3
	mov r1, #0
	bl ToggleBgLayer
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r5, #0x10]
	mov r1, #0xd9
	ldr r0, [r0, #8]
	mov r2, #0xd8
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x20]
	mov r3, #0xd7
	bl ov01_021F0454
	mov r0, #0x20
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [r5, #0x20]
	mov r1, #0x10
	mov r2, #0
	mov r3, #0x40
	bl GfGfxLoader_GXLoadPalFromOpenNarc
	mov r0, #0x14
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r2, #2
	str r2, [sp, #8]
	mov r1, #0x66
	lsl r1, r1, #2
	str r2, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x10]
	add r1, r4, r1
	ldr r0, [r0, #8]
	mov r3, #0
	bl AddWindowParameterized
	mov r0, #0x66
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, [r6, #4]
	add r1, r7, #0
	bl ov117_0225F470
	mov r1, #0
	add r6, r0, #0
	str r1, [sp]
	ldr r0, _0225F8E0 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	lsl r0, r0, #2
	add r0, r4, r0
	add r2, r6, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r6, #0
	bl String_Delete
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r5, #0x10]
	mov r1, #0xda
	ldr r0, [r0, #8]
	mov r2, #0xd8
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x20]
	mov r3, #0xd7
	bl ov01_021F0454
	ldr r0, _0225F8E4 ; =0x04000048
	mov r2, #0x3f
	ldrh r3, [r0]
	mov r1, #8
	bic r3, r2
	orr r1, r3
	mov r3, #0x20
	orr r1, r3
	strh r1, [r0]
	ldrh r6, [r0, #2]
	mov r1, #0x17
	bic r6, r2
	orr r1, r6
	orr r1, r3
	strh r1, [r0, #2]
	add r1, r0, #0
	mov r2, #0xff
	sub r1, #8
	strh r2, [r1]
	ldr r1, _0225F8E8 ; =0x00006060
	sub r0, r0, #4
	strh r1, [r0]
	add r2, #0x8d
	add r0, r4, r2
	add r1, r7, #0
	bl ov01_021F12B4
	mov r1, #0x10
	mov r0, #1
	add r2, r1, #0
	str r0, [sp]
	sub r2, #0x20
	add r3, r5, #4
	bl ov01_021EFCF8
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0225FA98
_0225F72E:
	mov r0, #1
	add r1, r0, #0
	bl ToggleBgLayer
	mov r0, #0x6d
	mov r1, #0xc
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
_0225F744:
	ldr r0, [r5, #0x10]
	mov r1, #1
	ldr r0, [r0, #8]
	add r2, r1, #0
	mov r3, #0x18
	bl BgSetPosTextAndCommit
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bgt _0225F816
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0225FA98
_0225F76A:
	lsl r2, r7, #0x18
	ldr r1, [r2]
	ldr r0, _0225F8EC ; =0xFFFF1FFF
	and r1, r0
	lsl r0, r7, #0xb
	orr r0, r1
	str r0, [r2]
	mov r0, #3
	mov r1, #1
	bl ToggleBgLayer
	mov r0, #0x5d
	add r3, r7, #0
	lsl r0, r0, #2
	mov r2, #6
	str r3, [sp]
	add r0, r4, r0
	mov r1, #0
	lsl r2, r2, #0x10
	lsl r3, r3, #0xc
	bl ov01_021EFEC8
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
_0225F79C:
	ldr r0, [r5, #0x10]
	mov r1, #1
	ldr r0, [r0, #8]
	add r2, r1, #0
	mov r3, #0x18
	bl BgSetPosTextAndCommit
	mov r0, #0x5d
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov01_021EFF28
	cmp r0, #0
	bne _0225F7DC
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r3, #0x60
	asr r2, r0, #0xc
	sub r3, r3, r2
	ldr r0, _0225F8F0 ; =0x04000040
	mov r1, #0xff
	strh r1, [r0]
	lsl r3, r3, #8
	lsl r1, r1, #8
	add r2, #0x60
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	orr r1, r3
	strh r1, [r0, #4]
	b _0225FA98
_0225F7DC:
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _0225F8EC ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2]
	ldr r0, [r5, #0x10]
	mov r2, #0
	ldr r0, [r0, #8]
	mov r1, #1
	add r3, r2, #0
	bl BgSetPosTextAndCommit
	mov r0, #0x6d
	mov r1, #0xd
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0225FA98
_0225F806:
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	ble _0225F818
_0225F816:
	b _0225FA98
_0225F818:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0225FA98
_0225F820:
	add r0, r5, #0
	mov r1, #1
	mov r2, #0xdd
	bl ov117_0225F420
	mov r0, #1
	add r1, r0, #0
	bl SetBgPriority
	mov r0, #3
	mov r1, #2
	bl SetBgPriority
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _0225F8DC ; =0x04000050
	mov r1, #2
	mov r2, #0x3d
	mov r3, #0
	bl G2x_SetBlendAlpha_
	ldr r0, [r4]
	mov r1, #1
	bl Sprite_SetDrawFlag
	mov r0, #0x6d
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
_0225F860:
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r6, #0
	cmp r1, #0x10
	bgt _0225F892
	add r1, r1, #4
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	cmp r1, #0x10
	ble _0225F87C
	mov r1, #0x10
	str r1, [r4, r0]
	mov r6, #1
_0225F87C:
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r3, [r4, r0]
	mov r0, #0x10
	sub r0, r0, r3
	str r0, [sp]
	ldr r0, _0225F8DC ; =0x04000050
	mov r1, #2
	mov r2, #0x3d
	bl G2x_SetBlendAlpha_
_0225F892:
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r0, #2
	lsl r0, r0, #0x12
	sub r0, r0, r1
	lsl r0, r0, #1
	mov r1, #3
	bl _s32_div_f
	mov r1, #0x6a
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	add r0, r2, r0
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	asr r0, r0, #0xc
	cmp r0, #0x82
	bgt _0225F90C
	mov r0, #2
	lsl r0, r0, #0x12
	str r0, [r4, r1]
	cmp r6, #1
	bne _0225F90C
	mov r0, #1
	str r0, [sp]
	mov r0, #8
	mov r1, #0
	mov r2, #0x10
	mov r3, #0x1e
	bl StartBrightnessTransition
	ldr r1, _0225F8F4 ; =0x000014A5
	b _0225F8F8
	nop
_0225F8D8: .word 0x000927C0
_0225F8DC: .word 0x04000050
_0225F8E0: .word 0x00010200
_0225F8E4: .word 0x04000048
_0225F8E8: .word 0x00006060
_0225F8EC: .word 0xFFFF1FFF
_0225F8F0: .word 0x04000040
_0225F8F4: .word 0x000014A5
_0225F8F8:
	mov r0, #0
	bl BG_SetMaskColor
	mov r0, #0
	add r1, r0, #0
	bl ToggleBgLayer
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
_0225F90C:
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #4
	ble _0225F91E
	mov r0, #2
	mov r1, #1
	bl ToggleBgLayer
_0225F91E:
	mov r3, #0x6a
	lsl r3, r3, #2
	ldr r3, [r4, r3]
	ldr r0, [r5, #0x10]
	asr r3, r3, #0xc
	add r3, #8
	ldr r0, [r0, #8]
	mov r1, #2
	mov r2, #0
	neg r3, r3
	bl ScheduleSetBgPosText
	mov r1, #0x6a
	lsl r1, r1, #2
	ldr r0, [r4]
	add r1, r4, r1
	bl Sprite_SetMatrix
	b _0225FA98
_0225F944:
	mov r0, #1
	bl IsBrightnessTransitionActive
	cmp r0, #0
	beq _0225F96E
	mov r0, #0x6d
	mov r1, #0x10
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0225FA98
_0225F95E:
	mov r1, #0x6d
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	sub r0, r0, #1
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	cmp r0, #0
	ble _0225F970
_0225F96E:
	b _0225FA98
_0225F970:
	mov r3, #8
	add r0, r1, #0
	str r3, [sp]
	sub r1, #0xc
	sub r0, #0x40
	ldr r1, [r4, r1]
	ldr r2, _0225FABC ; =0xFFFA0000
	add r0, r4, r0
	lsl r3, r3, #0xa
	bl ov01_021EFEC8
	mov r0, #0x6d
	mov r1, #8
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #3
	mov r1, #0
	bl ToggleBgLayer
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0225FA98
_0225F99E:
	mov r1, #0x5d
	lsl r1, r1, #2
	add r0, r1, #0
	ldr r2, [r4, r1]
	add r0, #0x34
	add r1, #0x34
	str r2, [r4, r0]
	ldr r0, [r4, r1]
	asr r0, r0, #0xc
	add r0, #8
	neg r3, r0
	bpl _0225F9C4
	ldr r0, [r5, #0x10]
	mov r1, #2
	ldr r0, [r0, #8]
	mov r2, #0
	bl ScheduleSetBgPosText
	b _0225F9CC
_0225F9C4:
	mov r0, #2
	mov r1, #0
	bl ToggleBgLayer
_0225F9CC:
	mov r1, #0x6a
	lsl r1, r1, #2
	ldr r0, [r4]
	add r1, r4, r1
	bl Sprite_SetMatrix
	mov r0, #0x5d
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov01_021EFF28
	cmp r0, #0
	beq _0225FA98
	ldr r2, _0225FAC0 ; =0x04001000
	ldr r0, _0225FAC4 ; =0xFFFEFFFF
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	mov r0, #4
	mov r1, #0
	bl BG_SetMaskColor
	mov r1, #4
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0
	str r1, [sp, #8]
	ldr r3, _0225FAC8 ; =0x00007FFF
	add r1, r0, #0
	add r2, r0, #0
	bl BeginNormalPaletteFade
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0225FA98
_0225FA16:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0225FA98
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0225FA98
_0225FA26:
	ldr r1, [r5, #0x14]
	cmp r1, #0
	beq _0225FA30
	mov r0, #1
	str r0, [r1]
_0225FA30:
	mov r0, #0x63
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov01_021F12D0
	mov r0, #0x6e
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, [r4]
	bl Sprite_Delete
	mov r1, #5
	lsl r1, r1, #6
	add r0, r4, #4
	add r1, r4, r1
	bl ov01_021F06EC
	add r0, r4, #4
	bl ov01_021F05F4
	mov r0, #0x66
	lsl r0, r0, #2
	add r0, r4, r0
	bl RemoveWindow
	mov r0, #3
	mov r1, #0x20
	mov r2, #0
	mov r3, #4
	bl BG_ClearCharDataRange
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #4
	bl BG_ClearCharDataRange
	ldr r0, [r5, #0x10]
	mov r1, #3
	ldr r0, [r0, #8]
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r5, #0x10]
	mov r1, #1
	ldr r0, [r0, #8]
	bl BgClearTilemapBufferAndCommit
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	bl ov01_021EFCDC
_0225FA98:
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #1
	bne _0225FAAC
	sub r0, #0x2c
	add r0, r4, r0
	mov r1, #2
	bl ov01_021F1310
_0225FAAC:
	ldr r0, [r5]
	cmp r0, #0xc
	beq _0225FAB8
	ldr r0, [r4, #4]
	bl SpriteList_RenderAndAnimateSprites
_0225FAB8:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225FABC: .word 0xFFFA0000
_0225FAC0: .word 0x04001000
_0225FAC4: .word 0xFFFEFFFF
_0225FAC8: .word 0x00007FFF
	thumb_func_end ov117_0225F524

