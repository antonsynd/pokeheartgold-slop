	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0221FB90
	.extern ov07_02234BD8

	.text

	.text
	thumb_func_start ov07_0221FB90
ov07_0221FB90: ; 0x0221FB90
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x98
	ldr r3, _0221FDF0 ; =ov07_02234BD8
	add r5, r2, #0
	add r2, sp, #0x80
	add r7, r0, #0
	str r1, [sp, #0x18]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [sp, #0x18]
	mov r1, #0x58
	bl Heap_Alloc
	add r4, r0, #0
	ldr r0, [sp, #0x18]
	str r0, [r4]
	str r5, [r4, #4]
	add r0, r7, #0
	bl BattleSystem_GetSpriteSystem
	str r0, [r4, #8]
	add r0, r7, #0
	bl BattleSystem_GetSpriteManager
	str r0, [r4, #0xc]
	add r0, r7, #0
	bl BattleSystem_GetPaletteData
	str r0, [r4, #0x10]
	mov r6, #0
	add r5, r4, #0
_0221FBD6:
	mov r0, #0
	str r0, [r5, #0x24]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_0223BB88
	str r0, [r5, #0x34]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #4
	blt _0221FBD6
	add r1, r4, #0
	add r0, r7, #0
	add r1, #0x44
	bl ov12_0223C1C4
	add r1, r4, #0
	add r0, r7, #0
	add r1, #0x48
	bl ov12_0223C1F4
	ldr r1, [sp, #0x18]
	mov r0, #8
	bl NARC_New
	add r6, r0, #0
	mov r7, #0
	str r4, [sp, #0x1c]
_0221FC0E:
	ldr r0, [r4, #4]
	cmp r7, r0
	beq _0221FC18
	cmp r0, #0xff
	bne _0221FC82
_0221FC18:
	ldr r1, [sp, #0x1c]
	ldr r1, [r1, #0x48]
	cmp r1, #0
	beq _0221FC82
	ldr r1, _0221FDF4 ; =0x0000D903
	mov r3, #0x4c
	add r2, r7, r1
	ldr r1, _0221FDF8 ; =0x00001388
	mul r1, r0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	add r5, r2, r1
	str r0, [sp, #4]
	str r5, [sp, #8]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	add r2, r6, #0
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	str r6, [sp]
	mov r0, #0x4b
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r5, [sp, #0x14]
	ldr r0, [r4, #0x10]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	mov r1, #2
	bl SpriteSystem_LoadPaletteBufferFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r5, [sp, #4]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	add r2, r6, #0
	mov r3, #0x4d
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r5, [sp, #4]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	add r2, r6, #0
	mov r3, #0x4e
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
_0221FC82:
	ldr r0, [sp, #0x1c]
	add r7, r7, #1
	add r0, r0, #4
	str r0, [sp, #0x1c]
	cmp r7, #4
	blt _0221FC0E
	add r0, r6, #0
	bl NARC_Delete
	mov r0, #0
	str r0, [sp, #0x2c]
	add r7, r4, #0
_0221FC9A:
	ldr r1, [r4, #4]
	ldr r0, [sp, #0x2c]
	cmp r0, r1
	beq _0221FCA8
	cmp r1, #0xff
	beq _0221FCA8
	b _0221FDDC
_0221FCA8:
	ldr r2, _0221FDF4 ; =0x0000D903
	ldr r0, [sp, #0x2c]
	add r3, r1, #0
	add r0, r0, r2
	ldr r2, _0221FDF8 ; =0x00001388
	mul r3, r2
	add r1, r0, r3
	str r1, [r7, #0x14]
	ldr r1, [r4, #4]
	add r3, r1, #0
	mul r3, r2
	add r1, r0, r3
	str r1, [sp, #0x68]
	ldr r1, [r4, #4]
	add r3, r1, #0
	mul r3, r2
	add r1, r0, r3
	str r1, [sp, #0x6c]
	ldr r1, [r4, #4]
	add r3, r1, #0
	mul r3, r2
	add r1, r0, r3
	str r1, [sp, #0x70]
	ldr r1, [r4, #4]
	mul r2, r1
	mov r1, #0
	add r0, r0, r2
	str r0, [sp, #0x74]
	str r1, [sp, #0x78]
	str r1, [sp, #0x7c]
	ldr r2, [r7, #0x34]
	ldr r5, [r7, #0x48]
	ldr r0, [r2, #4]
	cmp r5, #0
	str r0, [sp, #0x28]
	ldr r0, [r2, #8]
	str r0, [sp, #0x24]
	ldr r0, [r2]
	str r0, [sp, #0x20]
	beq _0221FDDC
	add r0, r5, #0
	bl Pokepic_GetAttr
	str r0, [sp, #0x30]
	add r0, r5, #0
	mov r1, #1
	bl Pokepic_GetAttr
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	add r0, r5, #0
	mov r1, #0x29
	bl Pokepic_GetAttr
	sub r2, r6, r0
	ldr r0, [sp, #0x30]
	add r1, sp, #0x34
	strh r0, [r1]
	strh r2, [r1, #2]
	mov r0, #0
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	ldr r1, [sp, #0x2c]
	add r3, sp, #0x34
	add r1, r4, r1
	add r1, #0x44
	ldrb r1, [r1]
	lsl r2, r1, #2
	add r1, sp, #0x80
	ldr r1, [r1, r2]
	str r0, [sp, #0x40]
	str r1, [sp, #0x3c]
	mov r1, #1
	str r1, [sp, #0x44]
	str r1, [sp, #0x60]
	str r0, [sp, #0x64]
	add r2, sp, #0x68
_0221FD42:
	ldr r1, [r2]
	add r0, r0, #1
	str r1, [r3, #0x14]
	add r2, r2, #4
	add r3, r3, #4
	cmp r0, #6
	blt _0221FD42
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	add r2, sp, #0x34
	bl SpriteSystem_NewSprite
	add r6, r0, #0
	bl ManagedSprite_TickFrame
	str r6, [r7, #0x24]
	cmp r5, #0
	bne _0221FD70
	add r0, r6, #0
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	b _0221FD98
_0221FD70:
	add r0, r5, #0
	bl Pokepic_IsActive
	cmp r0, #0
	bne _0221FD84
	add r0, r6, #0
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	b _0221FD98
_0221FD84:
	add r0, r5, #0
	mov r1, #6
	bl Pokepic_GetAttr
	cmp r0, #1
	bne _0221FD98
	add r0, r6, #0
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
_0221FD98:
	cmp r5, #0
	beq _0221FDB2
	ldr r0, [r6]
	bl Sprite_GetImageProxy
	add r1, r0, #0
	mov r3, #0x32
	ldr r1, [r1, #4]
	ldr r2, [sp, #0x20]
	mov r0, #0x13
	lsl r3, r3, #6
	bl GF_CreateNewVramTransferTask
_0221FDB2:
	cmp r5, #0
	beq _0221FDDC
	ldr r0, [r6]
	bl Sprite_GetPaletteProxy
	mov r1, #1
	bl ObjPlttTransfer_GetPaletteVramOffset
	mov r1, #2
	str r1, [sp]
	mov r1, #0x20
	lsl r0, r0, #0x14
	str r1, [sp, #4]
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x24]
	ldr r3, [r4]
	bl PaletteData_LoadNarc
_0221FDDC:
	ldr r0, [sp, #0x2c]
	add r7, r7, #4
	add r0, r0, #1
	str r0, [sp, #0x2c]
	cmp r0, #4
	bge _0221FDEA
	b _0221FC9A
_0221FDEA:
	add r0, r4, #0
	add sp, #0x98
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0221FDF0: .word ov07_02234BD8
_0221FDF4: .word 0x0000D903
_0221FDF8: .word 0x00001388
	thumb_func_end ov07_0221FB90

