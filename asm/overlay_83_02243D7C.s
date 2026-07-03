	.include "asm/macros.inc"
	.include "overlay_83_02243D7C.inc"
	.include "global.inc"

    .text

	thumb_func_start ov83_02243D7C
ov83_02243D7C: ; 0x02243D7C
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #0
	beq _02243D90
	cmp r1, #1
	beq _02243DA8
	cmp r1, #2
	beq _02243DCA
	b _02243DE4
_02243D90:
	mov r1, #0x17
	mov r2, #0
	bl ov83_022450A8
	cmp r0, #1
	bne _02243DE4
	mov r0, #0x1e
	strb r0, [r4, #0x16]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02243DE4
_02243DA8:
	ldrb r0, [r4, #0x16]
	cmp r0, #0
	beq _02243DB2
	sub r0, r0, #1
	strb r0, [r4, #0x16]
_02243DB2:
	ldrb r0, [r4, #0x16]
	cmp r0, #0
	bne _02243DE4
	bl sub_02037BEC
	mov r0, #0x86
	bl sub_02037AC0
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02243DE4
_02243DCA:
	mov r0, #0x86
	bl sub_02037B38
	cmp r0, #1
	bne _02243DE4
	bl sub_02037BEC
	add r4, #0xc0
	add r0, r4, #0
	bl ov83_02245094
	mov r0, #1
	pop {r4, pc}
_02243DE4:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov83_02243D7C

	thumb_func_start ov83_02243DE8
ov83_02243DE8: ; 0x02243DE8
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _02243DFA
	cmp r0, #1
	beq _02243E1A
	b _02243E28
_02243DFA:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x6b
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02243E28
_02243E1A:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _02243E28
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_02243E28:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov83_02243DE8

	thumb_func_start ov83_02243E30
ov83_02243E30: ; 0x02243E30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r1, _02243F80 ; =0x00000604
	str r0, [sp]
	add r0, r0, r1
	bl ov83_02247858
	ldr r1, _02243F84 ; =0x000005F4
	ldr r0, [sp]
	ldr r0, [r0, r1]
	bl ov83_02247CC4
	mov r1, #0x5f
	ldr r0, [sp]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bl ov83_02247A18
	ldr r1, _02243F88 ; =0x00000508
	ldr r0, [sp]
	ldr r0, [r0, r1]
	bl ov83_0224753C
	ldr r1, _02243F8C ; =0x0000050C
	ldr r0, [sp]
	ldr r0, [r0, r1]
	bl ov83_0224753C
	mov r1, #0x15
	ldr r0, [sp]
	lsl r1, r1, #6
	ldr r0, [r0, r1]
	bl ov83_0224753C
	ldr r1, _02243F90 ; =0x00000544
	ldr r0, [sp]
	ldr r0, [r0, r1]
	bl ov83_0224753C
	mov r0, #0
	mov r6, #0x52
	ldr r7, [sp]
	str r0, [sp, #4]
	lsl r6, r6, #4
_02243E88:
	mov r4, #0
	add r5, r7, #0
_02243E8C:
	ldr r0, [r5, r6]
	bl ov83_0224753C
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _02243E8C
	ldr r0, [sp, #4]
	add r7, #8
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #4
	blt _02243E88
	ldr r0, [sp]
	mov r1, #1
	ldrb r0, [r0, #9]
	bl ov80_02237B58
	add r6, r0, #0
	mov r5, #0
	cmp r6, #0
	ble _02243EDC
	mov r7, #0x51
	ldr r4, [sp]
	lsl r7, r7, #4
_02243EBE:
	ldr r0, _02243F94 ; =0x000004F4
	ldr r0, [r4, r0]
	bl ov83_0224753C
	ldr r0, _02243F98 ; =0x000004E4
	ldr r0, [r4, r0]
	bl ov83_0224753C
	ldr r0, [r4, r7]
	bl ov83_0224753C
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, r6
	blt _02243EBE
_02243EDC:
	bl sub_0203A914
	mov r1, #0x2b
	ldr r0, [sp]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	mov r1, #2
	bl PaletteData_FreeBuffers
	mov r1, #0x2b
	ldr r0, [sp]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	mov r1, #0
	bl PaletteData_FreeBuffers
	mov r1, #0x2b
	ldr r0, [sp]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bl PaletteData_Free
	mov r1, #0x2b
	ldr r0, [sp]
	mov r2, #0
	lsl r1, r1, #4
	str r2, [r0, r1]
	add r1, #0x18
	add r0, r0, r1
	bl ov83_022471FC
	ldr r0, [sp]
	ldr r0, [r0, #0x20]
	bl DestroyMsgData
	ldr r0, [sp]
	ldr r0, [r0, #0x24]
	bl MessageFormat_Delete
	ldr r0, [sp]
	ldr r0, [r0, #0x28]
	bl String_Delete
	ldr r0, [sp]
	ldr r0, [r0, #0x2c]
	bl String_Delete
	mov r1, #0xad
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl MessagePrinter_Delete
	mov r0, #4
	bl FontID_Release
	ldr r4, [sp]
	mov r5, #0
_02243F50:
	ldr r0, [r4, #0x30]
	bl String_Delete
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #3
	blt _02243F50
	ldr r0, [sp]
	mov r1, #1
	add r0, #0x50
	bl ov83_0224791C
	ldr r0, [sp]
	ldr r0, [r0, #0x4c]
	bl ov83_0224442C
	mov r1, #0x56
	ldr r0, [sp]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bl NARC_Delete
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02243F80: .word 0x00000604
_02243F84: .word 0x000005F4
_02243F88: .word 0x00000508
_02243F8C: .word 0x0000050C
_02243F90: .word 0x00000544
_02243F94: .word 0x000004F4
_02243F98: .word 0x000004E4
	thumb_func_end ov83_02243E30

	thumb_func_start ov83_02243F9C
ov83_02243F9C: ; 0x02243F9C
	push {r3, lr}
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	mov r0, #0
	add r1, r0, #0
	bl Main_SetHBlankIntrCB
	bl GfGfx_DisableEngineAPlanes
	bl GfGfx_DisableEngineBPlanes
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _02243FCC ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2]
	ldr r2, _02243FD0 ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	pop {r3, pc}
	.balign 4, 0
_02243FCC: .word 0xFFFFE0FF
_02243FD0: .word 0x04001000
	thumb_func_end ov83_02243F9C

	thumb_func_start ov83_02243FD4
ov83_02243FD4: ; 0x02243FD4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r0, #0
	mov r0, #0xb7
	mov r1, #0x6b
	bl NARC_New
	mov r1, #0x56
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r5, #0
	bl ov83_02244394
	add r0, r5, #0
	bl ov83_02244408
	mov r0, #4
	mov r1, #0x6b
	bl FontID_Alloc
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0x21
	mov r3, #0x6b
	bl NewMsgDataFromNarc
	str r0, [r5, #0x20]
	mov r0, #0x6b
	bl MessageFormat_New
	str r0, [r5, #0x24]
	mov r0, #0x96
	lsl r0, r0, #2
	mov r1, #0x6b
	bl String_New
	str r0, [r5, #0x28]
	mov r0, #0x96
	lsl r0, r0, #2
	mov r1, #0x6b
	bl String_New
	str r0, [r5, #0x2c]
	mov r6, #0
	add r4, r5, #0
	mov r7, #0x20
_02244030:
	add r0, r7, #0
	mov r1, #0x6b
	bl String_New
	str r0, [r4, #0x30]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #3
	blt _02244030
	mov r1, #7
	mov r0, #0
	lsl r1, r1, #6
	mov r2, #0x6b
	bl LoadFontPal0
	mov r1, #0x1a
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x6b
	bl LoadFontPal1
	mov r0, #1
	mov r1, #2
	mov r2, #0
	mov r3, #0x6b
	bl MessagePrinter_New
	mov r1, #0xad
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r1, r5, #0
	ldr r0, [r5, #0x4c]
	add r1, #0x50
	mov r2, #1
	bl ov83_022478D4
	add r0, sp, #0x28
	add r1, sp, #0x2c
	add r3, sp, #0x28
	str r0, [sp]
	add r0, r5, #0
	add r1, #2
	add r2, sp, #0x2c
	add r3, #2
	bl ov83_02244DF4
	ldrb r0, [r5, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _0224409E
	mov r0, #0x3c
	mov r7, #0x40
	str r0, [sp, #0x1c]
	b _022440A4
_0224409E:
	mov r0, #0x1c
	mov r7, #0x20
	str r0, [sp, #0x1c]
_022440A4:
	ldrb r0, [r5, #9]
	mov r1, #1
	bl ov80_02237B58
	mov r6, #0
	str r0, [sp, #0x18]
	cmp r0, #0
	ble _022441AC
	add r4, r5, #0
_022440B6:
	mov r0, #7
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	mov r1, #0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x3e
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, #0xb2
	lsl r0, r0, #2
	add r0, r5, r0
	add r2, r1, #0
	add r3, r1, #0
	bl ov83_02247454
	ldr r1, _02244370 ; =0x000004F4
	str r0, [r4, r1]
	mov r1, #0
	mov r0, #0xf
	str r0, [sp]
	lsl r0, r7, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x4e
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, #0xb2
	lsl r0, r0, #2
	add r0, r5, r0
	add r2, r1, #0
	add r3, r1, #0
	bl ov83_02247454
	mov r1, #0x51
	lsl r1, r1, #4
	str r0, [r4, r1]
	mov r0, #1
	str r0, [sp]
	lsl r0, r7, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x3a
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, #0xb2
	lsl r0, r0, #2
	add r1, r6, #0
	add r0, r5, r0
	add r1, #0xa
	mov r2, #0xa
	mov r3, #5
	bl ov83_02247454
	ldr r1, _02244374 ; =0x000004E4
	str r0, [r4, r1]
	add r0, r1, #0
	add r0, #0x78
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl Party_GetMonByIndex
	add r1, r0, #0
	ldr r0, _02244374 ; =0x000004E4
	ldr r0, [r4, r0]
	bl ov83_022475EC
	ldr r0, _02244378 ; =0x0000054C
	ldr r0, [r5, r0]
	ldrb r0, [r0, r6]
	cmp r0, #0
	ldr r0, _02244370 ; =0x000004F4
	bne _0224417C
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov83_0224755C
	ldr r0, _02244374 ; =0x000004E4
	mov r1, #0
	ldr r0, [r4, r0]
	bl ov83_0224755C
	mov r0, #0x51
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov83_0224755C
	b _0224419A
_0224417C:
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov83_0224755C
	ldr r0, _02244374 ; =0x000004E4
	mov r1, #1
	ldr r0, [r4, r0]
	bl ov83_0224755C
	mov r0, #0x51
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov83_0224755C
_0224419A:
	ldr r0, [sp, #0x1c]
	add r6, r6, #1
	add r0, #0x40
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r4, r4, #4
	add r7, #0x40
	cmp r6, r0
	blt _022440B6
_022441AC:
	add r0, r5, #0
	add r1, sp, #0x34
	add r2, sp, #0x30
	mov r3, #0
	bl ov83_02244DA0
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x34]
	mov r1, #0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	add r2, r1, #0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xb2
	lsl r0, r0, #2
	add r0, r5, r0
	add r3, r1, #0
	str r1, [sp, #0x10]
	bl ov83_02247454
	ldr r1, _0224437C ; =0x00000508
	str r0, [r5, r1]
	mov r0, #2
	str r0, [sp]
	ldr r1, [sp, #0x34]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	str r1, [sp, #4]
	ldr r1, [sp, #0x30]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	str r1, [sp, #8]
	mov r1, #0
	str r0, [sp, #0xc]
	mov r0, #0xb2
	lsl r0, r0, #2
	add r0, r5, r0
	add r2, r1, #0
	add r3, r1, #0
	str r1, [sp, #0x10]
	bl ov83_02247454
	ldr r1, _02244380 ; =0x0000050C
	str r0, [r5, r1]
	ldrb r0, [r5, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _02244226
	ldr r0, _02244380 ; =0x0000050C
	mov r1, #0
	ldr r0, [r5, r0]
	bl ov83_0224755C
_02244226:
	mov r0, #0
	str r0, [sp, #0x14]
	str r0, [sp, #0x20]
	str r5, [sp, #0x24]
_0224422E:
	mov r7, #0
	ldr r4, [sp, #0x24]
	add r6, r7, #0
_02244234:
	add r0, r5, #0
	add r1, sp, #0x34
	add r2, sp, #0x30
	bl ov83_02245CE8
	mov r0, #0xc
	str r0, [sp]
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x20]
	add r0, r1, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	mov r1, #0
	ldr r0, [sp, #0x30]
	add r2, r1, #0
	add r0, r0, r6
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, #0xb2
	lsl r0, r0, #2
	add r0, r5, r0
	add r3, r1, #0
	bl ov83_02247454
	mov r1, #0x52
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov83_0224755C
	add r7, r7, #1
	add r6, #0xc
	add r4, r4, #4
	cmp r7, #2
	blt _02244234
	ldr r0, [sp, #0x20]
	add r0, #0x40
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	add r0, #8
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #4
	blt _0224422E
	add r0, r5, #0
	bl ov83_02245C80
	mov r1, #0
	mov r0, #0xb
	str r0, [sp]
	mov r0, #0x14
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xb2
	lsl r0, r0, #2
	str r1, [sp, #0xc]
	add r0, r5, r0
	add r2, r1, #0
	add r3, r1, #0
	str r1, [sp, #0x10]
	bl ov83_02247454
	mov r1, #0x15
	lsl r1, r1, #6
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #0
	bl ov83_0224755C
	add r0, r5, #0
	bl ov83_02245D48
	add r0, r5, #0
	bl ov83_02245F24
	add r0, r5, #0
	mov r1, #1
	bl ov83_02246114
	mov r1, #0
	str r1, [sp]
	mov r0, #0x30
	str r0, [sp, #4]
	mov r0, #0x28
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #0xb2
	str r1, [sp, #0x10]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r5, r0
	add r2, r1, #0
	add r3, r1, #0
	bl ov83_022474C4
	ldr r1, _02244384 ; =0x00000544
	str r0, [r5, r1]
	add r0, r5, #0
	bl ov83_02246988
	ldrb r2, [r5, #0x14]
	add r0, r5, #0
	mov r1, #1
	bl ov83_02247A7C
	mov r1, #0x5f
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r1, #0xb2
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	sub r1, #0x18
	ldr r1, [r5, r1]
	bl ov83_02247CB8
	ldr r1, _02244388 ; =0x000005F4
	str r0, [r5, r1]
	add r1, #0x10
	add r0, r5, r1
	bl ov83_02247844
	bl sub_02037474
	cmp r0, #0
	beq _02244354
	mov r0, #1
	mov r1, #0x10
	bl G2dRenderer_SetObjCharTransferReservedRegion
	mov r0, #1
	bl G2dRenderer_SetPlttTransferReservedRegion
	bl sub_0203A880
_02244354:
	mov r0, #0xa
	str r0, [sp]
	ldr r0, _0224438C ; =0x04000050
	mov r1, #0
	mov r2, #0xe
	mov r3, #6
	bl G2x_SetBlendAlpha_
	ldr r0, _02244390 ; =ov83_02244488
	add r1, r5, #0
	bl Main_SetVBlankIntrCB
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02244370: .word 0x000004F4
_02244374: .word 0x000004E4
_02244378: .word 0x0000054C
_0224437C: .word 0x00000508
_02244380: .word 0x0000050C
_02244384: .word 0x00000544
_02244388: .word 0x000005F4
_0224438C: .word 0x04000050
_02244390: .word ov83_02244488
	thumb_func_end ov83_02243FD4

	thumb_func_start ov83_02244394
ov83_02244394: ; 0x02244394
	push {r4, lr}
	ldr r2, _02244400 ; =0x04000304
	add r4, r0, #0
	ldrh r1, [r2]
	ldr r0, _02244404 ; =0xFFFF7FFF
	and r0, r1
	strh r0, [r2]
	bl ov83_022444C0
	ldr r0, [r4, #0x4c]
	bl ov83_022444E0
	mov r0, #0x6b
	bl PaletteData_Init
	mov r1, #0x2b
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #2
	lsl r2, r1, #8
	mov r3, #0x6b
	bl PaletteData_AllocBuffers
	mov r2, #0x2b
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	mov r1, #0
	sub r2, #0xb0
	mov r3, #0x6b
	bl PaletteData_AllocBuffers
	add r0, r4, #0
	mov r1, #3
	bl ov83_0224465C
	bl ov83_022446D0
	add r0, r4, #0
	mov r1, #2
	bl ov83_02244704
	bl ov83_0224474C
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	add r0, r4, #0
	mov r1, #4
	bl ov83_02244780
	pop {r4, pc}
	nop
_02244400: .word 0x04000304
_02244404: .word 0xFFFF7FFF
	thumb_func_end ov83_02244394

	thumb_func_start ov83_02244408
ov83_02244408: ; 0x02244408
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	add r2, r0, #0
	ldr r1, _02244428 ; =0x0000055C
	mov r0, #0xb2
	lsl r0, r0, #2
	lsl r2, r2, #0x18
	ldr r1, [r4, r1]
	add r0, r4, r0
	lsr r2, r2, #0x18
	bl ov83_02246E08
	pop {r4, pc}
	.balign 4, 0
_02244428: .word 0x0000055C
	thumb_func_end ov83_02244408

	thumb_func_start ov83_0224442C
ov83_0224442C: ; 0x0224442C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x1f
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x1f
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	add r0, r4, #0
	mov r1, #3
	bl FreeBgTilemapBuffer
	add r0, r4, #0
	mov r1, #2
	bl FreeBgTilemapBuffer
	add r0, r4, #0
	mov r1, #0
	bl FreeBgTilemapBuffer
	add r0, r4, #0
	mov r1, #1
	bl FreeBgTilemapBuffer
	add r0, r4, #0
	mov r1, #4
	bl FreeBgTilemapBuffer
	add r0, r4, #0
	mov r1, #5
	bl FreeBgTilemapBuffer
	add r0, r4, #0
	bl Heap_Free
	ldr r2, _02244484 ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	pop {r4, pc}
	nop
_02244484: .word 0x04000304
	thumb_func_end ov83_0224442C

	thumb_func_start ov83_02244488
ov83_02244488: ; 0x02244488
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x2b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0224449A
	bl PaletteData_PushTransparentBuffers
_0224449A:
	ldr r0, [r4, #0x4c]
	bl DoScheduledBgGpuUpdates
	bl GF_RunVramTransferTasks
	bl OamManager_ApplyAndResetBuffers
	ldr r3, _022444B8 ; =0x027E0000
	ldr r1, _022444BC ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_022444B8: .word 0x027E0000
_022444BC: .word 0x00003FF8
	thumb_func_end ov83_02244488

	thumb_func_start ov83_022444C0
ov83_022444C0: ; 0x022444C0
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _022444DC ; =ov83_02248150
	add r3, sp, #0
	mov r2, #5
_022444CA:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _022444CA
	add r0, sp, #0
	bl GfGfx_SetBanks
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_022444DC: .word ov83_02248150
	thumb_func_end ov83_022444C0

	thumb_func_start ov83_022444E0
ov83_022444E0: ; 0x022444E0
	push {r3, r4, r5, lr}
	sub sp, #0xb8
	ldr r5, _0224463C ; =ov83_02248044
	add r3, sp, #0xa8
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r5, _02244640 ; =ov83_02248068
	add r3, sp, #0x8c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #1
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x6b
	bl BG_ClearCharDataRange
	add r0, r4, #0
	mov r1, #1
	bl BgClearTilemapBufferAndCommit
	ldr r5, _02244644 ; =ov83_02248084
	add r3, sp, #0x70
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #0
	str r0, [r3]
	add r0, r4, #0
	add r3, r1, #0
	bl InitBgFromTemplate
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0x6b
	bl BG_ClearCharDataRange
	add r0, r4, #0
	mov r1, #0
	bl BgClearTilemapBufferAndCommit
	ldr r5, _02244648 ; =ov83_022480A0
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #2
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x6b
	bl BG_ClearCharDataRange
	add r0, r4, #0
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	ldr r5, _0224464C ; =ov83_022480BC
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #3
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	mov r0, #3
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x6b
	bl BG_ClearCharDataRange
	add r0, r4, #0
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	ldr r5, _02244650 ; =ov83_022480D8
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #4
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #4
	bl BgClearTilemapBufferAndCommit
	ldr r5, _02244654 ; =ov83_022480F4
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #5
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	mov r0, #5
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x6b
	bl BG_ClearCharDataRange
	add r0, r4, #0
	mov r1, #5
	bl BgClearTilemapBufferAndCommit
	ldr r1, _02244658 ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	strh r2, [r1]
	mov r0, #2
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	add sp, #0xb8
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0224463C: .word ov83_02248044
_02244640: .word ov83_02248068
_02244644: .word ov83_02248084
_02244648: .word ov83_022480A0
_0224464C: .word ov83_022480BC
_02244650: .word ov83_022480D8
_02244654: .word ov83_022480F4
_02244658: .word 0x04000008
	thumb_func_end ov83_022444E0

	thumb_func_start ov83_0224465C
ov83_0224465C: ; 0x0224465C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r4, r1, #0
	mov r0, #0x6b
	str r0, [sp, #0xc]
	mov r0, #0x56
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #0x30
	add r3, r4, #0
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	ldrb r0, [r5, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _022446AE
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x6b
	str r0, [sp, #0xc]
	mov r0, #0x56
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #0x2c
	add r3, r4, #0
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	add sp, #0x10
	pop {r3, r4, r5, pc}
_022446AE:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x6b
	str r0, [sp, #0xc]
	mov r0, #0x56
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #0x2d
	add r3, r4, #0
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov83_0224465C

	thumb_func_start ov83_022446D0
ov83_022446D0: ; 0x022446D0
	push {r3, r4, lr}
	sub sp, #4
	mov r0, #0xb7
	mov r1, #0x9d
	add r2, sp, #0
	mov r3, #0x6b
	bl GfGfxLoader_GetPlttData
	add r4, r0, #0
	ldr r0, [sp]
	mov r1, #0x80
	ldr r0, [r0, #0xc]
	bl DC_FlushRange
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #0xc]
	mov r2, #0x80
	bl GX_LoadBGPltt
	add r0, r4, #0
	bl Heap_Free
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov83_022446D0

	thumb_func_start ov83_02244704
ov83_02244704: ; 0x02244704
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r4, r1, #0
	mov r0, #0x6b
	str r0, [sp, #0xc]
	mov r0, #0x56
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #0x30
	add r3, r4, #0
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x6b
	str r0, [sp, #0xc]
	mov r0, #0x56
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #0x2e
	add r3, r4, #0
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov83_02244704

	thumb_func_start ov83_0224474C
ov83_0224474C: ; 0x0224474C
	push {r3, r4, lr}
	sub sp, #4
	mov r0, #0xb7
	mov r1, #0x9d
	add r2, sp, #0
	mov r3, #0x6b
	bl GfGfxLoader_GetPlttData
	add r4, r0, #0
	ldr r0, [sp]
	mov r1, #0x80
	ldr r0, [r0, #0xc]
	bl DC_FlushRange
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #0xc]
	mov r2, #0x80
	bl GX_LoadBGPltt
	add r0, r4, #0
	bl Heap_Free
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov83_0224474C

	thumb_func_start ov83_02244780
ov83_02244780: ; 0x02244780
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r4, r1, #0
	mov r0, #0x6b
	str r0, [sp, #0xc]
	mov r0, #0x56
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #0x28
	add r3, r4, #0
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x6b
	str r0, [sp, #0xc]
	mov r0, #0x56
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #0x93
	add r3, r4, #0
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	mov r3, #0
	str r3, [sp]
	mov r0, #0x6b
	str r0, [sp, #4]
	mov r0, #0x56
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0xbe
	mov r2, #4
	bl GfGfxLoader_GXLoadPalFromOpenNarc
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov83_02244780

	thumb_func_start ov83_022447E0
ov83_022447E0: ; 0x022447E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r1, sp, #0x38
	ldrb r1, [r1]
	add r5, r0, #0
	add r0, r4, #0
	add r6, r2, #0
	add r7, r3, #0
	bl FillWindowPixelBuffer
	ldr r0, [r5, #0x20]
	ldr r2, [r5, #0x2c]
	add r1, r6, #0
	bl ReadMsgDataIntoString
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x2c]
	bl StringExpandPlaceholders
	ldr r0, [sp, #0x28]
	add r2, sp, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r3, r7, #0
	str r0, [sp, #4]
	add r0, sp, #0x38
	ldrb r1, [r0]
	ldrb r0, [r2, #0x18]
	ldrb r2, [r2, #0x1c]
	lsl r0, r0, #0x18
	lsl r2, r2, #0x18
	lsr r0, r0, #8
	lsr r2, r2, #0x10
	orr r0, r2
	orr r0, r1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r1, sp, #0x3c
	ldrb r1, [r1]
	ldr r2, [r5, #0x28]
	add r0, r4, #0
	bl AddTextPrinterParameterizedWithColor
	add r5, r0, #0
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	add r0, r5, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov83_022447E0

	thumb_func_start ov83_0224484C
ov83_0224484C: ; 0x0224484C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	add r1, r2, #0
	ldr r0, [r5, #0x20]
	ldr r2, [r5, #0x2c]
	add r6, r3, #0
	bl ReadMsgDataIntoString
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x2c]
	bl StringExpandPlaceholders
	ldr r0, [sp, #0x20]
	add r2, sp, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x24]
	add r3, r6, #0
	str r0, [sp, #4]
	add r0, sp, #0x30
	ldrb r1, [r0]
	ldrb r0, [r2, #0x18]
	ldrb r2, [r2, #0x1c]
	lsl r0, r0, #0x18
	lsl r2, r2, #0x18
	lsr r0, r0, #8
	lsr r2, r2, #0x10
	orr r0, r2
	orr r0, r1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r1, sp, #0x34
	ldrb r1, [r1]
	ldr r2, [r5, #0x28]
	add r0, r4, #0
	bl AddTextPrinterParameterizedWithColor
	add r5, r0, #0
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	add r0, r5, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov83_0224484C

	thumb_func_start ov83_022448AC
ov83_022448AC: ; 0x022448AC
	push {r3, r4, r5, lr}
	sub sp, #0x18
	mov r3, #1
	add r4, r1, #0
	str r3, [sp]
	mov r1, #0xff
	str r1, [sp, #4]
	str r3, [sp, #8]
	mov r1, #2
	str r1, [sp, #0xc]
	mov r1, #0xf
	str r1, [sp, #0x10]
	add r5, r0, #0
	add r1, r5, #0
	str r2, [sp, #0x14]
	add r1, #0xc0
	add r2, r4, #0
	bl ov83_022447E0
	add r5, #0xc0
	add r4, r0, #0
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov83_022448AC

	thumb_func_start ov83_022448E4
ov83_022448E4: ; 0x022448E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldrb r0, [r5, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _02244902
	mov r6, #0x24
	b _02244904
_02244902:
	mov r6, #4
_02244904:
	ldrb r0, [r5, #9]
	mov r1, #1
	bl ov80_02237B58
	mov r7, #0
	str r0, [sp, #0xc]
	cmp r0, #0
	ble _022449C0
	add r0, r6, #0
	str r0, [sp, #0x14]
	add r0, #0x18
	str r0, [sp, #0x14]
	add r0, r6, #0
	str r0, [sp, #0x10]
	add r0, #0x20
	str r0, [sp, #0x10]
_02244924:
	ldr r0, _022449CC ; =0x0000054C
	ldr r0, [r5, r0]
	ldrb r0, [r0, r7]
	cmp r0, #0
	bne _02244946
	mov r0, #0x40
	str r0, [sp]
	mov r0, #0x10
	lsl r2, r6, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0
	lsr r2, r2, #0x10
	mov r3, #1
	bl FillWindowPixelRect
	b _022449AA
_02244946:
	ldr r0, _022449D0 ; =0x0000055C
	add r1, r7, #0
	ldr r0, [r5, r0]
	bl Party_GetMonByIndex
	mov r1, #0xa3
	mov r2, #0
	str r0, [sp, #0x18]
	bl GetMonData
	str r4, [sp]
	add r1, r0, #0
	str r6, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0xad
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r2, #3
	mov r3, #1
	bl PrintUIntOnWindow
	mov r0, #1
	str r0, [sp]
	mov r0, #0xad
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r3, [sp, #0x14]
	mov r1, #0
	add r2, r4, #0
	bl sub_0200CDAC
	ldr r0, [sp, #0x18]
	mov r1, #0xa4
	mov r2, #0
	bl GetMonData
	add r1, r0, #0
	ldr r0, [sp, #0x10]
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0xad
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r2, #3
	mov r3, #0
	bl PrintUIntOnWindow
_022449AA:
	ldr r0, [sp, #0x14]
	add r7, r7, #1
	add r0, #0x40
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r6, #0x40
	add r0, #0x40
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	cmp r7, r0
	blt _02244924
_022449C0:
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_022449CC: .word 0x0000054C
_022449D0: .word 0x0000055C
	thumb_func_end ov83_022448E4

	thumb_func_start ov83_022449D4
ov83_022449D4: ; 0x022449D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	str r1, [sp, #0x10]
	add r0, r1, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldrb r0, [r5, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _022449F4
	mov r4, #0x28
	mov r6, #0x50
	b _022449F8
_022449F4:
	mov r4, #8
	mov r6, #0x30
_022449F8:
	ldrb r0, [r5, #9]
	mov r1, #1
	bl ov80_02237B58
	mov r7, #0
	str r0, [sp, #0x14]
	cmp r0, #0
	ble _02244A66
_02244A08:
	ldr r0, _02244A70 ; =0x0000055C
	add r1, r7, #0
	ldr r0, [r5, r0]
	bl Party_GetMonByIndex
	mov r1, #0xa1
	mov r2, #0
	str r0, [sp, #0x18]
	bl GetMonData
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x10]
	mov r1, #1
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #0xad
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r3, #3
	bl sub_0200CE7C
	ldr r0, [sp, #0x18]
	mov r1, #0x6f
	mov r2, #0
	bl GetMonData
	mov r1, #0
	lsl r0, r0, #0x18
	str r1, [sp]
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #1
	bl ov83_02244BA8
	ldr r0, [sp, #0x14]
	add r7, r7, #1
	add r4, #0x40
	add r6, #0x40
	cmp r7, r0
	blt _02244A08
_02244A66:
	ldr r0, [sp, #0x10]
	bl ScheduleWindowCopyToVram
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02244A70: .word 0x0000055C
	thumb_func_end ov83_022449D4

	thumb_func_start ov83_02244A74
ov83_02244A74: ; 0x02244A74
	add r1, r0, #0
	ldr r0, _02244A80 ; =0x00000604
	ldr r3, _02244A84 ; =ov83_02247864
	add r0, r1, r0
	ldr r1, [r1, #0x4c]
	bx r3
	.balign 4, 0
_02244A80: .word 0x00000604
_02244A84: .word ov83_02247864
	thumb_func_end ov83_02244A74

	thumb_func_start ov83_02244A88
ov83_02244A88: ; 0x02244A88
	ldr r3, _02244A8C ; =ov83_02246C2C
	bx r3
	.balign 4, 0
_02244A8C: .word ov83_02246C2C
	thumb_func_end ov83_02244A88

	thumb_func_start ov83_02244A90
ov83_02244A90: ; 0x02244A90
	ldr r3, _02244A94 ; =ov83_02246C70
	bx r3
	.balign 4, 0
_02244A94: .word ov83_02246C70
	thumb_func_end ov83_02244A90

	thumb_func_start ov83_02244A98
ov83_02244A98: ; 0x02244A98
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	mov r4, #1
	str r4, [sp, #4]
	ldr r0, [r0, #0x24]
	bl BufferIntegerAsString
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov83_02244A98

	thumb_func_start ov83_02244AB0
ov83_02244AB0: ; 0x02244AB0
	ldr r3, _02244AB8 ; =BufferBoxMonSpeciesName
	ldr r0, [r0, #0x24]
	bx r3
	nop
_02244AB8: .word BufferBoxMonSpeciesName
	thumb_func_end ov83_02244AB0

	thumb_func_start ov83_02244ABC
ov83_02244ABC: ; 0x02244ABC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xaf
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r4, r1, #0
	bl Save_PlayerData_GetProfile
	add r2, r0, #0
	ldr r0, [r5, #0x24]
	add r1, r4, #0
	bl BufferPlayersName
	pop {r3, r4, r5, pc}
	thumb_func_end ov83_02244ABC

	thumb_func_start ov83_02244AD8
ov83_02244AD8: ; 0x02244AD8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r1, #0
	mov r1, #0xaf
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	str r2, [sp, #0x10]
	add r5, r3, #0
	bl Save_PlayerData_GetProfile
	add r6, r0, #0
	mov r0, #8
	mov r1, #0x6b
	bl String_New
	add r4, r0, #0
	add r0, r6, #0
	bl PlayerProfile_GetNamePtr
	add r1, r0, #0
	add r0, r4, #0
	bl CopyU16ArrayToString
	add r0, r6, #0
	bl PlayerProfile_GetTrainerGender
	cmp r0, #0
	bne _02244B14
	ldr r1, _02244B3C ; =0x00070800
	b _02244B18
_02244B14:
	mov r1, #0xc1
	lsl r1, r1, #0xa
_02244B18:
	str r5, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r1, sp, #0x18
	ldrb r1, [r1, #0x10]
	ldr r3, [sp, #0x10]
	add r0, r7, #0
	add r2, r4, #0
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, #0
	bl String_Delete
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02244B3C: .word 0x00070800
	thumb_func_end ov83_02244AD8

	thumb_func_start ov83_02244B40
ov83_02244B40: ; 0x02244B40
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r7, r1, #0
	str r2, [sp, #0x18]
	add r6, r3, #0
	bl sub_0203769C
	mov r1, #1
	eor r0, r1
	bl sub_02034818
	str r0, [sp, #0x1c]
	bl PlayerProfile_GetTrainerGender
	cmp r0, #0
	bne _02244B66
	ldr r4, _02244BA4 ; =0x00070800
	b _02244B6A
_02244B66:
	mov r4, #0xc1
	lsl r4, r4, #0xa
_02244B6A:
	ldr r0, [r5, #0x24]
	ldr r2, [sp, #0x1c]
	mov r1, #0
	bl BufferPlayersName
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	lsr r0, r4, #0x10
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	lsr r0, r4, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r3, [sp, #0x18]
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #1
	bl ov83_0224484C
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02244BA4: .word 0x00070800
	thumb_func_end ov83_02244B40

	thumb_func_start ov83_02244BA8
ov83_02244BA8: ; 0x02244BA8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r2, #0
	add r2, r3, #0
	add r3, sp, #0x20
	ldrb r3, [r3, #0x14]
	cmp r3, #0
	bne _02244BC2
	mov r3, #0x40
	mov r4, #7
	mov r5, #8
	mov r6, #0
	b _02244BCE
_02244BC2:
	cmp r3, #1
	bne _02244BE8
	mov r3, #0x41
	mov r4, #3
	mov r5, #4
	mov r6, #0
_02244BCE:
	str r2, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	str r6, [sp, #0x10]
	add r2, sp, #0x20
	ldrb r2, [r2, #0x10]
	str r2, [sp, #0x14]
	add r2, r3, #0
	add r3, r7, #0
	bl ov83_0224484C
_02244BE8:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov83_02244BA8

	thumb_func_start ov83_02244BEC
ov83_02244BEC: ; 0x02244BEC
	push {r4, lr}
	sub sp, #0x18
	mov r2, #5
	str r2, [sp]
	mov r1, #0xff
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r1, #2
	add r4, r0, #0
	str r1, [sp, #0xc]
	mov r3, #0
	str r3, [sp, #0x10]
	add r1, r4, #0
	str r3, [sp, #0x14]
	add r1, #0x60
	bl ov83_022447E0
	strb r0, [r4, #0xa]
	mov r0, #0xae
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xd0
	bl ov83_02247944
	mov r3, #1
	add r1, r4, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r1, #0xd0
	mov r2, #4
	str r3, [sp, #0x14]
	bl ov83_022447E0
	strb r0, [r4, #0xa]
	add sp, #0x18
	pop {r4, pc}
	thumb_func_end ov83_02244BEC

	thumb_func_start ov83_02244C4C
ov83_02244C4C: ; 0x02244C4C
	ldr r3, _02244C54 ; =ov83_02245094
	add r0, #0xd0
	bx r3
	nop
_02244C54: .word ov83_02245094
	thumb_func_end ov83_02244C4C

	thumb_func_start ov83_02244C58
ov83_02244C58: ; 0x02244C58
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xae
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xc0
	bl ov83_02247944
	mov r1, #1
	mov r0, #6
	mvn r1, r1
	lsl r0, r0, #8
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov83_02246AA4
	add r0, r4, #0
	bl ov83_02246CC0
	pop {r4, pc}
	thumb_func_end ov83_02244C58

	thumb_func_start ov83_02244C88
ov83_02244C88: ; 0x02244C88
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xc0
	bl ov83_02245094
	add r0, r4, #0
	bl ov83_02246C70
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov83_02244C88

	thumb_func_start ov83_02244C9C
ov83_02244C9C: ; 0x02244C9C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xae
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xc0
	bl ov83_02247944
	mov r1, #1
	mov r0, #6
	mvn r1, r1
	lsl r0, r0, #8
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov83_02246B6C
	add r0, r4, #0
	bl ov83_02246D40
	pop {r4, pc}
	thumb_func_end ov83_02244C9C

	thumb_func_start ov83_02244CCC
ov83_02244CCC: ; 0x02244CCC
	ldr r3, _02244CD0 ; =ov83_02246C70
	bx r3
	.balign 4, 0
_02244CD0: .word ov83_02246C70
	thumb_func_end ov83_02244CCC

	thumb_func_start ov83_02244CD4
ov83_02244CD4: ; 0x02244CD4
	mov r3, #0
	strb r3, [r0, #8]
	str r2, [r1]
	bx lr
	thumb_func_end ov83_02244CD4

	thumb_func_start ov83_02244CDC
ov83_02244CDC: ; 0x02244CDC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02244D08 ; =0x000005DC
	bl PlaySE
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #1
	bne _02244CFA
	ldrb r2, [r4, #0xd]
	add r0, r4, #0
	mov r1, #0x16
	bl ov83_022450A8
_02244CFA:
	ldrb r1, [r4, #0xd]
	add r0, r4, #0
	mov r2, #0
	bl ov83_02244D0C
	pop {r4, pc}
	nop
_02244D08: .word 0x000005DC
	thumb_func_end ov83_02244CDC

	thumb_func_start ov83_02244D0C
ov83_02244D0C: ; 0x02244D0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	bne _02244D22
	ldr r0, _02244D98 ; =0x00000508
	mov r2, #1
	ldr r4, [r5, r0]
	mov r1, #0
	b _02244D2A
_02244D22:
	ldr r0, _02244D9C ; =0x0000050C
	mov r2, #2
	ldr r4, [r5, r0]
	mov r1, #0x11
_02244D2A:
	ldrb r0, [r5, #0x15]
	cmp r7, r0
	blo _02244D50
	add r0, r4, #0
	bl ov83_022475D4
	add r0, r4, #0
	mov r1, #0xe0
	mov r2, #0xa0
	bl ov83_02247568
	cmp r6, #0
	bne _02244D92
	add r0, r5, #0
	mov r1, #0
	bl ov83_02246938
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02244D50:
	add r0, r4, #0
	add r1, r2, #0
	bl ov83_022475D4
	add r0, r5, #0
	add r1, sp, #4
	add r2, sp, #0
	add r3, r7, #0
	bl ov83_02244DA0
	ldr r1, [sp, #4]
	ldr r2, [sp]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl ov83_02247568
	cmp r6, #0
	bne _02244D92
	ldrb r1, [r5, #0xc]
	ldrb r0, [r5, #0x15]
	cmp r1, r0
	blo _02244D8A
	add r0, r5, #0
	mov r1, #1
	bl ov83_02246938
_02244D8A:
	add r0, r5, #0
	mov r1, #0
	bl ov83_0224691C
_02244D92:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02244D98: .word 0x00000508
_02244D9C: .word 0x0000050C
	thumb_func_end ov83_02244D0C

	thumb_func_start ov83_02244DA0
ov83_02244DA0: ; 0x02244DA0
	push {r4, r5, r6, lr}
	ldrb r0, [r0, #9]
	add r5, r1, #0
	add r6, r2, #0
	add r4, r3, #0
	bl ov80_02237D8C
	cmp r0, #1
	bne _02244DD6
	cmp r4, #0
	bne _02244DBC
	mov r0, #0x28
	str r0, [r5]
	b _02244DEE
_02244DBC:
	cmp r4, #1
	bne _02244DC6
	mov r0, #0x68
	str r0, [r5]
	b _02244DEE
_02244DC6:
	cmp r4, #2
	bne _02244DD0
	mov r0, #0xa8
	str r0, [r5]
	b _02244DEE
_02244DD0:
	mov r0, #0xe8
	str r0, [r5]
	b _02244DEE
_02244DD6:
	cmp r4, #0
	bne _02244DE0
	mov r0, #0x48
	str r0, [r5]
	b _02244DEE
_02244DE0:
	cmp r4, #1
	bne _02244DEA
	mov r0, #0x88
	str r0, [r5]
	b _02244DEE
_02244DEA:
	mov r0, #0xc8
	str r0, [r5]
_02244DEE:
	mov r0, #0x58
	str r0, [r6]
	pop {r4, r5, r6, pc}
	thumb_func_end ov83_02244DA0

	thumb_func_start ov83_02244DF4
ov83_02244DF4: ; 0x02244DF4
	push {r3, r4, r5, r6, r7, lr}
	ldrb r0, [r0, #9]
	add r5, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	ldr r4, [sp, #0x18]
	bl ov80_02237D8C
	cmp r0, #0
	bne _02244E16
	mov r0, #0x28
	strh r0, [r5]
	mov r0, #0
	strh r0, [r6]
	strh r0, [r7]
	strh r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02244E16:
	mov r1, #0
	strh r1, [r5]
	strh r1, [r6]
	mov r0, #0x80
	strh r0, [r7]
	strh r1, [r4]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov83_02244DF4

	thumb_func_start ov83_02244E24
ov83_02244E24: ; 0x02244E24
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldrb r0, [r4, #0x14]
	add r5, r2, #0
	bl ov83_02247768
	add r6, r0, #0
	ldr r0, _02244F58 ; =0x0000055C
	add r1, r6, #0
	ldr r0, [r4, r0]
	bl Party_GetMonByIndex
	cmp r5, #5
	bls _02244E44
	b _02244F52
_02244E44:
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02244E50: ; jump table
	.short _02244E5C - _02244E50 - 2 ; case 0
	.short _02244E6A - _02244E50 - 2 ; case 1
	.short _02244F52 - _02244E50 - 2 ; case 2
	.short _02244EE8 - _02244E50 - 2 ; case 3
	.short _02244F16 - _02244E50 - 2 ; case 4
	.short _02244F44 - _02244E50 - 2 ; case 5
_02244E5C:
	ldrb r1, [r4, #0xf]
	mov r0, #1
	add sp, #0x14
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02244E6A:
	ldrb r1, [r4, #0xf]
	lsl r0, r1, #0x1f
	lsr r0, r0, #0x1f
	bne _02244EC0
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0x12]
	cmp r0, #1
	bne _02244E86
	mov r5, #9
	b _02244E88
_02244E86:
	mov r5, #0xa
_02244E88:
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _02244E96
	mov r1, #0x50
	b _02244E98
_02244E96:
	mov r1, #0x30
_02244E98:
	lsl r0, r6, #6
	add r0, r1, r0
	lsl r0, r0, #0x10
	str r5, [sp]
	asr r0, r0, #0x10
	str r0, [sp, #4]
	mov r1, #0
	mov r0, #0x32
	str r0, [sp, #8]
	mov r0, #0xb2
	lsl r0, r0, #2
	str r1, [sp, #0xc]
	add r0, r4, r0
	add r2, r1, #0
	add r3, r1, #0
	str r1, [sp, #0x10]
	bl ov83_02247454
	ldr r1, _02244F5C ; =0x00000504
	str r0, [r4, r1]
_02244EC0:
	ldr r0, _02244F5C ; =0x00000504
	ldr r0, [r4, r0]
	bl ov83_02247624
	cmp r0, #0
	bne _02244F52
	ldr r0, _02244F5C ; =0x00000504
	ldr r0, [r4, r0]
	bl ov83_0224753C
	ldr r0, _02244F5C ; =0x00000504
	mov r1, #0
	str r1, [r4, r0]
	ldrb r1, [r4, #0xf]
	mov r0, #1
	add sp, #0x14
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02244EE8:
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _02244F08
	add r0, r4, #0
	mov r1, #0
	bl ov83_02246114
	ldrb r1, [r4, #0xf]
	mov r0, #1
	add sp, #0x14
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02244F08:
	ldrb r1, [r4, #0xf]
	mov r0, #1
	add sp, #0x14
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02244F16:
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _02244F36
	add r0, r4, #0
	mov r1, #0
	bl ov83_02246114
	ldrb r1, [r4, #0xf]
	mov r0, #1
	add sp, #0x14
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02244F36:
	ldrb r1, [r4, #0xf]
	mov r0, #1
	add sp, #0x14
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02244F44:
	ldrb r1, [r4, #0xf]
	mov r0, #1
	add sp, #0x14
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02244F52:
	mov r0, #0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_02244F58: .word 0x0000055C
_02244F5C: .word 0x00000504
	thumb_func_end ov83_02244E24

	thumb_func_start ov83_02244F60
ov83_02244F60: ; 0x02244F60
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldrb r0, [r4, #0x14]
	add r6, r2, #0
	ldrb r5, [r4, #0x15]
	bl ov83_02247768
	add r1, r0, #0
	ldr r0, _02245064 ; =0x0000055C
	ldr r0, [r4, r0]
	bl Party_GetMonByIndex
	cmp r6, #5
	bhi _02245060
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02244F88: ; jump table
	.short _02244F94 - _02244F88 - 2 ; case 0
	.short _02244F94 - _02244F88 - 2 ; case 1
	.short _02245060 - _02244F88 - 2 ; case 2
	.short _02244FBC - _02244F88 - 2 ; case 3
	.short _0224500E - _02244F88 - 2 ; case 4
	.short _02244FA0 - _02244F88 - 2 ; case 5
_02244F94:
	ldrb r1, [r4, #0xf]
	mov r0, #1
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02244FA0:
	ldrb r0, [r4, #0xf]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _02244FB0
	add r0, r4, #0
	mov r1, #0
	bl ov83_02246114
_02244FB0:
	ldrb r1, [r4, #0xf]
	mov r0, #1
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02244FBC:
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #1
	bne _02244FF0
	bl sub_0203769C
	cmp r0, #0
	ldrb r0, [r4, #0x11]
	bne _02244FE0
	cmp r0, r5
	blo _02244FF0
	ldrb r1, [r4, #0xf]
	mov r0, #1
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02244FE0:
	cmp r0, r5
	bhs _02244FF0
	ldrb r1, [r4, #0xf]
	mov r0, #1
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02244FF0:
	ldrb r1, [r4, #0xf]
	lsl r0, r1, #0x1f
	lsr r0, r0, #0x1f
	bne _02245060
	mov r0, #0xf8
	bic r1, r0
	mov r0, #0x18
	orr r0, r1
	strb r0, [r4, #0xf]
	ldrb r1, [r4, #0xf]
	mov r0, #1
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r4, r5, r6, pc}
_0224500E:
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #1
	bne _02245042
	bl sub_0203769C
	cmp r0, #0
	ldrb r0, [r4, #0x11]
	bne _02245032
	cmp r0, r5
	blo _02245042
	ldrb r1, [r4, #0xf]
	mov r0, #1
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02245032:
	cmp r0, r5
	bhs _02245042
	ldrb r1, [r4, #0xf]
	mov r0, #1
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02245042:
	ldrb r1, [r4, #0xf]
	lsl r0, r1, #0x1f
	lsr r0, r0, #0x1f
	bne _02245060
	mov r0, #0xf8
	bic r1, r0
	mov r0, #0x18
	orr r0, r1
	strb r0, [r4, #0xf]
	ldrb r1, [r4, #0xf]
	mov r0, #1
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02245060:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02245064: .word 0x0000055C
	thumb_func_end ov83_02244F60

	thumb_func_start ov83_02245068
ov83_02245068: ; 0x02245068
	cmp r0, #1
	bne _02245070
	mov r0, #1
	bx lr
_02245070:
	mov r0, #0xf
	bx lr
	thumb_func_end ov83_02245068

	thumb_func_start ov83_02245074
ov83_02245074: ; 0x02245074
	push {r4, lr}
	add r4, r0, #0
	bl ov83_02245390
	add r0, r4, #0
	add r0, #0xc0
	bl ov83_02245094
	mov r0, #0x15
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov83_0224755C
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov83_02245074

	thumb_func_start ov83_02245094
ov83_02245094: ; 0x02245094
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	bl ClearFrameAndWindow2
	add r0, r4, #0
	bl ClearWindowTilemapAndScheduleTransfer
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov83_02245094

	thumb_func_start ov83_022450A8
ov83_022450A8: ; 0x022450A8
	push {r3, r4, r5, lr}
	add r3, r1, #0
	sub r3, #0x14
	add r5, r0, #0
	cmp r3, #3
	bhi _022450E6
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_022450C0: ; jump table
	.short _022450C8 - _022450C0 - 2 ; case 0
	.short _022450D0 - _022450C0 - 2 ; case 1
	.short _022450D8 - _022450C0 - 2 ; case 2
	.short _022450E0 - _022450C0 - 2 ; case 3
_022450C8:
	mov r4, #0x35
	bl ov83_02245104
	b _022450E6
_022450D0:
	mov r4, #0x36
	bl ov83_0224517C
	b _022450E6
_022450D8:
	mov r4, #0x37
	bl ov83_02245210
	b _022450E6
_022450E0:
	mov r4, #0x38
	bl ov83_02245248
_022450E6:
	ldr r1, _02245100 ; =0x00000564
	add r0, r4, #0
	add r1, r5, r1
	mov r2, #0x28
	bl sub_02037030
	cmp r0, #1
	bne _022450FA
	mov r0, #1
	pop {r3, r4, r5, pc}
_022450FA:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02245100: .word 0x00000564
	thumb_func_end ov83_022450A8

	thumb_func_start ov83_02245104
ov83_02245104: ; 0x02245104
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0xaf
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r4, r1, #0
	bl Save_PlayerData_GetProfile
	ldr r1, _02245144 ; =0x00000564
	strh r4, [r6, r1]
	bl PlayerProfile_GetTrainerGender
	ldr r1, _02245148 ; =0x00000566
	mov r4, #0
	strh r0, [r6, r1]
	add r5, r6, #4
	sub r7, r1, #2
_02245126:
	mov r0, #0xaf
	lsl r0, r0, #2
	lsl r2, r4, #0x18
	ldrb r1, [r6, #9]
	ldr r0, [r6, r0]
	lsr r2, r2, #0x18
	bl ov83_0224777C
	strh r0, [r5, r7]
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #3
	blt _02245126
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02245144: .word 0x00000564
_02245148: .word 0x00000566
	thumb_func_end ov83_02245104

	thumb_func_start ov83_0224514C
ov83_0224514C: ; 0x0224514C
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x17]
	add r6, r2, #0
	add r0, r0, #1
	strb r0, [r4, #0x17]
	bl sub_0203769C
	cmp r5, r0
	beq _02245176
	ldr r0, _02245178 ; =0x000005B7
	mov r3, #0
	add r5, r6, #4
_02245168:
	ldrh r2, [r5]
	add r1, r4, r3
	add r3, r3, #1
	add r5, r5, #2
	strb r2, [r1, r0]
	cmp r3, #3
	blt _02245168
_02245176:
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02245178: .word 0x000005B7
	thumb_func_end ov83_0224514C

	thumb_func_start ov83_0224517C
ov83_0224517C: ; 0x0224517C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _022451B0 ; =0x00000564
	add r4, r2, #0
	strh r1, [r5, r0]
	add r0, r0, #2
	strh r4, [r5, r0]
	bl sub_0203769C
	cmp r0, #0
	bne _0224519A
	ldrb r0, [r5, #0x11]
	cmp r0, #0xff
	bne _0224519A
	strb r4, [r5, #0x11]
_0224519A:
	ldrb r1, [r5, #0x11]
	ldr r0, _022451B4 ; =0x00000568
	strh r1, [r5, r0]
	ldrb r2, [r5, #0x12]
	add r1, r0, #4
	add r0, r0, #6
	strh r2, [r5, r1]
	ldrb r1, [r5, #0x13]
	strh r1, [r5, r0]
	pop {r3, r4, r5, pc}
	nop
_022451B0: .word 0x00000564
_022451B4: .word 0x00000568
	thumb_func_end ov83_0224517C

	thumb_func_start ov83_022451B8
ov83_022451B8: ; 0x022451B8
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r6, r0, #0
	ldrb r0, [r4, #0x17]
	add r5, r2, #0
	add r0, r0, #1
	strb r0, [r4, #0x17]
	bl sub_0203769C
	cmp r6, r0
	beq _02245208
	ldrh r1, [r5, #2]
	ldr r0, _0224520C ; =0x000005B5
	strb r1, [r4, r0]
	bl sub_0203769C
	cmp r0, #0
	bne _022451FC
	ldrb r0, [r4, #0x11]
	cmp r0, #0xff
	ldr r0, _0224520C ; =0x000005B5
	beq _022451EA
	mov r1, #0
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_022451EA:
	ldrb r1, [r4, r0]
	ldrb r0, [r4, #0x15]
	add r0, r1, r0
	strb r0, [r4, #0x11]
	ldrh r0, [r5, #8]
	strb r0, [r4, #0x12]
	ldrh r0, [r5, #0xa]
	strb r0, [r4, #0x13]
	pop {r4, r5, r6, pc}
_022451FC:
	ldrh r0, [r5, #4]
	strb r0, [r4, #0x11]
	ldrh r0, [r5, #8]
	strb r0, [r4, #0x12]
	ldrh r0, [r5, #0xa]
	strb r0, [r4, #0x13]
_02245208:
	pop {r4, r5, r6, pc}
	nop
_0224520C: .word 0x000005B5
	thumb_func_end ov83_022451B8

	thumb_func_start ov83_02245210
ov83_02245210: ; 0x02245210
	ldr r2, _0224521C ; =0x00000564
	strh r1, [r0, r2]
	ldrb r3, [r0, #0xd]
	add r1, r2, #2
	strh r3, [r0, r1]
	bx lr
	.balign 4, 0
_0224521C: .word 0x00000564
	thumb_func_end ov83_02245210

	thumb_func_start ov83_02245220
ov83_02245220: ; 0x02245220
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r3, #0
	bl sub_0203769C
	cmp r5, r0
	beq _02245240
	ldrh r0, [r6, #2]
	ldr r1, _02245244 ; =0x000005B4
	mov r2, #1
	strb r0, [r4, r1]
	ldrb r1, [r4, r1]
	add r0, r4, #0
	bl ov83_02244D0C
_02245240:
	pop {r4, r5, r6, pc}
	nop
_02245244: .word 0x000005B4
	thumb_func_end ov83_02245220

	thumb_func_start ov83_02245248
ov83_02245248: ; 0x02245248
	ldr r1, _02245250 ; =0x00000564
	mov r2, #1
	strh r2, [r0, r1]
	bx lr
	.balign 4, 0
_02245250: .word 0x00000564
	thumb_func_end ov83_02245248

	thumb_func_start ov83_02245254
ov83_02245254: ; 0x02245254
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0203769C
	cmp r5, r0
	beq _0224526A
	ldrh r1, [r4]
	ldr r0, _0224526C ; =0x000005B6
	strb r1, [r6, r0]
_0224526A:
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0224526C: .word 0x000005B6
	thumb_func_end ov83_02245254

	thumb_func_start ov83_02245270
ov83_02245270: ; 0x02245270
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #0x14]
	bl ov83_02247768
	ldr r1, _02245284 ; =0x00000554
	mov r2, #1
	ldr r1, [r4, r1]
	strb r2, [r1, r0]
	pop {r4, pc}
	.balign 4, 0
_02245284: .word 0x00000554
	thumb_func_end ov83_02245270

	thumb_func_start ov83_02245288
ov83_02245288: ; 0x02245288
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xae
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r4, r1, #0
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xc0
	bl ov83_02247944
	ldrb r0, [r5, #0x14]
	add r1, r4, #0
	bl ov83_02247768
	add r1, r0, #0
	ldr r0, _022452F8 ; =0x0000055C
	ldr r0, [r5, r0]
	bl Party_GetMonByIndex
	bl Mon_GetBoxMon
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ov83_02244AB0
	add r0, r5, #0
	mov r1, #0x2f
	mov r2, #1
	bl ov83_022448AC
	strb r0, [r5, #0xa]
	add r0, r5, #0
	add r1, r4, #0
	bl ov83_02245270
	add r0, r5, #0
	bl ov83_02245C80
	ldrb r0, [r5, #0xd]
	cmp r0, r4
	bne _022452F0
	add r0, r5, #0
	bl ov83_02245D48
	add r0, r5, #0
	mov r1, #0
	bl ov83_02246114
_022452F0:
	ldr r0, _022452FC ; =0x00000623
	bl PlaySE
	pop {r3, r4, r5, pc}
	.balign 4, 0
_022452F8: .word 0x0000055C
_022452FC: .word 0x00000623
	thumb_func_end ov83_02245288

	thumb_func_start ov83_02245300
ov83_02245300: ; 0x02245300
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #0x14]
	bl ov83_02247768
	ldr r1, _02245314 ; =0x00000558
	mov r2, #1
	ldr r1, [r4, r1]
	strb r2, [r1, r0]
	pop {r4, pc}
	.balign 4, 0
_02245314: .word 0x00000558
	thumb_func_end ov83_02245300

	thumb_func_start ov83_02245318
ov83_02245318: ; 0x02245318
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xae
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r4, r1, #0
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xc0
	bl ov83_02247944
	ldrb r0, [r5, #0x14]
	add r1, r4, #0
	bl ov83_02247768
	add r1, r0, #0
	ldr r0, _02245388 ; =0x0000055C
	ldr r0, [r5, r0]
	bl Party_GetMonByIndex
	bl Mon_GetBoxMon
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ov83_02244AB0
	add r0, r5, #0
	mov r1, #0x53
	mov r2, #1
	bl ov83_022448AC
	strb r0, [r5, #0xa]
	add r0, r5, #0
	add r1, r4, #0
	bl ov83_02245300
	add r0, r5, #0
	bl ov83_02245C80
	ldrb r0, [r5, #0xd]
	cmp r0, r4
	bne _02245380
	add r0, r5, #0
	bl ov83_02245D48
	add r0, r5, #0
	mov r1, #0
	bl ov83_02246114
_02245380:
	ldr r0, _0224538C ; =0x00000623
	bl PlaySE
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02245388: .word 0x0000055C
_0224538C: .word 0x00000623
	thumb_func_end ov83_02245318

	thumb_func_start ov83_02245390
ov83_02245390: ; 0x02245390
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #0xf]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _022453AC
	ldr r0, _022453B8 ; =0x000005F8
	ldr r0, [r4, r0]
	bl TouchscreenListMenu_DestroyButtons
	add r0, r4, #0
	bl ov83_02246C70
_022453AC:
	ldr r0, _022453BC ; =0x00000604
	add r0, r4, r0
	bl ov83_022478B4
	pop {r4, pc}
	nop
_022453B8: .word 0x000005F8
_022453BC: .word 0x00000604
	thumb_func_end ov83_02245390

	thumb_func_start ov83_022453C0
ov83_022453C0: ; 0x022453C0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xae
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl Options_GetFrame
	add r4, #0xc0
	add r1, r0, #0
	add r0, r4, #0
	bl ov83_02247944
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov83_022453C0

	thumb_func_start ov83_022453DC
ov83_022453DC: ; 0x022453DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r1, #0
	add r1, sp, #0x1c
	str r1, [sp]
	add r1, sp, #0x20
	add r3, sp, #0x1c
	add r5, r0, #0
	add r1, #2
	add r2, sp, #0x20
	add r3, #2
	bl ov83_02244DF4
	ldrb r0, [r5, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _02245472
	add r1, sp, #0x1c
	ldrh r0, [r1, #6]
	add r0, #0x48
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	ldrh r0, [r1, #4]
	mov r1, #0
	add r2, r7, #0
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	mov r0, #0x30
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	add r3, r6, #0
	bl FillWindowPixelRect
	ldrb r0, [r5, #9]
	bl sub_0205C1F0
	str r0, [sp, #0x18]
	ldrb r0, [r5, #9]
	bl sub_0205C1F0
	bl sub_0205C268
	add r2, r0, #0
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x18]
	bl FrontierSave_GetStat
	mov r1, #0
	add r2, r0, #0
	str r1, [sp]
	add r0, r5, #0
	mov r3, #4
	bl ov83_02244A98
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r2, #2
	str r2, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r7, #0
	bl ov83_0224484C
	strb r0, [r5, #0xa]
	b _02245540
_02245472:
	mov r0, #0x30
	str r0, [sp]
	mov r0, #0x10
	mov r1, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x40
	add r3, r1, #0
	bl FillWindowPixelRect
	mov r0, #0x30
	str r0, [sp]
	mov r0, #0x10
	mov r1, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0xc0
	add r3, r1, #0
	bl FillWindowPixelRect
	bl sub_0203769C
	cmp r0, #0
	bne _022454C6
	ldrb r0, [r5, #9]
	bl sub_0205C1F0
	add r6, r0, #0
	ldrb r0, [r5, #9]
	bl sub_0205C1F0
	bl sub_0205C268
	add r2, r0, #0
	ldr r0, [r5, #4]
	add r1, r6, #0
	bl FrontierSave_GetStat
	add r6, r0, #0
	ldr r0, _0224554C ; =0x000005BA
	ldrh r7, [r5, r0]
	b _022454E8
_022454C6:
	ldr r0, _0224554C ; =0x000005BA
	ldrh r6, [r5, r0]
	ldrb r0, [r5, #9]
	bl sub_0205C1F0
	add r7, r0, #0
	ldrb r0, [r5, #9]
	bl sub_0205C1F0
	bl sub_0205C268
	add r2, r0, #0
	ldr r0, [r5, #4]
	add r1, r7, #0
	bl FrontierSave_GetStat
	add r7, r0, #0
_022454E8:
	mov r1, #0
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #4
	str r1, [sp]
	bl ov83_02244A98
	mov r0, #0x70
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02245550 ; =0x00010200
	add r1, r4, #0
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r2, [r5, #0x20]
	add r0, r5, #0
	mov r3, #2
	bl ov83_02245D08
	mov r1, #0
	add r0, r5, #0
	add r2, r7, #0
	mov r3, #4
	str r1, [sp]
	bl ov83_02244A98
	mov r0, #0xf0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02245550 ; =0x00010200
	add r1, r4, #0
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r2, [r5, #0x20]
	add r0, r5, #0
	mov r3, #3
	bl ov83_02245D08
_02245540:
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_0224554C: .word 0x000005BA
_02245550: .word 0x00010200
	thumb_func_end ov83_022453DC

	thumb_func_start ov83_02245554
ov83_02245554: ; 0x02245554
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ov83_02245068
	add r2, r0, #0
	mov r1, #0
	add r0, r5, #0
	mov r3, #4
	str r1, [sp]
	bl ov83_02244A98
	add r0, r5, #0
	mov r1, #0x19
	mov r2, #1
	bl ov83_022448AC
	strb r0, [r5, #0xa]
	add r0, r5, #0
	bl ov83_02244A74
	strb r4, [r5, #0xe]
	pop {r3, r4, r5, pc}
	thumb_func_end ov83_02245554

	thumb_func_start ov83_02245584
ov83_02245584: ; 0x02245584
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #4
	str r1, [sp]
	add r1, sp, #8
	add r3, sp, #4
	add r5, r0, #0
	add r1, #2
	add r2, sp, #8
	add r3, #2
	bl ov83_02244DF4
	ldrb r0, [r5, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _022455C8
	mov r0, #0
	str r0, [sp]
	add r3, sp, #4
	ldrh r2, [r3, #6]
	ldrh r3, [r3, #4]
	add r0, r5, #0
	add r2, r2, #4
	add r3, r3, #1
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	add r1, r4, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl ov83_02244AD8
	b _02245630
_022455C8:
	bl sub_0203769C
	cmp r0, #0
	add r2, sp, #4
	bne _02245602
	ldrh r0, [r2, #4]
	add r1, r4, #0
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	mov r0, #0
	str r0, [sp]
	ldrh r2, [r2, #6]
	add r0, r5, #0
	bl ov83_02244AD8
	mov r0, #0
	str r0, [sp]
	add r3, sp, #4
	ldrh r2, [r3, #2]
	ldrh r3, [r3]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r3, #1
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	bl ov83_02244B40
	b _02245630
_02245602:
	ldrh r0, [r2, #4]
	add r1, r4, #0
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	mov r0, #0
	str r0, [sp]
	ldrh r2, [r2, #6]
	add r0, r5, #0
	bl ov83_02244B40
	mov r0, #0
	str r0, [sp]
	add r3, sp, #4
	ldrh r2, [r3, #2]
	ldrh r3, [r3]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r3, #1
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	bl ov83_02244AD8
_02245630:
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov83_02245584

	thumb_func_start ov83_0224563C
ov83_0224563C: ; 0x0224563C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _02245740 ; =0x000005E3
	add r7, r1, #0
	add r6, r2, #0
	bl PlaySE
	ldrb r0, [r4, #0x15]
	add r1, r7, #0
	str r0, [sp]
	bl ov83_0224776C
	str r0, [sp, #4]
	cmp r6, #4
	bhi _02245686
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02245668: ; jump table
	.short _02245672 - _02245668 - 2 ; case 0
	.short _02245676 - _02245668 - 2 ; case 1
	.short _02245686 - _02245668 - 2 ; case 2
	.short _02245680 - _02245668 - 2 ; case 3
	.short _02245684 - _02245668 - 2 ; case 4
_02245672:
	mov r5, #1
	b _02245686
_02245676:
	ldrb r0, [r4, #0x12]
	bl ov83_02245068
	add r5, r0, #0
	b _02245686
_02245680:
	mov r5, #2
	b _02245686
_02245684:
	mov r5, #5
_02245686:
	bl sub_0203769C
	cmp r0, #0
	bne _022456BA
	ldr r0, [sp]
	cmp r7, r0
	bhs _022456A8
	add r0, r4, #0
	mov r1, #5
	bl ov83_02244ABC
	ldrb r1, [r4, #9]
	ldr r0, [r4, #4]
	add r2, r5, #0
	bl ov80_02237FA4
	b _022456E4
_022456A8:
	ldr r0, [r4, #0x24]
	mov r1, #5
	bl ov83_022477C4
	ldr r0, _02245744 ; =0x000005BA
	ldrh r1, [r4, r0]
	sub r1, r1, r5
	strh r1, [r4, r0]
	b _022456E4
_022456BA:
	ldr r0, [sp]
	cmp r7, r0
	bhs _022456D2
	ldr r0, [r4, #0x24]
	mov r1, #5
	bl ov83_022477C4
	ldr r0, _02245744 ; =0x000005BA
	ldrh r1, [r4, r0]
	sub r1, r1, r5
	strh r1, [r4, r0]
	b _022456E4
_022456D2:
	add r0, r4, #0
	mov r1, #5
	bl ov83_02244ABC
	ldrb r1, [r4, #9]
	ldr r0, [r4, #4]
	add r2, r5, #0
	bl ov80_02237FA4
_022456E4:
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x50
	bl ov83_022453DC
	add r0, r4, #0
	bl ov83_02245390
	cmp r6, #4
	bhi _0224573C
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02245704: ; jump table
	.short _0224570E - _02245704 - 2 ; case 0
	.short _0224571A - _02245704 - 2 ; case 1
	.short _0224573C - _02245704 - 2 ; case 2
	.short _02245728 - _02245704 - 2 ; case 3
	.short _02245734 - _02245704 - 2 ; case 4
_0224570E:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov83_02245824
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0224571A:
	ldrb r2, [r4, #0x12]
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov83_02245838
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02245728:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov83_02245288
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02245734:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov83_02245318
_0224573C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02245740: .word 0x000005E3
_02245744: .word 0x000005BA
	thumb_func_end ov83_0224563C

	thumb_func_start ov83_02245748
ov83_02245748: ; 0x02245748
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0x14]
	add r4, r1, #0
	bl ov83_02247768
	add r1, r0, #0
	ldr r0, _02245810 ; =0x0000055C
	ldr r0, [r5, r0]
	bl Party_GetMonByIndex
	add r6, r0, #0
	mov r0, #0xae
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xc0
	bl ov83_02247944
	add r0, r6, #0
	bl Mon_GetBoxMon
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ov83_02244AB0
	add r0, r5, #0
	mov r1, #0x14
	mov r2, #1
	bl ov83_022448AC
	strb r0, [r5, #0xa]
	ldrb r0, [r5, #0x14]
	add r1, r4, #0
	bl ov83_02247768
	ldr r1, _02245814 ; =0x0000054C
	mov r2, #1
	ldr r1, [r5, r1]
	strb r2, [r1, r0]
	ldrb r0, [r5, #0x14]
	add r1, r4, #0
	bl ov83_02247768
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _02245818 ; =0x000004F4
	ldr r0, [r1, r0]
	mov r1, #0
	bl ov83_0224755C
	ldrb r0, [r5, #0x14]
	add r1, r4, #0
	bl ov83_02247768
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _0224581C ; =0x000004E4
	ldr r0, [r1, r0]
	mov r1, #1
	bl ov83_0224755C
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x70
	bl ov83_022449D4
	ldrb r0, [r5, #0xd]
	cmp r0, r4
	bne _022457F0
	add r0, r5, #0
	bl ov83_02245D48
	add r0, r5, #0
	mov r1, #0
	bl ov83_02246114
	add r0, r5, #0
	bl ov83_02246988
_022457F0:
	ldrb r0, [r5, #0x14]
	add r1, r4, #0
	bl ov83_02247768
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x51
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	bl ov83_0224755C
	ldr r0, _02245820 ; =0x00000623
	bl PlaySE
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02245810: .word 0x0000055C
_02245814: .word 0x0000054C
_02245818: .word 0x000004F4
_0224581C: .word 0x000004E4
_02245820: .word 0x00000623
	thumb_func_end ov83_02245748

	thumb_func_start ov83_02245824
ov83_02245824: ; 0x02245824
	push {r4, lr}
	add r4, r0, #0
	bl ov83_02245748
	add r0, r4, #0
	add r4, #0x80
	add r1, r4, #0
	bl ov83_022448E4
	pop {r4, pc}
	thumb_func_end ov83_02245824

	thumb_func_start ov83_02245838
ov83_02245838: ; 0x02245838
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0xae
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r6, r1, #0
	add r7, r2, #0
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xc0
	bl ov83_02247944
	ldrb r0, [r5, #0x14]
	add r1, r6, #0
	bl ov83_02247768
	add r1, r0, #0
	ldr r0, _02245994 ; =0x0000055C
	ldr r0, [r5, r0]
	bl Party_GetMonByIndex
	add r4, r0, #0
	bl Mon_GetBoxMon
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ov83_02244AB0
	cmp r7, #1
	bne _0224588E
	add r0, r5, #0
	mov r1, #0x1f
	mov r2, #1
	bl ov83_022448AC
	strb r0, [r5, #0xa]
	ldr r0, _02245998 ; =0x00000632
	bl PlaySE
	b _022458A0
_0224588E:
	add r0, r5, #0
	mov r1, #0x20
	mov r2, #1
	bl ov83_022448AC
	strb r0, [r5, #0xa]
	ldr r0, _0224599C ; =0x00000633
	bl PlaySE
_022458A0:
	ldrb r0, [r5, #0x14]
	add r1, r6, #0
	bl ov83_02247768
	mov r1, #0x55
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	ldrb r0, [r1, r0]
	cmp r0, #0
	ldrb r0, [r5, #0x14]
	bne _022458C6
	add r1, r6, #0
	bl ov83_02247768
	mov r1, #0x55
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	strb r7, [r1, r0]
	b _022458D6
_022458C6:
	add r1, r6, #0
	bl ov83_02247768
	mov r1, #0x55
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	mov r2, #0
	strb r2, [r1, r0]
_022458D6:
	ldrb r0, [r5, #0x14]
	add r1, r6, #0
	bl ov83_02247768
	mov r1, #0x55
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _0224590E
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl GetMonData
	mov r1, #0x32
	bl GetMonExpBySpeciesAndLevel
	str r0, [sp]
	add r0, r4, #0
	mov r1, #8
	add r2, sp, #0
	bl SetMonData
	add r0, r4, #0
	bl CalcMonLevelAndStats
	b _02245968
_0224590E:
	ldrb r0, [r5, #0x14]
	add r1, r6, #0
	bl ov83_02247768
	mov r1, #0x55
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _02245946
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl GetMonData
	mov r1, #0x37
	bl GetMonExpBySpeciesAndLevel
	str r0, [sp]
	add r0, r4, #0
	mov r1, #8
	add r2, sp, #0
	bl SetMonData
	add r0, r4, #0
	bl CalcMonLevelAndStats
	b _02245968
_02245946:
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl GetMonData
	mov r1, #0x2d
	bl GetMonExpBySpeciesAndLevel
	str r0, [sp]
	add r0, r4, #0
	mov r1, #8
	add r2, sp, #0
	bl SetMonData
	add r0, r4, #0
	bl CalcMonLevelAndStats
_02245968:
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x80
	bl ov83_022448E4
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x70
	bl ov83_022449D4
	ldrb r0, [r5, #0xd]
	cmp r0, r6
	bne _02245990
	add r0, r5, #0
	bl ov83_02245D48
	add r0, r5, #0
	mov r1, #0
	bl ov83_02246114
_02245990:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02245994: .word 0x0000055C
_02245998: .word 0x00000632
_0224599C: .word 0x00000633
	thumb_func_end ov83_02245838

	thumb_func_start ov83_022459A0
ov83_022459A0: ; 0x022459A0
	ldr r3, _022459A8 ; =GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #0
	bx r3
	.balign 4, 0
_022459A8: .word GfGfx_EngineATogglePlanes
	thumb_func_end ov83_022459A0

	thumb_func_start ov83_022459AC
ov83_022459AC: ; 0x022459AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	ldrb r0, [r6, #9]
	mov r1, #1
	bl ov80_02237B24
	mov r4, #0
	str r0, [sp]
	cmp r0, #0
	ble _02245A34
	add r5, r6, #0
_022459C4:
	ldr r0, _02245A38 ; =0x0000055C
	add r1, r4, #0
	ldr r0, [r6, r0]
	bl Party_GetMonByIndex
	str r0, [sp, #4]
	mov r1, #0xa3
	mov r2, #0
	bl GetMonData
	add r7, r0, #0
	ldr r0, [sp, #4]
	mov r1, #0xa4
	mov r2, #0
	bl GetMonData
	add r1, r0, #0
	lsl r0, r7, #0x10
	lsl r1, r1, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	bl ov80_0222A43C
	add r1, r0, #0
	ldr r0, _02245A3C ; =0x000004E4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02245A2A
	bl ov83_02247600
	ldrb r0, [r6, #0x14]
	ldrb r1, [r6, #0xd]
	bl ov83_02247768
	cmp r4, r0
	bne _02245A14
	ldrb r1, [r6, #0xd]
	ldrb r0, [r6, #0x15]
	cmp r1, r0
	blo _02245A20
_02245A14:
	ldr r0, _02245A3C ; =0x000004E4
	mov r1, #0
	ldr r0, [r5, r0]
	bl ov83_0224760C
	b _02245A2A
_02245A20:
	ldr r0, _02245A3C ; =0x000004E4
	mov r1, #1
	ldr r0, [r5, r0]
	bl ov83_0224760C
_02245A2A:
	ldr r0, [sp]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _022459C4
_02245A34:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02245A38: .word 0x0000055C
_02245A3C: .word 0x000004E4
	thumb_func_end ov83_022459AC

	thumb_func_start ov83_02245A40
ov83_02245A40: ; 0x02245A40
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5, #9]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0205C1F0
	add r7, r0, #0
	ldrb r0, [r5, #9]
	bl sub_0205C1F0
	bl sub_0205C268
	add r2, r0, #0
	ldr r0, [r5, #4]
	add r1, r7, #0
	bl FrontierSave_GetStat
	cmp r0, r4
	bhs _02245A82
	add r0, r5, #0
	bl ov83_022453C0
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	bl ov83_022448AC
	strb r0, [r5, #0xa]
	mov r0, #0x10
	strb r0, [r5, #8]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02245A82:
	ldrb r0, [r5, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _02245AC6
	add r0, r5, #0
	add r0, #0xc0
	bl ov83_02245094
	ldrb r1, [r5, #9]
	ldr r0, [r5, #4]
	add r2, r4, #0
	bl ov80_02237FA4
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x50
	bl ov83_022453DC
	cmp r4, #2
	bne _02245AB6
	ldrb r1, [r5, #0xd]
	add r0, r5, #0
	bl ov83_02245288
	b _02245ABE
_02245AB6:
	ldrb r1, [r5, #0xd]
	add r0, r5, #0
	bl ov83_02245318
_02245ABE:
	mov r0, #0xd
	strb r0, [r5, #8]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02245AC6:
	mov r0, #1
	strb r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov83_02245A40

	thumb_func_start ov83_02245ACC
ov83_02245ACC: ; 0x02245ACC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldrb r0, [r5, #9]
	add r4, r1, #0
	mov r1, #0
	add r7, r2, #0
	bl ov80_02237B24
	cmp r7, #5
	bne _02245AE6
	mov r6, #2
	b _02245AEA
_02245AE6:
	bl GF_AssertFail
_02245AEA:
	ldrb r7, [r5, #0x15]
	add r1, r4, #0
	add r0, r7, #0
	bl ov83_0224776C
	bl sub_0203769C
	cmp r0, #0
	bne _02245B9A
	cmp r4, r7
	bhs _02245B7A
	add r0, r5, #0
	mov r1, #5
	bl ov83_02244ABC
	mov r0, #0xaf
	lsl r0, r0, #2
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	add r2, r6, #0
	bl ov83_0224777C
	ldrb r1, [r5, #9]
	ldr r0, [r5, #4]
	mov r2, #0x32
	bl ov80_02237FA4
	mov r0, #0xaf
	lsl r0, r0, #2
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	add r2, r6, #0
	bl ov83_0224777C
	add r4, r0, #0
	mov r0, #0xaf
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl Save_Frontier_GetStatic
	add r7, r0, #0
	ldrb r0, [r5, #9]
	add r1, r6, #0
	bl sub_0205C174
	str r0, [sp]
	ldrb r0, [r5, #9]
	add r1, r6, #0
	bl sub_0205C174
	bl sub_0205C268
	add r3, r4, #1
	lsl r3, r3, #0x10
	add r2, r0, #0
	ldr r1, [sp]
	add r0, r7, #0
	lsr r3, r3, #0x10
	bl sub_02031108
	ldrb r0, [r5, #9]
	bl ov80_02237D8C
	cmp r0, #1
	bne _02245C36
	ldrb r1, [r5, #0xf]
	mov r0, #0xf8
	bic r1, r0
	mov r0, #0x10
	orr r0, r1
	strb r0, [r5, #0xf]
	b _02245C36
_02245B7A:
	ldr r0, [r5, #0x24]
	mov r1, #5
	bl ov83_022477C4
	ldr r1, _02245C78 ; =0x000005B7
	add r2, r1, #3
	add r0, r5, r1
	ldrh r2, [r5, r2]
	ldrb r4, [r0, r6]
	add r1, r1, #3
	sub r2, #0x32
	strh r2, [r5, r1]
	ldrb r1, [r0, r6]
	add r1, r1, #1
	strb r1, [r0, r6]
	b _02245C36
_02245B9A:
	cmp r4, r7
	bhs _02245BBE
	ldr r0, [r5, #0x24]
	mov r1, #5
	bl ov83_022477C4
	ldr r1, _02245C78 ; =0x000005B7
	add r2, r1, #3
	add r0, r5, r1
	ldrh r2, [r5, r2]
	ldrb r4, [r0, r6]
	add r1, r1, #3
	sub r2, #0x32
	strh r2, [r5, r1]
	ldrb r1, [r0, r6]
	add r1, r1, #1
	strb r1, [r0, r6]
	b _02245C36
_02245BBE:
	add r0, r5, #0
	mov r1, #5
	bl ov83_02244ABC
	mov r0, #0xaf
	lsl r0, r0, #2
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	add r2, r6, #0
	bl ov83_0224777C
	ldrb r1, [r5, #9]
	ldr r0, [r5, #4]
	mov r2, #0x32
	bl ov80_02237FA4
	mov r0, #0xaf
	lsl r0, r0, #2
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	add r2, r6, #0
	bl ov83_0224777C
	add r4, r0, #0
	mov r0, #0xaf
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl Save_Frontier_GetStatic
	add r7, r0, #0
	ldrb r0, [r5, #9]
	add r1, r6, #0
	bl sub_0205C174
	str r0, [sp, #4]
	ldrb r0, [r5, #9]
	add r1, r6, #0
	bl sub_0205C174
	bl sub_0205C268
	add r3, r4, #1
	lsl r3, r3, #0x10
	add r2, r0, #0
	ldr r1, [sp, #4]
	add r0, r7, #0
	lsr r3, r3, #0x10
	bl sub_02031108
	ldrb r0, [r5, #9]
	bl ov80_02237D8C
	cmp r0, #1
	bne _02245C36
	ldrb r1, [r5, #0xf]
	mov r0, #0xf8
	bic r1, r0
	mov r0, #0x10
	orr r0, r1
	strb r0, [r5, #0xf]
_02245C36:
	add r0, r5, #0
	bl ov83_02245390
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x50
	bl ov83_022453DC
	mov r0, #0xae
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xc0
	bl ov83_02247944
	mov r1, #6
	add r3, r6, #0
	mul r3, r1
	ldr r1, _02245C7C ; =ov83_02248054
	lsl r2, r4, #1
	add r1, r1, r3
	ldrh r1, [r2, r1]
	add r0, r5, #0
	mov r2, #1
	bl ov83_022448AC
	strb r0, [r5, #0xa]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02245C78: .word 0x000005B7
_02245C7C: .word ov83_02248054
	thumb_func_end ov83_02245ACC

	thumb_func_start ov83_02245C80
ov83_02245C80: ; 0x02245C80
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldrb r0, [r6, #9]
	mov r1, #1
	bl ov80_02237B58
	add r5, r0, #0
	mov r4, #0
	cmp r5, #0
	ble _02245CA4
_02245C94:
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl ov83_02245CA8
	add r4, r4, #1
	cmp r4, r5
	blt _02245C94
_02245CA4:
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov83_02245C80

	thumb_func_start ov83_02245CA8
ov83_02245CA8: ; 0x02245CA8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02245CE0 ; =0x00000554
	add r4, r1, #0
	ldr r1, [r5, r0]
	ldrb r1, [r1, r4]
	cmp r1, #1
	bne _02245CC6
	lsl r1, r4, #3
	add r1, r5, r1
	sub r0, #0x34
	ldr r0, [r1, r0]
	mov r1, #1
	bl ov83_0224755C
_02245CC6:
	ldr r0, _02245CE4 ; =0x00000558
	ldr r1, [r5, r0]
	ldrb r1, [r1, r4]
	cmp r1, #1
	bne _02245CDE
	lsl r1, r4, #3
	add r1, r5, r1
	sub r0, #0x34
	ldr r0, [r1, r0]
	mov r1, #1
	bl ov83_0224755C
_02245CDE:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02245CE0: .word 0x00000554
_02245CE4: .word 0x00000558
	thumb_func_end ov83_02245CA8

	thumb_func_start ov83_02245CE8
ov83_02245CE8: ; 0x02245CE8
	push {r3, r4, r5, lr}
	ldrb r0, [r0, #9]
	add r5, r1, #0
	add r4, r2, #0
	bl ov80_02237D8C
	cmp r0, #1
	bne _02245CFC
	mov r0, #0x40
	b _02245CFE
_02245CFC:
	mov r0, #0x60
_02245CFE:
	str r0, [r5]
	mov r0, #0x3c
	str r0, [r4]
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov83_02245CE8

	thumb_func_start ov83_02245D08
ov83_02245D08: ; 0x02245D08
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	add r0, r2, #0
	add r1, r3, #0
	bl NewString_ReadMsgData
	add r6, r0, #0
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	add r2, r6, #0
	bl StringExpandPlaceholders
	ldr r0, [sp, #0x28]
	ldr r2, [sp, #0x20]
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	ldr r3, [sp, #0x24]
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	str r0, [sp, #8]
	ldr r1, [r5, #0x28]
	add r0, r4, #0
	bl ov83_02247998
	add r0, r6, #0
	bl String_Delete
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov83_02245D08

	thumb_func_start ov83_02245D48
ov83_02245D48: ; 0x02245D48
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldrb r0, [r5, #0x14]
	ldrb r1, [r5, #0xd]
	bl ov83_02247768
	add r1, r0, #0
	ldr r0, _02245EDC ; =0x0000055C
	ldr r0, [r5, r0]
	bl Party_GetMonByIndex
	add r6, r0, #0
	bl AcquireMonLock
	str r0, [sp, #4]
	ldr r0, _02245EE0 ; =0x000005BC
	str r6, [r5, r0]
	add r0, r6, #0
	bl Mon_GetBoxMon
	mov r1, #0x17
	lsl r1, r1, #6
	str r0, [r5, r1]
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl GetMonData
	ldr r1, _02245EE4 ; =0x000005C4
	mov r2, #0
	strh r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0xa1
	bl GetMonData
	ldr r1, _02245EE8 ; =0x000005C7
	mov r2, #0
	strb r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0xa
	bl GetMonData
	ldr r1, _02245EEC ; =0x000005C8
	strb r0, [r5, r1]
	add r0, r6, #0
	bl GetMonNature
	ldr r1, _02245EF0 ; =0x000005C9
	mov r2, #0
	strb r0, [r5, r1]
	add r0, r6, #0
	mov r1, #6
	bl GetMonData
	ldr r1, _02245EF4 ; =0x000005CA
	mov r2, #0
	strh r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0xa3
	bl GetMonData
	mov r1, #0x5d
	lsl r1, r1, #4
	strh r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0xa4
	mov r2, #0
	bl GetMonData
	ldr r1, _02245EF8 ; =0x000005D2
	mov r2, #0
	strh r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0xa5
	bl GetMonData
	ldr r1, _02245EFC ; =0x000005D4
	strh r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0xa8
	mov r2, #0
	bl GetMonData
	ldr r1, _02245F00 ; =0x000005D6
	mov r2, #0
	strh r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0xa6
	bl GetMonData
	ldr r1, _02245F04 ; =0x000005D8
	mov r2, #0
	strh r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0xa9
	bl GetMonData
	ldr r1, _02245F08 ; =0x000005DA
	mov r2, #0
	strh r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0xa7
	bl GetMonData
	ldr r1, _02245F0C ; =0x000005DC
	mov r2, #0
	strh r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0x70
	bl GetMonData
	ldr r1, _02245F10 ; =0x000005DE
	strb r0, [r5, r1]
	mov r1, #0
	add r0, r6, #0
	add r2, r1, #0
	bl GetMonData
	ldr r1, _02245F14 ; =0x000005CC
	mov r2, #0
	str r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0xb0
	bl GetMonData
	cmp r0, #1
	ldr r1, _02245F18 ; =0x000005C6
	bne _02245E54
	ldrb r2, [r5, r1]
	mov r0, #0x80
	bic r2, r0
	strb r2, [r5, r1]
	b _02245E5C
_02245E54:
	ldrb r2, [r5, r1]
	mov r0, #0x80
	orr r0, r2
	strb r0, [r5, r1]
_02245E5C:
	add r0, r6, #0
	bl GetMonGender
	ldr r3, _02245F18 ; =0x000005C6
	mov r2, #0x7f
	ldrb r1, [r5, r3]
	mov r4, #0
	bic r1, r2
	mov r2, #0x7f
	and r0, r2
	orr r0, r1
	strb r0, [r5, r3]
_02245E74:
	lsl r0, r4, #1
	add r0, r5, r0
	add r1, r4, #0
	str r0, [sp]
	add r0, r6, #0
	add r1, #0x36
	mov r2, #0
	bl GetMonData
	mov r1, #0x5e
	ldr r2, [sp]
	lsl r1, r1, #4
	strh r0, [r2, r1]
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x3a
	mov r2, #0
	add r7, r5, r4
	bl GetMonData
	ldr r1, _02245F1C ; =0x000005E8
	mov r2, #0
	strb r0, [r7, r1]
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x3e
	bl GetMonData
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #0x5e
	lsl r1, r1, #0x18
	ldr r2, [sp]
	lsl r0, r0, #4
	ldrh r0, [r2, r0]
	lsr r1, r1, #0x18
	bl GetMoveMaxPP
	ldr r1, _02245F20 ; =0x000005EC
	strb r0, [r7, r1]
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #4
	blo _02245E74
	ldr r1, [sp, #4]
	add r0, r6, #0
	bl ReleaseMonLock
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02245EDC: .word 0x0000055C
_02245EE0: .word 0x000005BC
_02245EE4: .word 0x000005C4
_02245EE8: .word 0x000005C7
_02245EEC: .word 0x000005C8
_02245EF0: .word 0x000005C9
_02245EF4: .word 0x000005CA
_02245EF8: .word 0x000005D2
_02245EFC: .word 0x000005D4
_02245F00: .word 0x000005D6
_02245F04: .word 0x000005D8
_02245F08: .word 0x000005DA
_02245F0C: .word 0x000005DC
_02245F10: .word 0x000005DE
_02245F14: .word 0x000005CC
_02245F18: .word 0x000005C6
_02245F1C: .word 0x000005E8
_02245F20: .word 0x000005EC
	thumb_func_end ov83_02245D48

	thumb_func_start ov83_02245F24
ov83_02245F24: ; 0x02245F24
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0x13
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x15
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x17
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x19
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x1b
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x1d
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x1f
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x21
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x23
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x25
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r3, #0
	str r3, [sp]
	ldr r0, _02246110 ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r1, [r4, #0x20]
	add r0, r4, r0
	mov r2, #0x42
	bl ov83_022479E4
	mov r3, #0
	str r3, [sp]
	ldr r0, _02246110 ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r1, [r4, #0x20]
	add r0, r4, r0
	mov r2, #0x34
	bl ov83_022479E4
	mov r3, #0
	str r3, [sp]
	ldr r0, _02246110 ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r1, [r4, #0x20]
	add r0, r4, r0
	mov r2, #0x32
	bl ov83_022479E4
	mov r3, #0
	str r3, [sp]
	ldr r0, _02246110 ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r1, [r4, #0x20]
	add r0, r4, r0
	mov r2, #0x30
	bl ov83_022479E4
	mov r3, #0
	str r3, [sp]
	ldr r0, _02246110 ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x1b
	lsl r0, r0, #4
	ldr r1, [r4, #0x20]
	add r0, r4, r0
	mov r2, #0x43
	bl ov83_022479E4
	mov r3, #0
	str r3, [sp]
	ldr r0, _02246110 ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x1d
	lsl r0, r0, #4
	ldr r1, [r4, #0x20]
	add r0, r4, r0
	mov r2, #0x36
	bl ov83_022479E4
	mov r3, #0
	str r3, [sp]
	ldr r0, _02246110 ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r1, [r4, #0x20]
	add r0, r4, r0
	mov r2, #0x3a
	bl ov83_022479E4
	mov r3, #0
	str r3, [sp]
	ldr r0, _02246110 ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r1, [r4, #0x20]
	add r0, r4, r0
	mov r2, #0x38
	bl ov83_022479E4
	mov r3, #0
	str r3, [sp]
	ldr r0, _02246110 ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x23
	lsl r0, r0, #4
	ldr r1, [r4, #0x20]
	add r0, r4, r0
	mov r2, #0x3c
	bl ov83_022479E4
	mov r3, #0
	str r3, [sp]
	ldr r0, _02246110 ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x25
	lsl r0, r0, #4
	ldr r1, [r4, #0x20]
	add r0, r4, r0
	mov r2, #0x3e
	bl ov83_022479E4
	mov r0, #0x13
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x15
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x17
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x19
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x1b
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x1d
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x1f
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x21
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x23
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x25
	lsl r0, r0, #4
	add r0, r4, r0
	bl CopyWindowPixelsToVram_TextMode
	add sp, #0x10
	pop {r4, pc}
	nop
_02246110: .word 0x00010200
	thumb_func_end ov83_02245F24

	thumb_func_start ov83_02246114
ov83_02246114: ; 0x02246114
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	mov r0, #0xaf
	str r1, [sp, #0x14]
	lsl r0, r0, #2
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	mov r2, #2
	bl ov83_0224777C
	add r6, r0, #0
	ldrb r0, [r5, #0x14]
	ldrb r1, [r5, #0xd]
	bl ov83_02247768
	add r4, r0, #0
	mov r0, #0x11
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x12
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #5
	lsl r0, r0, #6
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x16
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #6
	lsl r0, r0, #6
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x1a
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #7
	lsl r0, r0, #6
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x1e
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #2
	lsl r0, r0, #8
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #9
	lsl r0, r0, #6
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x26
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x27
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, _02246538 ; =0x000005C6
	ldrb r0, [r5, r0]
	lsl r1, r0, #0x18
	lsr r1, r1, #0x1f
	bne _0224621E
	lsl r0, r0, #0x19
	lsr r0, r0, #0x19
	bne _022461FE
	mov r3, #0
	str r3, [sp]
	ldr r0, _0224653C ; =0x00050600
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r1, [r5, #0x20]
	add r0, r5, r0
	mov r2, #0x40
	bl ov83_022479E4
	b _0224621E
_022461FE:
	cmp r0, #1
	bne _0224621E
	mov r3, #0
	str r3, [sp]
	mov r0, #0xc1
	str r3, [sp, #4]
	lsl r0, r0, #0xa
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r1, [r5, #0x20]
	add r0, r5, r0
	mov r2, #0x41
	bl ov83_022479E4
_0224621E:
	mov r1, #0
	ldr r2, _02246540 ; =0x000005C7
	str r1, [sp]
	ldrb r2, [r5, r2]
	add r0, r5, #0
	mov r3, #3
	bl ov83_02244A98
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _02246544 ; =0x00010200
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r1, #5
	lsl r1, r1, #6
	ldr r2, [r5, #0x20]
	add r0, r5, #0
	add r1, r5, r1
	mov r3, #0x48
	bl ov83_02245D08
	ldr r0, _02246548 ; =0x0000054C
	ldr r1, [r5, r0]
	ldrb r1, [r1, r4]
	cmp r1, #0
	beq _022462D8
	add r0, #0x70
	ldr r0, [r5, r0]
	bl Mon_GetBoxMon
	add r2, r0, #0
	ldr r0, [r5, #0x24]
	mov r1, #0
	bl BufferBoxMonSpeciesName
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _02246544 ; =0x00010200
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r1, #0x11
	lsl r1, r1, #4
	ldr r2, [r5, #0x20]
	add r0, r5, #0
	add r1, r5, r1
	mov r3, #0x45
	bl ov83_02245D08
	mov r1, #0
	mov r2, #0x5d
	str r1, [sp]
	lsl r2, r2, #4
	ldrh r2, [r5, r2]
	add r0, r5, #0
	mov r3, #3
	bl ov83_02244A98
	mov r0, #0
	str r0, [sp]
	ldr r2, _0224654C ; =0x000005D2
	add r0, r5, #0
	ldrh r2, [r5, r2]
	mov r1, #1
	mov r3, #3
	bl ov83_02244A98
	mov r0, #7
	lsl r0, r0, #6
	add r0, r5, r0
	bl GetWindowWidth
	lsl r0, r0, #3
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02246544 ; =0x00010200
	mov r1, #7
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	lsl r1, r1, #6
	ldr r2, [r5, #0x20]
	add r0, r5, #0
	add r1, r5, r1
	mov r3, #0x4e
	bl ov83_02245D08
	b _0224631C
_022462D8:
	mov r3, #0
	str r3, [sp]
	ldr r0, _02246544 ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r1, [r5, #0x20]
	add r0, r5, r0
	mov r2, #0x4b
	bl ov83_022479E4
	mov r0, #7
	lsl r0, r0, #6
	add r0, r5, r0
	bl GetWindowWidth
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02246544 ; =0x00010200
	mov r2, #0x4d
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #7
	lsl r0, r0, #6
	ldr r1, [r5, #0x20]
	add r0, r5, r0
	lsl r3, r3, #3
	bl ov83_022479E4
_0224631C:
	ldr r2, _02246550 ; =0x00000554
	ldr r0, [r5, r2]
	ldrb r0, [r0, r4]
	cmp r0, #0
	bne _02246328
	b _022464D2
_02246328:
	add r2, #0x74
	ldrb r2, [r5, r2]
	ldr r0, [r5, #0x24]
	mov r1, #0
	bl BufferAbilityName
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _02246544 ; =0x00010200
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r1, #0x16
	lsl r1, r1, #4
	ldr r2, [r5, #0x20]
	add r0, r5, #0
	add r1, r5, r1
	mov r3, #0x35
	bl ov83_02245D08
	ldr r2, _02246554 ; =0x000005C9
	ldr r0, [r5, #0x24]
	ldrb r2, [r5, r2]
	mov r1, #0
	bl BufferNatureName
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _02246544 ; =0x00010200
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r1, #6
	lsl r1, r1, #6
	ldr r2, [r5, #0x20]
	add r0, r5, #0
	add r1, r5, r1
	mov r3, #0x33
	bl ov83_02245D08
	ldr r2, _02246558 ; =0x000005CA
	ldr r0, [r5, #0x24]
	ldrh r2, [r5, r2]
	mov r1, #0
	bl BufferItemName
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, _02246544 ; =0x00010200
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r1, #0x1a
	lsl r1, r1, #4
	ldr r2, [r5, #0x20]
	add r0, r5, #0
	add r1, r5, r1
	mov r3, #0x31
	bl ov83_02245D08
	mov r1, #0
	ldr r2, _0224655C ; =0x000005D4
	str r1, [sp]
	ldrh r2, [r5, r2]
	add r0, r5, #0
	mov r3, #3
	bl ov83_02244A98
	mov r0, #0x1e
	lsl r0, r0, #4
	add r0, r5, r0
	bl GetWindowWidth
	lsl r0, r0, #3
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02246544 ; =0x00010200
	mov r1, #0x1e
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	lsl r1, r1, #4
	ldr r2, [r5, #0x20]
	add r0, r5, #0
	add r1, r5, r1
	mov r3, #0x37
	bl ov83_02245D08
	mov r1, #0
	ldr r2, _02246560 ; =0x000005D6
	str r1, [sp]
	ldrh r2, [r5, r2]
	add r0, r5, #0
	mov r3, #3
	bl ov83_02244A98
	mov r0, #2
	lsl r0, r0, #8
	add r0, r5, r0
	bl GetWindowWidth
	lsl r0, r0, #3
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02246544 ; =0x00010200
	mov r1, #1
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	lsl r1, r1, #9
	ldr r2, [r5, #0x20]
	add r0, r5, #0
	add r1, r5, r1
	mov r3, #0x3b
	bl ov83_02245D08
	mov r1, #0
	ldr r2, _02246564 ; =0x000005D8
	str r1, [sp]
	ldrh r2, [r5, r2]
	add r0, r5, #0
	mov r3, #3
	bl ov83_02244A98
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r5, r0
	bl GetWindowWidth
	lsl r0, r0, #3
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02246544 ; =0x00010200
	mov r1, #0x22
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	lsl r1, r1, #4
	ldr r2, [r5, #0x20]
	add r0, r5, #0
	add r1, r5, r1
	mov r3, #0x39
	bl ov83_02245D08
	mov r1, #0
	ldr r2, _02246568 ; =0x000005DA
	str r1, [sp]
	ldrh r2, [r5, r2]
	add r0, r5, #0
	mov r3, #3
	bl ov83_02244A98
	mov r0, #9
	lsl r0, r0, #6
	add r0, r5, r0
	bl GetWindowWidth
	lsl r0, r0, #3
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02246544 ; =0x00010200
	mov r1, #9
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	lsl r1, r1, #6
	ldr r2, [r5, #0x20]
	add r0, r5, #0
	add r1, r5, r1
	mov r3, #0x3d
	bl ov83_02245D08
	mov r1, #0
	ldr r2, _0224656C ; =0x000005DC
	str r1, [sp]
	ldrh r2, [r5, r2]
	add r0, r5, #0
	mov r3, #3
	bl ov83_02244A98
	mov r0, #0x26
	lsl r0, r0, #4
	add r0, r5, r0
	bl GetWindowWidth
	lsl r0, r0, #3
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02246544 ; =0x00010200
	mov r1, #0x26
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	lsl r1, r1, #4
	ldr r2, [r5, #0x20]
	add r0, r5, #0
	add r1, r5, r1
	mov r3, #0x3f
	bl ov83_02245D08
	b _0224662C
_022464D2:
	mov r3, #0
	str r3, [sp]
	ldr r0, _02246544 ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r1, [r5, #0x20]
	add r0, r5, r0
	mov r2, #0x4b
	bl ov83_022479E4
	mov r3, #0
	str r3, [sp]
	ldr r0, _02246544 ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, #0x20]
	add r0, r5, r0
	mov r2, #0x4b
	bl ov83_022479E4
	mov r3, #0
	str r3, [sp]
	ldr r0, _02246544 ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r1, [r5, #0x20]
	add r0, r5, r0
	mov r2, #0x4b
	bl ov83_022479E4
	mov r0, #0x1e
	lsl r0, r0, #4
	add r0, r5, r0
	bl GetWindowWidth
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02246544 ; =0x00010200
	b _02246570
	nop
_02246538: .word 0x000005C6
_0224653C: .word 0x00050600
_02246540: .word 0x000005C7
_02246544: .word 0x00010200
_02246548: .word 0x0000054C
_0224654C: .word 0x000005D2
_02246550: .word 0x00000554
_02246554: .word 0x000005C9
_02246558: .word 0x000005CA
_0224655C: .word 0x000005D4
_02246560: .word 0x000005D6
_02246564: .word 0x000005D8
_02246568: .word 0x000005DA
_0224656C: .word 0x000005DC
_02246570:
	mov r2, #0x4a
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r1, [r5, #0x20]
	add r0, r5, r0
	lsl r3, r3, #3
	bl ov83_022479E4
	mov r0, #2
	lsl r0, r0, #8
	add r0, r5, r0
	bl GetWindowWidth
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0224690C ; =0x00010200
	mov r2, #0x4a
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	lsl r0, r0, #9
	ldr r1, [r5, #0x20]
	add r0, r5, r0
	lsl r3, r3, #3
	bl ov83_022479E4
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r5, r0
	bl GetWindowWidth
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0224690C ; =0x00010200
	mov r2, #0x4a
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r1, [r5, #0x20]
	add r0, r5, r0
	lsl r3, r3, #3
	bl ov83_022479E4
	mov r0, #9
	lsl r0, r0, #6
	add r0, r5, r0
	bl GetWindowWidth
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0224690C ; =0x00010200
	mov r2, #0x4a
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #9
	lsl r0, r0, #6
	ldr r1, [r5, #0x20]
	add r0, r5, r0
	lsl r3, r3, #3
	bl ov83_022479E4
	mov r0, #0x26
	lsl r0, r0, #4
	add r0, r5, r0
	bl GetWindowWidth
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0224690C ; =0x00010200
	mov r2, #0x4a
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #0x26
	lsl r0, r0, #4
	ldr r1, [r5, #0x20]
	add r0, r5, r0
	lsl r3, r3, #3
	bl ov83_022479E4
_0224662C:
	cmp r6, #1
	bne _0224664C
	mov r3, #0
	str r3, [sp]
	ldr r0, _0224690C ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x27
	lsl r0, r0, #4
	ldr r1, [r5, #0x20]
	add r0, r5, r0
	mov r2, #0x4c
	bl ov83_022479E4
	b _02246864
_0224664C:
	ldr r0, _02246910 ; =0x00000558
	ldr r0, [r5, r0]
	ldrb r0, [r0, r4]
	cmp r0, #0
	bne _02246722
	mov r0, #0
	str r0, [sp, #0x20]
_0224665A:
	ldr r0, [sp, #0x20]
	mov r2, #0x4b
	lsl r4, r0, #4
	str r4, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _0224690C ; =0x00010200
	mov r3, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0x27
	lsl r0, r0, #4
	ldr r1, [r5, #0x20]
	add r0, r5, r0
	bl ov83_022479E4
	ldr r0, [r5, #0x20]
	mov r1, #0x44
	bl NewString_ReadMsgData
	add r7, r0, #0
	mov r0, #0
	add r1, r7, #0
	add r2, r0, #0
	bl FontID_String_GetWidth
	lsl r0, r0, #0x17
	lsr r6, r0, #0x18
	mov r0, #0
	str r0, [sp]
	ldr r0, _0224690C ; =0x00010200
	add r1, r7, #0
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0x27
	lsl r0, r0, #4
	add r0, r5, r0
	mov r2, #0x78
	add r3, r4, #0
	bl ov83_02247998
	add r0, r7, #0
	bl String_Delete
	ldr r0, [r5, #0x20]
	mov r1, #0x49
	bl NewString_ReadMsgData
	add r7, r0, #0
	mov r0, #0
	add r1, r7, #0
	add r2, r0, #0
	bl FontID_String_GetWidth
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _0224690C ; =0x00010200
	mov r2, #0x78
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0x27
	lsl r0, r0, #4
	sub r2, r2, r6
	sub r2, r2, r3
	add r0, r5, r0
	add r1, r7, #0
	add r3, r4, #0
	bl ov83_02247998
	add r0, r7, #0
	bl String_Delete
	add r6, #0x78
	str r4, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _0224690C ; =0x00010200
	mov r2, #0x49
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0x27
	lsl r0, r0, #4
	ldr r1, [r5, #0x20]
	add r0, r5, r0
	add r3, r6, #0
	bl ov83_022479E4
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x20]
	cmp r0, #4
	blo _0224665A
	b _02246864
_02246722:
	mov r4, #0
_02246724:
	lsl r0, r4, #1
	mov r2, #0x5e
	add r7, r5, r0
	lsl r2, r2, #4
	ldrh r2, [r7, r2]
	ldr r0, [r5, #0x24]
	add r1, r4, #0
	bl BufferMoveName
	mov r0, #0
	mov r1, #0x27
	lsl r1, r1, #4
	add r3, r4, #0
	lsl r6, r4, #4
	str r0, [sp]
	str r6, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _0224690C ; =0x00010200
	add r1, r5, r1
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r2, [r5, #0x20]
	add r0, r5, #0
	add r3, #0x54
	bl ov83_02245D08
	mov r0, #0x5e
	lsl r0, r0, #4
	ldrh r0, [r7, r0]
	cmp r0, #0
	bne _02246784
	str r6, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _0224690C ; =0x00010200
	mov r2, #0x5a
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0x27
	lsl r0, r0, #4
	ldr r1, [r5, #0x20]
	add r0, r5, r0
	mov r3, #0x78
	bl ov83_022479E4
	b _02246858
_02246784:
	ldr r0, [r5, #0x20]
	mov r1, #0x44
	bl NewString_ReadMsgData
	add r7, r0, #0
	mov r0, #0
	add r1, r7, #0
	add r2, r0, #0
	bl FontID_String_GetWidth
	lsl r0, r0, #0x17
	lsr r6, r0, #0x18
	lsl r0, r4, #4
	str r0, [sp, #0x1c]
	mov r0, #0
	str r0, [sp]
	ldr r0, _0224690C ; =0x00010200
	ldr r3, [sp, #0x1c]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0x27
	lsl r0, r0, #4
	add r0, r5, r0
	add r1, r7, #0
	mov r2, #0x78
	bl ov83_02247998
	add r0, r7, #0
	bl String_Delete
	add r0, r5, r4
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp]
	ldr r3, [sp, #0x18]
	ldr r2, _02246914 ; =0x000005E8
	add r0, r5, #0
	ldrb r2, [r3, r2]
	mov r1, #0
	mov r3, #2
	bl ov83_02244A98
	ldr r0, [r5, #0x20]
	mov r1, #0x59
	bl NewString_ReadMsgData
	add r7, r0, #0
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	add r2, r7, #0
	bl StringExpandPlaceholders
	mov r0, #0
	ldr r1, [r5, #0x28]
	add r2, r0, #0
	bl FontID_String_GetWidth
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _0224690C ; =0x00010200
	mov r3, #0x78
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0x27
	sub r3, r3, r6
	lsl r0, r0, #4
	sub r2, r3, r2
	ldr r1, [r5, #0x28]
	ldr r3, [sp, #0x1c]
	add r0, r5, r0
	bl ov83_02247998
	add r0, r7, #0
	bl String_Delete
	mov r0, #0
	str r0, [sp]
	ldr r3, [sp, #0x18]
	ldr r2, _02246918 ; =0x000005EC
	add r0, r5, #0
	ldrb r2, [r3, r2]
	mov r1, #0
	mov r3, #2
	bl ov83_02244A98
	add r6, #0x78
	mov r1, #0x27
	lsl r1, r1, #4
	ldr r0, [sp, #0x1c]
	str r6, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, _0224690C ; =0x00010200
	add r1, r5, r1
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r2, [r5, #0x20]
	add r0, r5, #0
	mov r3, #0x59
	bl ov83_02245D08
_02246858:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	bhs _02246864
	b _02246724
_02246864:
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _02246884
	mov r4, #0xc
	add r5, #0x50
_0224686E:
	lsl r0, r4, #4
	add r0, r5, r0
	bl ScheduleWindowCopyToVram
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x22
	bls _0224686E
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_02246884:
	mov r0, #0x11
	lsl r0, r0, #4
	add r0, r5, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x12
	lsl r0, r0, #4
	add r0, r5, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #5
	lsl r0, r0, #6
	add r0, r5, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x16
	lsl r0, r0, #4
	add r0, r5, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #6
	lsl r0, r0, #6
	add r0, r5, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x1a
	lsl r0, r0, #4
	add r0, r5, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #7
	lsl r0, r0, #6
	add r0, r5, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x1e
	lsl r0, r0, #4
	add r0, r5, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #2
	lsl r0, r0, #8
	add r0, r5, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x22
	lsl r0, r0, #4
	add r0, r5, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #9
	lsl r0, r0, #6
	add r0, r5, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x26
	lsl r0, r0, #4
	add r0, r5, r0
	bl CopyWindowPixelsToVram_TextMode
	mov r0, #0x27
	lsl r0, r0, #4
	add r0, r5, r0
	bl CopyWindowPixelsToVram_TextMode
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_0224690C: .word 0x00010200
_02246910: .word 0x00000558
_02246914: .word 0x000005E8
_02246918: .word 0x000005EC
	thumb_func_end ov83_02246114

	thumb_func_start ov83_0224691C
ov83_0224691C: ; 0x0224691C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov83_02245D48
	add r0, r5, #0
	add r1, r4, #0
	bl ov83_02246114
	add r0, r5, #0
	bl ov83_02246988
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov83_0224691C

	thumb_func_start ov83_02246938
ov83_02246938: ; 0x02246938
	push {r4, r5, r6, lr}
	add r6, r0, #0
	cmp r1, #1
	bne _02246962
	mov r0, #0x11
	lsl r0, r0, #4
	mov r4, #0xc
	add r5, r6, r0
_02246948:
	add r0, r5, #0
	bl ScheduleWindowCopyToVram
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0x22
	bls _02246948
	ldr r0, _02246984 ; =0x00000544
	mov r1, #1
	ldr r0, [r6, r0]
	bl ov83_0224755C
	pop {r4, r5, r6, pc}
_02246962:
	mov r0, #0x11
	lsl r0, r0, #4
	mov r5, #0xc
	add r4, r6, r0
_0224696A:
	add r0, r4, #0
	bl ClearWindowTilemapAndScheduleTransfer
	add r5, r5, #1
	add r4, #0x10
	cmp r5, #0x22
	bls _0224696A
	ldr r0, _02246984 ; =0x00000544
	mov r1, #0
	ldr r0, [r6, r0]
	bl ov83_0224755C
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02246984: .word 0x00000544
	thumb_func_end ov83_02246938

	thumb_func_start ov83_02246988
ov83_02246988: ; 0x02246988
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov83_02247768
	ldr r3, _022469D4 ; =0x0000054C
	ldr r1, [r4, r3]
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _022469B6
	add r0, r3, #0
	add r1, r3, #0
	sub r0, #8
	add r1, #0x74
	add r3, #0x80
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	ldr r3, [r4, r3]
	mov r2, #0
	bl ov83_02247668
	pop {r4, pc}
_022469B6:
	add r2, r3, #0
	add r0, r3, #0
	add r1, r3, #0
	add r2, #0x78
	sub r0, #8
	add r1, #0x74
	add r3, #0x80
	ldrh r2, [r4, r2]
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	ldr r3, [r4, r3]
	bl ov83_02247668
	pop {r4, pc}
	nop
_022469D4: .word 0x0000054C
	thumb_func_end ov83_02246988

	thumb_func_start ov83_022469D8
ov83_022469D8: ; 0x022469D8
	ldr r3, _022469E0 ; =ov83_02244CDC
	strb r1, [r0, #0xd]
	strb r2, [r0, #0xc]
	bx r3
	.balign 4, 0
_022469E0: .word ov83_02244CDC
	thumb_func_end ov83_022469D8

	thumb_func_start ov83_022469E4
ov83_022469E4: ; 0x022469E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r0, sp, #4
	add r4, r1, #0
	add r0, #2
	add r1, sp, #4
	add r6, r2, #0
	add r7, r3, #0
	bl ov83_02247988
	ldr r0, _02246A90 ; =ov83_02248018
	add r1, sp, #4
	ldrh r2, [r0]
	add r3, sp, #8
	strh r2, [r1, #0x1c]
	ldrh r2, [r0, #2]
	strh r2, [r1, #0x1e]
	ldrh r2, [r0, #4]
	strh r2, [r1, #0x20]
	ldrh r2, [r0, #6]
	strh r2, [r1, #0x22]
	ldrh r2, [r0, #8]
	ldrh r0, [r0, #0xa]
	strh r2, [r1, #0x24]
	strh r0, [r1, #0x26]
	ldrh r0, [r1, #2]
	strh r0, [r1, #0x22]
	ldrh r2, [r1]
	add r0, r0, r2
	sub r0, #0x1b
	strh r0, [r1, #0x24]
	strh r2, [r1, #0x26]
	ldrh r0, [r1, #0x1c]
	strh r0, [r1, #4]
	ldrh r0, [r1, #0x1e]
	strh r0, [r1, #6]
	ldrh r0, [r1, #0x20]
	strh r0, [r1, #8]
	ldrh r0, [r1, #0x22]
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0x24]
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #0x26]
	strh r0, [r1, #0xe]
	ldr r0, _02246A94 ; =0x000005FC
	ldr r2, [r5, r0]
	sub r0, #8
	str r2, [sp, #0x14]
	ldr r2, [r5, #0x4c]
	str r2, [sp, #0x18]
	strb r4, [r1, #0x18]
	add r1, sp, #0x30
	ldrb r1, [r1, #0x10]
	add r2, r6, #0
	str r1, [sp]
	add r1, r3, #0
	ldr r0, [r5, r0]
	add r3, r7, #0
	bl ov83_02247CCC
	ldr r1, _02246A98 ; =0x000005F8
	str r0, [r5, r1]
	ldrb r1, [r5, #0xf]
	mov r0, #4
	orr r0, r1
	strb r0, [r5, #0xf]
	ldrb r0, [r5, #9]
	mov r1, #1
	bl ov80_02237B24
	add r4, r0, #0
	ldr r0, _02246A9C ; =0x000004E4
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #1
	bl ov83_0224773C
	ldr r0, _02246AA0 ; =0x000004F4
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #1
	bl ov83_0224773C
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02246A90: .word ov83_02248018
_02246A94: .word 0x000005FC
_02246A98: .word 0x000005F8
_02246A9C: .word 0x000004E4
_02246AA0: .word 0x000004F4
	thumb_func_end ov83_022469E4

	thumb_func_start ov83_02246AA4
ov83_02246AA4: ; 0x02246AA4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #4
	mov r1, #0x6b
	mov r4, #0
	bl ListMenuItems_New
	ldr r1, _02246B5C ; =0x000005FC
	mov r2, #2
	str r0, [r5, r1]
	mov r0, #0xaf
	lsl r0, r0, #2
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	bl ov83_0224777C
	add r7, r0, #0
	ldrb r0, [r5, #0x14]
	ldrb r1, [r5, #0xd]
	bl ov83_02247768
	add r6, r0, #0
	ldr r0, _02246B60 ; =0x0000054C
	ldr r1, [r5, r0]
	ldrb r1, [r1, r6]
	cmp r1, #0
	bne _02246AEE
	add r0, #0xb0
	ldr r0, [r5, r0]
	ldr r1, [r5, #0x20]
	mov r2, #8
	add r3, r4, #0
	bl ListMenuItems_AppendFromMsgData
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_02246AEE:
	ldr r0, _02246B5C ; =0x000005FC
	ldr r1, [r5, #0x20]
	ldr r0, [r5, r0]
	mov r2, #9
	mov r3, #1
	bl ListMenuItems_AppendFromMsgData
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, _02246B64 ; =0x00000554
	ldr r1, [r5, r0]
	ldrb r1, [r1, r6]
	cmp r1, #0
	beq _02246B1A
	add r0, r0, #4
	ldr r0, [r5, r0]
	ldrb r0, [r0, r6]
	cmp r0, #0
	beq _02246B1A
	cmp r7, #2
	beq _02246B2E
_02246B1A:
	ldr r0, _02246B5C ; =0x000005FC
	ldr r1, [r5, #0x20]
	ldr r0, [r5, r0]
	mov r2, #0xa
	mov r3, #2
	bl ListMenuItems_AppendFromMsgData
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_02246B2E:
	ldr r0, _02246B5C ; =0x000005FC
	mov r2, #0xb
	add r3, r2, #0
	ldr r0, [r5, r0]
	ldr r1, [r5, #0x20]
	sub r3, #0xd
	bl ListMenuItems_AppendFromMsgData
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	lsl r1, r3, #0x18
	ldr r4, _02246B68 ; =ov83_02248010
	mov r0, #0xd
	str r0, [sp]
	ldrb r3, [r4, r3]
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #0x11
	bl ov83_022469E4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02246B5C: .word 0x000005FC
_02246B60: .word 0x0000054C
_02246B64: .word 0x00000554
_02246B68: .word ov83_02248010
	thumb_func_end ov83_02246AA4

	thumb_func_start ov83_02246B6C
ov83_02246B6C: ; 0x02246B6C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #4
	mov r1, #0x6b
	mov r4, #0
	bl ListMenuItems_New
	ldr r1, _02246C1C ; =0x000005FC
	mov r2, #2
	str r0, [r5, r1]
	mov r0, #0xaf
	lsl r0, r0, #2
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	bl ov83_0224777C
	add r6, r0, #0
	ldrb r0, [r5, #0x14]
	ldrb r1, [r5, #0xd]
	bl ov83_02247768
	add r7, r0, #0
	ldr r0, _02246C20 ; =0x00000554
	ldr r1, [r5, r0]
	ldrb r1, [r1, r7]
	cmp r1, #0
	bne _02246BB6
	add r0, #0xa8
	ldr r0, [r5, r0]
	ldr r1, [r5, #0x20]
	mov r2, #0x21
	mov r3, #3
	bl ListMenuItems_AppendFromMsgData
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_02246BB6:
	cmp r6, #1
	beq _02246BD8
	ldr r0, _02246C24 ; =0x00000558
	ldr r1, [r5, r0]
	ldrb r1, [r1, r7]
	cmp r1, #0
	bne _02246BD8
	add r0, #0xa4
	ldr r0, [r5, r0]
	ldr r1, [r5, #0x20]
	mov r2, #0x22
	mov r3, #4
	bl ListMenuItems_AppendFromMsgData
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_02246BD8:
	cmp r6, #2
	beq _02246BF0
	ldr r0, _02246C1C ; =0x000005FC
	ldr r1, [r5, #0x20]
	ldr r0, [r5, r0]
	mov r2, #0x23
	mov r3, #5
	bl ListMenuItems_AppendFromMsgData
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_02246BF0:
	ldr r0, _02246C1C ; =0x000005FC
	mov r2, #0x24
	add r3, r2, #0
	ldr r0, [r5, r0]
	ldr r1, [r5, #0x20]
	sub r3, #0x26
	bl ListMenuItems_AppendFromMsgData
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	lsl r1, r3, #0x18
	ldr r4, _02246C28 ; =ov83_02248010
	mov r0, #0xd
	str r0, [sp]
	ldrb r3, [r4, r3]
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #0x11
	bl ov83_022469E4
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02246C1C: .word 0x000005FC
_02246C20: .word 0x00000554
_02246C24: .word 0x00000558
_02246C28: .word ov83_02248010
	thumb_func_end ov83_02246B6C

	thumb_func_start ov83_02246C2C
ov83_02246C2C: ; 0x02246C2C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x6b
	bl ListMenuItems_New
	ldr r1, _02246C6C ; =0x000005FC
	mov r4, #0
	str r0, [r5, r1]
	add r6, r1, #0
_02246C42:
	add r2, r4, #0
	ldr r0, [r5, r6]
	ldr r1, [r5, #0x20]
	add r2, #0x16
	add r3, r4, #0
	bl ListMenuItems_AppendFromMsgData
	add r4, r4, #1
	cmp r4, #3
	blo _02246C42
	mov r0, #0xd
	str r0, [sp]
	add r0, r5, #0
	mov r1, #3
	mov r2, #0x11
	mov r3, #8
	bl ov83_022469E4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_02246C6C: .word 0x000005FC
	thumb_func_end ov83_02246C2C

	thumb_func_start ov83_02246C70
ov83_02246C70: ; 0x02246C70
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5, #9]
	mov r1, #1
	bl ov80_02237B24
	add r4, r0, #0
	ldr r0, _02246CB0 ; =0x000004E4
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	bl ov83_0224773C
	ldr r0, _02246CB4 ; =0x000004F4
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	bl ov83_0224773C
	ldr r0, _02246CB8 ; =0x000005F8
	ldr r0, [r5, r0]
	bl ov83_02247CE8
	ldr r0, _02246CBC ; =0x000005FC
	ldr r0, [r5, r0]
	bl ListMenuItems_Delete
	ldrb r1, [r5, #0xf]
	mov r0, #4
	bic r1, r0
	strb r1, [r5, #0xf]
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02246CB0: .word 0x000004E4
_02246CB4: .word 0x000004F4
_02246CB8: .word 0x000005F8
_02246CBC: .word 0x000005FC
	thumb_func_end ov83_02246C70

	thumb_func_start ov83_02246CC0
ov83_02246CC0: ; 0x02246CC0
	push {r4, lr}
	sub sp, #0x18
	ldr r1, _02246D3C ; =0x000005F8
	add r4, r0, #0
	ldr r0, [r4, r1]
	add r3, r1, #0
	add r0, #0x24
	add r3, #8
	ldrb r0, [r0]
	ldr r3, [r4, r3]
	cmp r3, r0
	beq _02246D36
	add r1, r1, #4
	ldr r1, [r4, r1]
	lsl r0, r0, #3
	add r0, r1, r0
	ldr r1, [r0, #4]
	cmp r1, #2
	bhi _02246CF4
	cmp r1, #0
	beq _02246CFE
	cmp r1, #1
	beq _02246D02
	cmp r1, #2
	beq _02246D06
	b _02246D0C
_02246CF4:
	mov r0, #1
	mvn r0, r0
	cmp r1, r0
	beq _02246D0A
	b _02246D0C
_02246CFE:
	mov r2, #0xc
	b _02246D0C
_02246D02:
	mov r2, #0xd
	b _02246D0C
_02246D06:
	mov r2, #0xe
	b _02246D0C
_02246D0A:
	mov r2, #0xf
_02246D0C:
	mov r3, #1
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r1, r4, #0
	str r3, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r1, #0xc0
	str r3, [sp, #0x14]
	bl ov83_022447E0
	ldr r0, _02246D3C ; =0x000005F8
	ldr r1, [r4, r0]
	add r0, #8
	add r1, #0x24
	ldrb r1, [r1]
	str r1, [r4, r0]
_02246D36:
	add sp, #0x18
	pop {r4, pc}
	nop
_02246D3C: .word 0x000005F8
	thumb_func_end ov83_02246CC0

	thumb_func_start ov83_02246D40
ov83_02246D40: ; 0x02246D40
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #6
	lsl r0, r0, #8
	ldr r1, [r5, r0]
	sub r0, #8
	ldr r0, [r5, r0]
	add r0, #0x24
	ldrb r0, [r0]
	cmp r1, r0
	beq _02246DEA
	mov r0, #0xaf
	lsl r0, r0, #2
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	mov r2, #2
	bl ov83_0224777C
	cmp r0, #1
	beq _02246D6E
	mov r1, #1
	b _02246D70
_02246D6E:
	mov r1, #0
_02246D70:
	ldr r2, _02246DF0 ; =0x000005FC
	ldr r0, [r5, r2]
	sub r2, r2, #4
	ldr r2, [r5, r2]
	add r2, #0x24
	ldrb r2, [r2]
	lsl r2, r2, #3
	add r0, r0, r2
	ldr r2, [r0, #4]
	cmp r2, #5
	bhi _02246D96
	cmp r2, #3
	blo _02246DBE
	beq _02246DA0
	cmp r2, #4
	beq _02246DA8
	cmp r2, #5
	beq _02246DB0
	b _02246DBE
_02246D96:
	mov r0, #1
	mvn r0, r0
	cmp r2, r0
	beq _02246DB8
	b _02246DBE
_02246DA0:
	ldr r0, _02246DF4 ; =ov83_02248024
	lsl r1, r1, #1
	ldrh r4, [r0, r1]
	b _02246DBE
_02246DA8:
	ldr r0, _02246DF8 ; =ov83_02248028
	lsl r1, r1, #1
	ldrh r4, [r0, r1]
	b _02246DBE
_02246DB0:
	ldr r0, _02246DFC ; =ov83_0224802C
	lsl r1, r1, #1
	ldrh r4, [r0, r1]
	b _02246DBE
_02246DB8:
	ldr r0, _02246E00 ; =ov83_02248030
	lsl r1, r1, #1
	ldrh r4, [r0, r1]
_02246DBE:
	mov r3, #1
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r1, r5, #0
	str r3, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r1, #0xc0
	add r2, r4, #0
	str r3, [sp, #0x14]
	bl ov83_022447E0
	ldr r0, _02246E04 ; =0x000005F8
	ldr r1, [r5, r0]
	add r0, #8
	add r1, #0x24
	ldrb r1, [r1]
	str r1, [r5, r0]
_02246DEA:
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_02246DF0: .word 0x000005FC
_02246DF4: .word ov83_02248024
_02246DF8: .word ov83_02248028
_02246DFC: .word ov83_0224802C
_02246E00: .word ov83_02248030
_02246E04: .word 0x000005F8
	thumb_func_end ov83_02246D40


    .rodata

ov83_02248010: ; 0x02248010
	.byte 0x12, 0x0E, 0x0B, 0x08, 0x05, 0x02, 0x00, 0x00

ov83_02248018: ; 0x02248018
	.byte 0x03, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

ov83_02248024: ; 0x02248024
	.byte 0x25, 0x00, 0x25, 0x00

ov83_02248028: ; 0x02248028
	.byte 0x26, 0x00, 0x26, 0x00

ov83_0224802C: ; 0x0224802C
	.byte 0x27, 0x00, 0x28, 0x00

ov83_02248030: ; 0x02248030
	.byte 0x29, 0x00, 0x29, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00
	.byte 0x0F, 0x00, 0x00, 0x00

ov83_02248044: ; 0x02248044
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

ov83_02248054: ; 0x02248054
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x5F, 0x00, 0x5F, 0x00, 0x00, 0x00

ov83_02248068: ; 0x02248068
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

ov83_02248084: ; 0x02248084
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

ov83_022480A0: ; 0x022480A0
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x02, 0x05, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

ov83_022480BC: ; 0x022480BC
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x04, 0x02
	.byte 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

ov83_022480D8: ; 0x022480D8
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1F, 0x00, 0x00, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

ov83_022480F4: ; 0x022480F4
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x04, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0xFE, 0xFF, 0xFF, 0xFF
	.byte 0x21, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x23, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0xFE, 0xFF, 0xFF, 0xFF

ov83_02248150: ; 0x02248150
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00

