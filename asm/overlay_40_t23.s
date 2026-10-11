	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222C4F8
	.public ov40_0222C6C8
	.extern ov40_0222DB30

	.text

	.text
	thumb_func_start ov40_0222C4F8
ov40_0222C4F8: ; 0x0222C4F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	ldr r0, [r7]
	ldr r6, [r7, #0x14]
	ldr r4, [r7, #0x24]
	ldr r5, [r7, #0x28]
	cmp r0, #0
	bne _0222C5D6
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0x43
	add r2, r4, #0
	mov r3, #1
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0x43
	add r2, r4, #0
	mov r3, #5
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0x45
	add r2, r4, #0
	mov r3, #5
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	add r0, r7, #0
	mov r1, #3
	bl ov40_0222DB30
	add r2, r0, #0
	mov r1, #0
	mov r0, #0x12
	str r1, [sp]
	lsl r0, r0, #4
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r5, #0
	mov r1, #0xbf
	mov r3, #0x6d
	bl PaletteData_LoadNarc
	add r0, r7, #0
	mov r1, #3
	bl ov40_0222DB30
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0x12
	lsl r0, r0, #4
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0xbf
	mov r3, #0x6d
	bl PaletteData_LoadNarc
	add r0, r7, #0
	mov r1, #0
	bl ov40_0222DB30
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xe0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0xbf
	mov r3, #0x6d
	bl PaletteData_LoadNarc
	add r0, r7, #0
	mov r1, #0
	bl ov40_0222DB30
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xe0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0xbf
	mov r3, #0x6d
	bl PaletteData_LoadNarc
	b _0222C680
_0222C5D6:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0x36
	add r2, r4, #0
	mov r3, #1
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0x36
	add r2, r4, #0
	mov r3, #5
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0x37
	add r2, r4, #0
	mov r3, #5
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	mov r1, #0
	mov r0, #0x12
	str r1, [sp]
	lsl r0, r0, #4
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r5, #0
	mov r1, #0xbf
	mov r2, #0x35
	mov r3, #0x6d
	bl PaletteData_LoadNarc
	mov r0, #1
	str r0, [sp]
	mov r0, #0x12
	lsl r0, r0, #4
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0xbf
	mov r2, #0x35
	mov r3, #0x6d
	bl PaletteData_LoadNarc
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xe0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0xbf
	mov r2, #0x34
	mov r3, #0x6d
	bl PaletteData_LoadNarc
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xe0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0xbf
	mov r2, #0x34
	mov r3, #0x6d
	bl PaletteData_LoadNarc
_0222C680:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0x46
	add r2, r4, #0
	mov r3, #5
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0x46
	add r2, r4, #0
	mov r3, #1
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	ldr r0, [r7, #0x58]
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	add r0, r5, #0
	mov r2, #2
	mov r3, #0x10
	bl PaletteData_BlendPalettes
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov40_0222C4F8

	thumb_func_start ov40_0222C6C8
ov40_0222C6C8: ; 0x0222C6C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r1, #0
	mov r5, #2
	ldr r6, [r0, #0x14]
	ldr r4, [r0, #0x24]
	cmp r2, #0
	beq _0222C6DA
	mov r5, #0
_0222C6DA:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0x2d
	add r2, r4, #0
	add r3, r7, #0
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	add r3, r7, #0
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov40_0222C6C8

