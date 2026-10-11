	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222BF64
	.public ov40_0222BF80
	.public ov40_0222D88C
	.public ov40_0222DA00
	.public ov40_0222DA84
	.public ov40_0222DAA8
	.public ov40_0222DD08
	.public ov40_0222DEAC
	.public ov40_0222E79C
	.public ov40_0222E7B8
	.public ov40_0222E7DC
	.public ov40_0222F734
	.public ov40_0222FB90
	.public ov40_0222FBB4
	.public ov40_0222FC14
	.public ov40_0222FCCC
	.public ov40_0222FDC4
	.public ov40_02230410
	.public ov40_02230638
	.public ov40_0223064C
	.public ov40_022306A0
	.public ov40_022306E0
	.public ov40_0223077C
	.public ov40_022307DC
	.public ov40_02230964
	.public ov40_0223D540
	.public ov40_0223D5CC
	.public ov40_02240910
	.public ov40_02240E28
	.public ov40_02240F24
	.public ov40_02241054
	.public ov40_02241114
	.public ov40_02241A34
	.public ov40_02241A54
	.public ov40_02241AFC
	.public ov40_02241BDC
	.public ov40_022421FC
	.public ov40_0224222C
	.public ov40_02242378
	.public ov40_02242490
	.public ov40_0224253C
	.public ov40_022425E8

	.text

	thumb_func_start ov40_0224222C
ov40_0224222C: ; 0x0224222C
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #3
	bls _0224223E
	b _0224235A
_0224223E:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224224A: ; jump table
	.short _02242252 - _0224224A - 2 ; case 0
	.short _02242290 - _0224224A - 2 ; case 1
	.short _022422A8 - _0224224A - 2 ; case 2
	.short _02242312 - _0224224A - 2 ; case 3
_02242252:
	mov r1, #1
	bl ov40_02230964
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _0224226E
	sub r0, #0xc0
	add r0, r4, r0
	add r1, r5, #0
	bl ov40_0223064C
	b _02242278
_0224226E:
	add r4, #0x80
	add r0, r4, #0
	add r1, r5, #0
	bl ov40_0222E7B8
_02242278:
	add r0, r5, #0
	mov r1, #0
	bl ov40_02230964
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02242374
_02242290:
	mov r2, #1
	add r0, r4, #0
	add r1, r4, #4
	add r3, r2, #0
	bl ov40_0222DA00
	cmp r0, #0
	beq _02242374
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02242374
_022422A8:
	mov r1, #1
	bl ov40_02230964
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _022422D8
	add r0, r4, #0
	add r0, #0x80
	add r1, r5, #0
	bl ov40_0222E79C
	add r4, #0x80
	add r0, r4, #0
	mov r1, #0
	bl ov40_0222E7DC
	add r0, r5, #0
	mov r1, #0x50
	mov r2, #3
	bl ov40_022307DC
	b _02242302
_022422D8:
	sub r0, #0xc0
	add r0, r4, r0
	add r1, r5, #0
	bl ov40_02230638
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl ov40_022306A0
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov40_02230410
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #3
	bl ov40_022307DC
_02242302:
	add r0, r5, #0
	mov r1, #0
	bl ov40_02230964
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02242374
_02242312:
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #0
	mov r3, #1
	bl ov40_0222DA00
	cmp r0, #0
	beq _02242374
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _02242338
	add r4, #0x80
	add r0, r4, #0
	mov r1, #1
	bl ov40_0222E7DC
	b _02242342
_02242338:
	sub r0, #0xc0
	add r0, r4, r0
	mov r1, #1
	bl ov40_022306A0
_02242342:
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02242374
_0224235A:
	mov r1, #0x73
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r0, #1
	eor r0, r2
	str r0, [r4, r1]
	ldr r1, [r4, r1]
	add r0, r5, #0
	add r1, #0x79
	bl ov40_02241A54
	mov r0, #1
	pop {r3, r4, r5, pc}
_02242374:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov40_0224222C

	thumb_func_start ov40_02242378
ov40_02242378: ; 0x02242378
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _02242392
	cmp r1, #1
	beq _022423DE
	cmp r1, #2
	beq _02242444
	b _02242488
_02242392:
	mov r1, #1
	bl ov40_02230964
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _022423AE
	sub r0, #0xc0
	add r0, r4, r0
	add r1, r5, #0
	bl ov40_0223064C
	b _022423B8
_022423AE:
	add r4, #0x80
	add r0, r4, #0
	add r1, r5, #0
	bl ov40_0222E7B8
