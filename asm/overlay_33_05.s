	.include "asm/macros.inc"
	.include "overlay_33.inc"
	.include "global.inc"
	.public ov33_0225D720
	.extern ov33_0225DA68
	.extern ov33_0225DA84
	.extern ov33_0225DAA0

	.text

	.text
	thumb_func_start ov33_0225D720
ov33_0225D720: ; 0x0225D720
	push {r4, r5, lr}
	sub sp, #0x54
	add r4, r0, #0
	mov r0, #0
	bl GXS_SetGraphicsMode
	ldr r5, _0225D7AC ; =ov33_0225DA68
	add r3, sp, #0x38
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
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #8
	bl BG_ClearCharDataRange
	add r0, r4, #0
	mov r1, #4
	bl BgClearTilemapBufferAndCommit
	ldr r5, _0225D7B0 ; =ov33_0225DA84
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #5
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #5
	bl BgClearTilemapBufferAndCommit
	ldr r5, _0225D7B4 ; =ov33_0225DAA0
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #6
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add sp, #0x54
	pop {r4, r5, pc}
	.balign 4, 0
_0225D7AC: .word ov33_0225DA68
_0225D7B0: .word ov33_0225DA84
_0225D7B4: .word ov33_0225DAA0
	thumb_func_end ov33_0225D720

