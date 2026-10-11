#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E5A70
	.extern ov14_021F7BC8
	.extern ov14_021F7C20
	.extern ov14_021F7C3C
	.extern ov14_021F7C58
	.extern ov14_021F7C74
	.extern ov14_021F7C90
	.extern ov14_021F7CAC
	.extern ov14_021F7CC8

    .text

	.text
	thumb_func_start ov14_021E5A70
ov14_021E5A70: ; 0x021E5A70
	push {r4, r5, lr}
	sub sp, #0xd4
	add r4, r0, #0
	mov r0, #0xa
	bl BgConfig_Alloc
	ldr r1, [r4, #0x34]
	add r3, sp, #0xc4
	ldr r5, _021E5BE0 ; =ov14_021F7BC8
	str r0, [r1, #0x14]
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r5, _021E5BE4 ; =ov14_021F7C20
	add r3, sp, #0xa8
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
	ldr r0, [r4, #0x34]
	add r3, r1, #0
	ldr r0, [r0, #0x14]
	bl InitBgFromTemplate
	ldr r0, [r4, #0x34]
	mov r1, #0
	ldr r0, [r0, #0x14]
	bl BgClearTilemapBufferAndCommit
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0xa
	bl BG_ClearCharDataRange
	ldr r5, _021E5BE8 ; =ov14_021F7C3C
	add r3, sp, #0x8c
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
	ldr r0, [r4, #0x34]
	mov r3, #0
	ldr r0, [r0, #0x14]
	bl InitBgFromTemplate
	ldr r0, [r4, #0x34]
	mov r1, #1
	ldr r0, [r0, #0x14]
	bl BgClearTilemapBufferAndCommit
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #0xa
	bl BG_ClearCharDataRange
	ldr r5, _021E5BEC ; =ov14_021F7C74
	add r3, sp, #0x70
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	str r0, [r3]
	ldr r0, [r4, #0x34]
	mov r1, #2
	ldr r0, [r0, #0x14]
	mov r3, #0
	bl InitBgFromTemplate
	ldr r5, _021E5BF0 ; =ov14_021F7C90
	add r3, sp, #0x54
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
	ldr r0, [r4, #0x34]
	mov r3, #0
	ldr r0, [r0, #0x14]
	bl InitBgFromTemplate
	ldr r5, _021E5BF4 ; =ov14_021F7C58
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
	ldr r0, [r4, #0x34]
	mov r3, #0
	ldr r0, [r0, #0x14]
	bl InitBgFromTemplate
	ldr r0, [r4, #0x34]
	mov r1, #4
	ldr r0, [r0, #0x14]
	bl BgClearTilemapBufferAndCommit
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0xa
	bl BG_ClearCharDataRange
	ldr r5, _021E5BF8 ; =ov14_021F7CAC
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
	ldr r0, [r4, #0x34]
	mov r3, #0
	ldr r0, [r0, #0x14]
	bl InitBgFromTemplate
	ldr r5, _021E5BFC ; =ov14_021F7CC8
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
	ldr r0, [r4, #0x34]
	mov r3, #0
	ldr r0, [r0, #0x14]
	bl InitBgFromTemplate
	ldr r0, [r4, #0x34]
	mov r1, #6
	ldr r0, [r0, #0x14]
	bl BgClearTilemapBufferAndCommit
	mov r0, #6
	mov r1, #0x20
	mov r2, #0
	mov r3, #0xa
	bl BG_ClearCharDataRange
	add sp, #0xd4
	pop {r4, r5, pc}
	nop
_021E5BE0: .word ov14_021F7BC8
_021E5BE4: .word ov14_021F7C20
_021E5BE8: .word ov14_021F7C3C
_021E5BEC: .word ov14_021F7C74
_021E5BF0: .word ov14_021F7C90
_021E5BF4: .word ov14_021F7C58
_021E5BF8: .word ov14_021F7CAC
_021E5BFC: .word ov14_021F7CC8
	thumb_func_end ov14_021E5A70

