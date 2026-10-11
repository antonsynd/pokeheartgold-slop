	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222BF80
	.public ov40_0222C710
	.public ov40_0222DA00
	.public ov40_0222DA84
	.public ov40_02230964
	.public ov40_02236EB4
	.public ov40_02237030
	.public ov40_02237144
	.public ov40_022371E4
	.public ov40_02237284
	.public ov40_022373E4
	.public ov40_02237474
	.public ov40_02237548
	.public ov40_0223757C
	.public ov40_02237644
	.public ov40_022376FC

	.text

	thumb_func_start ov40_0223757C
ov40_0223757C: ; 0x0223757C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	sub r0, #0x30
	ldr r0, [r5, r0]
	bl SaveArray_PCStorage_Get
	ldr r0, _0223763C ; =0x0000017A
	ldrb r1, [r4, r0]
	cmp r1, #0x10
	blo _022375A0
	cmp r1, #0x18
	bhs _022375A0
	mov r1, #0
	strb r1, [r4, r0]
_022375A0:
	ldr r0, _0223763C ; =0x0000017A
	ldrb r1, [r4, r0]
	cmp r1, #0x28
	blo _022375AC
	mov r1, #0
	strb r1, [r4, r0]
_022375AC:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	ldr r1, _0223763C ; =0x0000017A
	ldr r0, [r5, #0x14]
	ldrb r2, [r4, r1]
	mov r3, #3
	lsl r1, r2, #1
	add r1, r2, r1
	ldr r2, [r5, #0x24]
	add r1, #0x8a
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	ldr r1, _0223763C ; =0x0000017A
	ldr r0, [r5, #0x14]
	ldrb r2, [r4, r1]
	mov r3, #3
	lsl r1, r2, #1
	add r1, r2, r1
	ldr r2, [r5, #0x24]
	add r1, #0x8c
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	mov r0, #0xc0
	mov r1, #0xbf
	str r0, [sp, #8]
	add r2, r1, #0
	str r0, [sp, #0xc]
	add r2, #0xbb
	ldrb r3, [r4, r2]
	ldr r0, [r5, #0x28]
	lsl r2, r3, #1
	add r2, r3, r2
	add r2, #0x8b
	mov r3, #0x6d
	bl PaletteData_LoadFromNarc
	add r0, r5, #0
	bl ov40_02237474
	add r0, r5, #0
	bl ov40_02237284
	mov r1, #0x1b
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, r5, #0
	bl ov40_022371E4
	add r0, r5, #0
	bl ov40_02237144
	ldr r1, _02237640 ; =0x0000010E
	add r0, r5, #0
	bl ov40_02237030
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0223763C: .word 0x0000017A
_02237640: .word 0x0000010E
	thumb_func_end ov40_0223757C

	thumb_func_start ov40_02237644
ov40_02237644: ; 0x02237644
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	sub r0, #0x30
	ldr r0, [r5, r0]
	bl SaveArray_PCStorage_Get
	ldr r1, _022376F8 ; =0x0000017A
	ldrb r2, [r4, r1]
	cmp r2, #0x10
	blo _02237668
	cmp r2, #0x18
	bhs _02237668
	mov r2, #0
	strb r2, [r4, r1]
_02237668:
	ldr r1, _022376F8 ; =0x0000017A
	ldrb r1, [r4, r1]
	cmp r1, #0x18
	blo _02237684
	cmp r1, #0x20
	bhs _02237684
	sub r1, #0x18
	bl PCStorage_IsBonusWallpaperUnlocked
	cmp r0, #0
	bne _02237684
	ldr r0, _022376F8 ; =0x0000017A
	mov r1, #0
	strb r1, [r4, r0]
_02237684:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	ldr r1, _022376F8 ; =0x0000017A
	ldr r0, [r5, #0x14]
	ldrb r2, [r4, r1]
	mov r3, #3
	lsl r1, r2, #1
	add r1, r2, r1
	ldr r2, [r5, #0x24]
	add r1, #0x8a
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	ldr r1, _022376F8 ; =0x0000017A
	ldr r0, [r5, #0x14]
	ldrb r2, [r4, r1]
	mov r3, #3
	lsl r1, r2, #1
	add r1, r2, r1
	ldr r2, [r5, #0x24]
	add r1, #0x8c
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	mov r0, #0xc0
	mov r1, #0xbf
	str r0, [sp, #8]
	add r2, r1, #0
	str r0, [sp, #0xc]
	add r2, #0xbb
	ldrb r3, [r4, r2]
	ldr r0, [r5, #0x28]
	lsl r2, r3, #1
	add r2, r3, r2
	add r2, #0x8b
	mov r3, #0x6d
	bl PaletteData_LoadFromNarc
	add r0, r5, #0
	bl ov40_02237474
	add r0, r5, #0
	bl ov40_02237284
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
_022376F8: .word 0x0000017A
	thumb_func_end ov40_02237644

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

