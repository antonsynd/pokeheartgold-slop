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
	.public ov40_0222DED0
	.public ov40_0222DFB0
	.public ov40_0222E7B8
	.public ov40_0222FB90
	.public ov40_0222FBB4
	.public ov40_0223064C
	.public ov40_02230964
	.public ov40_02230D94
	.public ov40_02240910
	.public ov40_02241054
	.public ov40_02241114
	.public ov40_02241144
	.public ov40_02241A34
	.public ov40_022421FC
	.public ov40_02242378

	.text

	thumb_func_start ov40_02241144
ov40_02241144: ; 0x02241144
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r5, [r4, r0]
	bl sub_020307F8
	mov r1, #4
	mov r2, #0
	bl sub_0203088C
	add r3, r0, #0
	add r2, r1, #0
	add r0, r4, #0
	add r1, r3, #0
	bl ov40_02230D94
	cmp r0, #0
	bne _0224116C
	b _022413CA
_0224116C:
	ldr r0, [r4, #8]
	cmp r0, #5
	bls _02241174
	b _02241316
_02241174:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02241180: ; jump table
	.short _0224118C - _02241180 - 2 ; case 0
	.short _022411DA - _02241180 - 2 ; case 1
	.short _02241240 - _02241180 - 2 ; case 2
	.short _02241250 - _02241180 - 2 ; case 3
	.short _02241288 - _02241180 - 2 ; case 4
	.short _022412C8 - _02241180 - 2 ; case 5
_0224118C:
	add r0, r4, #0
	mov r1, #1
	bl ov40_02230964
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _022411AA
	sub r0, #0xc0
	add r0, r5, r0
	add r1, r4, #0
	bl ov40_0223064C
	b _022411B4
_022411AA:
	add r5, #0x80
	add r0, r5, #0
	add r1, r4, #0
	bl ov40_0222E7B8
_022411B4:
	add r0, r4, #0
	mov r1, #0
	bl ov40_02230964
	add r0, r4, #0
	bl ov40_02241A34
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022413DC
_022411DA:
	add r0, r5, #0
	add r0, #8
	mov r1, #1
	bl ov40_0222DA84
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #1
	mov r3, #0
	bl ov40_0222DA00
	cmp r0, #0
	beq _02241226
	add r0, r4, #0
	mov r1, #1
	bl ov40_02230964
	add r0, r4, #0
	bl ov40_022421FC
	add r0, r4, #0
	bl ov40_02241054
	add r0, r4, #0
	mov r1, #0
	bl ov40_02230964
	ldr r0, [r4, #0x24]
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r4, #0x24]
	mov r1, #7
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_02241226:
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
	b _022413DC
_02241240:
	ldr r1, _022413E0 ; =0x00000115
	add r0, r4, #0
	bl ov40_0222DED0
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022413DC
_02241250:
	bl System_GetTouchNew
	cmp r0, #0
	bne _0224125A
	b _022413DC
_0224125A:
	add r0, r4, #0
	bl ov40_0222DFB0
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
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022413DC
_02241288:
	add r0, r5, #0
	add r0, #8
	mov r1, #1
	bl ov40_0222DA84
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #1
	mov r3, #0
	bl ov40_0222DA00
	cmp r0, #0
	beq _022412AE
	add r0, r4, #0
	bl ov40_02241114
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_022412AE:
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
	b _022413DC
_022412C8:
	ldr r0, _022413E4 ; =0x00000608
	ldr r0, [r5, r0]
	bl TouchHitboxController_Destroy
	ldr r0, _022413E8 ; =0x0000060C
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
	add r0, r4, #0
	mov r1, #1
	bl ov40_0222FB90
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022413DC
_02241316:
	add r0, r4, #0
	bl ov40_0222FBB4
	cmp r0, #0
	beq _022413DC
	add r0, r5, #0
	add r0, #8
	mov r1, #0
	bl ov40_0222DA84
	cmp r0, #0
	beq _02241398
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
	bne _022413DC
	bl sub_0202FC24
	b _022413DC
_02241398:
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
	b _022413DC
_022413CA:
	add r0, r4, #0
	bl ov40_02242378
	cmp r0, #0
	beq _022413DC
	add r0, r4, #0
	mov r1, #0xd
	bl ov40_0222BF80
_022413DC:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_022413E0: .word 0x00000115
_022413E4: .word 0x00000608
_022413E8: .word 0x0000060C
	thumb_func_end ov40_02241144

