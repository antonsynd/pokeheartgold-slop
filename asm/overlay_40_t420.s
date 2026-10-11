	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_02240D50
	.public ov40_02240E28
	.public ov40_02240F24
	.public ov40_02241054
	.extern ov40_0222C6C8
	.extern ov40_0222D5AC
	.extern ov40_0222D66C
	.extern ov40_0222D78C
	.extern ov40_0222D800
	.extern ov40_0222DAB0
	.extern ov40_02230DCC
	.extern ov40_02245684
	.extern ov40_02245694

	.text

	.text
	thumb_func_start ov40_02240D50
ov40_02240D50: ; 0x02240D50
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r1, #0
	ldr r1, _02240E20 ; =0x0000088C
	lsl r6, r2, #2
	add r4, r5, r1
	ldr r1, [r4, r6]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x48]
	cmp r1, #0
	bne _02240D70
	mov r1, #8
	bl NewString_ReadMsgData
	add r4, r0, #0
	b _02240DCE
_02240D70:
	mov r0, #0x6d
	bl ov40_0222DAB0
	add r7, r0, #0
	ldr r0, [r5, #0x48]
	mov r1, #7
	bl NewString_ReadMsgData
	str r0, [sp, #0x14]
	ldr r0, [r4, r6]
	mov r1, #0x6d
	bl sub_020315B8
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ov40_02230DCC
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	mov r1, #0
	str r0, [sp, #4]
	add r0, r7, #0
	add r2, r6, #0
	add r3, r1, #0
	bl BufferString
	ldr r2, [sp, #0x14]
	add r0, r7, #0
	add r1, r4, #0
	bl StringExpandPlaceholders
	ldr r0, [sp, #0x14]
	bl String_Delete
	add r0, r6, #0
	bl String_Delete
	add r0, r7, #0
	bl MessageFormat_Delete
_02240DCE:
	add r0, sp, #0x18
	bl InitWindow
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	add r1, sp, #0x18
	mov r2, #0x14
	mov r3, #2
	bl AddTextWindowTopLeftCorner
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02240E24 ; =0x000E0D00
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, sp, #0x18
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #8]
	ldr r1, [r1, #0xc]
	add r2, sp, #0x18
	mov r3, #0x6d
	bl TextOBJ_CopyFromBGWindow
	add r0, r4, #0
	bl String_Delete
	add r0, sp, #0x18
	bl RemoveWindow
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02240E20: .word 0x0000088C
_02240E24: .word 0x000E0D00
	thumb_func_end ov40_02240D50

	thumb_func_start ov40_02240E28
ov40_02240E28: ; 0x02240E28
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r1, #0
	ldr r1, _02240F1C ; =0x000008A4
	add r5, r0, #0
	sub r1, #0x44
	ldr r6, [r5, r1]
	mov r1, #2
	bl ov40_0222C6C8
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	ldr r0, _02240F1C ; =0x000008A4
	add r0, r5, r0
	bl InitWindow
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1e
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r1, _02240F1C ; =0x000008A4
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	add r1, r5, r1
	mov r2, #2
	mov r3, #1
	bl AddWindowParameterized
	cmp r4, #0x64
	bne _02240EDA
	add r6, #0x80
	ldr r0, [r6]
	str r0, [sp, #0x14]
	mov r0, #0x6d
	bl ov40_0222DAB0
	add r7, r0, #0
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	add r6, r0, #0
	ldr r0, [sp, #0x14]
	mov r1, #0x6d
	bl sub_020315B8
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	bl ov40_02230DCC
	ldr r0, [r5, #0x48]
	add r1, r4, #0
	bl NewString_ReadMsgData
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	mov r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x18]
	add r0, r7, #0
	add r3, r1, #0
	bl BufferString
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	bl StringExpandPlaceholders
	ldr r0, [sp, #0x18]
	bl String_Delete
	add r0, r4, #0
	bl String_Delete
	add r0, r7, #0
	bl MessageFormat_Delete
	b _02240EE4
_02240EDA:
	ldr r0, [r5, #0x48]
	add r1, r4, #0
	bl NewString_ReadMsgData
	add r6, r0, #0
_02240EE4:
	ldr r0, _02240F1C ; =0x000008A4
	mov r1, #0xcc
	add r0, r5, r0
	bl FillWindowPixelBuffer
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02240F20 ; =0x000F0D0C
	add r2, r6, #0
	str r0, [sp, #8]
	ldr r0, _02240F1C ; =0x000008A4
	add r3, r1, #0
	add r0, r5, r0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	ldr r0, _02240F1C ; =0x000008A4
	add r0, r5, r0
	bl ScheduleWindowCopyToVram
	add r0, r6, #0
	bl String_Delete
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02240F1C: .word 0x000008A4
_02240F20: .word 0x000F0D0C
	thumb_func_end ov40_02240E28

	thumb_func_start ov40_02240F24
ov40_02240F24: ; 0x02240F24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r0, _0224104C ; =0x000008A4
	add r4, r1, #0
	sub r0, #0x44
	ldr r0, [r5, r0]
	cmp r4, #0x64
	bne _02240F9C
	add r0, #0x80
	ldr r0, [r0]
	str r0, [sp, #0x14]
	mov r0, #0x6d
	bl ov40_0222DAB0
	add r7, r0, #0
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	add r6, r0, #0
	ldr r0, [sp, #0x14]
	mov r1, #0x6d
	bl sub_020315B8
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	bl ov40_02230DCC
	ldr r0, [r5, #0x48]
	add r1, r4, #0
	bl NewString_ReadMsgData
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	mov r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x18]
	add r0, r7, #0
	add r3, r1, #0
	bl BufferString
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	bl StringExpandPlaceholders
	ldr r0, [sp, #0x18]
	bl String_Delete
	add r0, r4, #0
	bl String_Delete
	add r0, r7, #0
	bl MessageFormat_Delete
	b _02241014
_02240F9C:
	cmp r4, #0x66
	bne _0224100C
	lsl r0, r2, #2
	add r1, r5, r0
	ldr r0, _0224104C ; =0x000008A4
	sub r0, #0x18
	ldr r0, [r1, r0]
	str r0, [sp, #0x10]
	mov r0, #0x6d
	bl ov40_0222DAB0
	add r7, r0, #0
	mov r0, #0xff
	mov r1, #0x6d
	bl String_New
	add r6, r0, #0
	ldr r0, [sp, #0x10]
	mov r1, #0x6d
	bl sub_020315B8
	str r0, [sp, #0x1c]
	ldr r1, [sp, #0x1c]
	add r0, r5, #0
	bl ov40_02230DCC
	ldr r0, [r5, #0x48]
	add r1, r4, #0
	bl NewString_ReadMsgData
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	mov r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x1c]
	add r0, r7, #0
	add r3, r1, #0
	bl BufferString
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	bl StringExpandPlaceholders
	ldr r0, [sp, #0x1c]
	bl String_Delete
	add r0, r4, #0
	bl String_Delete
	add r0, r7, #0
	bl MessageFormat_Delete
	b _02241014
_0224100C:
	ldr r0, [r5, #0x48]
	bl NewString_ReadMsgData
	add r6, r0, #0
_02241014:
	ldr r0, _0224104C ; =0x000008A4
	mov r1, #0xcc
	add r0, r5, r0
	bl FillWindowPixelBuffer
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02241050 ; =0x000F0D0C
	add r2, r6, #0
	str r0, [sp, #8]
	ldr r0, _0224104C ; =0x000008A4
	add r3, r1, #0
	add r0, r5, r0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	ldr r0, _0224104C ; =0x000008A4
	add r0, r5, r0
	bl ScheduleWindowCopyToVram
	add r0, r6, #0
	bl String_Delete
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224104C: .word 0x000008A4
_02241050: .word 0x000F0D0C
	thumb_func_end ov40_02240F24

	thumb_func_start ov40_02241054
ov40_02241054: ; 0x02241054
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r3, _0224110C ; =ov40_02245684
	ldr r4, [r0, r1]
	str r0, [sp]
	add r2, sp, #0x20
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r3, _02241110 ; =ov40_02245694
	add r2, sp, #0x10
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [sp]
	mov r1, #2
	bl ov40_0222D78C
	add r0, sp, #0x20
	str r0, [sp, #8]
	mov r0, #0x69
	str r0, [sp, #4]
	ldr r0, [sp]
	add r5, r4, #0
	str r0, [sp, #0xc]
	add r0, #0x14
	mov r6, #0
	add r5, #0x10
	add r7, sp, #0x10
	str r0, [sp, #0xc]
_02241098:
	ldr r0, [sp]
	mov r1, #2
	bl ov40_0222D800
	str r0, [r4, #0x14]
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	mov r2, #2
	bl ov40_0222D5AC
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [r2]
	add r0, r5, #0
	bl ov40_0222D66C
	cmp r6, #3
	beq _022410C6
	ldr r1, [sp]
	add r0, r5, #0
	add r2, r6, #1
	bl ov40_02240D50
_022410C6:
	ldr r2, [sp, #4]
	ldr r0, [r4, #0x14]
	lsl r2, r2, #0x10
	mov r1, #0x32
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	ldr r0, [r4, #0x14]
	ldr r1, [r7]
	bl ManagedSprite_SetAnim
	mov r1, #0x24
	add r2, r1, #0
	ldr r0, [r4, #0x18]
	sub r2, #0x2c
	bl sub_020136B4
	ldr r0, [r4, #0x18]
	mov r1, #1
	bl TextOBJ_SetSpritesDrawFlag
	ldr r0, [sp, #8]
	add r6, r6, #1
	add r0, r0, #4
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r4, #0x1c
	add r0, #0x24
	add r5, #0x1c
	add r7, r7, #4
	str r0, [sp, #4]
	cmp r6, #4
	blt _02241098
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0224110C: .word ov40_02245684
_02241110: .word ov40_02245694
	thumb_func_end ov40_02241054