_022423B8:
	add r0, r5, #0
	mov r1, #0
	bl ov40_02230964
	add r0, r5, #0
	bl ov40_02241A34
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0224248C
_022423DE:
	add r0, r4, #0
	add r0, #8
	mov r1, #1
	bl ov40_0222DA84
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #1
	mov r3, #0
	bl ov40_0222DA00
	cmp r0, #0
	beq _0224242A
	add r0, r5, #0
	mov r1, #1
	bl ov40_02230964
	add r0, r5, #0
	bl ov40_022421FC
	add r0, r5, #0
	bl ov40_02241054
	add r0, r5, #0
	mov r1, #0
	bl ov40_02230964
	ldr r0, [r5, #0x24]
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r5, #0x24]
	mov r1, #7
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0224242A:
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
	b _0224248C
_02242444:
	add r0, r4, #0
	add r0, #8
	mov r1, #0
	bl ov40_0222DA84
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #0
	mov r3, #1
	bl ov40_0222DA00
	cmp r0, #0
	beq _0224246E
	add r0, r5, #0
	mov r1, #0x64
	mov r2, #0
	bl ov40_02240E28
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0224246E:
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
	b _0224248C
_02242488:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0224248C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov40_02242378

	thumb_func_start ov40_02242490
ov40_02242490: ; 0x02242490
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _022424A8
	cmp r0, #1
	beq _02242508
	b _0224252E
_022424A8:
	add r0, r4, #0
	add r0, #8
	mov r1, #1
	bl ov40_0222DA84
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #1
	mov r3, #2
	bl ov40_0222DA00
	cmp r0, #0
	beq _022424EE
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	mov r1, #0x54
	mov r3, #7
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	mov r2, #0x72
	lsl r2, r2, #2
	ldr r2, [r4, r2]
	add r0, r5, #0
	mov r1, #0x66
	bl ov40_02240F24
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_022424EE:
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
	b _02242534
_02242508:
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #0
	mov r3, #2
	bl ov40_0222DA00
	cmp r0, #0
	beq _02242534
	add r0, r5, #0
	bl ov40_02241AFC
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02242534
_0224252E:
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, pc}
_02242534:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov40_02242490

	thumb_func_start ov40_0224253C
ov40_0224253C: ; 0x0224253C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _02242556
	cmp r0, #1
	beq _02242566
	cmp r0, #2
	beq _02242594
	b _022425E0
