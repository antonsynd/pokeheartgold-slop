	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222B0A0

	.text

	thumb_func_start ov43_0222B0A0
ov43_0222B0A0: ; 0x0222B0A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp, #0x14]
	add r0, #8
	add r5, r1, #0
	str r2, [sp, #0x24]
	str r3, [sp, #0x18]
	bl InitWindow
	mov r3, #4
	ldr r1, [sp, #0x14]
	str r3, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #0x14
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x24]
	add r1, #8
	ldr r0, [r0]
	mov r2, #3
	bl AddWindowParameterized
	ldr r0, [sp, #0x14]
	add r0, #0x20
	bl InitWindow
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	mov r0, #0xac
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x14]
	ldr r0, [r0]
	add r1, #0x20
	mov r2, #1
	mov r3, #2
	bl AddWindowParameterized
	ldr r0, [sp, #0x14]
	mov r1, #0
	add r0, #8
	bl FillWindowPixelBuffer
	ldr r0, [sp, #0x14]
	mov r1, #0
	add r0, #0x20
	bl FillWindowPixelBuffer
	ldr r1, [sp, #0x18]
	mov r0, #0x80
	bl String_New
	ldr r1, [sp, #0x14]
	str r0, [r1, #0x3c]
	ldr r0, [r5, #4]
	bl Save_PlayerData_GetOptionsAddr
	bl Options_GetTextFrameDelay
	ldr r1, [sp, #0x14]
	str r0, [r1, #0x38]
	ldr r1, [sp, #0x18]
	mov r0, #0x80
	bl String_New
	add r4, r0, #0
	ldr r1, [sp, #0x18]
	mov r0, #0x80
	bl String_New
	str r0, [sp, #0x1c]
	ldr r0, [r5, #4]
	bl Save_PlayerData_GetProfile
	add r2, r0, #0
	ldr r0, [sp, #0x24]
	mov r1, #0
	ldr r0, [r0, #0x50]
	bl BufferPlayersName
	ldr r0, [sp, #0x14]
	mov r7, #0
	str r0, [sp, #0x20]
	add r0, #8
	mov r5, #8
	str r0, [sp, #0x20]
_0222B160:
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x1c]
	ldr r0, [r0, #0x54]
	add r1, r7, #1
	bl ReadMsgDataIntoString
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x1c]
	ldr r0, [r0, #0x50]
	add r1, r4, #0
	bl StringExpandPlaceholders
	mov r0, #4
	add r1, r4, #0
	mov r2, #0
	bl FontID_String_GetWidth
	mov ip, r0
	str r5, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222B1D4 ; =0x00010F00
	mov r3, #0xc0
	str r0, [sp, #8]
	mov r0, #0
	mov r6, ip
	str r0, [sp, #0xc]
	sub r3, r3, r6
	ldr r0, [sp, #0x20]
	mov r1, #4
	add r2, r4, #0
	lsr r3, r3, #1
	bl AddTextPrinterParameterizedWithColor
	add r7, r7, #1
	add r5, #0x28
	cmp r7, #4
	blt _0222B160
	add r0, r4, #0
	bl String_Delete
	ldr r0, [sp, #0x1c]
	bl String_Delete
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0x14]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	mov r1, #0xb
	ldr r0, [r0, #0x58]
	mov r2, #1
	add r3, #0x1c
	bl GfGfxLoader_GetScrnDataFromOpenNarc
	ldr r1, [sp, #0x14]
	str r0, [r1, #0x18]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0222B1D4: .word 0x00010F00
	thumb_func_end ov43_0222B0A0

