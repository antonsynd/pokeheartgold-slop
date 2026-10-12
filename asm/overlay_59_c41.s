	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_02239428
	.extern ov59_02239408
	.extern ov59_0223C658
	.extern ov59_0223C68C
	.extern ov59_0223C6A8
	.extern ov59_0223C6E0
	.extern ov59_0223C6FC
	.extern ov59_0223C718
	.extern ov59_0223C734

	.text

	.text
	thumb_func_start ov59_02239428
ov59_02239428: ; 0x02239428
	push {r3, r4, r5, lr}
	sub sp, #0xb8
	add r4, r0, #0
	bl ov59_02239408
	ldr r0, [r4]
	bl BgConfig_Alloc
	add r3, sp, #0xa8
	ldr r5, _02239594 ; =ov59_0223C658
	str r0, [r4, #0x54]
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r2, _02239598 ; =0x04000304
	ldr r0, _0223959C ; =0xFFFF7FFF
	ldrh r1, [r2]
	ldr r5, _022395A0 ; =ov59_0223C718
	add r3, sp, #0x8c
	and r0, r1
	strh r0, [r2]
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
	ldr r0, [r4, #0x54]
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0x54]
	mov r1, #4
	bl BgClearTilemapBufferAndCommit
	ldr r5, _022395A4 ; =ov59_0223C68C
	add r3, sp, #0x70
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #7
	str r0, [r3]
	ldr r0, [r4, #0x54]
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0x54]
	mov r1, #7
	bl BgClearTilemapBufferAndCommit
	ldr r5, _022395A8 ; =ov59_0223C6A8
	add r3, sp, #0x54
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
	ldr r0, [r4, #0x54]
	add r3, r1, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0x54]
	mov r1, #0
	bl BgClearTilemapBufferAndCommit
	ldr r5, _022395AC ; =ov59_0223C6FC
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	str r0, [r3]
	ldr r0, [r4, #0x54]
	mov r1, #1
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0x54]
	mov r1, #1
	bl BgClearTilemapBufferAndCommit
	ldr r5, _022395B0 ; =ov59_0223C734
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #2
	str r0, [r3]
	ldr r0, [r4, #0x54]
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0x54]
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	ldr r5, _022395B4 ; =ov59_0223C6E0
	add r3, sp, #0
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
	ldr r0, [r4, #0x54]
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0x54]
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	ldr r3, [r4]
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	bl BG_ClearCharDataRange
	ldr r3, [r4]
	mov r0, #7
	mov r1, #0x20
	mov r2, #0
	bl BG_ClearCharDataRange
	mov r0, #0
	ldr r3, [r4]
	mov r1, #0x20
	add r2, r0, #0
	bl BG_ClearCharDataRange
	ldr r3, [r4]
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	bl BG_ClearCharDataRange
	ldr r3, [r4]
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	bl BG_ClearCharDataRange
	ldr r3, [r4]
	mov r0, #3
	mov r1, #0x40
	mov r2, #0
	bl BG_ClearCharDataRange
	add sp, #0xb8
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02239594: .word ov59_0223C658
_02239598: .word 0x04000304
_0223959C: .word 0xFFFF7FFF
_022395A0: .word ov59_0223C718
_022395A4: .word ov59_0223C68C
_022395A8: .word ov59_0223C6A8
_022395AC: .word ov59_0223C6FC
_022395B0: .word ov59_0223C734
_022395B4: .word ov59_0223C6E0
	thumb_func_end ov59_02239428

