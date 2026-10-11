	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public _02245CC0
	.public ov40_0222BC44
	.public ov40_0222BF64
	.public ov40_0222BF80
	.public ov40_0222D288
	.public ov40_0222D874
	.public ov40_0222D88C
	.public ov40_0222D980
	.public ov40_0222D9E8
	.public ov40_0222DA00
	.public ov40_0222DA84
	.public ov40_0222DAA8
	.public ov40_0222DB30
	.public ov40_0222DD08
	.public ov40_0222FB90
	.public ov40_0222FBB4
	.public ov40_02230738
	.public ov40_022307DC
	.public ov40_02230964
	.public ov40_0223316C
	.public ov40_0223320C
	.public ov40_02233238
	.public ov40_022334F8
	.public ov40_02233550
	.public ov40_022335F4
	.public ov40_022338D0
	.public ov40_022339CC
	.public ov40_02233AEC
	.public ov40_02233C3C
	.public ov40_02233CAC
	.public ov40_02233EE8
	.public ov40_02233F28
	.public ov40_0223414C
	.public ov40_022341E0
	.public ov40_02234330
	.public ov40_02235900
	.public ov40_02235940
	.public ov40_02235A30
	.public ov40_02235B4C
	.public ov40_02245174
	.public ov40_02245188
	.public ov40_0224519C
	.public ov40_022451B0

	.text

	thumb_func_start ov40_02233238
