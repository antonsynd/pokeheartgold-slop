	.include "macros.inc"
	.include "overlay_83_02243D7C.inc"
	.include "global.inc"
	.public ov83_02243FD4
	.extern ov83_02244394
	.extern ov83_02244408
	.extern ov83_02244488
	.extern ov83_02244DA0
	.extern ov83_02244DF4
	.extern ov83_02245C80
	.extern ov83_02245CE8
	.extern ov83_02245D48
	.extern ov83_02245F24
	.extern ov83_02246114
	.extern ov83_02246988

    .text

	.text
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

