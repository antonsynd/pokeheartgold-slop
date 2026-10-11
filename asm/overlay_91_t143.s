	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_0225F878
	.extern ov91_02261C74
	.extern ov91_02261C9C
	.extern ov91_02261CB8
	.extern ov91_02261CD4
	.extern ov91_02261CF0
	.extern ov91_02261D0C
	.extern ov91_02261D28

	.text

	.text
	thumb_func_start ov91_0225F878
ov91_0225F878: ; 0x0225F878
	push {r4, r5, r6, lr}
	sub sp, #0xc0
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl BgConfig_Alloc
	add r3, sp, #0xb0
	ldr r6, _0225FA44 ; =ov91_02261C74
	str r0, [r5]
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r6, _0225FA48 ; =ov91_02261C9C
	add r3, sp, #0x94
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	mov r1, #1
	str r0, [r3]
	ldr r0, [r5]
	mov r3, #0
	bl InitBgFromTemplate
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	add r3, r4, #0
	bl BG_ClearCharDataRange
	ldr r0, [r5]
	mov r1, #1
	bl BgClearTilemapBufferAndCommit
	ldr r6, _0225FA4C ; =ov91_02261CB8
	add r3, sp, #0x78
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	mov r1, #2
	str r0, [r3]
	ldr r0, [r5]
	mov r3, #0
	bl InitBgFromTemplate
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	add r3, r4, #0
	bl BG_ClearCharDataRange
	ldr r0, [r5]
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	ldr r6, _0225FA50 ; =ov91_02261CD4
	add r3, sp, #0x5c
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	mov r1, #4
	str r0, [r3]
	ldr r0, [r5]
	mov r3, #0
	bl InitBgFromTemplate
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	add r3, r4, #0
	bl BG_ClearCharDataRange
	ldr r0, [r5]
	mov r1, #4
	bl BgClearTilemapBufferAndCommit
	ldr r6, _0225FA54 ; =ov91_02261CF0
	add r3, sp, #0x40
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	mov r1, #5
	str r0, [r3]
	ldr r0, [r5]
	mov r3, #0
	bl InitBgFromTemplate
	mov r0, #5
	mov r1, #0x20
	mov r2, #0
	add r3, r4, #0
	bl BG_ClearCharDataRange
	ldr r0, [r5]
	mov r1, #5
	bl BgClearTilemapBufferAndCommit
	ldr r6, _0225FA58 ; =ov91_02261D0C
	add r3, sp, #0x24
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	mov r1, #6
	str r0, [r3]
	ldr r0, [r5]
	mov r3, #0
	bl InitBgFromTemplate
	mov r0, #6
	mov r1, #0x20
	mov r2, #0
	add r3, r4, #0
	bl BG_ClearCharDataRange
	ldr r0, [r5]
	mov r1, #6
	bl BgClearTilemapBufferAndCommit
	ldr r6, _0225FA5C ; =ov91_02261D28
	add r3, sp, #8
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	mov r1, #7
	str r0, [r3]
	ldr r0, [r5]
	mov r3, #0
	bl InitBgFromTemplate
	mov r0, #7
	mov r1, #0x20
	mov r2, #0
	add r3, r4, #0
	bl BG_ClearCharDataRange
	ldr r0, [r5]
	mov r1, #7
	bl BgClearTilemapBufferAndCommit
	mov r0, #1
	add r1, r0, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #2
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #8
	mov r1, #0
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
	mov r0, #0
	mov r1, #0xa0
	add r2, r4, #0
	bl LoadFontPal1
	mov r0, #0
	str r0, [sp]
	str r4, [sp, #4]
	mov r1, #1
	ldr r0, [r5]
	add r2, r1, #0
	mov r3, #4
	bl LoadUserFrameGfx1
	add sp, #0xc0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0225FA44: .word ov91_02261C74
_0225FA48: .word ov91_02261C9C
_0225FA4C: .word ov91_02261CB8
_0225FA50: .word ov91_02261CD4
_0225FA54: .word ov91_02261CF0
_0225FA58: .word ov91_02261D0C
_0225FA5C: .word ov91_02261D28
	thumb_func_end ov91_0225F878

