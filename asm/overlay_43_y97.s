	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222CE48
	.extern ov43_0222AAA4

	.text

	.text
	thumb_func_start ov43_0222CE48
ov43_0222CE48: ; 0x0222CE48
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	str r1, [sp, #0x14]
	add r4, r2, #0
	add r7, r3, #0
	bl InitWindow
	mov r1, #0xb
	str r1, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r4]
	add r1, r5, #0
	mov r2, #3
	mov r3, #4
	bl AddWindowParameterized
	add r0, r5, #0
	add r0, #0x10
	bl InitWindow
	mov r0, #6
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	mov r0, #0xc1
	str r0, [sp, #0x10]
	add r1, r5, #0
	ldr r0, [r4]
	add r1, #0x10
	mov r2, #3
	mov r3, #9
	bl AddWindowParameterized
	add r0, r5, #0
	add r0, #0x20
	bl InitWindow
	mov r3, #0x15
	add r1, r5, #0
	str r3, [sp]
	mov r0, #9
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	mov r0, #0xdd
	str r0, [sp, #0x10]
	ldr r0, [r4]
	add r1, #0x20
	mov r2, #3
	bl AddWindowParameterized
	add r0, r5, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r5, #0
	add r0, #0x10
	mov r1, #0
	bl FillWindowPixelBuffer
	add r0, r5, #0
	add r0, #0x20
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0x80
	add r1, r7, #0
	bl String_New
	add r6, r0, #0
	mov r0, #0x80
	add r1, r7, #0
	bl String_New
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #4]
	bl sub_0202C6F4
	bl sub_0202C08C
	bl DWC_CreateFriendKey
	str r1, [sp, #0x1c]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	mov r2, #0
	eor r0, r2
	ldr r2, [sp, #0x24]
	mov r1, #0
	eor r1, r2
	orr r0, r1
	ldr r0, [r4, #0x54]
	beq _0222CF86
	mov r1, #0x35
	add r2, r6, #0
	bl ReadMsgDataIntoString
	mov r0, #0
	add r1, r6, #0
	add r2, r0, #0
	bl FontID_String_GetWidthMultiline
	mov r1, #0xc0
	sub r0, r1, r0
	mov r1, #0
	lsr r3, r0, #1
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222CFFC ; =0x00010200
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x1c]
	add r0, r4, #0
	bl ov43_0222AAA4
	ldr r0, [r4, #0x54]
	ldr r2, [sp, #0x20]
	mov r1, #0x34
	bl ReadMsgDataIntoString
	ldr r0, [r4, #0x50]
	ldr r2, [sp, #0x20]
	add r1, r6, #0
	bl StringExpandPlaceholders
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222D000 ; =0x000F0200
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x10
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	b _0222CFB4
_0222CF86:
	mov r1, #0x36
	add r2, r6, #0
	bl ReadMsgDataIntoString
	mov r0, #0
	add r1, r6, #0
	add r2, r0, #0
	bl FontID_String_GetWidthMultiline
	mov r1, #0xc0
	sub r0, r1, r0
	mov r1, #0
	lsr r3, r0, #1
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222CFFC ; =0x00010200
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
_0222CFB4:
	ldr r0, [r4, #0x54]
	mov r1, #0x33
	add r2, r6, #0
	bl ReadMsgDataIntoString
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222D004 ; =0x00010F00
	mov r1, #4
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x20
	add r2, r6, #0
	str r3, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r6, #0
	bl String_Delete
	ldr r0, [sp, #0x20]
	bl String_Delete
	str r7, [sp]
	add r3, r5, #0
	ldr r0, [r4, #0x58]
	mov r1, #0xe
	mov r2, #1
	add r3, #0x34
	bl GfGfxLoader_GetScrnDataFromOpenNarc
	str r0, [r5, #0x30]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222CFFC: .word 0x00010200
_0222D000: .word 0x000F0200
_0222D004: .word 0x00010F00
	thumb_func_end ov43_0222CE48