_02242556:
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _022425E4
_02242566:
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #1
	mov r3, #2
	bl ov40_0222DA00
	cmp r0, #0
	beq _022425E4
	add r0, r5, #0
	bl ov40_02241BDC
	ldr r0, [r5, #0x24]
	mov r1, #6
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r5, #0x24]
	mov r1, #7
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _022425E4
_02242594:
	add r0, r4, #0
	add r0, #8
	mov r1, #0
	bl ov40_0222DA84
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #0
	mov r3, #2
	bl ov40_0222DA00
	cmp r0, #0
	beq _022425C6
	add r0, r5, #0
	mov r1, #0x64
	mov r2, #0
	bl ov40_02240F24
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_022425C6:
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
	b _022425E4
_022425E0:
	mov r0, #1
	pop {r3, r4, r5, pc}
_022425E4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov40_0224253C

	thumb_func_start ov40_022425E8
ov40_022425E8: ; 0x022425E8
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r0, #0
	mov r2, #0x86
	lsl r2, r2, #4
	ldr r1, [r4, #8]
	ldr r5, [r4, r2]
	cmp r1, #7
	bls _022425FC
	b _022427FC
_022425FC:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02242608: ; jump table
	.short _02242618 - _02242608 - 2 ; case 0
	.short _02242628 - _02242608 - 2 ; case 1
	.short _0224267A - _02242608 - 2 ; case 2
	.short _0224269A - _02242608 - 2 ; case 3
	.short _022426D0 - _02242608 - 2 ; case 4
	.short _02242714 - _02242608 - 2 ; case 5
	.short _0224275A - _02242608 - 2 ; case 6
	.short _022427A6 - _02242608 - 2 ; case 7
_02242618:
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022428AE
_02242628:
	add r0, r5, #0
	add r0, #8
	mov r1, #1
	bl ov40_0222DA84
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #1
	mov r3, #2
	bl ov40_0222DA00
	cmp r0, #0
	beq _02242660
	ldr r0, [r4, #0x24]
	mov r1, #6
	bl BgClearTilemapBufferAndCommit
	ldr r1, _022428B4 ; =0x00000116
	add r0, r4, #0
	mov r2, #0
	bl ov40_02240F24
	add r0, r4, #0
	bl ov40_022306E0
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_02242660:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	b _022428AE
_0224267A:
	mov r1, #0x72
	sub r2, #0xc4
	lsl r1, r1, #2
	ldrb r2, [r5, r2]
	ldr r1, [r5, r1]
	bl ov40_0222FC14
	cmp r0, #0
	beq _02242762
	ldr r0, _022428B8 ; =0x0000079C
	mov r1, #0
	strb r1, [r5, r0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022428AE
_0224269A:
	mov r1, #0x6f
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0x80
	mov r3, #0x60
	bl ov40_0223077C
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_020879E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0x18
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_02087A08
	ldr r0, _022428BC ; =0x0000057D
	bl PlaySE
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022428AE
_022426D0:
	bl ov40_0223D5CC
	cmp r0, #0
	bne _022426DE
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_022426DE:
	mov r1, #0x46
	add r0, r4, #0
	lsl r1, r1, #2
	mov r2, #0
	bl ov40_02240F24
	bl sub_020307F8
	mov r1, #4
	mov r2, #0
	bl sub_0203088C
	add r6, r0, #0
	add r5, r1, #0
	add r0, r4, #0
	bl ov40_0223D540
	add r1, r6, #0
	add r2, r5, #0
	bl ov39_0222774C
	cmp r0, #1
	bne _02242762
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022428AE
_02242714:
	bl ov40_0223D5CC
	cmp r0, #0
	bne _02242722
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_02242722:
	add r0, r4, #0
	bl ov40_0223D540
	add r1, sp, #4
	bl ov39_02227D44
	cmp r0, #1
	ldr r0, _022428BC ; =0x0000057D
	bne _0224273C
	mov r1, #0
	bl StopSE
	b _02242748
_0224273C:
	mov r1, #0
	bl StopSE
	ldr r0, _022428C0 ; =0x00000577
	bl PlaySE
_02242748:
	ldr r0, [r4, #8]
	ldr r1, _022428C4 ; =0x00000119
	add r0, r0, #1
	str r0, [r4, #8]
	add r0, r4, #0
	mov r2, #0
	bl ov40_02240F24
	b _022428AE
_0224275A:
	bl System_GetTouchNew
	cmp r0, #0
	bne _02242764
_02242762:
	b _022428AE
_02242764:
	add r0, r4, #0
	bl ov40_0222DEAC
	add r0, r4, #0
	bl ov40_02241114
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
	bl ov40_0222FDC4
	add r0, r4, #0
	bl ov40_0222FCCC
	ldr r0, _022428C8 ; =0x0000049C
	add r0, r4, r0
	bl ov40_0222F734
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022428AE
_022427A6:
	ldr r0, _022428CC ; =0x00000608
	ldr r0, [r5, r0]
	bl TouchHitboxController_Destroy
	ldr r0, _022428D0 ; =0x0000060C
	ldr r0, [r5, r0]
	bl TouchHitboxController_Destroy
	mov r0, #0x61
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl TouchHitboxController_Destroy
	add r5, #8
	add r0, r5, #0
	bl ov40_0222DAA8
	add r0, r4, #0
	mov r1, #1
	bl ov40_02230964
	add r0, r4, #0
	bl ov40_02240910
	add r0, r4, #0
	bl ov40_0222D88C
	add r0, r4, #0
	mov r1, #0
	bl ov40_02230964
	mov r0, #1
	mov r1, #0x6d
	bl sub_0203A948
	add r0, r4, #0
	mov r1, #1
	bl ov40_0222FB90
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022428AE
_022427FC:
	add r0, r4, #0
	bl ov40_0222FBB4
	cmp r0, #0
	beq _022428AE
	add r0, r5, #0
	add r0, #8
	mov r1, #0
	bl ov40_0222DA84
	cmp r0, #0
	beq _0224287E
	add r0, r4, #0
	bl ov40_0222DD08
	add r0, r5, #0
	add r0, #8
	bl ov40_0222DAA8
	ldr r0, [r4, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x28]
	mov r2, #0xc
	mov r3, #0x10
	bl PaletteData_BlendPalettes
	mov r1, #1
	ldr r3, [r4, #0x10]
	add r0, r4, #0
	add r2, r1, #0
	bl ov40_0222BF64
	add r0, r4, #0
	mov r1, #5
	bl ov40_0222BF80
	add r0, r5, #0
	bl Heap_Free
	ldr r0, [r4, #0x24]
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r4, #0x24]
	mov r1, #6
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r4, #0x24]
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r4, #0x24]
	mov r1, #7
	bl BgClearTilemapBufferAndCommit
	bl sub_0202FC48
	cmp r0, #1
	bne _022428AE
	bl sub_0202FC24
	b _022428AE
_0224287E:
	ldr r0, [r4, #0x58]
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #2
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
_022428AE:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	.balign 4, 0
_022428B4: .word 0x00000116
_022428B8: .word 0x0000079C
_022428BC: .word 0x0000057D
_022428C0: .word 0x00000577
_022428C4: .word 0x00000119
_022428C8: .word 0x0000049C
_022428CC: .word 0x00000608
_022428D0: .word 0x0000060C
	thumb_func_end ov40_022425E8

