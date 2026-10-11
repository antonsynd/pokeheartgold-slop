	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222BF64
	.public ov40_0222BF80
	.public ov40_0222C710
	.public ov40_0222D88C
	.public ov40_0222DA00
	.public ov40_0222DA84
	.public ov40_0222DAA8
	.public ov40_0222DD08
	.public ov40_0222FB90
	.public ov40_0222FBB4
	.public ov40_02230964
	.public ov40_02236534
	.public ov40_022368EC
	.public ov40_02236EB4
	.public ov40_02236F38
	.public ov40_02237008
	.public ov40_02237030
	.public ov40_02237410
	.public ov40_02237564
	.public ov40_02237838
	.public ov40_02237978

	.text

	thumb_func_start ov40_02237838
ov40_02237838: ; 0x02237838
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r7, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223784E
	cmp r1, #1
	beq _02237888
	b _022378DE
_0223784E:
	bl ov40_02237410
	add r0, r5, #0
	bl ov40_02237564
	add r0, r5, #0
	bl ov40_02237008
	add r0, r5, #0
	bl ov40_02236534
	ldr r0, _02237974 ; =0x000006F4
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_020878B0
	ldr r0, _02237974 ; =0x000006F4
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_020879E0
	add r0, r5, #0
	mov r1, #1
	bl ov40_0222FB90
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02237970
_02237888:
	bl ov40_0222FBB4
	cmp r0, #0
	beq _02237970
	mov r6, #0
	add r4, r7, #0
_02237894:
	mov r0, #0x33
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl TouchHitboxController_Destroy
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #5
	blt _02237894
	mov r0, #0x6b
	lsl r0, r0, #2
	add r0, r7, r0
	bl ov40_0222DAA8
	add r0, r5, #0
	bl ov40_0222D88C
	ldr r0, [r5, #0x24]
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r5, #0x24]
	mov r1, #6
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r5, #0x24]
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r5, #0x24]
	mov r1, #7
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02237970
_022378DE:
	mov r0, #0x6b
	lsl r0, r0, #2
	add r0, r7, r0
	mov r1, #0
	bl ov40_0222DA84
	cmp r0, #0
	beq _02237938
	add r0, r5, #0
	bl ov40_0222DD08
	mov r0, #0x6b
	lsl r0, r0, #2
	add r0, r7, r0
	bl ov40_0222DAA8
	ldr r0, [r5, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r5, #0x28]
	mov r2, #0xc
	mov r3, #0x10
	bl PaletteData_BlendPalettes
	mov r1, #1
	ldr r3, [r5, #0x10]
	add r0, r5, #0
	add r2, r1, #0
	bl ov40_0222BF64
	add r0, r5, #0
	mov r1, #5
	bl ov40_0222BF80
	mov r0, #0xe1
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	bl sub_020314BC
	add r0, r7, #0
	bl Heap_Free
	b _02237970
_02237938:
	ldr r0, [r5, #0x58]
	mov r3, #0x6b
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r3, r3, #2
	ldr r3, [r7, r3]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r1, #1
	mov r2, #2
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	ldr r0, [r5, #0x58]
	mov r3, #0x6b
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r3, r3, #2
	ldr r3, [r7, r3]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r1, #3
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
_02237970:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02237974: .word 0x000006F4
	thumb_func_end ov40_02237838

	thumb_func_start ov40_02237978
ov40_02237978: ; 0x02237978
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _02237994
	cmp r1, #1
	beq _02237A1E
	cmp r1, #2
	beq _02237A5A
	b _02237A98
_02237994:
	mov r1, #1
	bl ov40_02230964
	add r0, r5, #0
	mov r1, #2
	bl ov40_0222C710
	add r0, r5, #0
	bl ov40_02236EB4
	ldr r1, _02237AA0 ; =0x00000113
	add r0, r5, #0
	bl ov40_02237030
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
	mov r1, #0x4f
	mov r3, #7
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	add r0, r5, #0
	bl ov40_02236F38
	add r0, r5, #0
	mov r1, #1
	bl ov40_022368EC
	add r0, r5, #0
	mov r1, #0
	bl ov40_02230964
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02237A98
_02237A1E:
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r4, r1
	add r1, r1, #4
	mov r2, #0
	add r1, r4, r1
	add r3, r2, #0
	bl ov40_0222DA00
	cmp r0, #0
	beq _02237A98
	mov r0, #1
	add r1, r0, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	ldr r0, _02237AA4 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02237A98
_02237A5A:
	mov r0, #0x6b
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl ov40_0222DA84
	cmp r0, #0
	beq _02237A7C
	mov r0, #0xce
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r0, #0xc
	str r1, [r4, r0]
	add r0, r5, #0
	mov r1, #3
	bl ov40_0222BF80
_02237A7C:
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
_02237A98:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02237AA0: .word 0x00000113
_02237AA4: .word 0x04000050
	thumb_func_end ov40_02237978

