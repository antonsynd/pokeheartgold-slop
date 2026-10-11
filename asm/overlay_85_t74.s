	.include "asm/macros.inc"
	.include "overlay_85.inc"
	.include "global.inc"
	.public ov85_021E6ECC
	.public ov85_021E6F6C
	.extern ov85_021EA56C
	.extern ov85_021EA594
	.extern ov85_021EA6B8

	.text

	.text
	thumb_func_start ov85_021E6ECC
ov85_021E6ECC: ; 0x021E6ECC
	push {r3, r4, lr}
	sub sp, #0x4c
	ldr r3, _021E6F58 ; =ov85_021EA6B8
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x2c
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r3, _021E6F5C ; =ov85_021EA56C
	add r2, sp, #0x18
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	mov r0, #0x66
	bl SpriteSystem_Alloc
	ldr r1, _021E6F60 ; =0x00000D94
	add r2, sp, #0x18
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	add r1, sp, #0x2c
	mov r3, #0x20
	bl SpriteSystem_Init
	ldr r3, _021E6F64 ; =ov85_021EA594
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, _021E6F60 ; =0x00000D94
	ldr r0, [r4, r0]
	bl SpriteManager_New
	ldr r1, _021E6F68 ; =0x00000D98
	mov r2, #0xff
	str r0, [r4, r1]
	sub r0, r1, #4
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	bl SpriteSystem_InitSprites
	cmp r0, #0
	bne _021E6F3C
	bl GF_AssertFail
_021E6F3C:
	ldr r1, _021E6F60 ; =0x00000D94
	add r2, sp, #0
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl SpriteSystem_InitManagerWithCapacities
	cmp r0, #0
	bne _021E6F52
	bl GF_AssertFail
_021E6F52:
	add sp, #0x4c
	pop {r3, r4, pc}
	nop
_021E6F58: .word ov85_021EA6B8
_021E6F5C: .word ov85_021EA56C
_021E6F60: .word 0x00000D94
_021E6F64: .word ov85_021EA594
_021E6F68: .word 0x00000D98
	thumb_func_end ov85_021E6ECC

	thumb_func_start ov85_021E6F6C
ov85_021E6F6C: ; 0x021E6F6C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r2, _021E7020 ; =0x00000D94
	add r1, r2, #4
	ldr r6, [r0, r2]
	add r2, #8
	ldr r5, [r0, r1]
	ldr r7, [r0, r2]
	mov r0, #1
	bl G2dRenderer_SetPlttTransferReservedRegion
	mov r0, #0xd9
	mov r1, #0x66
	bl NARC_New
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0x10
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	str r4, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #5
	str r0, [sp, #0x14]
	add r0, r7, #0
	mov r1, #2
	add r2, r6, #0
	add r3, r5, #0
	bl SpriteSystem_LoadPaletteBufferFromOpenNarc
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0x11
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	mov r0, #7
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0x12
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	add r0, r4, #0
	bl NARC_Delete
	bl sub_0203A880
	mov r0, #0x66
	bl sub_0203A4AC
	add r1, sp, #0x18
	add r4, r0, #0
	bl NNS_G2dGetUnpackedPaletteData
	mov r0, #0x20
	str r0, [sp]
	ldr r1, [sp, #0x18]
	add r0, r7, #0
	ldr r1, [r1, #0xc]
	mov r2, #2
	mov r3, #0xe0
	bl PaletteData_LoadPalette
	add r0, r4, #0
	bl Heap_Free
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021E7020: .word 0x00000D94
	thumb_func_end ov85_021E6F6C

