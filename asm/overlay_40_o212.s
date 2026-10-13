	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_02233CAC
	.public ov40_02233EE8
	.public ov40_02233F28
	.extern ov40_0222BC44
	.extern ov40_0222BF64
	.extern ov40_0222BF80
	.extern ov40_0222D874
	.extern ov40_0222D88C
	.extern ov40_0222D980
	.extern ov40_0222D9E8
	.extern ov40_0222DA00
	.extern ov40_0222DA84
	.extern ov40_0222DAA8
	.extern ov40_0222DD08
	.extern ov40_0222FB90
	.extern ov40_0222FBB4
	.extern ov40_02230738
	.extern ov40_02230964
	.extern ov40_0223316C
	.extern ov40_0223320C
	.extern ov40_02233238
	.extern ov40_02233550
	.extern ov40_022335F4
	.extern ov40_022338D0
	.extern ov40_022339CC
	.extern ov40_02233AEC
	.extern ov40_02233C3C

	.text

	.text
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

