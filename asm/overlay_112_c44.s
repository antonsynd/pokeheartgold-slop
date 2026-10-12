#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021E79F0
	.extern ov112_021F3684
	.extern ov112_021F3704
	.extern ov112_021F3720
	.extern ov112_021F373C
	.extern ov112_021F3758
	.extern ov112_021F3774
	.extern ov112_021F3790
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021E79F0
ov112_021E79F0: ; 0x021E79F0
	push {r3, r4, r5, lr}
	sub sp, #0x10
	ldr r5, _021E7AAC ; =ov112_021F3684
	add r3, sp, #0
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r2, _021E7AB0 ; =ov112_021F3704
	add r0, r4, #0
	mov r1, #1
	mov r3, #0
	bl InitBgFromTemplate
	ldr r2, _021E7AB4 ; =ov112_021F3720
	add r0, r4, #0
	mov r1, #2
	mov r3, #0
	bl InitBgFromTemplate
	ldr r2, _021E7AB8 ; =ov112_021F373C
	add r0, r4, #0
	mov r1, #3
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #1
	bl BgClearTilemapBufferAndCommit
	add r0, r4, #0
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	add r0, r4, #0
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	ldr r2, _021E7ABC ; =ov112_021F3758
	add r0, r4, #0
	mov r1, #4
	mov r3, #0
	bl InitBgFromTemplate
	ldr r2, _021E7AC0 ; =ov112_021F3774
	add r0, r4, #0
	mov r1, #5
	mov r3, #0
	bl InitBgFromTemplate
	ldr r2, _021E7AC4 ; =ov112_021F3790
	add r0, r4, #0
	mov r1, #6
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
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x9a
	bl BG_ClearCharDataRange
	mov r0, #5
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x9a
	bl BG_ClearCharDataRange
	mov r0, #6
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x9a
	bl BG_ClearCharDataRange
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_021E7AAC: .word ov112_021F3684
_021E7AB0: .word ov112_021F3704
_021E7AB4: .word ov112_021F3720
_021E7AB8: .word ov112_021F373C
_021E7ABC: .word ov112_021F3758
_021E7AC0: .word ov112_021F3774
_021E7AC4: .word ov112_021F3790
	thumb_func_end ov112_021E79F0

