	.include "asm/macros.inc"
	.include "overlay_18_021F0918.inc"
	.include "global.inc"
	.public ov18_021F1A30
	.public ov18_021F1A7C
	.public ov18_021F1BC8
	.public ov18_021F1CAC
	.public ov18_021F1CB4
	.extern ov18_021E5900
	.extern ov18_021E5908
	.extern ov18_021FA328
	.extern ov18_021FABC0
	.extern ov18_021FABF4

	.extern ov18_021E5900
	.extern ov18_021E5904
	.extern ov18_021E5908
	.extern ov18_021E590C
	.extern ov18_021E595C
	.extern ov18_021E59A8
	.extern ov18_021E613C
	.extern ov18_021E6D10
	.extern ov18_021E7698
	.extern ov18_021E8AB0
	.extern ov18_021E8ACC
	.extern ov18_021E8AE0
	.extern ov18_021E8B0C
	.extern ov18_021E8B18
	.extern ov18_021E8B24
	.extern ov18_021E8B5C

    .text

	.text
	thumb_func_start ov18_021F1A30
ov18_021F1A30: ; 0x021F1A30
	push {r3, r4, r5, lr}
	lsl r4, r1, #2
	ldr r1, _021F1A6C ; =0x00000668
	add r5, r0, #0
	ldr r0, [r5, r1]
	add r1, r1, #4
	mov r3, #2
	ldr r1, [r5, r1]
	ldr r2, _021F1A70 ; =ov18_021FABC0
	lsl r3, r3, #0x14
	bl SpriteSystem_NewSpriteWithYOffset
	mov r1, #0x67
	mov r3, #2
	add r2, r5, r4
	lsl r1, r1, #4
	str r0, [r2, r1]
	add r0, r1, #0
	sub r0, #8
	sub r1, r1, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, _021F1A74 ; =ov18_021FABF4
	lsl r3, r3, #0x14
	bl SpriteSystem_NewSpriteWithYOffset
	ldr r1, _021F1A78 ; =0x00000674
	add r2, r5, r4
	str r0, [r2, r1]
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F1A6C: .word 0x00000668
_021F1A70: .word ov18_021FABC0
_021F1A74: .word ov18_021FABF4
_021F1A78: .word 0x00000674
	thumb_func_end ov18_021F1A30

	thumb_func_start ov18_021F1A7C
