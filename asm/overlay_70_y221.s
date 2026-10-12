#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223E954
	.extern ov70_022391F0
	.extern ov70_02245938
	.extern ov70_02245954
	.extern ov70_02245970
	.extern ov70_0224598C

	.text

	.text
	thumb_func_start ov70_0223E954
ov70_0223E954: ; 0x0223E954
	push {r3, r4, r5, lr}
	sub sp, #0x80
	ldr r5, _0223EA30 ; =ov70_02245970
	add r4, r0, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #0x64
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
	ldr r5, _0223EA34 ; =ov70_0224598C
	add r3, sp, #0x48
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
	ldr r5, _0223EA38 ; =ov70_02245954
	add r3, sp, #0x2c
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
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #2
	add r3, r2, #0
	str r2, [sp, #0xc]
	bl FillBgTilemapRect
	add r0, r4, #0
	mov r1, #2
	bl BgCommitTilemapBufferToVram
	ldr r5, _0223EA3C ; =ov70_02245938
	add r3, sp, #0x10
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
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0x3d
	bl BG_ClearCharDataRange
	mov r0, #3
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x3d
	bl BG_ClearCharDataRange
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov70_022391F0
	add sp, #0x80
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0223EA30: .word ov70_02245970
_0223EA34: .word ov70_0224598C
_0223EA38: .word ov70_02245954
_0223EA3C: .word ov70_02245938
	thumb_func_end ov70_0223E954

