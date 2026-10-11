	.include "asm/macros.inc"
	.include "overlay_95.inc"
	.include "global.inc"
	.public ov95_021E70BC
	.extern ov95_021E7388

	.text

	.text
	thumb_func_start ov95_021E70BC
ov95_021E70BC: ; 0x021E70BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	ldr r7, [r5, #4]
	ldr r6, [r5, #8]
	bne _021E70D2
	bl GF_AssertFail
_021E70D2:
	cmp r7, #0
	bne _021E70DA
	bl GF_AssertFail
_021E70DA:
	cmp r6, #0
	bne _021E70E2
	bl GF_AssertFail
_021E70E2:
	ldr r1, [r5]
	mov r0, #0xef
	bl NARC_New
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	add r1, r6, #0
	str r0, [sp, #0xc]
	add r0, r7, #0
	add r2, r4, #0
	mov r3, #0xb
	bl SpriteSystem_LoadPlttResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	add r1, r6, #0
	str r0, [sp, #8]
	add r0, r7, #0
	add r2, r4, #0
	mov r3, #0xc
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x30]
	add r1, r6, #0
	str r0, [sp, #4]
	add r0, r7, #0
	add r2, r4, #0
	mov r3, #0xd
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x34]
	add r1, r6, #0
	str r0, [sp, #4]
	add r0, r7, #0
	add r2, r4, #0
	mov r3, #0xe
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x14]
	str r0, [sp]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x30]
	add r0, r5, #0
	bl ov95_021E7388
	mov r0, #1
	str r0, [sp]
	mov r0, #0xa0
	str r0, [sp, #4]
	mov r2, #0
	ldr r0, [sp, #0x10]
	mov r1, #0xef
	mov r3, #0x46
	str r2, [sp, #8]
	bl PaletteData_LoadNarc
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xf0
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	mov r1, #0x10
	mov r2, #9
	mov r3, #0x46
	bl PaletteData_LoadNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x46
	str r0, [sp, #0xc]
	ldr r2, [r5, #0xc]
	add r0, r4, #0
	mov r1, #1
	mov r3, #4
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x46
	str r0, [sp, #0xc]
	ldr r2, [r5, #0xc]
	add r0, r4, #0
	mov r1, #9
	mov r3, #4
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x46
	str r0, [sp, #0xc]
	ldr r2, [r5, #0xc]
	add r0, r4, #0
	mov r1, #1
	mov r3, #5
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x46
	str r0, [sp, #0xc]
	ldr r2, [r5, #0xc]
	add r0, r4, #0
	mov r1, #0xa
	mov r3, #5
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	mov r0, #5
	mov r1, #0
	bl ToggleBgLayer
	mov r0, #6
	mov r1, #0
	bl ToggleBgLayer
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	add r0, r4, #0
	bl NARC_Delete
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov95_021E70BC

