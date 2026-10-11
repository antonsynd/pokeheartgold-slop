	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_0225D8F0
	.public ov91_02261DAC

	.text

	thumb_func_start ov91_0225D8F0
ov91_0225D8F0: ; 0x0225D8F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x58]
	add r5, r2, #0
	str r1, [sp, #0x18]
	str r0, [sp, #0x58]
	ldr r4, [sp, #0x60]
	ldr r2, [sp, #0x14]
	str r3, [sp, #0x1c]
	mov r1, #0x1c
	mov r0, #0
_0225D908:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0225D908
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1c
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r0, #0xa
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	ldr r0, [r0]
	add r1, #0xc
	mov r2, #1
	mov r3, #2
	bl AddWindowParameterized
	mov r0, #0xe0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	mov r2, #0
	add r0, #0xc
	mov r1, #0xf
	add r3, r2, #0
	bl FillWindowPixelRect
	mov r0, #0x80
	add r1, r4, #0
	bl String_New
	add r6, r0, #0
	ldr r0, [sp, #0x18]
	mov r1, #0
	ldr r0, [r0, #8]
	add r2, r6, #0
	bl ReadMsgDataIntoString
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0225DAF8 ; =0x0001020F
	add r2, r6, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	add r3, r1, #0
	add r0, #0xc
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r6, #0
	bl String_Delete
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r2, [sp, #0x18]
	str r4, [sp, #0xc]
	ldr r0, [sp, #0x5c]
	ldr r2, [r2]
	mov r1, #0x12
	mov r3, #2
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x18]
	str r4, [sp, #0xc]
	ldr r0, [sp, #0x5c]
	ldr r2, [r2]
	add r1, #0x12
	mov r3, #2
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	mov r0, #0x80
	str r0, [sp]
	mov r2, #0
	ldr r0, [sp, #0x5c]
	mov r1, #0x13
	add r3, r2, #0
	str r4, [sp, #4]
	bl GfGfxLoader_GXLoadPalFromOpenNarc
	add r0, sp, #0x30
	bl InitWindow
	mov r3, #0
	str r3, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r2, #2
	str r2, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	add r0, #0xfb
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	add r1, sp, #0x30
	ldr r0, [r0]
	bl AddWindowParameterized
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp, #0x28]
	mov r0, #0x80
	add r1, r4, #0
	bl String_New
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	mov r4, #0
	cmp r0, #0
	bls _0225DAD2
	ldr r0, [sp, #0x58]
	ldr r1, _0225DAFC ; =ov91_02261DAC
	lsl r0, r0, #7
	add r1, r1, r0
	ldr r0, [sp, #0x1c]
	lsl r0, r0, #5
	add r6, r1, r0
_0225DA0E:
	ldr r0, [sp, #0x58]
	cmp r4, r0
	beq _0225DAC6
	add r0, r6, #0
	sub r0, #0x20
	ldr r0, [r0]
	mov r1, #2
	str r0, [sp, #0x2c]
	add r0, r6, #0
	sub r0, #0x1c
	ldr r7, [r0]
	mov r0, #0xa
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	ldr r2, [sp, #0x2c]
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	sub r2, r2, #1
	sub r3, r7, #1
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r0, [r0]
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl BgTilemapRectChangePalette
	add r0, sp, #0x30
	mov r1, #0xf
	bl FillWindowPixelBuffer
	ldr r0, [r5, #0x18]
	cmp r0, #1
	bne _0225DA5C
	ldr r0, _0225DB00 ; =0x0005060F
	str r0, [sp, #0x20]
	b _0225DA60
_0225DA5C:
	ldr r0, _0225DAF8 ; =0x0001020F
	str r0, [sp, #0x20]
_0225DA60:
	ldr r0, [r5, #8]
	ldr r1, [sp, #0x24]
	bl PlayerName_FlatToString
	ldr r1, [sp, #0x2c]
	add r0, sp, #0x30
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl SetWindowX
	lsl r1, r7, #0x18
	add r0, sp, #0x30
	lsr r1, r1, #0x18
	bl SetWindowY
	add r0, sp, #0x30
	ldrh r1, [r0, #0xa]
	ldr r0, _0225DB04 ; =0xFFFF8000
	and r0, r1
	ldr r1, [sp, #0x28]
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	ldr r1, _0225DB08 ; =0x00007FFF
	and r1, r2
	orr r1, r0
	add r0, sp, #0x30
	strh r1, [r0, #0xa]
	mov r0, #0
	ldr r1, [sp, #0x24]
	add r2, r0, #0
	bl FontID_String_GetWidth
	add r7, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	mov r3, #0x40
	str r0, [sp, #8]
	mov r0, #0
	sub r3, r3, r7
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x24]
	add r0, sp, #0x30
	mov r1, #0
	lsr r3, r3, #1
	bl AddTextPrinterParameterizedWithColor
	ldr r0, [sp, #0x28]
	add r0, #0x10
	str r0, [sp, #0x28]
_0225DAC6:
	ldr r0, [sp, #0x1c]
	add r4, r4, #1
	add r6, #8
	add r5, r5, #4
	cmp r4, r0
	blo _0225DA0E
_0225DAD2:
	ldr r0, [sp, #0x24]
	bl String_Delete
	add r0, sp, #0x30
	bl RemoveWindow
	ldr r0, [sp, #0x14]
	mov r1, #0
	str r1, [r0, #4]
	mov r0, #2
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225DAF8: .word 0x0001020F
_0225DAFC: .word ov91_02261DAC
_0225DB00: .word 0x0005060F
_0225DB04: .word 0xFFFF8000
_0225DB08: .word 0x00007FFF
	thumb_func_end ov91_0225D8F0

