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
	.public ov40_0222DFB0
	.public ov40_0222FB90
	.public ov40_0222FBB4
	.public ov40_02230964
	.public ov40_0223E024
	.public ov40_0223E064
	.public ov40_0223E33C
	.public ov40_0223E494
	.public ov40_022421FC

	.text

	thumb_func_start ov40_0223E33C
ov40_0223E33C: ; 0x0223E33C
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223E356
	cmp r1, #1
	beq _0223E37E
	cmp r1, #2
	beq _0223E3B8
	b _0223E3E2
_0223E356:
	bl ov40_0223E024
	add r0, r5, #0
	bl ov40_0223E064
	add r0, r5, #0
	bl ov40_0222DFB0
	ldr r0, _0223E48C ; =0x00000608
	ldr r0, [r4, r0]
	bl TouchHitboxController_Destroy
	ldr r0, _0223E490 ; =0x0000060C
	ldr r0, [r4, r0]
	bl TouchHitboxController_Destroy
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223E486
_0223E37E:
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
	beq _0223E39E
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0223E39E:
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
	b _0223E486
_0223E3B8:
	mov r1, #1
	bl ov40_02230964
	add r0, r5, #0
	bl ov40_022421FC
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
	b _0223E486
_0223E3E2:
	bl ov40_0222FBB4
	cmp r0, #0
	beq _0223E486
	add r0, r4, #0
	add r0, #8
	mov r1, #0
	bl ov40_0222DA84
	cmp r0, #0
	beq _0223E456
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
	add r0, r4, #0
	bl Heap_Free
	b _0223E486
_0223E456:
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
_0223E486:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0223E48C: .word 0x00000608
_0223E490: .word 0x0000060C
	thumb_func_end ov40_0223E33C

	thumb_func_start ov40_0223E494
ov40_0223E494: ; 0x0223E494
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223E4AA
	cmp r1, #1
	beq _0223E4B4
	b _0223E4EE
_0223E4AA:
	bl ov40_0223E064
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0223E4B4:
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
	beq _0223E4D4
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0223E4D4:
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
	b _0223E516
_0223E4EE:
	ldr r1, _0223E51C ; =0x000004C5
	ldrb r1, [r4, r1]
	cmp r1, #0
	beq _0223E500
	cmp r1, #1
	beq _0223E508
	cmp r1, #2
	beq _0223E510
	b _0223E516
_0223E500:
	mov r1, #6
	bl ov40_0222BF80
	b _0223E516
_0223E508:
	mov r1, #7
	bl ov40_0222BF80
	b _0223E516
_0223E510:
	mov r1, #0xa
	bl ov40_0222BF80
_0223E516:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0223E51C: .word 0x000004C5
	thumb_func_end ov40_0223E494

