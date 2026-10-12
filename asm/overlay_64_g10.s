	.include "asm/macros.inc"
	.include "overlay_64.inc"
	.include "global.inc"
	.public ov64_021E5CD0
	.extern ov64_021E6EB8
	.extern ov64_021E6EE4
	.extern ov64_021E6F8C
	.extern ov64_021E70C8
	.extern ov64_021E70FC
	.extern ov64_021E73A0
	.extern ov64_021E73D4
	.extern ov64_021E7408
	.extern ov64_021E743C

	.text

	.text
	thumb_func_start ov64_021E5CD0
ov64_021E5CD0: ; 0x021E5CD0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	add r5, r0, #0
	mov r0, #0x3b
	bl SpriteSystem_Alloc
	mov r1, #0x13
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	bl SpriteManager_New
	mov r7, #0x4d
	lsl r7, r7, #2
	add r2, sp, #0x3c
	ldr r3, _021E5FD4 ; =ov64_021E6F8C
	str r0, [r5, r7]
	ldmia r3!, {r0, r1}
	add r6, r2, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	ldr r4, _021E5FD8 ; =ov64_021E6EB8
	stmia r2!, {r0, r1}
	add r3, sp, #0x28
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	add r1, r6, #0
	str r0, [r3]
	sub r0, r7, #4
	ldr r0, [r5, r0]
	mov r3, #0x20
	bl SpriteSystem_Init
	ldr r3, _021E5FDC ; =ov64_021E6EE4
	add r2, sp, #0x10
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r1, r7, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	mov r2, #0x12
	bl SpriteSystem_InitSprites
	sub r1, r7, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, sp, #0x10
	bl SpriteSystem_InitManagerWithCapacities
	sub r0, r7, #4
	ldr r0, [r5, r0]
	bl SpriteSystem_GetRenderer
	mov r2, #2
	mov r1, #0
	lsl r2, r2, #0x14
	bl G2dRenderer_SetSubSurfaceCoords
	mov r0, #8
	mov r1, #0x3b
	bl NARC_New
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _021E5FE0 ; =0x0000DCC0
	sub r1, r7, #4
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	mov r3, #0x4c
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _021E5FE4 ; =0x0000DCC1
	sub r1, r7, #4
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	mov r3, #0x4c
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r0, _021E5FE0 ; =0x0000DCC0
	sub r1, r7, #4
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	mov r3, #0x4b
	bl SpriteSystem_LoadPlttResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r0, _021E5FE4 ; =0x0000DCC1
	sub r1, r7, #4
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	mov r3, #0x4b
	bl SpriteSystem_LoadPlttResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	ldr r0, _021E5FE0 ; =0x0000DCC0
	sub r1, r7, #4
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	mov r3, #0x4d
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	ldr r0, _021E5FE0 ; =0x0000DCC0
	sub r1, r7, #4
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	mov r3, #0x4e
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	add r0, r4, #0
	bl NARC_Delete
	mov r0, #0x61
	mov r1, #0x3b
	bl NARC_New
	add r6, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021E5FE8 ; =0x0000DCCE
	sub r1, r7, #4
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r6, #0
	mov r3, #6
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	ldr r0, _021E5FEC ; =0x0000DCC3
	sub r1, r7, #4
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r6, #0
	mov r3, #7
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	ldr r0, _021E5FEC ; =0x0000DCC3
	sub r1, r7, #4
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r6, #0
	mov r3, #8
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, _021E5FE8 ; =0x0000DCCE
	sub r1, r7, #4
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r6, #0
	mov r3, #9
	bl SpriteSystem_LoadPlttResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	ldr r0, _021E5FE4 ; =0x0000DCC1
	sub r1, r7, #4
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r6, #0
	mov r3, #0xb
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	ldr r0, _021E5FE4 ; =0x0000DCC1
	sub r1, r7, #4
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r6, #0
	mov r3, #0xc
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	ldr r0, _021E5FF0 ; =0x0000DCC2
	sub r1, r7, #4
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r6, #0
	mov r3, #0xe
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	ldr r0, _021E5FF0 ; =0x0000DCC2
	sub r1, r7, #4
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r6, #0
	mov r3, #0xf
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	ldr r4, _021E5FF0 ; =0x0000DCC2
	mov r7, #0
_021E5EF0:
	str r7, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x13
	mov r1, #0x4d
	str r4, [sp, #0xc]
	lsl r0, r0, #4
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r6, #0
	mov r3, #0x10
	bl SpriteSystem_LoadPlttResObjFromOpenNarc
	ldr r0, _021E5FF4 ; =0x0000DCCD
	add r4, r4, #1
	cmp r4, r0
	bls _021E5EF0
	add r0, r6, #0
	bl NARC_Delete
	mov r1, #0x13
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	mov r3, #2
	ldr r1, [r5, r1]
	ldr r2, _021E5FF8 ; =ov64_021E70C8
	lsl r3, r3, #0x14
	bl SpriteSystem_NewSpriteWithYOffset
	mov r1, #0x4e
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #8
	sub r1, r1, #4
	mov r3, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, _021E5FFC ; =ov64_021E70FC
	lsl r3, r3, #0x14
	bl SpriteSystem_NewSpriteWithYOffset
	mov r1, #0x4f
	lsl r1, r1, #2
	str r0, [r5, r1]
	sub r0, r1, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	mov r1, #0x13
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	ldr r2, _021E6000 ; =ov64_021E73A0
	bl SpriteSystem_NewSprite
	mov r1, #0x17
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #0x40
	sub r1, #0x3c
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, _021E6004 ; =ov64_021E73D4
	bl SpriteSystem_NewSprite
	mov r1, #0x5d
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #0x44
	sub r1, #0x40
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, _021E6008 ; =ov64_021E7408
	bl SpriteSystem_NewSprite
	mov r1, #0x5e
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #0x48
	sub r1, #0x44
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, _021E600C ; =ov64_021E743C
	bl SpriteSystem_NewSprite
	mov r1, #0x5f
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	nop
_021E5FD4: .word ov64_021E6F8C
_021E5FD8: .word ov64_021E6EB8
_021E5FDC: .word ov64_021E6EE4
_021E5FE0: .word 0x0000DCC0
_021E5FE4: .word 0x0000DCC1
_021E5FE8: .word 0x0000DCCE
_021E5FEC: .word 0x0000DCC3
_021E5FF0: .word 0x0000DCC2
_021E5FF4: .word 0x0000DCCD
_021E5FF8: .word ov64_021E70C8
_021E5FFC: .word ov64_021E70FC
_021E6000: .word ov64_021E73A0
_021E6004: .word ov64_021E73D4
_021E6008: .word ov64_021E7408
_021E600C: .word ov64_021E743C
	thumb_func_end ov64_021E5CD0

