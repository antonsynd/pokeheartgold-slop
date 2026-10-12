	.include "asm/macros.inc"
	.include "overlay_82.inc"
	.include "global.inc"
	.public ov82_0223EC68
	.public ov82_0223ED94
	.extern ov82_0223FE28
	.extern ov82_0223FE38
	.extern ov82_0223FE54
	.extern ov82_0223FE70
	.extern ov82_0223FE8C
	.extern ov82_0223FEA8

	.text

	.text
	thumb_func_start ov82_0223EC68
ov82_0223EC68: ; 0x0223EC68
	push {r4, r5, lr}
	sub sp, #0x9c
	ldr r5, _0223ED78 ; =ov82_0223FE28
	add r3, sp, #0x8c
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r5, _0223ED7C ; =ov82_0223FE54
	add r3, sp, #0x70
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #0
	str r0, [r3]
	add r0, r4, #0
	add r3, r1, #0
	bl InitBgFromTemplate
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0x69
	bl BG_ClearCharDataRange
	add r0, r4, #0
	mov r1, #0
	bl BgClearTilemapBufferAndCommit
	ldr r5, _0223ED80 ; =ov82_0223FE70
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #1
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x69
	bl BG_ClearCharDataRange
	add r0, r4, #0
	mov r1, #1
	bl BgClearTilemapBufferAndCommit
	ldr r5, _0223ED84 ; =ov82_0223FE8C
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #3
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	ldr r5, _0223ED88 ; =ov82_0223FEA8
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	str r0, [r3]
	add r0, r4, #0
	mov r1, #5
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #5
	bl BgClearTilemapBufferAndCommit
	ldr r5, _0223ED8C ; =ov82_0223FE38
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #4
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #4
	bl BgClearTilemapBufferAndCommit
	ldr r1, _0223ED90 ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #1
	strh r2, [r1]
	add r1, r0, #0
	bl GfGfx_EngineATogglePlanes
	add sp, #0x9c
	pop {r4, r5, pc}
	.balign 4, 0
_0223ED78: .word ov82_0223FE28
_0223ED7C: .word ov82_0223FE54
_0223ED80: .word ov82_0223FE70
_0223ED84: .word ov82_0223FE8C
_0223ED88: .word ov82_0223FEA8
_0223ED8C: .word ov82_0223FE38
_0223ED90: .word 0x04000008
	thumb_func_end ov82_0223EC68

	thumb_func_start ov82_0223ED94
ov82_0223ED94: ; 0x0223ED94
	push {r3, r4, r5, lr}
	ldrb r0, [r0, #9]
	bl ov80_0223792C
	cmp r0, #0
	beq _0223EDEA
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r1, [r0]
	ldr r3, _0223EDEC ; =0xFFFF1FFF
	add r4, r0, #0
	and r1, r3
	str r1, [r0]
	add r4, #0x48
	ldrh r5, [r4]
	mov r1, #0x3f
	mov r2, #0x1f
	bic r5, r1
	orr r5, r2
	strh r5, [r4]
	add r4, r0, #0
	add r4, #0x4a
	ldrh r5, [r4]
	bic r5, r1
	orr r2, r5
	mov r1, #0x20
	orr r1, r2
	strh r1, [r4]
	mov r2, #0xf
	add r1, r0, #0
	lsl r2, r2, #0xc
	add r1, #0x40
	strh r2, [r1]
	add r1, r0, #0
	mov r4, #0x10
	add r1, #0x44
	strh r4, [r1]
	ldr r1, [r0]
	add r2, r1, #0
	and r2, r3
	lsl r1, r4, #9
	orr r1, r2
	str r1, [r0]
_0223EDEA:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0223EDEC: .word 0xFFFF1FFF
	thumb_func_end ov82_0223ED94