ov40_02233238: ; 0x02233238
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	ldr r5, [r0, #0x24]
	str r0, [sp, #0x18]
	ldr r7, [r0, #0x14]
	ldr r6, [r0, #0x18]
	ldr r4, [r0, #0x1c]
	ldr r0, [r0, #0x28]
	mov r1, #0x3e
	str r0, [sp, #0x24]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	add r0, r7, #0
	add r2, r5, #0
	mov r3, #6
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	add r0, r7, #0
	mov r1, #0x44
	add r2, r5, #0
	mov r3, #6
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	ldr r0, [sp, #0x18]
	mov r1, #0
	bl ov40_0222DB30
	str r7, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _022334D8 ; =0x0000726C
	mov r1, #3
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x24]
	add r2, r6, #0
	add r3, r4, #0
	bl SpriteSystem_LoadPaletteBufferFromOpenNarc
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _022334D8 ; =0x0000726C
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r7, #0
	mov r3, #0x42
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	ldr r0, _022334D8 ; =0x0000726C
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r7, #0
	mov r3, #0x47
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	ldr r0, _022334D8 ; =0x0000726C
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r7, #0
	mov r3, #0x48
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	ldr r0, [sp, #0x18]
	mov r1, #1
	bl ov40_0222DB30
	str r7, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #6
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _022334DC ; =0x00006E7A
	mov r1, #2
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x24]
	add r2, r6, #0
	add r3, r4, #0
	bl SpriteSystem_LoadPaletteBufferFromOpenNarc
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _022334DC ; =0x00006E7A
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r7, #0
	mov r3, #0x40
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	ldr r0, _022334DC ; =0x00006E7A
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r7, #0
	mov r3, #0x26
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	ldr r0, _022334DC ; =0x00006E7A
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r7, #0
	mov r3, #0x27
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	ldr r3, _022334E0 ; =ov40_0224519C
	add r2, sp, #0x3c
	ldmia r3!, {r0, r1}
	str r2, [sp, #0x20]
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _022334E4 ; =ov40_02245188
	str r0, [r2]
	add r2, sp, #0x28
	ldmia r3!, {r0, r1}
	str r2, [sp, #0x1c]
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r5, #0
	str r0, [r2]
_02233370:
	cmp r5, #3
	bne _022333B2
	str r7, [sp]
	mov r0, #0x5c
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _022334E8 ; =0x00004705
	mov r1, #2
	add r0, r5, r0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x24]
	add r2, r6, #0
	add r3, r4, #0
	bl SpriteSystem_LoadPaletteBufferFromOpenNarc
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _022334E8 ; =0x00004705
	add r1, r4, #0
	add r0, r5, r0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r7, #0
	mov r3, #0x5b
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	b _022333F4
_022333B2:
	mov r0, #0xb3
	str r0, [sp]
	ldr r0, [sp, #0x20]
	mov r1, #2
	ldr r0, [r0]
	add r2, r6, #0
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _022334E8 ; =0x00004705
	add r3, r4, #0
	add r0, r5, r0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x24]
	bl SpriteSystem_LoadPaletteBuffer
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _022334E8 ; =0x00004705
	ldr r3, [sp, #0x1c]
	add r0, r5, r0
	str r0, [sp, #8]
	ldr r3, [r3]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0xb3
	bl SpriteSystem_LoadCharResObjAtEndWithHardwareMappingType
_022333F4:
	ldr r0, [sp, #0x20]
	add r5, r5, #1
	add r0, r0, #4
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r0, r0, #4
	str r0, [sp, #0x1c]
	cmp r5, #5
	blt _02233370
	mov r0, #0
	str r0, [sp]
	ldr r0, _022334E8 ; =0x00004705
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r2, #0xb3
	mov r3, #9
	bl SpriteSystem_LoadCellResObj
	mov r0, #0
	str r0, [sp]
	ldr r0, _022334E8 ; =0x00004705
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r2, #0xb3
	mov r3, #0xa
	bl SpriteSystem_LoadAnimResObj
	mov r0, #0
	str r0, [sp]
	ldr r0, _022334EC ; =0x00004706
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r7, #0
	mov r3, #0x59
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	ldr r0, _022334EC ; =0x00004706
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r7, #0
	mov r3, #0x5a
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	ldr r1, _022334F0 ; =0x0000088C
	ldr r0, [sp, #0x18]
	mov r6, #0xd
	ldr r0, [r0, r1]
	mov r7, #0xe
	bl sub_020315D0
	ldr r1, [sp, #0x18]
	cmp r0, #0
	ldr r4, [r1, #0x18]
	ldr r5, [r1, #0x1c]
	ldr r1, [r1, #0x28]
	beq _02233474
	mov r6, #0xf
	mov r7, #0x10
_02233474:
	mov r0, #0xb3
	str r0, [sp]
	str r6, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _022334F4 ; =0x0002869F
	add r2, r4, #0
	str r0, [sp, #0x14]
	add r0, r1, #0
	mov r1, #2
	add r3, r5, #0
	bl SpriteSystem_LoadPaletteBuffer
	mov r0, #0
	str r0, [sp]
	ldr r0, _022334F4 ; =0x0002869F
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0xb3
	mov r3, #9
	bl SpriteSystem_LoadCellResObj
	mov r0, #0
	str r0, [sp]
	ldr r0, _022334F4 ; =0x0002869F
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0xb3
	mov r3, #0xa
	bl SpriteSystem_LoadAnimResObj
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _022334F4 ; =0x0002869F
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r4, #0
	mov r2, #0xb3
	add r3, r7, #0
	bl SpriteSystem_LoadCharResObjAtEndWithHardwareMappingType
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022334D8: .word 0x0000726C
_022334DC: .word 0x00006E7A
_022334E0: .word ov40_0224519C
_022334E4: .word ov40_02245188
_022334E8: .word 0x00004705
_022334EC: .word 0x00004706
_022334F0: .word 0x0000088C
_022334F4: .word 0x0002869F
	thumb_func_end ov40_02233238

	thumb_func_start ov40_022334F8
ov40_022334F8: ; 0x022334F8
	push {r4, r5, r6, r7}
	add r3, r0, #0
	mov r0, #0
	cmp r1, #0
	ble _0223350A
_02233502:
	add r0, r0, #1
	add r3, r3, #2
	cmp r0, r1
	blt _02233502
_0223350A:
	add r7, r1, r2
	cmp r0, r7
	bge _0223354A
	mov r1, #0x97
_02233512:
	ldrh r6, [r3]
	mov r2, #0x1f
	add r0, r0, #1
	asr r4, r6, #0xa
	and r4, r2
	add r5, r4, #0
	mov r2, #0x1d
	mul r5, r2
	mov r2, #0x1f
	and r2, r6
	mov r4, #0x4c
	mul r4, r2
	asr r6, r6, #5
	mov r2, #0x1f
	and r2, r6
	add r6, r2, #0
	mul r6, r1
	add r2, r4, r6
	add r2, r5, r2
	asr r5, r2, #8
	lsl r4, r5, #0xa
	lsl r2, r5, #5
	orr r2, r4
	orr r2, r5
	strh r2, [r3]
	add r3, r3, #2
	cmp r0, r7
	blt _02233512
_0223354A:
	pop {r4, r5, r6, r7}
	bx lr
	.balign 4, 0
	thumb_func_end ov40_022334F8

	thumb_func_start ov40_02233550
ov40_02233550: ; 0x02233550
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r0, [sp]
	ldr r0, [r0, #0x28]
	mov r1, #0x83
	str r0, [sp, #4]
	ldr r0, [sp]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bl Save_VarsFlags_Get
	add r4, r0, #0
	bl Save_VarsFlags_GetBattleTowerPrintProgress
	str r0, [sp, #0x30]
	add r0, r4, #0
	bl Save_VarsFlags_GetBattleFactoryPrintProgress
	str r0, [sp, #0x34]
	add r0, r4, #0
	bl Save_VarsFlags_GetBattleArcadePrintProgress
	str r0, [sp, #0x38]
	add r0, r4, #0
	bl Save_VarsFlags_GetBattleCastlePrintProgress
	str r0, [sp, #0x3c]
	add r0, r4, #0
	bl Save_VarsFlags_GetBattleHallPrintProgress
	ldr r3, _022335F0 ; =ov40_02245174
	str r0, [sp, #0x40]
	ldmia r3!, {r0, r1}
	add r2, sp, #8
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r7, #0
	add r4, sp, #0x30
	add r5, sp, #0x1c
	str r0, [r2]
_022335A4:
	ldr r6, [r4]
	cmp r6, #0
	beq _022335D8
	add r3, sp, #8
	ldmia r3!, {r0, r1}
	add r2, sp, #0x1c
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	sub r0, r6, #2
	cmp r0, #1
	bhi _022335D8
	ldr r0, [sp]
	mov r1, #2
	ldr r0, [r0, #0x28]
	bl PaletteData_GetFadedBuf
	ldr r1, [r5]
	mov r2, #0x10
	add r1, r1, #4
	lsl r1, r1, #0x14
	lsr r1, r1, #0x10
	bl ov40_022334F8
_022335D8:
	add r7, r7, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r7, #5
	blt _022335A4
	ldr r0, [sp, #4]
	mov r1, #1
	bl PaletteData_SetAutoTransparent
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_022335F0: .word ov40_02245174
	thumb_func_end ov40_02233550

	thumb_func_start ov40_022335F4
ov40_022335F4: ; 0x022335F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xa4
	add r7, r0, #0
	mov r0, #0
	str r0, [sp, #0x1c]
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r6, [r7, r0]
	ldr r0, [sp, #0x1c]
	add r1, sp, #0x20
	strh r0, [r1, #0x28]
	mov r0, #1
	lsl r0, r0, #8
	strh r0, [r1, #0x2a]
	ldr r0, [sp, #0x1c]
	ldr r5, [sp, #0x1c]
	strh r0, [r1, #0x2c]
	strh r0, [r1, #0x2e]
	mov r0, #0xa
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x1c]
	mov r1, #1
	str r0, [sp, #0x54]
	str r0, [sp, #0x74]
	str r0, [sp, #0x78]
	sub r0, r1, #2
	str r0, [sp, #0x6c]
	str r0, [sp, #0x70]
	ldr r0, _022338B8 ; =0x0002869F
	str r1, [sp, #0x58]
	str r0, [sp, #0x5c]
	str r0, [sp, #0x60]
	str r0, [sp, #0x64]
	str r0, [sp, #0x68]
	add r4, r6, #0
_0223363A:
	ldr r0, [r7, #0x18]
	ldr r1, [r7, #0x1c]
	add r2, sp, #0x48
	bl SpriteSystem_NewSprite
	str r0, [r4, #0x40]
	mov r1, #1
	bl ManagedSprite_SetAnim
	ldr r0, [r4, #0x40]
	bl ManagedSprite_TickFrame
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x40]
	add r2, r1, #0
	bl ManagedSprite_SetAffineScale
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #5
	blt _0223363A
	mov r5, #0
	add r4, r6, #0
_02233668:
	ldr r0, _022338BC ; =0x00004705
	add r0, r5, r0
	str r0, [sp, #0x5c]
	str r0, [sp, #0x60]
	cmp r5, #3
	bne _0223367C
	ldr r0, _022338C0 ; =0x00004706
	str r0, [sp, #0x64]
	str r0, [sp, #0x68]
	b _02233682
_0223367C:
	ldr r0, _022338BC ; =0x00004705
	str r0, [sp, #0x64]
	str r0, [sp, #0x68]
_02233682:
	ldr r0, [r7, #0x18]
	ldr r1, [r7, #0x1c]
	add r2, sp, #0x48
	bl SpriteSystem_NewSprite
	str r0, [r4, #0x54]
	cmp r5, #3
	ldr r0, [r4, #0x54]
	bne _0223369C
	mov r1, #0
	bl ManagedSprite_SetAnim
	b _022336A2
_0223369C:
	mov r1, #1
	bl ManagedSprite_SetAnim
_022336A2:
	ldr r0, [r4, #0x54]
	bl ManagedSprite_TickFrame
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x54]
	add r2, r1, #0
	bl ManagedSprite_SetAffineScale
	add r1, r5, #0
	ldr r0, [r4, #0x54]
	add r1, #0xa
	bl ManagedSprite_SetPaletteOverride
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #5
	blt _02233668
	ldr r0, _022338C4 ; =0x00006E7A
	str r0, [sp, #0x5c]
	str r0, [sp, #0x60]
	str r0, [sp, #0x64]
	str r0, [sp, #0x68]
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x6c]
	str r0, [sp, #0x70]
	mov r0, #0x14
	str r0, [sp, #0x50]
	mov r0, #0x83
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	bl Save_VarsFlags_Get
	add r4, r0, #0
	bl Save_VarsFlags_GetBattleTowerPrintProgress
	str r0, [sp, #0x7c]
	add r0, r4, #0
	bl Save_VarsFlags_GetBattleFactoryPrintProgress
	str r0, [sp, #0x80]
	add r0, r4, #0
	bl Save_VarsFlags_GetBattleArcadePrintProgress
	str r0, [sp, #0x84]
	add r0, r4, #0
	bl Save_VarsFlags_GetBattleCastlePrintProgress
	str r0, [sp, #0x88]
	add r0, r4, #0
	bl Save_VarsFlags_GetBattleHallPrintProgress
	str r0, [sp, #0x8c]
	mov r0, #0
	str r0, [sp, #4]
	add r0, sp, #0x7c
	ldr r2, _022338C8 ; =ov40_022451B0
	str r0, [sp, #0x10]
	ldmia r2!, {r0, r1}
	add r3, sp, #0x20
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	add r4, r6, #0
	add r5, sp, #0x34
	str r0, [r3]
_02233728:
	ldr r0, [r7, #0x18]
	ldr r1, [r7, #0x1c]
	add r2, sp, #0x48
	bl SpriteSystem_NewSprite
	str r0, [r4, #0x68]
	ldr r0, [sp, #0x10]
	ldr r0, [r0]
	cmp r0, #1
	bhi _0223375E
	ldr r0, [r4, #0x68]
	mov r1, #5
	bl ManagedSprite_SetAnim
	ldr r0, [r4, #0x68]
	mov r1, #9
	bl ManagedSprite_SetPaletteOverride
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r4, #0x40]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	b _02233780
_0223375E:
	add r3, sp, #0x20
	ldmia r3!, {r0, r1}
	add r2, sp, #0x34
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r4, #0x68]
	ldr r1, [r5]
	bl ManagedSprite_SetAnim
	ldr r1, [r5]
	ldr r0, [r4, #0x68]
	add r1, r1, #4
	bl ManagedSprite_SetPaletteOverride
_02233780:
	ldr r0, [r4, #0x68]
	bl ManagedSprite_TickFrame
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x68]
	add r2, r1, #0
	bl ManagedSprite_SetAffineScale
	ldr r0, [sp, #0x10]
	add r4, r4, #4
	add r0, r0, #4
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	add r5, r5, #4
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #5
	blt _02233728
	ldr r0, _022338CC ; =0x0000726C
	mov r4, #0xfa
	str r0, [sp, #0x5c]
	str r0, [sp, #0x60]
	str r0, [sp, #0x64]
	str r0, [sp, #0x68]
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x6c]
	str r0, [sp, #0x70]
	mov r0, #2
	str r0, [sp, #0x58]
	mov r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x50]
	add r0, r6, #0
	add r0, #0x90
	ldr r0, [r0]
	lsl r4, r4, #2
	str r0, [sp]
	ldr r0, [sp, #0x18]
	add r5, sp, #0x90
	str r0, [sp, #8]
_022337D2:
	ldr r0, [sp]
	add r1, r4, #0
	bl _s32_div_f
	str r0, [r5]
	ldr r0, [sp]
	add r1, r4, #0
	bl _s32_div_f
	str r1, [sp]
	add r0, r4, #0
	mov r1, #0xa
	bl _s32_div_f
	add r4, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	bne _02233804
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _02233804
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	b _02233808
_02233804:
	mov r0, #1
	str r0, [sp, #0x18]
_02233808:
	ldr r0, [sp, #8]
	add r5, r5, #4
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #4
	blt _022337D2
	mov r0, #0xa
	str r0, [sp, #0xa0]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0x58
	add r4, r6, #0
	add r5, sp, #0x90
	str r0, [sp, #0x14]
_02233824:
	ldr r0, [r7, #0x18]
	ldr r1, [r7, #0x1c]
	add r2, sp, #0x48
	bl SpriteSystem_NewSprite
	str r0, [r4, #0x7c]
	ldr r0, [r5]
	cmp r0, #0
	bne _02233846
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	cmp r1, r0
	bge _02233846
	ldr r0, [r4, #0x7c]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
_02233846:
	ldr r0, [r4, #0x7c]
	ldr r1, [r5]
	bl ManagedSprite_SetAnim
	ldr r1, [sp, #0x14]
	ldr r0, [r4, #0x7c]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	mov r2, #0x48
	bl ov40_0222D288
	ldr r0, [r4, #0x7c]
	bl ManagedSprite_TickFrame
	ldr r0, [sp, #0x14]
	add r4, r4, #4
	add r0, #0x10
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	add r5, r5, #4
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #5
	blt _02233824
	add r0, r6, #0
	add r0, #0x88
	ldr r0, [r0]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	add r0, r6, #0
	add r0, #0x8c
	ldr r0, [r0]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	mov r5, #2
	mov r4, #0
	add r7, r5, #0
_02233894:
	ldr r0, [r6, #0x40]
	add r1, r5, #0
	bl ManagedSprite_SetAffineOverwriteMode
	ldr r0, [r6, #0x54]
	add r1, r7, #0
	bl ManagedSprite_SetAffineOverwriteMode
	ldr r0, [r6, #0x68]
	mov r1, #2
	bl ManagedSprite_SetAffineOverwriteMode
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #5
	blt _02233894
	add sp, #0xa4
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_022338B8: .word 0x0002869F
_022338BC: .word 0x00004705
_022338C0: .word 0x00004706
_022338C4: .word 0x00006E7A
_022338C8: .word ov40_022451B0
_022338CC: .word 0x0000726C
	thumb_func_end ov40_022335F4

	thumb_func_start ov40_022338D0
ov40_022338D0: ; 0x022338D0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r7, [r5, r0]
	mov r4, #0
	add r6, r7, #0
_022338DE:
	ldr r1, _022339B8 ; =0x00004705
	ldr r0, [r5, #0x1c]
	add r1, r4, r1
	bl SpriteManager_UnloadCharObjById
	ldr r1, _022339B8 ; =0x00004705
	ldr r0, [r5, #0x1c]
	add r1, r4, r1
	bl SpriteManager_UnloadPlttObjById
	ldr r0, [r6, #0x54]
	bl Sprite_DeleteAndFreeResources
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #5
	blt _022338DE
	ldr r0, [r5, #0x1c]
	ldr r1, _022339B8 ; =0x00004705
	bl SpriteManager_UnloadCellObjById
	ldr r0, [r5, #0x1c]
	ldr r1, _022339B8 ; =0x00004705
	bl SpriteManager_UnloadAnimObjById
	ldr r0, [r5, #0x1c]
	ldr r1, _022339BC ; =0x00004706
	bl SpriteManager_UnloadCellObjById
	ldr r0, [r5, #0x1c]
	ldr r1, _022339BC ; =0x00004706
	bl SpriteManager_UnloadAnimObjById
	mov r6, #0
	add r4, r7, #0
_02233924:
	ldr r0, [r4, #0x40]
	bl Sprite_DeleteAndFreeResources
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #5
	blt _02233924
	ldr r0, [r5, #0x1c]
	ldr r1, _022339C0 ; =0x0002869F
	bl SpriteManager_UnloadCharObjById
	ldr r0, [r5, #0x1c]
	ldr r1, _022339C0 ; =0x0002869F
	bl SpriteManager_UnloadPlttObjById
	ldr r0, [r5, #0x1c]
	ldr r1, _022339C0 ; =0x0002869F
	bl SpriteManager_UnloadCellObjById
	ldr r0, [r5, #0x1c]
	ldr r1, _022339C0 ; =0x0002869F
	bl SpriteManager_UnloadAnimObjById
	mov r6, #0
	add r4, r7, #0
_02233956:
	ldr r0, [r4, #0x68]
	bl Sprite_DeleteAndFreeResources
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #5
	blt _02233956
	ldr r0, [r5, #0x1c]
	ldr r1, _022339C4 ; =0x00006E7A
	bl SpriteManager_UnloadCharObjById
	ldr r0, [r5, #0x1c]
	ldr r1, _022339C4 ; =0x00006E7A
	bl SpriteManager_UnloadPlttObjById
	ldr r0, [r5, #0x1c]
	ldr r1, _022339C4 ; =0x00006E7A
	bl SpriteManager_UnloadCellObjById
	ldr r0, [r5, #0x1c]
	ldr r1, _022339C4 ; =0x00006E7A
	bl SpriteManager_UnloadAnimObjById
	mov r4, #0
_02233986:
	ldr r0, [r7, #0x7c]
	bl Sprite_DeleteAndFreeResources
	add r4, r4, #1
	add r7, r7, #4
	cmp r4, #5
	blt _02233986
	ldr r0, [r5, #0x1c]
	ldr r1, _022339C8 ; =0x0000726C
	bl SpriteManager_UnloadCharObjById
	ldr r0, [r5, #0x1c]
	ldr r1, _022339C8 ; =0x0000726C
	bl SpriteManager_UnloadPlttObjById
	ldr r0, [r5, #0x1c]
	ldr r1, _022339C8 ; =0x0000726C
	bl SpriteManager_UnloadCellObjById
	ldr r0, [r5, #0x1c]
	ldr r1, _022339C8 ; =0x0000726C
	bl SpriteManager_UnloadAnimObjById
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022339B8: .word 0x00004705
_022339BC: .word 0x00004706
_022339C0: .word 0x0002869F
_022339C4: .word 0x00006E7A
_022339C8: .word 0x0000726C
	thumb_func_end ov40_022338D0

	thumb_func_start ov40_022339CC
ov40_022339CC: ; 0x022339CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	mov r6, #0x5a
	str r0, [sp]
	mov r4, #0
	add r5, r0, #0
	lsl r6, r6, #2
_022339E0:
	ldr r0, [r5, #0x2c]
	add r1, r6, #0
	add r0, #0x14
	str r0, [r5, #0x2c]
	bl _s32_div_f
	str r1, [r5, #0x2c]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _022339E0
	ldr r0, [sp]
	ldr r1, [sp]
	mov r2, #0
	add r0, #0xd4
	add r1, #0xd8
	add r3, r2, #0
	bl ov40_0222DA00
	ldr r5, [sp]
	mov r6, #0
	add r4, sp, #4
_02233A0C:
	ldr r0, [sp]
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	beq _02233A1E
	ldr r0, [r5, #4]
	ldr r1, _02233AE8 ; =0x3D4CCCCD
	bl _fadd
	b _02233A3A
_02233A1E:
	ldr r0, [r5, #0x40]
	mov r1, #0
	bl ManagedSprite_SetAffineOverwriteMode
	ldr r0, [r5, #0x54]
	mov r1, #0
	bl ManagedSprite_SetAffineOverwriteMode
	ldr r0, [r5, #0x68]
	mov r1, #0
	bl ManagedSprite_SetAffineOverwriteMode
	mov r0, #0xfe
	lsl r0, r0, #0x16
_02233A3A:
	str r0, [r5, #4]
	ldr r0, [r5, #0x2c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl GF_SinDeg
	ldr r1, [r5, #0x18]
	add r7, r1, #0
	mul r7, r0
	ldr r0, [r5, #0x2c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl GF_CosDeg
	ldr r1, [r5, #0x18]
	add r2, r1, #0
	mul r2, r0
	mov r0, #0x6a
	lsl r0, r0, #0xc
	mov r1, #2
	sub r2, r0, r2
	lsl r1, r1, #0x12
	ldr r0, [r5, #0x68]
	add r1, r7, r1
	bl ManagedSprite_SetPositonFxXY
	add r1, sp, #4
	ldr r0, [r5, #0x68]
	add r1, #2
	add r2, sp, #4
	bl ManagedSprite_GetPositionXY
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r5, #0x40]
	sub r1, #0x20
	sub r2, r2, #2
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r5, #0x54]
	add r1, #0x10
	sub r2, r2, #2
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	ldr r1, [r5, #4]
	ldr r0, [r5, #0x68]
	add r2, r1, #0
	bl ManagedSprite_SetAffineScale
	ldr r1, [r5, #4]
	ldr r0, [r5, #0x40]
	add r2, r1, #0
	bl ManagedSprite_SetAffineScale
	ldr r1, [r5, #4]
	ldr r0, [r5, #0x54]
	add r2, r1, #0
	bl ManagedSprite_SetAffineScale
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #5
	blt _02233A0C
	ldr r0, [sp]
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	beq _02233AE2
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02233AE2:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02233AE8: .word 0x3D4CCCCD
	thumb_func_end ov40_022339CC

	thumb_func_start ov40_02233AEC
ov40_02233AEC: ; 0x02233AEC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	mov r6, #0x5a
	str r0, [sp]
	mov r4, #0
	add r5, r0, #0
	lsl r6, r6, #2
_02233B00:
	ldr r0, [r5, #0x2c]
	add r1, r6, #0
	add r0, #0x14
	str r0, [r5, #0x2c]
	bl _s32_div_f
	str r1, [r5, #0x2c]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _02233B00
	ldr r0, [sp]
	ldr r0, [r0, #0x2c]
	cmp r0, #0x14
	bne _02233B46
	mov r6, #2
	ldr r4, [sp]
	mov r5, #0
	add r7, r6, #0
_02233B26:
	ldr r0, [r4, #0x40]
	add r1, r6, #0
	bl ManagedSprite_SetAffineOverwriteMode
	ldr r0, [r4, #0x54]
	add r1, r7, #0
	bl ManagedSprite_SetAffineOverwriteMode
	ldr r0, [r4, #0x68]
	mov r1, #2
	bl ManagedSprite_SetAffineOverwriteMode
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #5
	blt _02233B26
_02233B46:
	ldr r0, [sp]
	ldr r1, [sp]
	add r0, #0xd4
	add r1, #0xd8
	mov r2, #1
	mov r3, #0
	bl ov40_0222DA00
	ldr r5, [sp]
	mov r6, #0
	add r4, sp, #4
_02233B5C:
	ldr r0, [sp]
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	beq _02233B70
	ldr r0, [r5, #4]
	ldr r1, _02233C38 ; =0x3D4CCCCD
	bl _fsub
	str r0, [r5, #4]
	b _02233B88
_02233B70:
	ldr r0, [r5, #0x68]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r5, #0x40]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r5, #0x54]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
_02233B88:
	ldr r0, [r5, #0x2c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl GF_SinDeg
	ldr r1, [r5, #0x18]
	add r2, r1, #0
	mul r2, r0
	mov r0, #2
	lsl r0, r0, #0x12
	sub r7, r0, r2
	ldr r0, [r5, #0x2c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl GF_CosDeg
	ldr r1, [r5, #0x18]
	add r2, r1, #0
	mul r2, r0
	mov r0, #0x6a
	lsl r0, r0, #0xc
	sub r2, r0, r2
	ldr r0, [r5, #0x68]
	add r1, r7, #0
	bl ManagedSprite_SetPositonFxXY
	add r1, sp, #4
	ldr r0, [r5, #0x68]
	add r1, #2
	add r2, sp, #4
	bl ManagedSprite_GetPositionXY
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r5, #0x40]
	sub r1, #0x20
	sub r2, r2, #2
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r5, #0x54]
	add r1, #0x10
	sub r2, r2, #2
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	ldr r1, [r5, #4]
	ldr r0, [r5, #0x68]
	add r2, r1, #0
	bl ManagedSprite_SetAffineScale
	ldr r1, [r5, #4]
	ldr r0, [r5, #0x40]
	add r2, r1, #0
	bl ManagedSprite_SetAffineScale
	ldr r1, [r5, #4]
	ldr r0, [r5, #0x54]
	add r2, r1, #0
	bl ManagedSprite_SetAffineScale
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #5
	blt _02233B5C
	ldr r0, [sp]
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	beq _02233C30
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02233C30:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02233C38: .word 0x3D4CCCCD
	thumb_func_end ov40_02233AEC

	thumb_func_start ov40_02233C3C
ov40_02233C3C: ; 0x02233C3C
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r4, _02233CA8 ; =_02245CC0
	ldr r5, [r0, r1]
	mov r7, #0
	add r6, sp, #0
_02233C4A:
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r5, #0x68]
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	bl ManagedSprite_SetPositonFxXY
	add r1, sp, #0
	ldr r0, [r5, #0x68]
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r6, r1]
	ldrsh r2, [r6, r2]
	ldr r0, [r5, #0x40]
	sub r1, #0x20
	sub r2, r2, #2
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r6, r1]
	ldrsh r2, [r6, r2]
	ldr r0, [r5, #0x54]
	add r1, #0x10
	sub r2, r2, #2
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ManagedSprite_SetPositionXY
	add r7, r7, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r7, #5
	blt _02233C4A
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02233CA8: .word _02245CC0
	thumb_func_end ov40_02233C3C

	thumb_func_start ov40_02233CAC
ov40_02233CAC: ; 0x02233CAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _02233D4E
	mov r0, #0x6d
	mov r1, #0xdc
	bl Heap_Alloc
	mov r1, #0
	mov r2, #0xdc
	add r5, r0, #0
	bl MI_CpuFill8
	mov r0, #0x86
	lsl r0, r0, #4
	str r5, [r4, r0]
	mov r0, #0
	str r0, [r5]
	add r1, r5, #0
	add r2, r0, #0
	mov r7, #0x40
	mov r6, #0x34
_02233CDC:
	sub r3, r0, #2
	cmp r3, #1
	bhi _02233CE6
	str r6, [r1, #0x18]
	b _02233CE8
_02233CE6:
	str r7, [r1, #0x18]
_02233CE8:
	ldr r3, _02233EE0 ; =0x3E4CCCCD
	str r2, [r1, #0x2c]
	str r3, [r1, #4]
	add r0, r0, #1
	add r1, r1, #4
	add r2, #0x48
	cmp r0, #5
	blt _02233CDC
	ldr r0, [r4, #0x24]
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r4, #0x24]
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r4, #0x24]
	mov r1, #7
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r4, #0x24]
	mov r1, #6
	bl BgClearTilemapBufferAndCommit
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xd4
	add r1, #0xd8
	mov r2, #0
	bl ov40_0222D9E8
	mov r0, #4
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r2, #0
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xd4
	add r1, #0xd8
	add r3, r2, #0
	str r2, [sp, #8]
	bl ov40_0222D980
	ldr r0, _02233EE4 ; =0x00000579
	bl PlaySE
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02233D54
_02233D4E:
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r5, [r4, r0]
_02233D54:
	ldr r0, [r4, #8]
	cmp r0, #4
	bls _02233D5C
	b _02233ED0
_02233D5C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02233D68: ; jump table
	.short _02233ED0 - _02233D68 - 2 ; case 0
	.short _02233D72 - _02233D68 - 2 ; case 1
	.short _02233DE6 - _02233D68 - 2 ; case 2
	.short _02233E42 - _02233D68 - 2 ; case 3
	.short _02233E86 - _02233D68 - 2 ; case 4
_02233D72:
	add r0, r5, #0
	mov r1, #1
	bl ov40_0222DA84
	cmp r0, #0
	beq _02233D9C
	mov r0, #0x83
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl Save_FrontierData_Get
	mov r1, #0
	add r2, r1, #0
	bl FrontierData_BattlePointAction
	add r1, r5, #0
	add r1, #0x90
	str r0, [r1]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_02233D9C:
	ldr r0, [r4, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	ldr r0, [r4, #0x58]
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #2
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	b _02233ED8
_02233DE6:
	add r0, r4, #0
	mov r1, #1
	bl ov40_02230964
	add r0, r4, #0
	bl ov40_0222D874
	add r0, r4, #0
	mov r1, #0
	bl ov40_02230964
	add r0, r4, #0
	mov r1, #0
	bl ov40_0222FB90
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_020879E0
	bl ov40_02230738
	mov r0, #6
	mov r1, #2
	bl SetBgPriority
	add r0, r4, #0
	bl ov40_02233238
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0x1c
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02233ED8
_02233E42:
	add r0, r4, #0
	bl ov40_0222FBB4
	cmp r0, #0
	beq _02233ED8
	add r0, r4, #0
	mov r1, #1
	bl ov40_02230964
	add r0, r4, #0
	bl ov40_0223316C
	add r0, r4, #0
	bl ov40_022335F4
	add r0, r4, #0
	bl ov40_02233550
	add r0, r4, #0
	mov r1, #0
	bl ov40_02230964
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02233ED8
_02233E86:
	add r0, r4, #0
	bl ov40_022339CC
	add r6, r0, #0
	add r0, r5, #0
	add r1, r5, #0
	mov r2, #0
	add r0, #0xd4
	add r1, #0xd8
	add r3, r2, #0
	bl ov40_0222DA00
	add r0, r5, #0
	mov r1, #0
	bl ov40_0222DA84
	cmp r6, #0
	bne _02233EB6
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	add r0, r4, #0
	bl ov40_02233C3C
_02233EB6:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0x1c
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	b _02233ED8
_02233ED0:
	add r0, r4, #0
	mov r1, #1
	bl ov40_0222BF80
_02233ED8:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02233EE0: .word 0x3E4CCCCD
_02233EE4: .word 0x00000579
	thumb_func_end ov40_02233CAC

	thumb_func_start ov40_02233EE8
ov40_02233EE8: ; 0x02233EE8
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, sp, #4
	add r1, sp, #0
	bl System_GetTouchNewCoords
	cmp r0, #0
	beq _02233F1C
	ldr r0, [sp, #4]
	cmp r0, #0x50
	bls _02233F1C
	cmp r0, #0xb0
	bhs _02233F1C
	ldr r0, [sp]
	cmp r0, #0x98
	bls _02233F1C
	cmp r0, #0xb0
	bhs _02233F1C
	ldr r0, _02233F24 ; =0x0000057B
	bl PlaySE
	add r0, r4, #0
	mov r1, #2
	bl ov40_0222BF80
_02233F1C:
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	nop
_02233F24: .word 0x0000057B
	thumb_func_end ov40_02233EE8

	thumb_func_start ov40_02233F28
ov40_02233F28: ; 0x02233F28
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r5, [r4, r0]
	ldr r0, [r4, #8]
	cmp r0, #4
	bls _02233F3A
	b _0223409E
_02233F3A:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02233F46: ; jump table
	.short _02233F50 - _02233F46 - 2 ; case 0
	.short _02233FAE - _02233F46 - 2 ; case 1
	.short _02233FB2 - _02233F46 - 2 ; case 2
	.short _02233FFA - _02233F46 - 2 ; case 3
	.short _0223403E - _02233F46 - 2 ; case 4
_02233F50:
	ldr r0, [r5]
	cmp r0, #0
	bne _02233F5C
	ldr r0, _0223413C ; =0x0000057A
	bl PlaySE
_02233F5C:
	ldr r0, [r5]
	cmp r0, #0x10
	beq _02233F66
	add r0, r0, #2
	str r0, [r5]
_02233F66:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0x1c
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	ldr r0, [r4, #0x58]
	ldr r2, _02234140 ; =0x00004018
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r1, #1
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	add r0, r4, #0
	bl ov40_02233AEC
	cmp r0, #0
	beq _02233FA2
	b _02234136
_02233FA2:
	mov r0, #0
	str r0, [r5]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02234136
_02233FAE:
	add r0, r0, #1
	str r0, [r4, #8]
_02233FB2:
	add r0, r4, #0
	mov r1, #1
	bl ov40_02230964
	add r0, r4, #0
	bl ov40_022338D0
	add r0, r4, #0
	bl ov40_0223320C
	add r0, r4, #0
	mov r1, #0
	bl ov40_02230964
	mov r0, #8
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #8
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	mov r0, #0
	str r0, [r5]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02234136
_02233FFA:
	mov r0, #1
	bl ov40_0222BC44
	add r0, r4, #0
	mov r1, #1
	bl ov40_02230964
	add r0, r4, #0
	bl ov40_0222D88C
	add r0, r4, #0
	mov r1, #0
	bl ov40_02230964
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
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02234136
_0223403E:
	ldr r1, [r5]
	cmp r1, #0
	beq _0223404A
	sub r0, r1, #2
	str r0, [r5]
	b _02234136
_0223404A:
	add r0, r0, #1
	str r0, [r4, #8]
	add r0, r5, #0
	bl ov40_0222DAA8
	ldr r0, [r4, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0x1c
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	ldr r0, [r4, #0x58]
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #2
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	b _02234136
_0223409E:
	add r0, r5, #0
	mov r1, #0
	bl ov40_0222DA84
	cmp r0, #0
	beq _02234106
	mov r0, #8
	str r0, [sp]
	ldr r0, _02234144 ; =0x04000050
	mov r1, #4
	mov r2, #0x12
	mov r3, #7
	bl G2x_SetBlendAlpha_
	mov r0, #8
	str r0, [sp]
	ldr r0, _02234148 ; =0x04001050
	mov r1, #4
	mov r2, #0x12
	mov r3, #7
	bl G2x_SetBlendAlpha_
	add r0, r5, #0
	bl Heap_Free
	add r0, r4, #0
	bl ov40_0222DD08
	add r0, r5, #0
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
	b _02234136
_02234106:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	ldr r0, [r4, #0x58]
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #2
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
_02234136:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0223413C: .word 0x0000057A
_02234140: .word 0x00004018
_02234144: .word 0x04000050
_02234148: .word 0x04001050
	thumb_func_end ov40_02233F28

	thumb_func_start ov40_0223414C
ov40_0223414C: ; 0x0223414C
	push {r3, r4, r5, lr}
	mov r1, #0xba
	add r5, r0, #0
	mov r0, #0x6d
	lsl r1, r1, #2
	bl Heap_Alloc
	mov r2, #0xba
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl memset
	mov r0, #0x86
	lsl r0, r0, #4
	str r4, [r5, r0]
	ldr r0, _022341DC ; =FS_OVERLAY_ID(OVY_41)
	mov r1, #2
	bl HandleLoadOverlay
	mov r1, #0x86
	ldr r0, [r5, #0x24]
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r2, #0x48
	add r0, r1, #4
	str r2, [r4, r0]
	add r0, r1, #0
	mov r2, #0x10
	add r0, #8
	str r2, [r4, r0]
	mov r0, #0x6d
	add r1, #0xc
	str r0, [r4, r1]
	bl sub_0202B998
	mov r1, #0x8e
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x6d
	bl sub_020314A4
	mov r1, #0x25
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r5, #0x24]
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r5, #0x24]
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r5, #0x24]
	mov r1, #6
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r5, #0x24]
	mov r1, #7
	bl BgClearTilemapBufferAndCommit
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #0
	bl ov40_0222D9E8
	add r0, r5, #0
	mov r1, #1
	bl ov40_0222BF80
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_022341DC: .word FS_OVERLAY_ID(OVY_41)
	thumb_func_end ov40_0223414C

	thumb_func_start ov40_022341E0
ov40_022341E0: ; 0x022341E0
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _022341FC
	cmp r1, #1
	beq _0223425A
	cmp r1, #2
	beq _022342AE
	b _022342C4
_022341FC:
	add r0, r4, #0
	add r0, #8
	mov r1, #1
	bl ov40_0222DA84
	cmp r0, #0
	beq _02234210
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_02234210:
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
	b _02234328
_0223425A:
	mov r0, #0
	add r1, r0, #0
	bl SetBgPriority
	mov r0, #2
	mov r1, #0
	bl SetBgPriority
	mov r0, #1
	mov r1, #3
	bl SetBgPriority
	mov r0, #3
	mov r1, #2
	bl SetBgPriority
	mov r0, #4
	mov r1, #0
	bl SetBgPriority
	mov r0, #6
	mov r1, #1
	bl SetBgPriority
	mov r0, #5
	mov r1, #3
	bl SetBgPriority
	mov r0, #7
	mov r1, #2
	bl SetBgPriority
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_020879E0
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02234328
_022342AE:
	mov r1, #0
	bl ov40_0222FB90
	add r0, r5, #0
	mov r1, #1
	bl ov40_02230964
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02234328
_022342C4:
	bl ov40_0222FBB4
	cmp r0, #0
	beq _02234328
	add r0, r5, #0
	mov r1, #0
	bl ov40_02230964
	add r0, r5, #0
	mov r1, #1
	bl ov40_02230964
	add r0, r5, #0
	bl ov40_0222D874
	add r0, r5, #0
	bl ov40_02235A30
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
	mov r1, #2
	bl ov40_0222BF80
_02234328:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov40_022341E0

	thumb_func_start ov40_02234330
ov40_02234330: ; 0x02234330
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223434A
	cmp r1, #1
	beq _022343DA
	cmp r1, #2
	beq _022343F0
	b _02234440
_0223434A:
	bl ov40_02235940
	add r0, r5, #0
	mov r1, #0x23
	mov r2, #3
	bl ov40_022307DC
	add r0, r5, #0
	mov r1, #0x25
	mov r2, #7
	bl ov40_022307DC
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	add r0, r5, #0
	mov r1, #1
	bl ov40_02230964
	mov r0, #0x83
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl Save_FashionData_Get
	mov r1, #0
	bl sub_0202B9B8
	mov r1, #0x8b
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r0, r1, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _022343B2
	add r0, r1, #0
	sub r0, #0x14
	ldr r1, [r4, r1]
	add r0, r4, r0
	bl ov41_0224B530
	mov r1, #0x8a
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #1
	bl ov41_0224B5D0
_022343B2:
	add r0, r5, #0
	mov r1, #0
	bl ov40_02230964
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #1
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	ldr r0, _0223446C ; =ov40_02235900
	add r1, r5, #0
	bl Main_SetVBlankIntrCB
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02234446
_022343DA:
	mov r1, #0
	mov r3, #2
	ldr r0, [r5, #0x28]
	add r2, r1, #0
	lsl r3, r3, #8
	bl PaletteData_LoadPaletteSlotFromHardware
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02234446
_022343F0:
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
	beq _02234426
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #1
	add r1, r0, #0
	bl GfGfx_EngineATogglePlanes
	add r0, r5, #0
	bl ov40_02235B4C
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_02234426:
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
	b _02234446
_02234440:
	mov r1, #3
	bl ov40_0222BF80
_02234446:
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02234466
	bl Thunk_G3X_Reset
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov41_0224B554
	mov r0, #0
	add r1, r0, #0
	bl RequestSwap3DBuffers
_02234466:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0223446C: .word ov40_02235900
	thumb_func_end ov40_02234330

