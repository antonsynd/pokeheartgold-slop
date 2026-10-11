	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222BF80
	.public ov40_0222D980
	.public ov40_0222DA00
	.public ov40_0222DA84
	.public ov40_0222FB90
	.public ov40_0222FBB4
	.public ov40_02230410
	.public ov40_02230638
	.public ov40_022306A0
	.public ov40_022307DC
	.public ov40_02230964
	.public ov40_0224085C
	.public ov40_0224092C
	.public ov40_02241AB0
	.public ov40_02241C10
	.public ov40_02241C70
	.public ov40_02241CD8
	.public ov40_02242110
	.public ov40_02245654
	.public ov40_02245674
	.public ov40_022456B4

	.text

	thumb_func_start ov40_0224092C
ov40_0224092C: ; 0x0224092C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #3
	bls _02240940
	b _02240B10
_02240940:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224094C: ; jump table
	.short _02240954 - _0224094C - 2 ; case 0
	.short _02240962 - _0224094C - 2 ; case 1
	.short _02240A4C - _0224094C - 2 ; case 2
	.short _02240AB4 - _0224094C - 2 ; case 3
_02240954:
	mov r1, #0
	bl ov40_0222FB90
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02240B18
_02240962:
	bl ov40_0222FBB4
	cmp r0, #0
	bne _0224096C
	b _02240B18
_0224096C:
	mov r2, #8
	str r2, [sp]
	mov r3, #0x12
	str r3, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r5, #4
	bl ov40_0222D980
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
	mov r1, #6
	mov r2, #7
	bl ov40_022307DC
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
	add r0, r4, #0
	bl ov40_0224085C
	add r0, r4, #0
	bl ov40_02242110
	mov r0, #0x6d
	str r0, [sp]
	ldr r0, _02240B20 ; =ov40_022456B4
	ldr r2, _02240B24 ; =ov40_02241C10
	mov r1, #4
	add r3, r4, #0
	bl TouchHitboxController_Create
	ldr r1, _02240B28 ; =0x00000608
	ldr r2, _02240B2C ; =ov40_02241C70
	str r0, [r5, r1]
	mov r0, #0x6d
	str r0, [sp]
	ldr r0, _02240B30 ; =ov40_02245674
	mov r1, #4
	add r3, r4, #0
	bl TouchHitboxController_Create
	ldr r1, _02240B34 ; =0x0000060C
	ldr r2, _02240B38 ; =ov40_02241CD8
	str r0, [r5, r1]
	mov r0, #0x6d
	str r0, [sp]
	ldr r0, _02240B3C ; =ov40_02245654
	mov r1, #2
	add r3, r4, #0
	bl TouchHitboxController_Create
	mov r1, #0x61
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02240B18
_02240A4C:
	mov r1, #1
	bl ov40_02230964
	mov r0, #0x73
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	sub r0, #0xc0
	add r0, r5, r0
	add r1, r4, #0
	bl ov40_02230638
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov40_02230410
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #3
	bl ov40_022307DC
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl ov40_022306A0
	add r0, r4, #0
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
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02240B18
_02240AB4:
	add r0, r5, #0
	add r0, #8
	mov r1, #0
	bl ov40_0222DA84
	mov r2, #0
	add r0, r5, #0
	add r1, r5, #4
	add r3, r2, #0
	bl ov40_0222DA00
	cmp r0, #0
	beq _02240AF6
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	bl ov40_022306A0
	add r0, r4, #0
	bl ov40_02241AB0
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_02240AF6:
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
	b _02240B18
_02240B10:
	add r0, r4, #0
	mov r1, #8
	bl ov40_0222BF80
_02240B18:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02240B20: .word ov40_022456B4
_02240B24: .word ov40_02241C10
_02240B28: .word 0x00000608
_02240B2C: .word ov40_02241C70
_02240B30: .word ov40_02245674
_02240B34: .word 0x0000060C
_02240B38: .word ov40_02241CD8
_02240B3C: .word ov40_02245654
	thumb_func_end ov40_0224092C

