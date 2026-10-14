	.include "macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_02239B58
	.extern ov40_0222BF64
	.extern ov40_0222BF80
	.extern ov40_0222D88C
	.extern ov40_0222DA84
	.extern ov40_0222DAA8
	.extern ov40_0222DD08
	.extern ov40_0222DED0
	.extern ov40_0222DFB0
	.extern ov40_0222FB90
	.extern ov40_0222FBB4
	.extern ov40_0223077C
	.extern ov40_02230964
	.extern ov40_02230CDC
	.extern ov40_02238FF4
	.extern ov40_02239538
	.extern ov40_022398F8
	.extern ov40_0223D540
	.extern ov40_0223D5CC

	.text

	.text
	thumb_func_start ov40_02239B58
ov40_02239B58: ; 0x02239B58
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	bl ov40_0223D5CC
	cmp r0, #0
	bne _02239B72
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_02239B72:
	ldr r0, [r4, #8]
	cmp r0, #6
	bls _02239B7A
	b _02239EA0
_02239B7A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02239B86: ; jump table
	.short _02239B94 - _02239B86 - 2 ; case 0
	.short _02239BD4 - _02239B86 - 2 ; case 1
	.short _02239BEC - _02239B86 - 2 ; case 2
	.short _02239CD6 - _02239B86 - 2 ; case 3
	.short _02239CF6 - _02239B86 - 2 ; case 4
	.short _02239DBA - _02239B86 - 2 ; case 5
	.short _02239E18 - _02239B86 - 2 ; case 6
_02239B94:
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
	ldr r1, _02239ED0 ; =0x00000117
	add r0, r4, #0
	bl ov40_0222DED0
	ldr r0, _02239ED4 ; =0x0000057D
	bl PlaySE
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02239EC8
_02239BD4:
	add r0, r4, #0
	bl ov40_0223D540
	bl ov39_022274B4
	cmp r0, #1
	beq _02239BE4
	b _02239EC8
_02239BE4:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02239EC8
_02239BEC:
	add r0, r4, #0
	bl ov40_0223D540
	add r1, sp, #4
	bl ov39_02227D44
	cmp r0, #1
	bne _02239C2A
	ldr r0, _02239ED4 ; =0x0000057D
	mov r1, #0
	bl StopSE
	add r0, r4, #0
	bl ov40_0222DFB0
	ldr r3, [sp, #4]
	add r0, r4, #0
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #4]
	mov r1, #4
	bl ov40_02230CDC
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_020879E0
	mov r0, #5
	str r0, [r4, #8]
	b _02239EC8
_02239C2A:
	mov r0, #0x71
	lsl r0, r0, #4
	add r1, r5, r0
	add r0, #0xc
	str r1, [r5, r0]
	mov r0, #0x83
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl Save_PlayerData_GetIGTAddr
	bl GetIGTHours
	ldr r1, _02239ED8 ; =0x00000728
	strh r0, [r5, r1]
	mov r0, #0x83
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl Save_PlayerData_GetIGTAddr
	bl GetIGTMinutes
	ldr r1, _02239EDC ; =0x0000072A
	strb r0, [r5, r1]
	mov r0, #0x83
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl Save_PlayerData_GetIGTAddr
	bl GetIGTSeconds
	ldr r1, _02239EE0 ; =0x0000072B
	strb r0, [r5, r1]
	add r0, r1, #0
	sub r0, #0xf
	ldr r0, [r5, r0]
	ldrb r2, [r0]
	add r0, r1, #1
	strb r2, [r5, r0]
	add r0, r1, #0
	sub r0, #0xf
	ldr r0, [r5, r0]
	ldrb r2, [r0, #1]
	add r0, r1, #0
	add r0, #9
	strb r2, [r5, r0]
	add r0, r1, #0
	sub r0, #0xf
	ldr r0, [r5, r0]
	ldrb r2, [r0, #2]
	add r0, r1, #0
	add r0, #0x11
	strb r2, [r5, r0]
	add r1, r1, #1
	ldrb r1, [r5, r1]
	add r0, r4, #0
	sub r1, r1, #1
	bl ov40_02239538
	mov r1, #0x73
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r1, r1, #4
	ldrb r1, [r5, r1]
	add r0, r4, #0
	sub r1, r1, #1
	bl ov40_02239538
	ldr r1, _02239EE4 ; =0x00000738
	str r0, [r5, r1]
	add r1, r1, #4
	ldrb r1, [r5, r1]
	add r0, r4, #0
	sub r1, r1, #1
	bl ov40_02239538
	mov r1, #0x1d
	lsl r1, r1, #6
	str r0, [r5, r1]
	ldr r0, _02239ED4 ; =0x0000057D
	mov r1, #0
	bl StopSE
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02239EC8
_02239CD6:
	add r0, r4, #0
	bl ov40_0223D540
	ldr r1, _02239EE8 ; =0x0000088C
	ldr r2, _02239EEC ; =0x0000072C
	ldr r1, [r4, r1]
	add r2, r5, r2
	bl ov39_022274D4
	cmp r0, #1
	beq _02239CEE
	b _02239EC8
_02239CEE:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02239EC8
_02239CF6:
	add r0, r4, #0
	bl ov40_0222DFB0
	add r0, r4, #0
	bl ov40_0223D540
	add r1, sp, #4
	bl ov39_02227D44
	cmp r0, #1
	bne _02239D34
	ldr r0, _02239ED4 ; =0x0000057D
	mov r1, #0
	bl StopSE
	ldr r3, [sp, #4]
	add r0, r4, #0
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #4]
	mov r1, #5
	bl ov40_02230CDC
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_020879E0
	mov r0, #5
	str r0, [r4, #8]
	b _02239EC8
_02239D34:
	ldr r1, [r5, #0x1c]
	mov r0, #0
	cmp r1, #0
	bne _02239D5C
	ldr r1, _02239EF0 ; =0x00000718
	ldr r2, [r5, r1]
	ldrb r1, [r2]
	cmp r1, #0
	beq _02239D58
	add r1, r2, #0
	add r1, #0x48
	ldrb r1, [r1]
	cmp r1, #0
	beq _02239D58
	add r2, #0x90
	ldrb r1, [r2]
	cmp r1, #0
	bne _02239D7A
_02239D58:
	mov r0, #1
	b _02239D7A
_02239D5C:
	ldr r1, _02239EF4 ; =0x00000714
	ldr r3, [r5, r1]
	ldrb r1, [r3]
	cmp r1, #0
	beq _02239D78
	mov r1, #0x72
	lsl r1, r1, #2
	ldrb r2, [r3, r1]
	cmp r2, #0
	beq _02239D78
	lsl r1, r1, #1
	ldrb r1, [r3, r1]
	cmp r1, #0
	bne _02239D7A
_02239D78:
	mov r0, #1
_02239D7A:
	cmp r0, #0
	beq _02239DA6
	mov r2, #0
	add r0, r4, #0
	mov r1, #5
	add r3, r2, #0
	bl ov40_02230CDC
	mov r1, #0x4b
	mov r0, #0x51
	lsl r1, r1, #2
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_020879E0
	mov r0, #5
	str r0, [r4, #8]
	b _02239EC8
_02239DA6:
	ldr r0, _02239ED4 ; =0x0000057D
	mov r1, #0
	bl StopSE
	ldr r0, _02239EF8 ; =0x00000577
	bl PlaySE
	mov r0, #0xff
	str r0, [r4, #8]
	b _02239EC8
_02239DBA:
	add r0, r4, #0
	mov r1, #1
	bl ov40_02230964
	add r0, r4, #0
	bl ov40_022398F8
	add r0, r5, #0
	add r0, #0xdc
	ldr r0, [r0]
	bl TouchHitboxController_Destroy
	add r5, #8
	add r0, r5, #0
	bl ov40_0222DAA8
	add r0, r4, #0
	bl ov40_0222D88C
	add r0, r4, #0
	mov r1, #0
	bl ov40_02230964
	ldr r0, [r4, #0x24]
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r4, #0x24]
	mov r1, #6
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r4, #0x24]
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r4, #0x24]
	mov r1, #7
	bl BgClearTilemapBufferAndCommit
	add r0, r4, #0
	mov r1, #1
	bl ov40_0222FB90
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02239EC8
_02239E18:
	add r0, r4, #0
	bl ov40_0222FBB4
	cmp r0, #0
	beq _02239EC8
	add r0, r5, #0
	add r0, #8
	mov r1, #0
	bl ov40_0222DA84
	cmp r0, #0
	beq _02239E6E
	add r0, r4, #0
	bl ov40_0222DD08
	add r0, r5, #0
	add r0, #8
	bl ov40_0222DAA8
	ldr r0, [r4, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x28]
	mov r2, #0xc
	mov r3, #0x10
	bl PaletteData_BlendPalettes
	mov r1, #1
	ldr r3, [r4, #0x10]
	add r0, r4, #0
	add r2, r1, #0
	bl ov40_0222BF64
	add r0, r4, #0
	mov r1, #5
	bl ov40_0222BF80
	add r0, r5, #0
	bl Heap_Free
	b _02239EC8
_02239E6E:
	ldr r0, [r4, #0x58]
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #2
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
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
	b _02239EC8
_02239EA0:
	add r0, r4, #0
	bl ov40_02238FF4
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
	add r0, r4, #0
	mov r1, #5
	bl ov40_0222BF80
_02239EC8:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02239ED0: .word 0x00000117
_02239ED4: .word 0x0000057D
_02239ED8: .word 0x00000728
_02239EDC: .word 0x0000072A
_02239EE0: .word 0x0000072B
_02239EE4: .word 0x00000738
_02239EE8: .word 0x0000088C
_02239EEC: .word 0x0000072C
_02239EF0: .word 0x00000718
_02239EF4: .word 0x00000714
_02239EF8: .word 0x00000577
	thumb_func_end ov40_02239B58

