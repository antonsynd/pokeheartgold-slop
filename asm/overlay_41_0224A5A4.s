	.include "asm/macros.inc"
	.include "overlay_41_0224A5A4.inc"
	.include "global.inc"

    .text

	thumb_func_start ov41_0224A5A4
ov41_0224A5A4: ; 0x0224A5A4
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r6, r1, #0
	add r7, r2, #0
	mov r4, #0
	add r5, r0, #0
_0224A5B0:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov41_0224A9BC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #4
	blt _0224A5B0
	ldr r0, [sp]
	add r1, r6, #0
	add r0, #0x40
	add r2, r7, #0
	str r0, [sp]
	bl ov41_0224A9F8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov41_0224A5A4

	thumb_func_start ov41_0224A5D4
ov41_0224A5D4: ; 0x0224A5D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r5, #0
	bne _0224A5E6
	bl GF_AssertFail
_0224A5E6:
	cmp r4, #4
	bge _0224A5FA
	lsl r0, r4, #4
	ldr r3, [sp, #0x18]
	add r0, r5, r0
	add r1, r6, #0
	add r2, r7, #0
	bl ov41_0224A238
	pop {r3, r4, r5, r6, r7, pc}
_0224A5FA:
	add r5, #0x40
	ldr r3, [sp, #0x18]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov41_0224A238
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov41_0224A5D4

	thumb_func_start ov41_0224A60C
ov41_0224A60C: ; 0x0224A60C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	cmp r6, #4
	bhi _0224A6B8
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224A624: ; jump table
	.short _0224A62E - _0224A624 - 2 ; case 0
	.short _0224A64C - _0224A624 - 2 ; case 1
	.short _0224A670 - _0224A624 - 2 ; case 2
	.short _0224A670 - _0224A624 - 2 ; case 3
	.short _0224A686 - _0224A624 - 2 ; case 4
_0224A62E:
	add r0, r4, #0
	bl ov41_0224A8B0
	mov r1, #0x1a
	add r0, r4, #0
	lsl r1, r1, #6
	mov r2, #0
	add r3, r5, #0
	bl ov41_0224A918
	add r0, r4, #0
	add r1, r5, #0
	bl ov41_0224A1DC
	pop {r4, r5, r6, pc}
_0224A64C:
	add r0, r4, #0
	add r0, #0x10
	bl ov41_0224A8B0
	add r0, r4, #0
	mov r1, #0x1a
	add r0, #0x10
	lsl r1, r1, #6
	mov r2, #0
	add r3, r5, #0
	bl ov41_0224A918
	add r4, #0x10
	add r0, r4, #0
	add r1, r5, #0
	bl ov41_0224A1DC
	pop {r4, r5, r6, pc}
_0224A670:
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl ov41_0224A1EC
	lsl r0, r6, #4
	add r0, r4, r0
	add r1, r5, #0
	bl ov41_0224A1DC
	pop {r4, r5, r6, pc}
_0224A686:
	ldr r0, [r4, #0x60]
	cmp r0, #1
	bne _0224A6BC
	add r0, r4, #0
	add r0, #0x40
	bl ov41_0224A8B0
	add r0, r4, #0
	add r0, #0x40
	add r1, r5, #0
	bl ov41_0224A8D4
	add r0, r4, #0
	ldr r1, _0224A6C0 ; =0x000005E2
	add r0, #0x40
	mov r2, #0
	add r3, r5, #0
	bl ov41_0224A918
	add r4, #0x40
	add r0, r4, #0
	add r1, r5, #0
	bl ov41_0224A1DC
	pop {r4, r5, r6, pc}
_0224A6B8:
	bl GF_AssertFail
_0224A6BC:
	pop {r4, r5, r6, pc}
	nop
_0224A6C0: .word 0x000005E2
	thumb_func_end ov41_0224A60C

	thumb_func_start ov41_0224A6C4
ov41_0224A6C4: ; 0x0224A6C4
	push {r4, r5, r6, lr}
	sub sp, #0x90
	add r6, r0, #0
	mov r0, #0
	str r1, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	add r5, r2, #0
	str r0, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r0, [r5, #0x48]
	add r4, r3, #0
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x4c]
	add r3, r1, #0
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x50]
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x54]
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r0, sp, #0x5c
	bl CreateSpriteResourcesHeader
	ldr r0, [r5, #0x44]
	mov r2, #0
	mov r1, #1
	str r0, [sp, #0x2c]
	add r0, sp, #0x5c
	str r0, [sp, #0x30]
	lsl r0, r4, #0xc
	str r0, [sp, #0x34]
	ldr r0, [sp, #0xa0]
	str r1, [sp, #0x54]
	lsl r0, r0, #0xc
	str r0, [sp, #0x38]
	mov r0, #2
	str r0, [sp, #0x50]
	mov r0, #0xe
	str r0, [sp, #0x58]
	add r0, sp, #0x2c
	str r0, [sp, #0x80]
	str r1, [sp, #0x8c]
	add r0, r6, #0
	add r1, sp, #0x80
	str r2, [sp, #0x3c]
	str r2, [sp, #0x84]
	str r2, [sp, #0x88]
	bl ov41_0224A118
	add sp, #0x90
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov41_0224A6C4

	thumb_func_start ov41_0224A734
ov41_0224A734: ; 0x0224A734
	push {r4, r5, r6, lr}
	sub sp, #0xa8
	add r5, r0, #0
	mov r0, #0
	str r1, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	add r4, r2, #0
	str r0, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r0, [r4, #0x48]
	add r6, r3, #0
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x4c]
	add r3, r1, #0
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x50]
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x54]
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r0, sp, #0x5c
	bl CreateSpriteResourcesHeader
	ldr r0, [r4, #0x44]
	mov r2, #0xe
	str r0, [sp, #0x2c]
	add r0, sp, #0x5c
	str r0, [sp, #0x30]
	ldr r0, [sp, #0xbc]
	str r2, [sp, #0x58]
	lsl r0, r0, #0xc
	str r0, [sp, #0x34]
	ldr r0, [sp, #0xc0]
	add r2, sp, #0x2c
	lsl r0, r0, #0xc
	mov r1, #2
	str r2, [sp, #0x80]
	ldr r2, [sp, #0xb8]
	str r0, [sp, #0x38]
	mov r0, #0
	str r1, [sp, #0x50]
	mov r1, #1
	str r0, [sp, #0x3c]
	str r1, [sp, #0x54]
	str r0, [sp, #0x84]
	str r0, [sp, #0x88]
	str r0, [sp, #0x9c]
	mov r0, #0x13
	str r1, [sp, #0x8c]
	str r6, [sp, #0x94]
	str r2, [sp, #0x90]
	str r0, [sp, #0xa0]
	ldr r0, [r4, #0x4c]
	bl SpriteResourceCollection_Find
	mov r1, #0
	bl SpriteTransfer_GetPaletteProxy
	str r0, [sp, #0x98]
	ldr r0, [sp, #0xb8]
	mov r1, #1
	mov r2, #0xd
	bl sub_02013688
	mov r1, #1
	add r3, r5, #0
	add r2, r1, #0
	add r3, #0x14
	bl sub_02021AC8
	cmp r0, #0
	bne _0224A7D0
	bl GF_AssertFail
_0224A7D0:
	ldr r0, [r5, #0x18]
	add r1, sp, #0x80
	str r0, [sp, #0xa4]
	add r0, r5, #0
	bl ov41_0224A15C
	add sp, #0xa8
	pop {r4, r5, r6, pc}
	thumb_func_end ov41_0224A734

	thumb_func_start ov41_0224A7E0
ov41_0224A7E0: ; 0x0224A7E0
	lsl r1, r1, #2
	strb r3, [r0, r1]
	add r1, r0, r1
	ldr r0, [sp, #4]
	strb r2, [r1, #2]
	add r0, r3, r0
	strb r0, [r1, #1]
	ldr r0, [sp]
	add r0, r2, r0
	strb r0, [r1, #3]
	bx lr
	.balign 4, 0
	thumb_func_end ov41_0224A7E0

	thumb_func_start ov41_0224A7F8
ov41_0224A7F8: ; 0x0224A7F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x6b
	mov r4, #0
	str r0, [sp, #0xc]
	mov r7, #0x6a
	mov r6, #0x69
_0224A808:
	mov r0, #1
	str r0, [sp]
	mov r1, #6
	str r4, [sp, #4]
	lsl r1, r1, #6
	ldr r1, [r5, r1]
	ldr r2, [sp, #0xc]
	add r0, r5, #0
	mov r3, #0
	bl ov41_022462E4
	mov r1, #6
	str r4, [sp]
	lsl r1, r1, #6
	ldr r1, [r5, r1]
	add r0, r5, #0
	add r2, r7, #0
	mov r3, #0
	bl ov41_02246328
	mov r1, #6
	str r4, [sp]
	lsl r1, r1, #6
	ldr r1, [r5, r1]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0
	bl ov41_02246344
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	add r0, r0, #3
	str r0, [sp, #0xc]
	add r7, r7, #3
	add r6, r6, #3
	cmp r4, #5
	blt _0224A808
	mov r0, #1
	str r0, [sp]
	mov r1, #3
	str r1, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	lsl r1, r1, #7
	ldr r1, [r5, r1]
	add r0, r5, #0
	mov r2, #0x68
	bl ov41_02246304
	mov r1, #1
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r1, #6
	lsl r1, r1, #6
	ldr r1, [r5, r1]
	add r0, r5, #0
	mov r2, #0x78
	mov r3, #0
	bl ov41_02246304
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov41_0224A7F8

	thumb_func_start ov41_0224A888
ov41_0224A888: ; 0x0224A888
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0224A88E:
	add r0, r5, #0
	add r1, r4, #0
	bl ov41_02246360
	add r4, r4, #1
	cmp r4, #5
	blt _0224A88E
	add r0, r5, #0
	mov r1, #0
	bl ov41_02246374
	add r0, r5, #0
	mov r1, #1
	bl ov41_02246374
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov41_0224A888

	thumb_func_start ov41_0224A8B0
ov41_0224A8B0: ; 0x0224A8B0
	push {r3, lr}
	cmp r1, #0
	bne _0224A8BC
	bl ov41_0224A270
	pop {r3, pc}
_0224A8BC:
	cmp r1, #2
	bne _0224A8C6
	bl ov41_0224A258
	pop {r3, pc}
_0224A8C6:
	cmp r1, #1
	beq _0224A8CE
	cmp r1, #3
	bne _0224A8D2
_0224A8CE:
	bl ov41_0224A264
_0224A8D2:
	pop {r3, pc}
	thumb_func_end ov41_0224A8B0

	thumb_func_start ov41_0224A8D4
ov41_0224A8D4: ; 0x0224A8D4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bne _0224A8F0
	ldr r0, [r5, #0x10]
	mov r1, #0
	mov r2, #0xf
	bl sub_020136B4
	ldr r0, [r5, #0x10]
	mov r1, #4
	bl TextOBJ_SetPaletteNum
	pop {r3, r4, r5, pc}
_0224A8F0:
	cmp r4, #1
	bne _0224A8FE
	ldr r0, [r5, #0x10]
	mov r1, #0
	mov r2, #0x13
	bl sub_020136B4
_0224A8FE:
	cmp r4, #3
	bne _0224A914
	ldr r0, [r5, #0x10]
	mov r1, #0
	mov r2, #0x13
	bl sub_020136B4
	ldr r0, [r5, #0x10]
	mov r1, #3
	bl TextOBJ_SetPaletteNum
_0224A914:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov41_0224A8D4

	thumb_func_start ov41_0224A918
ov41_0224A918: ; 0x0224A918
	push {r3, lr}
	cmp r3, r2
	bne _0224A926
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	bl PlaySE
_0224A926:
	pop {r3, pc}
	thumb_func_end ov41_0224A918

	thumb_func_start ov41_0224A928
ov41_0224A928: ; 0x0224A928
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r4, r3, #0
	mov r0, #0
	mov r3, #0xd
	bl NewMsgDataFromNarc
	add r7, r0, #0
	bne _0224A940
	bl GF_AssertFail
_0224A940:
	add r0, r7, #0
	add r1, r4, #0
	bl NewString_ReadMsgData
	add r5, r0, #0
	mov r0, #0xe
	mov r1, #1
	bl AllocWindows
	add r4, r0, #0
	bl InitWindow
	mov r0, #0
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	str r0, [sp]
	str r0, [sp, #4]
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r0, [r6, #0x40]
	add r1, r4, #0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl AddTextWindowTopLeftCorner
	ldr r3, [sp, #0x28]
	mov r0, #2
	add r1, r5, #0
	mov r2, #0
	lsl r3, r3, #3
	bl FontID_String_GetCenterAlignmentX
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0224A9AC ; =0x00010203
	add r2, r5, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r4, #0
	mov r1, #2
	bl AddTextPrinterParameterizedWithColor
	add r0, r5, #0
	bl String_Delete
	add r0, r7, #0
	bl DestroyMsgData
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0224A9AC: .word 0x00010203
	thumb_func_end ov41_0224A928

	thumb_func_start ov41_0224A9B0
ov41_0224A9B0: ; 0x0224A9B0
	ldr r3, _0224A9B8 ; =WindowArray_Delete
	mov r1, #1
	bx r3
	nop
_0224A9B8: .word WindowArray_Delete
	thumb_func_end ov41_0224A9B0

	thumb_func_start ov41_0224A9BC
ov41_0224A9BC: ; 0x0224A9BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	add r6, r2, #0
	bl Sprite_GetMatrixPtr
	add r3, r0, #0
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r1, [sp]
	lsl r0, r4, #0xc
	add r0, r1, r0
	str r0, [sp]
	ldr r1, [sp, #4]
	lsl r0, r6, #0xc
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r5]
	add r1, r7, #0
	bl Sprite_SetMatrix
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov41_0224A9BC

	thumb_func_start ov41_0224A9F8
ov41_0224A9F8: ; 0x0224A9F8
	push {r4, lr}
	add r4, r0, #0
	bl ov41_0224A9BC
	ldr r0, [r4, #0x10]
	bl sub_02013728
	pop {r4, pc}
	thumb_func_end ov41_0224A9F8

	thumb_func_start ov41_0224AA08
ov41_0224AA08: ; 0x0224AA08
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #1
	add r5, r0, #0
	tst r1, r6
	beq _0224AA22
	mov r2, #0x52
	mov r1, #0
	lsl r2, r2, #2
	bl memset
_0224AA22:
	mov r0, #2
	tst r0, r6
	beq _0224AA30
	ldr r1, [r4]
	add r0, r5, #0
	bl ov41_0224ACA4
_0224AA30:
	mov r0, #4
	add r1, r6, #0
	tst r1, r0
	beq _0224AA54
	mov r1, #0x1b
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #0x1f
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	add r0, r5, #0
	ldr r1, [r4]
	add r0, #0x2c
	mov r2, #2
	mov r3, #0x13
	bl ov41_0224AD0C
_0224AA54:
	mov r0, #8
	tst r0, r6
	beq _0224AA6C
	ldr r0, [r4, #0x24]
	str r0, [sp]
	add r0, r5, #0
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0x10]
	add r0, #0x38
	bl ov41_0224AED8
_0224AA6C:
	mov r0, #0x10
	tst r0, r6
	beq _0224AA8C
	ldr r0, [r4]
	str r0, [sp]
	ldr r0, [r4, #0x20]
	str r0, [sp, #4]
	ldr r0, [r4, #0x24]
	str r0, [sp, #8]
	add r0, r5, #0
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0x1c]
	add r0, #0xa0
	bl ov41_0224B118
_0224AA8C:
	mov r0, #0x20
	tst r0, r6
	beq _0224AB02
	mov r0, #0x1b
	str r0, [sp]
	mov r2, #2
	str r2, [sp, #4]
	mov r0, #0x8b
	str r0, [sp, #8]
	mov r3, #1
	str r3, [sp, #0xc]
	add r0, #0xa9
	ldr r1, [r4]
	add r0, r5, r0
	bl ov41_0224AD0C
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0xf
	bl FillWindowPixelBuffer
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0224AB3C ; =0x0001020F
	mov r1, #0x1b
	str r0, [sp, #8]
	mov r0, #0xff
	str r0, [sp, #0xc]
	add r0, #0x35
	ldr r0, [r5, r0]
	ldr r2, [r4, #0x14]
	mov r3, #6
	bl ov41_0224AE24
	mov r0, #0x48
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _0224AB3C ; =0x0001020F
	mov r1, #0x1b
	str r0, [sp, #8]
	mov r0, #0xff
	str r0, [sp, #0xc]
	add r0, #0x35
	ldr r0, [r5, r0]
	ldr r2, [r4, #0x14]
	ldr r3, [r4, #0x18]
	bl ov41_0224AE24
	mov r0, #0x4d
	lsl r0, r0, #2
	mov r2, #1
	ldr r0, [r5, r0]
	mov r1, #0
	add r3, r2, #0
	bl DrawFrameAndWindow2
_0224AB02:
	ldr r0, [r4, #4]
	str r0, [r5, #0x30]
	ldr r0, [r4, #8]
	str r0, [r5, #0x34]
	ldr r0, [r4]
	ldr r1, [r4, #0xc]
	bl ov41_0224ACDC
	ldr r0, [r4, #0xc]
	bl Options_GetFrame
	mov r1, #0x4f
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r4, #0xc]
	bl Options_GetTextFrameDelay
	mov r1, #5
	lsl r1, r1, #6
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #8
	ldr r0, [r5, r0]
	sub r1, #8
	orr r0, r6
	str r0, [r5, r1]
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0224AB3C: .word 0x0001020F
	thumb_func_end ov41_0224AA08

	thumb_func_start ov41_0224AB40
ov41_0224AB40: ; 0x0224AB40
	push {r4, lr}
	mov r1, #0x4e
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r1, #2
	tst r1, r2
	beq _0224AB60
	bl ov41_0224AD7C
	mov r1, #0x4e
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r0, #2
	bic r2, r0
	str r2, [r4, r1]
_0224AB60:
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r0, #4
	tst r0, r1
	beq _0224AB7E
	ldr r0, [r4, #0x2c]
	bl ov41_0224AD84
	mov r1, #0x4e
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r0, #4
	bic r2, r0
	str r2, [r4, r1]
_0224AB7E:
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r0, #8
	tst r0, r1
	beq _0224ABA0
	add r0, r4, #0
	ldr r1, [r4, #0x34]
	add r0, #0x38
	bl ov41_0224AFD4
	mov r1, #0x4e
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r0, #8
	bic r2, r0
	str r2, [r4, r1]
_0224ABA0:
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r0, #0x10
	tst r0, r1
	beq _0224ABC2
	add r0, r4, #0
	ldr r1, [r4, #0x34]
	add r0, #0xa0
	bl ov41_0224B21C
	mov r1, #0x4e
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r0, #0x10
	bic r2, r0
	str r2, [r4, r1]
_0224ABC2:
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	mov r1, #0x20
	tst r1, r2
	beq _0224ABE2
	sub r0, r0, #4
	ldr r0, [r4, r0]
	bl ov41_0224AD84
	mov r1, #0x4e
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r0, #0x20
	bic r2, r0
	str r2, [r4, r1]
_0224ABE2:
	mov r2, #0x52
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #2
	bl memset
	pop {r4, pc}
	thumb_func_end ov41_0224AB40

	thumb_func_start ov41_0224ABF0
ov41_0224ABF0: ; 0x0224ABF0
	push {r3, lr}
	mov r1, #0x4e
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	mov r1, #0x10
	tst r1, r2
	beq _0224AC04
	add r0, #0xa0
	bl ov41_0224B250
_0224AC04:
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov41_0224ABF0

	thumb_func_start ov41_0224AC08
ov41_0224AC08: ; 0x0224AC08
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x4e
	lsl r0, r0, #2
	add r4, r1, #0
	ldr r1, [r5, r0]
	mov r0, #4
	add r6, r2, #0
	add r7, r3, #0
	tst r0, r1
	bne _0224AC24
	bl GF_AssertFail
_0224AC24:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0xff
	str r0, [sp, #8]
	ldr r0, [r5, #0x2c]
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov41_0224AD90
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov41_0224AC08

	thumb_func_start ov41_0224AC40
ov41_0224AC40: ; 0x0224AC40
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x4e
	lsl r0, r0, #2
	add r4, r1, #0
	ldr r1, [r5, r0]
	mov r0, #4
	add r6, r2, #0
	add r7, r3, #0
	tst r0, r1
	bne _0224AC5C
	bl GF_AssertFail
_0224AC5C:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #5
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	add r0, r0, #4
	str r1, [sp, #8]
	add r0, r5, r0
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x2c]
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov41_0224ADD8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov41_0224AC40

	thumb_func_start ov41_0224AC80
ov41_0224AC80: ; 0x0224AC80
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl String_Delete
	mov r0, #0x51
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
	thumb_func_end ov41_0224AC80

	thumb_func_start ov41_0224AC98
ov41_0224AC98: ; 0x0224AC98
	ldr r3, _0224ACA0 ; =ov41_0224AF8C
	add r0, #0x38
	bx r3
	nop
_0224ACA0: .word ov41_0224AF8C
	thumb_func_end ov41_0224AC98

	thumb_func_start ov41_0224ACA4
ov41_0224ACA4: ; 0x0224ACA4
	push {r3, lr}
	sub sp, #0x30
	str r1, [sp]
	mov r1, #0x1a
	str r1, [sp, #4]
	mov r1, #0xe0
	str r1, [sp, #8]
	mov r1, #0xe1
	str r1, [sp, #0xc]
	mov r2, #0
	mov r1, #0xe2
	str r1, [sp, #0x10]
	mov r1, #4
	str r1, [sp, #0x1c]
	mov r1, #1
	str r1, [sp, #0x20]
	mov r1, #0xe
	str r1, [sp, #0x2c]
	add r1, sp, #0
	str r2, [sp, #0x14]
	str r2, [sp, #0x18]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	bl ov41_02249C7C
	add sp, #0x30
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov41_0224ACA4

	thumb_func_start ov41_0224ACDC
ov41_0224ACDC: ; 0x0224ACDC
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, r1, #0
	bl Options_GetFrame
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xe
	mov r2, #1
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #5
	add r3, r2, #0
	bl LoadUserFrameGfx2
	mov r0, #4
	mov r1, #0x40
	mov r2, #0xe
	bl LoadFontPal1
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov41_0224ACDC

	thumb_func_start ov41_0224AD0C
ov41_0224AD0C: ; 0x0224AD0C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r7, r1, #0
	add r6, r3, #0
	mov r0, #0xe
	mov r1, #1
	add r4, r2, #0
	bl AllocWindows
	str r0, [r5]
	bl InitWindow
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x28]
	lsl r3, r4, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	mov r2, #5
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x30]
	lsr r3, r3, #0x18
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r1, [r5]
	add r0, r7, #0
	bl AddWindowParameterized
	ldr r0, [r5]
	mov r1, #0xf
	bl FillWindowPixelBuffer
	ldr r0, [sp, #0x34]
	cmp r0, #0
	beq _0224AD70
	mov r2, #1
	ldr r0, [r5]
	mov r1, #0
	add r3, r2, #0
	bl DrawFrameAndWindow2
_0224AD70:
	ldr r0, [r5]
	bl CopyWindowToVram
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov41_0224AD0C

	thumb_func_start ov41_0224AD7C
ov41_0224AD7C: ; 0x0224AD7C
	ldr r3, _0224AD80 ; =ov41_02249CC4
	bx r3
	.balign 4, 0
_0224AD80: .word ov41_02249CC4
	thumb_func_end ov41_0224AD7C

	thumb_func_start ov41_0224AD84
ov41_0224AD84: ; 0x0224AD84
	ldr r3, _0224AD8C ; =WindowArray_Delete
	mov r1, #1
	bx r3
	nop
_0224AD8C: .word WindowArray_Delete
	thumb_func_end ov41_0224AD84

	thumb_func_start ov41_0224AD90
ov41_0224AD90: ; 0x0224AD90
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	mov r1, #0xf
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	bl FillWindowPixelBuffer
	ldr r0, [sp, #0x28]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r2, r6, #0
	str r0, [sp, #4]
	ldr r0, _0224ADD4 ; =0x0001020F
	add r3, r7, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl ov41_0224AE24
	mov r2, #1
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r3, r2, #0
	bl DrawFrameAndWindow2
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224ADD4: .word 0x0001020F
	thumb_func_end ov41_0224AD90

	thumb_func_start ov41_0224ADD8
ov41_0224ADD8: ; 0x0224ADD8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	mov r1, #0xf
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	bl FillWindowPixelBuffer
	ldr r0, [sp, #0x28]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r2, r6, #0
	str r0, [sp, #4]
	ldr r0, _0224AE20 ; =0x0001020F
	add r3, r7, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x34]
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl ov41_0224AE78
	mov r2, #1
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r3, r2, #0
	bl DrawFrameAndWindow2
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0224AE20: .word 0x0001020F
	thumb_func_end ov41_0224ADD8

	thumb_func_start ov41_0224AE24
ov41_0224AE24: ; 0x0224AE24
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r4, r3, #0
	mov r0, #0
	mov r3, #0xd
	bl NewMsgDataFromNarc
	add r5, r0, #0
	bne _0224AE3C
	bl GF_AssertFail
_0224AE3C:
	add r0, r5, #0
	add r1, r4, #0
	bl NewString_ReadMsgData
	add r4, r0, #0
	ldr r0, [sp, #0x24]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	mov r1, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	add r2, r4, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r6, #0
	bl AddTextPrinterParameterizedWithColor
	add r6, r0, #0
	add r0, r4, #0
	bl String_Delete
	add r0, r5, #0
	bl DestroyMsgData
	add r0, r6, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov41_0224AE24

	thumb_func_start ov41_0224AE78
ov41_0224AE78: ; 0x0224AE78
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r4, [sp, #0x38]
	add r7, r0, #0
	ldr r0, [r4]
	add r5, r1, #0
	add r6, r2, #0
	str r3, [sp, #0x10]
	cmp r0, #0
	beq _0224AE90
	bl GF_AssertFail
_0224AE90:
	mov r0, #0
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #0xd
	bl NewMsgDataFromNarc
	add r5, r0, #0
	bne _0224AEA4
	bl GF_AssertFail
_0224AEA4:
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	bl NewString_ReadMsgData
	str r0, [r4]
	ldr r0, [sp, #0x2c]
	ldr r3, [sp, #0x28]
	str r0, [sp]
	ldr r0, [sp, #0x34]
	mov r1, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r2, [r4]
	add r0, r7, #0
	bl AddTextPrinterParameterizedWithColor
	add r4, r0, #0
	add r0, r5, #0
	bl DestroyMsgData
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov41_0224AE78

	thumb_func_start ov41_0224AED8
ov41_0224AED8: ; 0x0224AED8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x6c
	add r5, r1, #0
	mov r1, #0x67
	str r1, [sp]
	mov r1, #0xe1
	str r1, [sp, #4]
	mov r1, #0x66
	str r1, [sp, #8]
	mov r1, #0x65
	str r1, [sp, #0xc]
	mov r1, #2
	str r1, [sp, #0x10]
	mov r1, #0x7d
	add r4, r2, #0
	str r3, [sp, #0x1c]
	lsl r1, r1, #4
	str r1, [sp, #0x14]
	ldr r3, [sp, #0x80]
	str r0, [sp, #0x18]
	add r1, r4, #0
	mov r2, #0xe
	bl ov41_0224AFF8
	ldr r0, [sp, #0x18]
	add r1, r4, #0
	add r2, sp, #0x48
	mov r3, #0
	bl ov41_0224B0B8
	add r0, sp, #0x48
	str r0, [sp, #0x2c]
	mov r0, #2
	str r0, [sp, #0x40]
	mov r0, #0
	str r0, [sp, #0x24]
	str r0, [sp, #0x3c]
	mov r0, #0xe
	str r0, [sp, #0x44]
	mov r0, #0x68
	ldr r7, [sp, #0x24]
	str r5, [sp, #0x28]
	str r0, [sp, #0x20]
_0224AF2E:
	ldr r0, [sp, #0x20]
	mov r6, #0
	str r0, [sp, #0x34]
	lsl r1, r0, #0xc
	mov r0, #2
	lsl r0, r0, #0x14
	str r1, [sp, #0x34]
	add r0, r1, r0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x18]
	lsl r1, r7, #2
	mov r4, #0x26
	add r5, r0, r1
_0224AF48:
	str r4, [sp, #0x30]
	lsl r0, r4, #0xc
	str r0, [sp, #0x30]
	add r0, sp, #0x28
	bl Sprite_Create
	mov r1, #1
	str r0, [r5, #0x10]
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [sp, #0x1c]
	add r1, r6, r7
	cmp r1, r0
	blt _0224AF6C
	ldr r0, [r5, #0x10]
	mov r1, #0
	bl Sprite_SetDrawFlag
_0224AF6C:
	add r6, r6, #1
	add r4, #0x12
	add r5, r5, #4
	cmp r6, #0xa
	blt _0224AF48
	ldr r0, [sp, #0x20]
	add r7, #0xa
	add r0, #0x12
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, #2
	blt _0224AF2E
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov41_0224AED8

	thumb_func_start ov41_0224AF8C
ov41_0224AF8C: ; 0x0224AF8C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r6, [r7, #0x60]
	add r5, r1, #0
	cmp r6, r5
	bge _0224AFB2
	cmp r6, r5
	bge _0224AFD0
	lsl r0, r6, #2
	add r4, r7, r0
_0224AFA0:
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl Sprite_SetAnimCtrlSeq
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r5
	blt _0224AFA0
	b _0224AFD0
_0224AFB2:
	cmp r6, r5
	ble _0224AFD0
	sub r6, r6, #1
	cmp r6, r5
	blt _0224AFD0
	lsl r0, r6, #2
	add r4, r7, r0
_0224AFC0:
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl Sprite_SetAnimCtrlSeq
	sub r6, r6, #1
	sub r4, r4, #4
	cmp r6, r5
	bge _0224AFC0
_0224AFD0:
	str r5, [r7, #0x60]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov41_0224AF8C

	thumb_func_start ov41_0224AFD4
ov41_0224AFD4: ; 0x0224AFD4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r4, #0
	add r5, r6, #0
_0224AFDE:
	ldr r0, [r5, #0x10]
	bl Sprite_Delete
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x14
	blt _0224AFDE
	add r0, r6, #0
	add r1, r7, #0
	bl ov41_0224B084
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov41_0224AFD4

	thumb_func_start ov41_0224AFF8
ov41_0224AFF8: ; 0x0224AFF8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r2, #0
	ldr r7, [sp, #0x3c]
	ldr r2, [sp, #0x28]
	add r5, r0, #0
	add r0, r7, r2
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r4, r1, #0
	str r6, [sp, #8]
	ldr r0, [r4]
	str r3, [sp, #0x10]
	add r1, r3, #0
	mov r3, #0
	bl AddCharResObjFromOpenNarc
	str r0, [r5]
	bl sub_0200ADA4
	ldr r0, [r5]
	bl sub_0200A740
	ldr r2, [sp, #0x2c]
	ldr r1, [sp, #0x10]
	add r0, r7, r2
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x38]
	mov r3, #0
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	ldr r0, [r4, #4]
	bl AddPlttResObjFromOpenNarc
	str r0, [r5, #4]
	bl sub_0200B00C
	ldr r0, [r5, #4]
	bl sub_0200A740
	ldr r2, [sp, #0x30]
	ldr r1, [sp, #0x10]
	add r0, r7, r2
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r4, #8]
	mov r3, #0
	bl AddCellOrAnimResObjFromOpenNarc
	ldr r2, [sp, #0x34]
	str r0, [r5, #8]
	add r0, r7, r2
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x10]
	mov r3, #0
	bl AddCellOrAnimResObjFromOpenNarc
	str r0, [r5, #0xc]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov41_0224AFF8

	thumb_func_start ov41_0224B084
ov41_0224B084: ; 0x0224B084
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	bl sub_0200AEB0
	ldr r0, [r5, #4]
	bl sub_0200B0A8
	ldr r0, [r4]
	ldr r1, [r5]
	bl DestroySingle2DGfxResObj
	ldr r0, [r4, #4]
	ldr r1, [r5, #4]
	bl DestroySingle2DGfxResObj
	ldr r0, [r4, #8]
	ldr r1, [r5, #8]
	bl DestroySingle2DGfxResObj
	ldr r0, [r4, #0xc]
	ldr r1, [r5, #0xc]
	bl DestroySingle2DGfxResObj
	pop {r3, r4, r5, pc}
	thumb_func_end ov41_0224B084

	thumb_func_start ov41_0224B0B8
ov41_0224B0B8: ; 0x0224B0B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	add r7, r2, #0
	add r6, r3, #0
	bl GF2DGfxResObj_GetResID
	str r0, [sp, #0x2c]
	ldr r0, [r5, #4]
	bl GF2DGfxResObj_GetResID
	str r0, [sp, #0x30]
	ldr r0, [r5, #8]
	bl GF2DGfxResObj_GetResID
	str r0, [sp, #0x34]
	ldr r0, [r5, #0xc]
	bl GF2DGfxResObj_GetResID
	str r0, [sp]
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r6, [sp, #0x10]
	ldr r1, [r4]
	ldr r2, [sp, #0x30]
	str r1, [sp, #0x14]
	ldr r1, [r4, #4]
	ldr r3, [sp, #0x34]
	str r1, [sp, #0x18]
	ldr r1, [r4, #8]
	str r1, [sp, #0x1c]
	ldr r1, [r4, #0xc]
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	add r0, r7, #0
	bl CreateSpriteResourcesHeader
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov41_0224B0B8

	thumb_func_start ov41_0224B118
ov41_0224B118: ; 0x0224B118
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	add r4, r1, #0
	mov r1, #0xe5
	str r1, [sp]
	mov r1, #0xe6
	str r1, [sp, #4]
	mov r1, #0xe4
	str r1, [sp, #8]
	mov r1, #0xe3
	str r1, [sp, #0xc]
	mov r1, #2
	str r1, [sp, #0x10]
	ldr r1, _0224B214 ; =0x00000BB8
	add r5, r2, #0
	str r3, [sp, #0x18]
	str r1, [sp, #0x14]
	ldr r3, [sp, #0x80]
	add r7, r0, #0
	add r1, r5, #0
	mov r2, #0xe
	bl ov41_0224AFF8
	add r0, r7, #0
	add r1, r5, #0
	add r2, sp, #0x3c
	mov r3, #0
	bl ov41_0224B0B8
	add r0, sp, #0x3c
	str r0, [sp, #0x20]
	mov r2, #2
	mov r0, #0xe
	mov r1, #0x3a
	str r0, [sp, #0x38]
	lsl r1, r1, #0xc
	lsl r0, r2, #0x14
	mov r6, #0
	str r4, [sp, #0x1c]
	str r1, [sp, #0x28]
	add r0, r1, r0
	str r2, [sp, #0x34]
	str r6, [sp, #0x30]
	str r0, [sp, #0x28]
	mov r4, #0x67
	add r5, r7, #0
_0224B174:
	str r4, [sp, #0x24]
	lsl r0, r4, #0xc
	str r0, [sp, #0x24]
	add r0, sp, #0x1c
	bl Sprite_Create
	str r0, [r5, #0x10]
	add r6, r6, #1
	add r4, #0x18
	add r5, r5, #4
	cmp r6, #2
	blt _0224B174
	ldr r0, [sp, #0x18]
	mov r1, #0x1e
	str r0, [r7, #0x1c]
	mul r1, r0
	str r1, [r7, #0x20]
	ldr r1, [sp, #0x7c]
	str r1, [r7, #0x2c]
	str r0, [r1]
	ldr r1, [r7, #0x2c]
	str r0, [r1, #8]
	add r0, r7, #0
	mov r1, #0
	add r0, #0x90
	str r1, [r0]
	add r0, r7, #0
	bl ov41_0224B298
	mov r0, #0xe
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #0xc1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r7, #0
	ldr r1, [sp, #0x78]
	add r0, #0x18
	mov r2, #0xa
	mov r3, #8
	bl ov41_0224AD0C
	ldr r0, [r7, #0x18]
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0
	str r0, [sp]
	mov r3, #4
	ldr r0, _0224B218 ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xff
	str r0, [sp, #0xc]
	ldr r0, [r7, #0x18]
	mov r1, #0x1b
	mov r2, #0xd7
	bl ov41_0224AE24
	mov r0, #0x48
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _0224B218 ; =0x00010200
	mov r1, #0x1b
	str r0, [sp, #8]
	mov r0, #0xff
	str r0, [sp, #0xc]
	ldr r0, [r7, #0x18]
	mov r2, #0xd7
	mov r3, #5
	bl ov41_0224AE24
	ldr r0, [r7, #0x18]
	bl CopyWindowToVram
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0224B214: .word 0x00000BB8
_0224B218: .word 0x00010200
	thumb_func_end ov41_0224B118