ov18_021F1A7C: ; 0x021F1A7C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	ldr r3, _021F1BC0 ; =ov18_021FA328
	add r2, sp, #0x20
	add r5, r0, #0
	add r4, r1, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r1, #0x32
	mov r0, #0x25
	lsl r1, r1, #6
	bl Heap_AllocAtEnd
	add r7, r0, #0
	mov r0, #0
	add r1, sp, #0x30
	mov r2, #0x10
	bl MIi_CpuClearFast
	ldr r0, _021F1BC4 ; =0x00000147
	cmp r4, r0
	bne _021F1AC6
	add r0, sp, #0x48
	ldrb r0, [r0, #0x10]
	cmp r0, #2
	bne _021F1AC6
	ldr r0, [r5]
	mov r1, #0
	ldr r0, [r0]
	bl Pokedex_GetSeenSpindaPersonality
	add r6, r0, #0
	b _021F1AC8
_021F1AC6:
	mov r6, #0
_021F1AC8:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x14]
	add r3, sp, #0x48
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldrb r3, [r3, #0x10]
	ldr r2, [sp, #0x18]
	add r0, sp, #0x30
	add r1, r4, #0
	bl GetMonSpriteCharAndPlttNarcIdsEx
	str r7, [sp]
	str r6, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, sp, #0x48
	ldrb r0, [r0, #0x10]
	add r1, sp, #0x20
	mov r2, #0x25
	str r0, [sp, #0xc]
	str r4, [sp, #0x10]
	ldrh r0, [r1, #0x10]
	ldrh r1, [r1, #0x12]
	add r3, sp, #0x20
	bl sub_02014510
	mov r0, #0x67
	lsl r0, r0, #4
	add r4, r5, r0
	ldr r0, [sp, #0x5c]
	lsl r6, r0, #2
	ldr r0, [r4, r6]
	ldr r0, [r0]
	bl Sprite_GetImageProxy
	mov r1, #2
	bl NNS_G2dGetImageLocation
	mov r1, #0x32
	str r0, [sp, #0x1c]
	add r0, r7, #0
	lsl r1, r1, #6
	bl DC_FlushRange
	mov r2, #0x32
	ldr r1, [sp, #0x1c]
	add r0, r7, #0
	lsl r2, r2, #6
	bl GXS_LoadOBJ
	ldr r0, [r4, r6]
	ldr r0, [r0]
	bl Sprite_GetPaletteProxy
	mov r1, #2
	bl NNS_G2dGetImagePaletteLocation
	add r4, r0, #0
	ldr r0, [sp, #0x60]
	cmp r0, #0
	bne _021F1B6E
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x25
	str r0, [sp, #4]
	add r1, sp, #0x20
	ldrh r0, [r1, #0x10]
	ldrh r1, [r1, #0x14]
	mov r2, #5
	add r3, r4, #0
	bl GfGfxLoader_GXLoadPal
	mov r0, #0x85
	lsl r0, r0, #4
	lsl r2, r4, #0xf
	ldr r0, [r5, r0]
	mov r1, #3
	lsr r2, r2, #0x10
	mov r3, #0x20
	bl PaletteData_LoadPaletteSlotFromHardware
	b _021F1BB4
_021F1B6E:
	cmp r0, #1
	bne _021F1B94
	mov r0, #3
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	lsl r0, r4, #0xf
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #0x85
	add r2, sp, #0x20
	lsl r0, r0, #4
	ldrh r1, [r2, #0x10]
	ldrh r2, [r2, #0x14]
	ldr r0, [r5, r0]
	mov r3, #0x25
	bl PaletteData_LoadNarc
	b _021F1BB4
_021F1B94:
	lsr r1, r4, #1
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	add r1, #0x10
	str r0, [sp]
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x85
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #3
	mov r2, #2
	mov r3, #0
	bl PaletteData_FillPaletteInBuffer
_021F1BB4:
	add r0, r7, #0
	bl Heap_Free
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F1BC0: .word ov18_021FA328
_021F1BC4: .word 0x00000147
	thumb_func_end ov18_021F1A7C

	thumb_func_start ov18_021F1BC8
ov18_021F1BC8: ; 0x021F1BC8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _021F1CA8 ; =0x0000185F
	add r4, r2, #0
	ldrb r0, [r5, r0]
	add r6, r1, #0
	add r7, r3, #0
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	add r0, r4, r0
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x67
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r3, _021F1CA8 ; =0x0000185F
	mov r1, #0xf
	ldrb r2, [r5, r3]
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x1c
	lsr r2, r1, #0x1c
	mov r1, #1
	eor r1, r2
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	mov r1, #0xf
	and r1, r2
	orr r0, r1
	strb r0, [r5, r3]
	ldrb r0, [r5, r3]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	add r4, r4, r0
	cmp r6, #0
	bne _021F1C3C
	lsl r0, r7, #2
	add r1, r5, r0
	mov r0, #0x67
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0x67
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021F1C3C:
	lsl r0, r7, #2
	add r1, r5, r0
	mov r0, #0x67
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0x67
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r5]
	add r1, r6, #0
	ldr r0, [r0]
	mov r2, #0
	bl Pokedex_SpeciesGetLastSeenGender
	add r7, r0, #0
	ldr r0, [r5]
	add r1, r6, #0
	ldr r0, [r0]
	mov r2, #0
	bl Pokedex_GetSeenFormByIdx
	add r2, r0, #0
	cmp r6, #0xac
	bne _021F1C88
	cmp r2, #2
	bne _021F1C86
	mov r2, #1
	add r7, r2, #0
	b _021F1C88
_021F1C86:
	mov r2, #0
_021F1C88:
	mov r0, #2
	str r0, [sp]
	lsl r2, r2, #0x18
	lsl r3, r7, #0x18
	str r4, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r6, #0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl ov18_021F1A7C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021F1CA8: .word 0x0000185F
	thumb_func_end ov18_021F1BC8

	thumb_func_start ov18_021F1CAC
ov18_021F1CAC: ; 0x021F1CAC
	push {r3, lr}
	bl ov18_021F1BC8
	pop {r3, pc}
	thumb_func_end ov18_021F1CAC

	thumb_func_start ov18_021F1CB4
ov18_021F1CB4: ; 0x021F1CB4
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	bl ov18_021E5900
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _021F1D44 ; =0x0000C599
	ldr r1, _021F1D48 ; =0x00000668
	str r0, [sp, #8]
	ldr r2, _021F1D4C ; =0x00000854
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	mov r3, #0x4d
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	bl ov18_021E5908
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _021F1D50 ; =0x0000C55B
	ldr r3, _021F1D48 ; =0x00000668
	str r0, [sp, #0x14]
	mov r0, #0x85
	lsl r0, r0, #4
	ldr r2, [r5, r3]
	add r3, r3, #4
	ldr r0, [r5, r0]
	ldr r3, [r5, r3]
	mov r1, #3
	bl SpriteSystem_LoadPaletteBuffer
	mov r0, #1
	str r0, [sp]
	ldr r0, _021F1D54 ; =0x0000C558
	ldr r1, _021F1D48 ; =0x00000668
	str r0, [sp, #4]
	ldr r2, _021F1D4C ; =0x00000854
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	mov r3, #0x4e
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	ldr r0, _021F1D54 ; =0x0000C558
	ldr r1, _021F1D48 ; =0x00000668
	str r0, [sp, #4]
	ldr r2, _021F1D4C ; =0x00000854
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	mov r3, #0x4f
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_021F1D44: .word 0x0000C599
_021F1D48: .word 0x00000668
_021F1D4C: .word 0x00000854
_021F1D50: .word 0x0000C55B
_021F1D54: .word 0x0000C558
	thumb_func_end ov18_021F1CB4

