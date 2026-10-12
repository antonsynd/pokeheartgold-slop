	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_022376FC
	.extern ov40_0222BF80
	.extern ov40_0222C710
	.extern ov40_0222DA00
	.extern ov40_0222DA84
	.extern ov40_02230964
	.extern ov40_02236EB4
	.extern ov40_022373E4
	.extern ov40_02237548
	.extern ov40_0223757C

	.text

	.text
	thumb_func_start ov40_022376FC
ov40_022376FC: ; 0x022376FC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _02237718
	cmp r1, #1
	beq _02237792
	cmp r1, #2
	beq _022377D6
	b _02237814
_02237718:
	mov r1, #2
	bl ov40_0222C710
	add r0, r5, #0
	mov r1, #1
	bl ov40_02230964
	add r0, r5, #0
	bl ov40_02236EB4
	add r0, r5, #0
	bl ov40_0223757C
	add r0, r5, #0
	mov r1, #1
	bl ov40_02237548
	add r0, r5, #0
	mov r1, #0
	bl ov40_022373E4
	add r0, r5, #0
	mov r1, #0
	bl ov40_02230964
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
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	mov r1, #0x4d
	mov r3, #7
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02237814
_02237792:
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r4, r1
	add r1, r1, #4
	mov r2, #0
	add r1, r4, r1
	add r3, r2, #0
	bl ov40_0222DA00
	cmp r0, #0
	beq _02237814
	add r0, r5, #0
	mov r1, #0
	bl ov40_02237548
	add r0, r5, #0
	mov r1, #1
	bl ov40_022373E4
	mov r0, #1
	add r1, r0, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	ldr r0, _0223781C ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02237814
_022377D6:
	mov r0, #0x6b
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl ov40_0222DA84
	cmp r0, #0
	beq _022377F8
	mov r0, #0x33
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	add r0, #0x14
	str r1, [r4, r0]
	add r0, r5, #0
	mov r1, #3
	bl ov40_0222BF80
_022377F8:
	ldr r0, [r5, #0x58]
	mov r3, #0x6b
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r3, r3, #2
	ldr r3, [r4, r3]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r1, #3
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
_02237814:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0223781C: .word 0x04000050
	thumb_func_end ov40_022376FC

