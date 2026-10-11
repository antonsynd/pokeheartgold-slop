	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222BF64
	.public ov40_0222BF80
	.public ov40_0222C480
	.public ov40_0222D88C
	.public ov40_0222DA84
	.public ov40_0222DAA8
	.public ov40_0222DD08
	.public ov40_0222DED0
	.public ov40_0222DFB0
	.public ov40_0222FB28
	.public ov40_0222FB90
	.public ov40_0222FBB4
	.public ov40_02230964
	.public ov40_02230CDC
	.public ov40_0223D540
	.public ov40_0223D5CC
	.public ov40_022417DC
	.public ov40_02241948
	.public ov40_02242E4C

	.text

	thumb_func_start ov40_022417DC
ov40_022417DC: ; 0x022417DC
	push {r4, r5, lr}
	sub sp, #0xc
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #3
	bls _022417F0
	b _02241910
_022417F0:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022417FC: ; jump table
	.short _02241804 - _022417FC - 2 ; case 0
	.short _02241818 - _022417FC - 2 ; case 1
	.short _02241876 - _022417FC - 2 ; case 2
	.short _022418FA - _022417FC - 2 ; case 3
_02241804:
	mov r1, #0x77
	bl ov40_0222DED0
	ldr r0, _02241940 ; =0x0000057D
	bl PlaySE
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0224193A
_02241818:
	bl ov40_0223D5CC
	cmp r0, #0
	bne _02241826
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_02241826:
	mov r3, #0
	mov r0, #0x83
	str r3, [sp]
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0x6d
	add r2, sp, #4
	bl sub_0202FC90
	mov r0, #0x6d
	bl sub_020314A4
	mov r1, #0x1d
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #0x83
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	bl sub_020314C4
	add r0, r4, #0
	bl ov40_0223D540
	mov r1, #0x1d
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	bl ov39_02227534
	cmp r0, #1
	bne _0224193A
	mov r0, #0x1d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_020314BC
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0224193A
_02241876:
	bl ov40_0223D5CC
	cmp r0, #0
	bne _02241884
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_02241884:
	bl sub_0202FC24
	add r0, r4, #0
	bl ov40_0222DFB0
	add r0, r4, #0
	bl ov40_0223D540
	add r1, sp, #8
	bl ov39_02227D44
	cmp r0, #1
	bne _022418D4
	ldr r0, _02241940 ; =0x0000057D
	mov r1, #0
	bl StopSE
	ldr r3, [sp, #8]
	add r0, r4, #0
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #4]
	mov r1, #6
	bl ov40_02230CDC
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_020879E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_02087A08
	mov r0, #0xff
	str r0, [r4, #8]
	b _0224193A
_022418D4:
	add r0, r4, #0
	mov r1, #0x77
	bl ov40_0222DED0
	add r0, r5, #0
	add r1, r4, #0
	bl ov40_02242E4C
	ldr r0, _02241940 ; =0x0000057D
	mov r1, #0
	bl StopSE
	ldr r0, _02241944 ; =0x00000577
	bl PlaySE
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0224193A
_022418FA:
	bl System_GetTouchNew
	cmp r0, #0
	beq _0224193A
	add r0, r4, #0
	bl ov40_0222DFB0
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0224193A
_02241910:
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_020879E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_02087A08
	add r0, r4, #0
	mov r1, #0x23 ; SCORE_EVENT_UPLOADED_BATTLE_VIDEO
	bl ov40_0222FB28
	add r0, r4, #0
	mov r1, #4
	bl ov40_0222BF80
_0224193A:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_02241940: .word 0x0000057D
_02241944: .word 0x00000577
	thumb_func_end ov40_022417DC

	thumb_func_start ov40_02241948
ov40_02241948: ; 0x02241948
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	bne _0224198C
	add r4, #8
	add r0, r4, #0
	bl ov40_0222DAA8
	add r0, r5, #0
	bl ov40_0222C480
	add r0, r5, #0
	mov r1, #1
	bl ov40_02230964
	add r0, r5, #0
	bl ov40_0222D88C
	add r0, r5, #0
	mov r1, #0
	bl ov40_02230964
	add r0, r5, #0
	mov r1, #1
	bl ov40_0222FB90
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02241A30
_0224198C:
	bl ov40_0222FBB4
	cmp r0, #0
	beq _02241A30
	add r0, r4, #0
	add r0, #8
	mov r1, #0
	bl ov40_0222DA84
	cmp r0, #0
	beq _02241A00
	add r0, r5, #0
	bl ov40_0222DD08
	add r0, r4, #0
	add r0, #8
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
	add r0, r4, #0
	bl Heap_Free
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
	b _02241A30
_02241A00:
	ldr r0, [r5, #0x58]
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #2
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
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
_02241A30:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov40_02241948

