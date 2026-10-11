	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222BF80
	.public ov40_0222C4B8
	.public ov40_0222D9E8
	.public ov40_0222DA00
	.public ov40_0222E79C
	.public ov40_0222E7DC
	.public ov40_0222FB40
	.public ov40_0222FB90
	.public ov40_0222FBB4
	.public ov40_02230410
	.public ov40_02230638
	.public ov40_022306A0
	.public ov40_022307DC
	.public ov40_02230964
	.public ov40_0224085C
	.public ov40_02241488
	.public ov40_02241AB0
	.public ov40_02241C10
	.public ov40_02241C70
	.public ov40_02241CD8
	.public ov40_02242110
	.public ov40_02245654
	.public ov40_02245674
	.public ov40_022456B4

	.text

	thumb_func_start ov40_02241488
ov40_02241488: ; 0x02241488
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #5
	bls _0224149C
	b _02241754
_0224149C:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022414A8: ; jump table
	.short _022414B4 - _022414A8 - 2 ; case 0
	.short _02241548 - _022414A8 - 2 ; case 1
	.short _022415E8 - _022414A8 - 2 ; case 2
	.short _022416B4 - _022414A8 - 2 ; case 3
	.short _02241726 - _022414A8 - 2 ; case 4
	.short _02241744 - _022414A8 - 2 ; case 5
_022414B4:
	bl ov40_0222FBB4
	cmp r0, #0
	beq _02241560
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #0
	bl ov40_0222D9E8
	ldr r0, _02241770 ; =0x00002604
	ldrb r1, [r4, r0]
	ldr r0, _02241774 ; =0x0000079C
	strb r1, [r5, r0]
	ldr r0, _02241778 ; =0x000008B8
	ldr r1, _0224177C ; =0x000004BC
	add r2, r4, r0
	str r2, [r5, r1]
	ldr r1, [r5, r1]
	sub r0, r0, #4
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov40_0222FB40
	add r0, r4, #0
	bl ov40_0224085C
	ldr r0, [r4, #0x24]
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r4, #0x24]
	mov r1, #6
	bl BgClearTilemapBufferAndCommit
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x3e
	mov r3, #3
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x3e
	mov r3, #7
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	add r0, r4, #0
	mov r1, #0
	bl ov40_0222FB90
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0224176A
_02241548:
	bl ov40_0222FBB4
	cmp r0, #0
	beq _02241560
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #0
	mov r3, #1
	bl ov40_0222DA00
	cmp r0, #0
	bne _02241562
_02241560:
	b _0224176A
_02241562:
	mov r0, #0
	mov r1, #1
	bl SetBgPriority
	mov r0, #1
	mov r1, #3
	bl SetBgPriority
	mov r0, #2
	mov r1, #0
	bl SetBgPriority
	mov r0, #3
	mov r1, #1
	bl SetBgPriority
	mov r0, #4
	mov r1, #1
	bl SetBgPriority
	mov r0, #5
	mov r1, #3
	bl SetBgPriority
	mov r0, #6
	mov r1, #0
	bl SetBgPriority
	mov r0, #7
	mov r1, #2
	bl SetBgPriority
	mov r0, #0x6d
	str r0, [sp]
	ldr r0, _02241780 ; =ov40_022456B4
	ldr r2, _02241784 ; =ov40_02241C10
	mov r1, #4
	add r3, r4, #0
	bl TouchHitboxController_Create
	ldr r1, _02241788 ; =0x00000608
	ldr r2, _0224178C ; =ov40_02241C70
	str r0, [r5, r1]
	mov r0, #0x6d
	str r0, [sp]
	ldr r0, _02241790 ; =ov40_02245674
	mov r1, #4
	add r3, r4, #0
	bl TouchHitboxController_Create
	ldr r1, _02241794 ; =0x0000060C
	ldr r2, _02241798 ; =ov40_02241CD8
	str r0, [r5, r1]
	mov r0, #0x6d
	str r0, [sp]
	ldr r0, _0224179C ; =ov40_02245654
	mov r1, #2
	add r3, r4, #0
	bl TouchHitboxController_Create
	mov r1, #0x61
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0224176A
_022415E8:
	bl ov40_02242110
	add r0, r4, #0
	bl ov40_02241AB0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x3e
	mov r3, #3
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x3e
	mov r3, #7
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	add r0, r4, #0
	mov r1, #1
	bl ov40_02230964
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _02241660
	sub r0, #0xc0
	add r0, r5, r0
	add r1, r4, #0
	bl ov40_02230638
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl ov40_022306A0
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov40_02230410
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #3
	bl ov40_022307DC
	b _0224168C
_02241660:
	add r0, r5, #0
	add r0, #0x80
	add r1, r4, #0
	bl ov40_0222E79C
	add r5, #0x80
	add r0, r5, #0
	mov r1, #0
	bl ov40_0222E7DC
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x50
	mov r3, #3
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
_0224168C:
	add r0, r4, #0
	mov r1, #0
	bl ov40_02230964
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #6
	mov r3, #7
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0224176A
_022416B4:
	mov r2, #0
	add r0, r5, #0
	add r1, r5, #4
	add r3, r2, #0
	str r2, [r5, #8]
	bl ov40_0222DA00
	cmp r0, #0
	beq _0224170C
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _022416DC
	sub r0, #0xc0
	add r0, r5, r0
	mov r1, #1
	bl ov40_022306A0
	b _022416E6
_022416DC:
	add r0, r5, #0
	add r0, #0x80
	mov r1, #1
	bl ov40_0222E7DC
_022416E6:
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0224170C:
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
	b _0224176A
_02241726:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x6d
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0224176A
_02241744:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _0224176A
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0224176A
_02241754:
	ldr r0, _022417A0 ; =0x000006D8
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov40_0222C4B8
	add r0, r4, #0
	mov r1, #8
	bl ov40_0222BF80
_0224176A:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02241770: .word 0x00002604
_02241774: .word 0x0000079C
_02241778: .word 0x000008B8
_0224177C: .word 0x000004BC
_02241780: .word ov40_022456B4
_02241784: .word ov40_02241C10
_02241788: .word 0x00000608
_0224178C: .word ov40_02241C70
_02241790: .word ov40_02245674
_02241794: .word 0x0000060C
_02241798: .word ov40_02241CD8
_0224179C: .word ov40_02245654
_022417A0: .word 0x000006D8
	thumb_func_end ov40_02241488

