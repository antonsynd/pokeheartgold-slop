	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_0224B6F0
	.public ov71_0224B720
	.public ov71_0224B7EC
	.public ov71_0224B848
	.extern ov71_022472C4
	.extern ov71_02247320
	.extern ov71_02247340
	.extern ov71_02247398
	.extern ov71_022473BC

	.text

	.text
	thumb_func_start ov71_0224B6F0
ov71_0224B6F0: ; 0x0224B6F0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	cmp r0, #0
	beq _0224B702
	bl IsFanfarePlaying
	str r0, [r5, #0xc]
_0224B702:
	ldr r0, [r5, #8]
	cmp r0, r4
	bge _0224B710
	add r0, r0, #1
	str r0, [r5, #8]
	mov r0, #0
	pop {r3, r4, r5, pc}
_0224B710:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _0224B71A
	mov r0, #1
	pop {r3, r4, r5, pc}
_0224B71A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov71_0224B6F0

	thumb_func_start ov71_0224B720
ov71_0224B720: ; 0x0224B720
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl NNS_G3dInit
	bl G3X_InitMtxStack
	ldr r0, _0224B7C8 ; =0x04000060
	ldr r2, _0224B7CC ; =0xFFFFCFFD
	ldrh r1, [r0]
	and r1, r2
	strh r1, [r0]
	ldrh r3, [r0]
	add r1, r2, #2
	and r3, r1
	mov r1, #0x10
	orr r1, r3
	strh r1, [r0]
	ldrh r3, [r0]
	ldr r1, _0224B7D0 ; =0x0000CFFB
	and r1, r3
	strh r1, [r0]
	add r1, r2, #2
	ldrh r3, [r0]
	lsr r2, r2, #0x11
	and r3, r1
	mov r1, #8
	orr r1, r3
	strh r1, [r0]
	mov r0, #0
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl G3X_SetClearColor
	ldr r1, _0224B7D4 ; =0x04000540
	mov r0, #2
	str r0, [r1]
	ldr r0, _0224B7D8 ; =0xBFFF0000
	str r0, [r1, #0x40]
	mov r0, #1
	add r1, r0, #0
	bl GF_3DVramMan_InitFrameTexVramManager
	mov r0, #1
	lsl r0, r0, #0xe
	mov r1, #1
	bl GF_3DVramMan_InitFramePlttVramManager
	ldr r3, _0224B7DC ; =NNS_GfdDefaultFuncAllocTexVram
	mov r0, #1
	mov r1, #0
	ldr r3, [r3]
	lsl r0, r0, #0xe
	add r2, r1, #0
	blx r3
	ldr r3, _0224B7E0 ; =NNS_GfdDefaultFuncAllocPlttVram
	add r4, r0, #0
	ldr r3, [r3]
	mov r0, #0x80
	mov r1, #0
	mov r2, #1
	blx r3
	ldr r2, _0224B7E4 ; =0x7FFF0000
	add r6, r0, #0
	and r2, r4
	lsl r1, r4, #0x10
	lsr r2, r2, #0x10
	ldr r0, [r5, #0x10]
	lsr r1, r1, #0xd
	lsl r2, r2, #4
	bl PokepicManager_SetCharBaseAddrAndSize
	ldr r2, _0224B7E8 ; =0xFFFF0000
	lsl r1, r6, #0x10
	and r2, r6
	lsr r2, r2, #0x10
	ldr r0, [r5, #0x10]
	lsr r1, r1, #0xd
	lsl r2, r2, #3
	bl PokepicManager_SetPlttBaseAddrAndSize
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_0224B7C8: .word 0x04000060
_0224B7CC: .word 0xFFFFCFFD
_0224B7D0: .word 0x0000CFFB
_0224B7D4: .word 0x04000540
_0224B7D8: .word 0xBFFF0000
_0224B7DC: .word NNS_GfdDefaultFuncAllocTexVram
_0224B7E0: .word NNS_GfdDefaultFuncAllocPlttVram
_0224B7E4: .word 0x7FFF0000
_0224B7E8: .word 0xFFFF0000
	thumb_func_end ov71_0224B720

	thumb_func_start ov71_0224B7EC
ov71_0224B7EC: ; 0x0224B7EC
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r0, [r5]
	bl ov71_02247398
	add r4, r0, #0
	add r0, sp, #0x10
	add r1, r4, #0
	mov r2, #2
	mov r3, #0
	bl GetBoxmonSpriteCharAndPlttNarcIds
	ldr r0, [r5]
	bl ov71_022473BC
	add r2, r0, #0
	add r0, r5, #0
	add r0, #0x84
	add r1, r5, #0
	ldr r0, [r0]
	add r1, #0x18
	mov r3, #1
	bl NARC_ReadPokepicAnimScript
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	bl sub_02070854
	add r3, r0, #0
	mov r1, #0
	str r1, [sp]
	add r0, r5, #0
	str r1, [sp, #4]
	add r0, #0x18
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #0x10]
	add r3, #0x50
	add r1, sp, #0x10
	mov r2, #0x80
	bl PokepicManager_CreatePokepic
	add sp, #0x20
	pop {r3, r4, r5, pc}
	thumb_func_end ov71_0224B7EC

	thumb_func_start ov71_0224B848
ov71_0224B848: ; 0x0224B848
	push {r4, lr}
	sub sp, #0x70
	add r4, r0, #0
	add r0, #0x48
	mov r1, #0x59
	mov r2, #7
	mov r3, #8
	bl ov71_022472C4
	add r0, sp, #0x5c
	bl NNS_G2dInitImagePaletteProxy
	add r0, sp, #0x38
	bl NNS_G2dInitImageProxy
	mov r3, #0
	str r3, [sp]
	mov r2, #1
	str r2, [sp, #4]
	str r3, [sp, #8]
	mov r0, #0x39
	str r0, [sp, #0xc]
	add r0, sp, #0x38
	str r0, [sp, #0x10]
	mov r0, #0x59
	mov r1, #9
	bl GfGfxLoader_LoadImageMapping
	mov r0, #0x39
	str r0, [sp]
	add r0, sp, #0x5c
	str r0, [sp, #4]
	mov r0, #0x59
	mov r1, #0xa
	mov r2, #1
	mov r3, #0
	bl GfGfxLoader_PartiallyLoadPalette
	mov r0, #2
	add r1, r4, #0
	str r0, [sp]
	add r0, sp, #0x14
	add r1, #0x48
	add r2, sp, #0x38
	add r3, sp, #0x5c
	bl ov71_02247320
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	add r1, sp, #0x14
	mov r2, #0x80
	mov r3, #0x64
	bl ov71_02247340
	str r0, [r4, #0x40]
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	add r1, sp, #0x14
	mov r2, #0x80
	mov r3, #0x5a
	bl ov71_02247340
	str r0, [r4, #0x44]
	mov r1, #1
	bl Sprite_SetPriority
	ldr r0, [r4, #0x40]
	mov r1, #0
	bl Sprite_SetDrawFlag
	ldr r0, [r4, #0x44]
	mov r1, #0
	bl Sprite_SetDrawFlag
	add sp, #0x70
	pop {r4, pc}
	thumb_func_end ov71_0224B848

