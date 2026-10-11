	.include "asm/macros.inc"
	.include "overlay_92.inc"
	.include "global.inc"
	.public ov92_0225D594
	.public ov92_0225D7CC
	.public ov92_02263890
	.public ov92_022638C0
	.public ov92_022638D4
	.public ov92_022638EC
	.public ov92_0226390C
	.public ov92_02263934
	.public ov92_022639A4

	.text

	thumb_func_start ov92_0225D594
ov92_0225D594: ; 0x0225D594
	push {r4, r5, lr}
	sub sp, #0x11c
	add r4, r0, #0
	bl GfGfx_DisableEngineAPlanes
	ldr r5, _0225D7B0 ; =ov92_02263890
	add r3, sp, #0x2c
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r5, _0225D7B4 ; =ov92_0226390C
	add r3, sp, #4
	mov r2, #5
_0225D5B8:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0225D5B8
	add r0, sp, #4
	bl GfGfx_SetBanks
	mov r1, #6
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x18
	lsl r2, r2, #0x12
	bl MIi_CpuClear32
	mov r1, #0x62
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl MIi_CpuClear32
	mov r1, #0x19
	mov r2, #1
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0x12
	bl MIi_CpuClear32
	mov r1, #0x66
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl MIi_CpuClear32
	ldr r5, _0225D7B8 ; =ov92_02263934
	add r3, sp, #0xac
	mov r2, #0xe
_0225D604:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0225D604
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x71
	bl BG_ClearCharDataRange
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x71
	bl BG_ClearCharDataRange
	mov r0, #3
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x71
	bl BG_ClearCharDataRange
	add r0, r4, #0
	mov r1, #1
	add r2, sp, #0xc8
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #2
	add r2, sp, #0xe4
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #3
	add r2, sp, #0x100
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #0
	bl BgClearTilemapBufferAndCommit
	add r0, r4, #0
	mov r1, #1
	bl BgClearTilemapBufferAndCommit
	add r0, r4, #0
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	add r0, r4, #0
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	ldr r5, _0225D7BC ; =ov92_022639A4
	add r3, sp, #0x3c
	mov r2, #0xe
_0225D67A:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0225D67A
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x71
	bl BG_ClearCharDataRange
	mov r0, #5
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x71
	bl BG_ClearCharDataRange
	mov r0, #6
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x71
	bl BG_ClearCharDataRange
	mov r0, #7
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x71
	bl BG_ClearCharDataRange
	add r0, r4, #0
	mov r1, #4
	add r2, sp, #0x3c
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #5
	add r2, sp, #0x58
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #6
	add r2, sp, #0x74
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #7
	add r2, sp, #0x90
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #4
	bl BgClearTilemapBufferAndCommit
	add r0, r4, #0
	mov r1, #5
	bl BgClearTilemapBufferAndCommit
	add r0, r4, #0
	mov r1, #6
	bl BgClearTilemapBufferAndCommit
	add r0, r4, #0
	mov r1, #7
	bl BgClearTilemapBufferAndCommit
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x71
	bl BG_ClearCharDataRange
	mov r0, #5
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x71
	bl BG_ClearCharDataRange
	mov r0, #6
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x71
	bl BG_ClearCharDataRange
	mov r0, #7
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x71
	bl BG_ClearCharDataRange
	mov r0, #1
	add r1, r0, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #2
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #1
	add r1, r0, #0
	bl GfGfx_EngineBTogglePlanes
	mov r0, #2
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	ldr r0, _0225D7C0 ; =gSystem + 0x60
	mov r1, #1
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	mov r0, #0xa
	str r0, [sp]
	ldr r0, _0225D7C4 ; =0x04000050
	mov r1, #0
	mov r2, #0x1e
	mov r3, #7
	bl G2x_SetBlendAlpha_
	mov r0, #0xa
	str r0, [sp]
	ldr r0, _0225D7C8 ; =0x04001050
	mov r1, #0
	mov r2, #0x11
	mov r3, #7
	bl G2x_SetBlendAlpha_
	add sp, #0x11c
	pop {r4, r5, pc}
	.balign 4, 0
_0225D7B0: .word ov92_02263890
_0225D7B4: .word ov92_0226390C
_0225D7B8: .word ov92_02263934
_0225D7BC: .word ov92_022639A4
_0225D7C0: .word gSystem + 0x60
_0225D7C4: .word 0x04000050
_0225D7C8: .word 0x04001050
	thumb_func_end ov92_0225D594

	thumb_func_start ov92_0225D7CC
ov92_0225D7CC: ; 0x0225D7CC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x4c
	add r4, r0, #0
	mov r0, #0x71
	bl SpriteSystem_Alloc
	add r2, sp, #0x2c
	ldr r5, _0225D85C ; =ov92_022638EC
	str r0, [r4, #0x50]
	ldmia r5!, {r0, r1}
	add r3, r2, #0
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	ldr r6, _0225D860 ; =ov92_022638C0
	stmia r2!, {r0, r1}
	add r5, sp, #0x18
	ldmia r6!, {r0, r1}
	add r2, r5, #0
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r6]
	add r1, r3, #0
	str r0, [r5]
	ldr r0, [r4, #0x50]
	mov r3, #0x20
	bl SpriteSystem_Init
	ldr r3, _0225D864 ; =ov92_022638D4
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0x50]
	bl SpriteManager_New
	str r0, [r4, #0x54]
	ldr r0, [r4, #0x50]
	ldr r1, [r4, #0x54]
	mov r2, #0xff
	bl SpriteSystem_InitSprites
	cmp r0, #0
	bne _0225D836
	bl GF_AssertFail
_0225D836:
	ldr r0, [r4, #0x50]
	ldr r1, [r4, #0x54]
	add r2, sp, #0
	bl SpriteSystem_InitManagerWithCapacities
	cmp r0, #0
	bne _0225D848
	bl GF_AssertFail
_0225D848:
	ldr r0, [r4, #0x50]
	bl SpriteSystem_GetRenderer
	mov r2, #1
	mov r1, #0
	lsl r2, r2, #0x14
	bl G2dRenderer_SetSubSurfaceCoords
	add sp, #0x4c
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_0225D85C: .word ov92_022638EC
_0225D860: .word ov92_022638C0
_0225D864: .word ov92_022638D4
	thumb_func_end ov92_0225D7CC

