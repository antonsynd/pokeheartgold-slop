	.include "asm/macros.inc"
	.include "overlay_41_02245EA0.inc"
	.include "global.inc"
	.public ov41_02246544
	.extern ov41_0224C018

    .text

	.text
	thumb_func_start ov41_02246544
ov41_02246544: ; 0x02246544
	push {r4, r5, lr}
	sub sp, #0x1c
	ldr r3, _02246590 ; =ov41_0224C018
	add r5, r0, #0
	str r1, [r5, #0x40]
	add r4, r2, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, #2
	str r0, [r2]
	ldr r0, [r5, #0x40]
	bl FreeBgTilemapBuffer
	ldr r0, [r5, #0x40]
	mov r1, #2
	add r2, sp, #0
	mov r3, #0
	bl InitBgFromTemplate
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	add r3, r4, #0
	bl BG_ClearCharDataRange
	ldr r0, [r5, #0x40]
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	add sp, #0x1c
	pop {r4, r5, pc}
	nop
_02246590: .word ov41_0224C018
	thumb_func_end ov41_02246544

