	.include "macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E91C4
	.public ov102_021E937C

	.text

	.text
	thumb_func_start ov102_021E91C4
ov102_021E91C4: ; 0x021E91C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	add r7, r0, #0
	mov r0, #2
	mov r1, #0x23
	bl FontSystem_NewInit
	mov r1, #0x7f
	lsl r1, r1, #2
	str r0, [r7, r1]
	add r1, #8
	add r0, r7, r1
	bl InitWindow
	mov r0, #0
	str r0, [sp]
	mov r1, #0x81
	str r0, [sp, #4]
	lsl r1, r1, #2
	ldr r0, [r7, #0x20]
	add r1, r7, r1
	mov r2, #9
	mov r3, #4
	bl AddTextWindowTopLeftCorner
	mov r0, #0x81
	lsl r0, r0, #2
	add r0, r7, r0
	mov r1, #0
	bl FillWindowPixelBufferText_AssumeTileSize32
	mov r0, #0x81
	lsl r0, r0, #2
	add r0, r7, r0
	mov r1, #0x23
	bl sub_02013910
	mov r1, #2
	lsl r1, r1, #8
	str r0, [r7, r1]
	ldr r0, [r7, r1]
	mov r1, #1
	bl sub_02013948
	mov r1, #0x7f
	mov r3, #0x23
	add r2, r3, #0
	lsl r1, r1, #2
	str r0, [sp, #0x28]
	ldr r0, [r7, r1]
	add r2, #0xf8
	str r0, [sp, #0x30]
	add r0, r1, #0
	add r0, #8
	add r0, r7, r0
	str r0, [sp, #0x34]
	ldr r0, [r7, #0x24]
	sub r1, #0x64
	str r0, [sp, #0x38]
	add r0, r7, r1
	str r0, [sp, #0x3c]
	mov r0, #3
	mov r1, #1
	str r0, [sp, #0x50]
	mov r0, #0
	str r1, [sp, #0x58]
	mov r1, #0x1b
	str r0, [sp, #0x54]
	str r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	str r3, [sp, #0x5c]
	bl NewMsgDataFromNarc
	str r0, [sp, #0x20]
	mov r0, #0x15
	mov r1, #0x23
	bl String_New
	str r0, [sp, #0x24]
	mov r0, #0x15
	mov r1, #0x23
	bl String_New
	add r4, r0, #0
	mov r0, #0
	str r0, [sp, #0x2c]
	mov r0, #0x86
	lsl r0, r0, #2
	add r0, r7, r0
	str r0, [sp, #0x18]
	mov r0, #0x18
	str r7, [sp, #0x14]
	str r0, [sp, #0x10]
_021E927E:
	mov r1, #1
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x18]
	add r2, r1, #0
	bl sub_02021AC8
	mov r1, #0x87
	ldr r0, [sp, #0x14]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	ldr r1, [sp, #0x2c]
	str r0, [sp, #0x44]
	mov r0, #0
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0x24]
	add r1, #0xb
	bl ReadMsgDataIntoString
	ldr r0, [sp, #0x24]
	bl String_CountLines
	str r0, [sp, #0x1c]
	mov r0, #0x81
	lsl r0, r0, #2
	add r0, r7, r0
	mov r1, #0
	bl FillWindowPixelBufferText_AssumeTileSize32
	ldr r0, [sp, #0x1c]
	mov r6, #0
	lsl r1, r0, #4
	mov r0, #0x20
	sub r0, r0, r1
	lsr r5, r0, #1
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bls _021E9308
_021E92CA:
	ldr r1, [sp, #0x24]
	add r0, r4, #0
	add r2, r6, #0
	bl String_GetLineN
	mov r0, #4
	add r1, r4, #0
	mov r2, #0
	mov r3, #0x48
	bl FontID_String_GetCenterAlignmentX
	add r3, r0, #0
	str r5, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021E9378 ; =0x000E0F00
	mov r1, #4
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0x81
	lsl r0, r0, #2
	add r0, r7, r0
	add r2, r4, #0
	bl AddTextPrinterParameterizedWithColor
	ldr r0, [sp, #0x1c]
	add r6, r6, #1
	add r5, #0x10
	cmp r6, r0
	blo _021E92CA
_021E9308:
	mov r1, #2
	lsl r1, r1, #8
	ldr r1, [r7, r1]
	add r0, sp, #0x30
	bl TextOBJ_Create
	mov r2, #0x85
	ldr r1, [sp, #0x14]
	lsl r2, r2, #2
	str r0, [r1, r2]
	add r0, r1, #0
	ldr r0, [r0, r2]
	mov r1, #1
	bl TextOBJ_SetSpritesDrawFlag
	mov r1, #0x85
	ldr r0, [sp, #0x14]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #0
	bl TextOBJ_SetPaletteNum
	mov r1, #0x85
	ldr r0, [sp, #0x14]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	ldr r1, [sp, #0x10]
	mov r2, #6
	bl sub_020136B4
	ldr r0, [sp, #0x18]
	add r0, #0x10
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r0, #0x10
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, #0x88
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x2c]
	add r0, r0, #1
	str r0, [sp, #0x2c]
	cmp r0, #2
	blt _021E927E
	add r0, r4, #0
	bl String_Delete
	ldr r0, [sp, #0x24]
	bl String_Delete
	ldr r0, [sp, #0x20]
	bl DestroyMsgData
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E9378: .word 0x000E0F00
	thumb_func_end ov102_021E91C4

	thumb_func_start ov102_021E937C
ov102_021E937C: ; 0x021E937C
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x86
	mov r6, #0
	lsl r1, r1, #2
	str r0, [sp]
	add r4, r0, #0
	add r5, r0, r1
	add r7, r6, #0
_021E938C:
	mov r0, #0x85
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl TextOBJ_Destroy
	add r0, r5, #0
	bl sub_02021B5C
	mov r0, #0x85
	lsl r0, r0, #2
	str r7, [r4, r0]
	add r6, r6, #1
	add r4, #0x10
	add r5, #0x10
	cmp r6, #2
	blt _021E938C
	add r1, r0, #0
	ldr r0, [sp]
	sub r1, #0x14
	ldr r0, [r0, r1]
	bl sub_02013938
	mov r1, #0x81
	ldr r0, [sp]
	lsl r1, r1, #2
	add r0, r0, r1
	bl RemoveWindow
	mov r1, #0x7f
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl sub_020135AC
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov102_021E937C

