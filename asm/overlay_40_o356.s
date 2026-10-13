	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0223BB74
	.extern ov40_0222BF80
	.extern ov40_0222DA00
	.extern ov40_0222DA84
	.extern ov40_0222E9B8
	.extern ov40_0222F488
	.extern ov40_0222F740
	.extern ov40_0222F858
	.extern ov40_0222F9D4
	.extern ov40_0222FA5C
	.extern ov40_0222FE00
	.extern ov40_0222FE8C
	.extern ov40_0223077C
	.extern ov40_022307DC
	.extern ov40_02230964
	.extern ov40_0223B4BC
	.extern ov40_0223BA70
	.extern ov40_0223D008
	.extern ov40_0223D1AC
	.extern ov40_022454F0

	.text

	.text
	thumb_func_start ov40_0223BB74
ov40_0223BB74: ; 0x0223BB74
	push {r4, r5, r6, lr}
	sub sp, #0x10
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223BB8E
	cmp r1, #1
	bne _0223BB8C
	b _0223BCCE
_0223BB8C:
	b _0223BD6E
_0223BB8E:
	bl sub_0202FC48
	cmp r0, #0
	beq _0223BB9A
	bl sub_0202FC24
_0223BB9A:
	ldr r0, _0223BD7C ; =0x00002054
	ldr r3, _0223BD80 ; =ov40_022454F0
	add r2, r4, r0
	mov r6, #5
_0223BBA2:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r6, r6, #1
	bne _0223BBA2
	ldr r0, [r3]
	mov r1, #0
	str r0, [r2]
	ldr r0, _0223BD7C ; =0x00002054
	str r1, [r4, r0]
	ldr r1, _0223BD84 ; =0x00004138
	add r0, r0, #4
	ldr r1, [r5, r1]
	str r1, [r4, r0]
	add r0, r5, #0
	bl ov40_0222FE00
	mov r0, #0x6d
	bl ov40_0222FE8C
	mov r1, #0x82
	lsl r1, r1, #6
	str r0, [r4, r1]
	mov r0, #0x7d
	lsl r0, r0, #2
	add r1, #8
	str r0, [r4, r1]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	mov r1, #0x3e
	mov r3, #3
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	mov r1, #0x3e
	mov r3, #7
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	add r0, r5, #0
	mov r1, #4
	mov r2, #3
	bl ov40_022307DC
	mov r1, #7
	add r0, r5, #0
	add r2, r1, #0
	bl ov40_022307DC
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	add r0, r5, #0
	mov r1, #1
	bl ov40_0223B4BC
	add r0, r5, #0
	bl ov40_0223BA70
	add r0, r5, #0
	mov r1, #1
	bl ov40_02230964
	ldr r0, _0223BD88 ; =0x0000047C
	add r1, r5, #0
	add r0, r5, r0
	bl ov40_0222F9D4
	ldr r0, _0223BD8C ; =0x0000049C
	ldr r3, _0223BD7C ; =0x00002054
	add r0, r5, r0
	add r1, r5, #0
	mov r2, #0
	add r3, r4, r3
	bl ov40_0222E9B8
	ldr r1, _0223BD90 ; =0x000004E4
	mov r0, #1
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #0x68
	sub r1, #0x48
	add r0, r5, r0
	add r1, r5, r1
	bl ov40_0222FA5C
	ldr r0, _0223BD8C ; =0x0000049C
	add r1, r5, #0
	add r0, r5, r0
	mov r2, #1
	bl ov40_0222F740
	ldr r0, _0223BD8C ; =0x0000049C
	mov r1, #0x40
	add r0, r5, r0
	mov r2, #0xb8
	bl ov40_0222F858
	ldr r0, _0223BD8C ; =0x0000049C
	add r1, r5, #0
	add r0, r5, r0
	bl ov40_0222F488
	add r0, r5, #0
	mov r1, #0
	bl ov40_02230964
	add r0, r5, #0
	mov r1, #1
	bl ov40_02230964
	add r0, r5, #0
	bl ov40_0223D008
	add r0, r5, #0
	mov r1, #0
	bl ov40_0223D1AC
	add r0, r5, #0
	mov r1, #0
	bl ov40_02230964
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223BD74
_0223BCCE:
	add r0, r4, #0
	add r0, #8
	mov r1, #0
	bl ov40_0222DA84
	mov r2, #0
	add r0, r4, #0
	add r1, r4, #4
	add r3, r2, #0
	bl ov40_0222DA00
	cmp r0, #0
	beq _0223BD3C
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	add r0, r5, #0
	mov r1, #1
	bl ov40_0223D1AC
	ldr r3, _0223BD94 ; =0x000004D8
	mov r1, #0x6f
	ldr r6, [r5, r3]
	mov r3, #0x18
	mul r3, r6
	lsl r1, r1, #4
	add r3, #0x4c
	lsl r3, r3, #0x10
	ldr r1, [r5, r1]
	add r0, r5, #0
	mov r2, #0x10
	asr r3, r3, #0x10
	bl ov40_0223077C
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_020879E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0xc
	ldr r0, [r5, r0]
	add r2, r1, #0
	bl sub_02087A08
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0223BD3C:
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	ldr r0, [r5, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	b _0223BD74
_0223BD6E:
	mov r1, #4
	bl ov40_0222BF80
_0223BD74:
	mov r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0223BD7C: .word 0x00002054
_0223BD80: .word ov40_022454F0
_0223BD84: .word 0x00004138
_0223BD88: .word 0x0000047C
_0223BD8C: .word 0x0000049C
_0223BD90: .word 0x000004E4
_0223BD94: .word 0x000004D8
	thumb_func_end ov40_0223BB74

