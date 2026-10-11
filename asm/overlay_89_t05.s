	.include "asm/macros.inc"
	.include "overlay_89.inc"
	.include "global.inc"
	.public ov89_02259264
	.public ov89_02259408

	.text

	.text
	thumb_func_start ov89_02259264
ov89_02259264: ; 0x02259264
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r5, r1, #0
	mov r1, #0
	mov r0, #7
	str r1, [sp]
	lsl r0, r0, #6
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r1, #0xd2
	mov r2, #0x13
	mov r3, #0x7d
	bl PaletteData_LoadNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x7d
	str r0, [sp, #0xc]
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #0x12
	mov r3, #2
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x7d
	str r0, [sp, #0xc]
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #0x11
	mov r3, #2
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x7d
	str r0, [sp, #0xc]
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #0x14
	mov r3, #3
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r1, #0xd2
	mov r2, #0x17
	mov r3, #0x7d
	bl PaletteData_LoadNarc
	ldr r0, [r4]
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _022592FE
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r1, #1
	ldr r0, [r4, #0xc]
	mov r2, #0x10
	add r3, r1, #0
	bl PaletteData_CopyPalette
_022592FE:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x7d
	str r0, [sp, #0xc]
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #0x16
	mov r3, #6
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x7d
	str r0, [sp, #0xc]
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #0x15
	mov r3, #6
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x7d
	str r0, [sp, #0xc]
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #0x18
	mov r3, #7
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	ldr r0, [r4, #8]
	mov r1, #6
	bl GetBgTilemapBuffer
	mov r1, #0x27
	lsl r1, r1, #6
	mov r2, #2
	add r1, r4, r1
	lsl r2, r2, #0xa
	add r5, r0, #0
	bl MIi_CpuCopy16
	mov r2, #2
	mov r0, #0
	add r1, r5, #0
	lsl r2, r2, #0xa
	bl MIi_CpuClear16
	ldr r0, [r4, #4]
	bl Save_PlayerData_GetOptionsAddr
	bl Options_GetFrame
	add r5, r0, #0
	bl sub_0200E640
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xe0
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r1, #0x26
	mov r3, #0x7d
	bl PaletteData_LoadNarc
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x7d
	str r0, [sp, #4]
	mov r1, #1
	ldr r0, [r4, #8]
	add r2, r1, #0
	mov r3, #0xe
	bl LoadUserFrameGfx2
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xd0
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r1, #0x10
	mov r2, #7
	mov r3, #0x7d
	bl PaletteData_LoadNarc
	ldr r0, [r4]
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _022593E2
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xd0
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r1, #0x10
	mov r2, #7
	mov r3, #0x7d
	bl PaletteData_LoadNarc
	b _022593FA
_022593E2:
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xd0
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r1, #0xd2
	mov r2, #0x19
	mov r3, #0x7d
	bl PaletteData_LoadNarc
_022593FA:
	ldr r0, [r4, #8]
	mov r1, #6
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov89_02259264

	thumb_func_start ov89_02259408
ov89_02259408: ; 0x02259408
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r1, #0
	str r6, [sp]
	mov r1, #3
	add r5, r0, #0
	str r1, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _0225956C ; =0x00002711
	mov r1, #2
	str r0, [sp, #0x14]
	ldr r0, [r5, #0xc]
	ldr r2, [r5, #0x1c]
	ldr r3, [r5, #0x20]
	bl SpriteSystem_LoadPaletteBufferFromOpenNarc
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02259570 ; =0x00002717
	add r2, r6, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	mov r3, #4
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	ldr r0, _02259574 ; =0x00002712
	add r2, r6, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	mov r3, #5
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	ldr r0, _02259574 ; =0x00002712
	add r2, r6, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	mov r3, #6
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	mov r4, #0
	add r7, r4, #0
_02259474:
	str r7, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0225956C ; =0x00002711
	add r2, r6, #0
	add r0, r4, r0
	str r0, [sp, #8]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	mov r3, #0x10
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	add r4, r4, #1
	cmp r4, #6
	blt _02259474
	mov r0, #0
	str r0, [sp]
	ldr r0, _0225956C ; =0x00002711
	add r2, r6, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	mov r3, #0xf
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	ldr r0, _0225956C ; =0x00002711
	add r2, r6, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	mov r3, #0xe
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	str r6, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _02259574 ; =0x00002712
	mov r1, #2
	str r0, [sp, #0x14]
	ldr r0, [r5, #0xc]
	ldr r2, [r5, #0x1c]
	ldr r3, [r5, #0x20]
	bl SpriteSystem_LoadPaletteBufferFromOpenNarc
	ldr r1, [r5]
	ldrb r1, [r1, #4]
	cmp r1, #0
	bne _022594E6
	mov r3, #0
	b _022594E8
_022594E6:
	ldr r3, _02259578 ; =0x00007FFF
_022594E8:
	lsl r1, r0, #4
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	add r1, #0x10
	str r0, [sp]
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	mov r1, #2
	ldr r0, [r5, #0xc]
	add r2, r1, #0
	bl PaletteData_FillPaletteInBuffer
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0225957C ; =0x00002718
	add r2, r6, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	mov r3, #2
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	ldr r0, _02259580 ; =0x00002713
	add r2, r6, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	mov r3, #1
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r3, #0
	ldr r0, _02259580 ; =0x00002713
	str r3, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0x20]
	add r2, r6, #0
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	mov r0, #0xd2
	str r0, [sp]
	mov r0, #0x1a
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _02259580 ; =0x00002713
	mov r1, #2
	str r0, [sp, #0x14]
	ldr r0, [r5, #0xc]
	ldr r2, [r5, #0x1c]
	ldr r3, [r5, #0x20]
	bl SpriteSystem_LoadPaletteBuffer
	ldr r1, _02259584 ; =0x00000921
	strb r0, [r5, r1]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225956C: .word 0x00002711
_02259570: .word 0x00002717
_02259574: .word 0x00002712
_02259578: .word 0x00007FFF
_0225957C: .word 0x00002718
_02259580: .word 0x00002713
_02259584: .word 0x00000921
	thumb_func_end ov89_02259408

