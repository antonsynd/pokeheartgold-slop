	.include "asm/macros.inc"
	.include "overlay_85.inc"
	.include "global.inc"
	.public ov85_021E8C5C
	.extern ov85_021EA8F4
	.extern ov85_021EA92C
	.extern ov85_021EA948
	.extern ov85_021EA964
	.extern ov85_021EA980
	.extern ov85_021EA99C

	.text

	.text
	thumb_func_start ov85_021E8C5C
ov85_021E8C5C: ; 0x021E8C5C
	push {r4, r5, lr}
	sub sp, #0x9c
	ldr r5, _021E8D4C ; =ov85_021EA8F4
	add r3, sp, #0x8c
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r5, _021E8D50 ; =ov85_021EA980
	add r3, sp, #0x70
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
	ldr r5, _021E8D54 ; =ov85_021EA99C
	add r3, sp, #0x54
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
	ldr r5, _021E8D58 ; =ov85_021EA92C
	add r3, sp, #0x38
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
	ldr r5, _021E8D5C ; =ov85_021EA948
	add r3, sp, #0x1c
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
	add r0, r4, #0
	mov r1, #0
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021E8D60 ; =ov85_021EA964
	add r3, sp, #0
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
	mov r1, #1
	mov r3, #0
	bl InitBgFromTemplate
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0x66
	bl BG_ClearCharDataRange
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x66
	bl BG_ClearCharDataRange
	add sp, #0x9c
	pop {r4, r5, pc}
	nop
_021E8D4C: .word ov85_021EA8F4
_021E8D50: .word ov85_021EA980
_021E8D54: .word ov85_021EA99C
_021E8D58: .word ov85_021EA92C
_021E8D5C: .word ov85_021EA948
_021E8D60: .word ov85_021EA964
	thumb_func_end ov85_021E8C5C

