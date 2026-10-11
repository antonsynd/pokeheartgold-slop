	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_0223FC74
	.public ov81_02240008
	.extern ov81_0223EBE4
	.extern ov81_022404B4
	.extern ov81_02240564
	.extern ov81_022406E0
	.extern ov81_02240728
	.extern ov81_02240FA4
	.extern ov81_02241144
	.extern ov81_02241398
	.extern ov81_02241E68
	.extern ov81_02241EDC
	.extern ov81_02241FC0
	.extern ov81_02242170
	.extern ov81_02242D74
	.extern ov81_02242D88
	.extern ov81_02242DD8
	.extern ov81_02242DE4
	.extern ov81_02242EA4
	.extern ov81_02242F60
	.extern ov81_02242F94
	.extern ov81_0224300C

	.text

	.text
	thumb_func_start ov81_0223FC74
ov81_0223FC74: ; 0x0223FC74
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldrb r0, [r4, #9]
	bl ov80_02236DD4
	ldrb r0, [r4, #8]
	cmp r0, #6
	bhi _0223FD48
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223FC90: ; jump table
	.short _0223FC9E - _0223FC90 - 2 ; case 0
	.short _0223FD3C - _0223FC90 - 2 ; case 1
	.short _0223FDC2 - _0223FC90 - 2 ; case 2
	.short _0223FE14 - _0223FC90 - 2 ; case 3
	.short _0223FEAA - _0223FC90 - 2 ; case 4
	.short _0223FF0C - _0223FC90 - 2 ; case 5
	.short _0223FF26 - _0223FC90 - 2 ; case 6
_0223FC9E:
	ldrb r1, [r4, #0x13]
	mov r0, #0x20
	orr r0, r1
	strb r0, [r4, #0x13]
	add r0, r4, #0
	add r0, #0x60
	bl ClearWindowTilemapAndCopyToVram
	add r0, r4, #0
	add r0, #0xa0
	bl ClearWindowTilemapAndCopyToVram
	add r0, r4, #0
	add r0, #0xb0
	bl ClearWindowTilemapAndCopyToVram
	add r0, r4, #0
	add r0, #0x50
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r4, #0
	add r0, #0x50
	bl ScheduleWindowCopyToVram
	add r0, r4, #0
	add r0, #0x70
	bl ClearWindowTilemapAndCopyToVram
	add r0, r4, #0
	add r0, #0x80
	bl ClearWindowTilemapAndCopyToVram
	add r0, r4, #0
	add r0, #0x90
	bl ClearWindowTilemapAndCopyToVram
	add r0, r4, #0
	add r0, #0xd0
	bl ClearWindowTilemapAndCopyToVram
	ldr r0, _0223FFF0 ; =0x00000474
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_0201980C
	add r0, r4, #0
	add r0, #0xc0
	mov r1, #1
	bl ClearFrameAndWindow2
	add r0, r4, #0
	add r0, #0xc0
	bl ClearWindowTilemapAndScheduleTransfer
	add r0, r4, #0
	add r0, #0x50
	bl ov81_0224300C
	ldr r0, _0223FFF4 ; =0x0000FFFF
	mov r1, #0
	str r0, [sp]
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #0x10
	add r3, r1, #0
	bl Pokepic_StartPaletteFadeAll
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #0
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223FFEC
_0223FD3C:
	ldrb r0, [r4, #0x19]
	add r0, r0, #1
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x19]
	cmp r0, #2
	bhs _0223FD4A
_0223FD48:
	b _0223FFEC
_0223FD4A:
	ldr r0, _0223FFF8 ; =0x0000047C
	mov r6, #0
	ldr r0, [r4, r0]
	cmp r0, #0
	bls _0223FD6C
	ldr r7, _0223FFF8 ; =0x0000047C
	add r5, r4, #0
_0223FD58:
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl Pokepic_Delete
	ldr r0, [r4, r7]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r0
	blo _0223FD58
_0223FD6C:
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov81_02242D74
	mov r0, #0xe3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov81_02242D74
	mov r0, #0x39
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov81_02242D74
	mov r0, #0xe5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov81_02242D74
	mov r0, #0xe6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov81_02242D74
	add r0, r4, #0
	bl ov81_02241FC0
	add r0, r4, #0
	bl ov81_02242170
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #2
	bl ov81_02242DE4
	mov r0, #0
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223FFEC
_0223FDC2:
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl Pokepic_ResumePaletteFade
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl ov81_02242DD8
	cmp r0, #1
	beq _0223FEB4
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov81_02242D88
	add r0, r4, #0
	mov r1, #6
	bl ov81_02240728
	add r0, r4, #0
	mov r1, #2
	bl ov81_022406E0
	ldr r0, [r4, #0x4c]
	ldr r3, [r4, #0xc]
	mov r1, #6
	mov r2, #0
	bl BgSetPosTextAndCommit
	ldr r0, _0223FFFC ; =0x00000611
	bl PlaySE
	mov r0, #0
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223FFEC
_0223FE14:
	add r0, r4, #0
	bl ov81_02240564
	cmp r0, #1
	bne _0223FEB4
	ldr r0, _0223FFFC ; =0x00000611
	mov r1, #0
	bl StopSE
	ldr r0, _02240000 ; =0x00000678
	bl PlaySE
	mov r0, #8
	str r0, [r4, #0x14]
	ldrb r0, [r4, #0x12]
	mov r6, #0
	cmp r0, #0
	ble _0223FE5A
	add r5, r4, #0
	add r7, r6, #0
_0223FE3C:
	mov r0, #0x36
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl ov81_02242EA4
	mov r1, #0x36
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r1, #0
	str r7, [r5, r0]
	ldrb r0, [r4, #0x12]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r0
	blt _0223FE3C
_0223FE5A:
	ldrb r0, [r4, #9]
	bl ov80_02237254
	cmp r0, #1
	bne _0223FE74
	ldrb r0, [r4, #0x12]
	cmp r0, #2
	bne _0223FE70
	mov r0, #4
	strb r0, [r4, #0x12]
	b _0223FE74
_0223FE70:
	mov r0, #2
	strb r0, [r4, #0x12]
_0223FE74:
	add r0, r4, #0
	bl ov81_0223EBE4
	ldrb r0, [r4, #0x12]
	mov r6, #0
	cmp r0, #0
	ble _0223FE98
	mov r7, #0x36
	add r5, r4, #0
	lsl r7, r7, #4
_0223FE88:
	ldr r0, [r5, r7]
	bl ov81_02242F60
	ldrb r0, [r4, #0x12]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r0
	blt _0223FE88
_0223FE98:
	ldr r0, _0223FFFC ; =0x00000611
	bl PlaySE
	mov r0, #0
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223FFEC
_0223FEAA:
	add r0, r4, #0
	bl ov81_022404B4
	cmp r0, #1
	beq _0223FEB6
_0223FEB4:
	b _0223FFEC
_0223FEB6:
	ldr r0, _0223FFFC ; =0x00000611
	mov r1, #0
	bl StopSE
	ldr r0, _02240000 ; =0x00000678
	bl PlaySE
	ldrb r0, [r4, #0x12]
	mov r6, #0
	cmp r0, #0
	ble _0223FEE4
	mov r7, #0x36
	add r5, r4, #0
	lsl r7, r7, #4
_0223FED2:
	ldr r0, [r5, r7]
	mov r1, #4
	bl ov81_02242F94
	ldrb r0, [r4, #0x12]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r0
	blt _0223FED2
_0223FEE4:
	mov r0, #8
	str r0, [r4, #0x14]
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov81_02242D88
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov81_02242DE4
	mov r0, #0
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223FFEC
_0223FF0C:
	mov r0, #0xe
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl ov81_02242DD8
	cmp r0, #1
	beq _0223FFEC
	mov r0, #0
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223FFEC
_0223FF26:
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	bne _0223FFAA
	mov r0, #2
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	ldrb r0, [r4, #0x13]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	ldr r0, _0223FFF8 ; =0x0000047C
	bne _0223FF60
	ldr r0, [r4, r0]
	mov r5, #0
	cmp r0, #0
	bls _0223FF96
	ldr r6, _0223FFF8 ; =0x0000047C
	mov r7, #1
_0223FF4A:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r5, #0
	add r3, r7, #0
	bl ov81_02241E68
	ldr r0, [r4, r6]
	add r5, r5, #1
	cmp r5, r0
	blo _0223FF4A
	b _0223FF96
_0223FF60:
	ldr r0, [r4, r0]
	mov r5, #0
	cmp r0, #0
	bls _0223FF96
	ldr r7, _0223FFF8 ; =0x0000047C
	add r6, r7, #0
	sub r6, #0xb4
_0223FF6E:
	ldrh r0, [r4, r6]
	cmp r5, r0
	bne _0223FF82
	mov r2, #0
	add r0, r4, #0
	add r1, r5, #0
	add r3, r2, #0
	bl ov81_02241EDC
	b _0223FF8E
_0223FF82:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r5, #0
	mov r3, #1
	bl ov81_02241E68
_0223FF8E:
	ldr r0, [r4, r7]
	add r5, r5, #1
	cmp r5, r0
	blo _0223FF6E
_0223FF96:
	ldr r0, _0223FFF4 ; =0x0000FFFF
	mov r1, #0x10
	str r0, [sp]
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #0
	mov r3, #1
	bl Pokepic_StartPaletteFadeAll
_0223FFAA:
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl Pokepic_ResumePaletteFade
	ldrb r0, [r4, #0x19]
	add r0, r0, #1
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0x19]
	cmp r0, #0x15
	blo _0223FFEC
	add r0, r4, #0
	bl ov81_02241398
	ldrb r1, [r4, #0x13]
	mov r0, #0x20
	bic r1, r0
	strb r1, [r4, #0x13]
	ldrb r0, [r4, #9]
	bl ov80_02237254
	cmp r0, #1
	bne _0223FFE4
	ldr r0, _02240004 ; =0x00000463
	mov r1, #1
	strb r1, [r4, r0]
	add r0, r4, #0
	bl ov81_02241144
_0223FFE4:
	mov r0, #0
	strb r0, [r4, #0x19]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223FFEC:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0223FFF0: .word 0x00000474
_0223FFF4: .word 0x0000FFFF
_0223FFF8: .word 0x0000047C
_0223FFFC: .word 0x00000611
_02240000: .word 0x00000678
_02240004: .word 0x00000463
	thumb_func_end ov81_0223FC74

	thumb_func_start ov81_02240008
ov81_02240008: ; 0x02240008
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #0
	beq _02240018
	cmp r1, #1
	beq _02240030
	b _02240040
_02240018:
	ldrb r2, [r4, #0x13]
	mov r1, #0xa
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x1f
	bl ov81_02240FA4
	cmp r0, #1
	bne _02240040
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02240040
_02240030:
	ldr r0, _02240044 ; =0x00000462
	ldrb r1, [r4, r0]
	cmp r1, #2
	blo _02240040
	mov r1, #0
	strb r1, [r4, r0]
	mov r0, #1
	pop {r4, pc}
_02240040:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
_02240044: .word 0x00000462
	thumb_func_end ov81_02240008

