#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02239134
	.public ov70_022391F0
	.public ov70_0224525C
	.public ov70_02245284
	.public ov70_022452A0
	.public ov70_022452BC
	.public ov70_022452D8
	.public ov70_022452F4
	.public ov70_02245310
	.public ov70_0224532C

	.text

	thumb_func_start ov70_02239134
ov70_02239134: ; 0x02239134
	push {r4, r5, lr}
	sub sp, #0x64
	ldr r5, _022391E0 ; =ov70_0224525C
	add r3, sp, #0x54
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r5, _022391E4 ; =ov70_022452F4
	add r3, sp, #0x38
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
	ldr r5, _022391E8 ; =ov70_022452D8
	add r3, sp, #0x1c
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
	ldr r5, _022391EC ; =ov70_02245310
	add r3, sp, #0
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
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov70_022391F0
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0x3d
	bl BG_ClearCharDataRange
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	add sp, #0x64
	pop {r4, r5, pc}
	.balign 4, 0
_022391E0: .word ov70_0224525C
_022391E4: .word ov70_022452F4
_022391E8: .word ov70_022452D8
_022391EC: .word ov70_02245310
	thumb_func_end ov70_02239134

	thumb_func_start ov70_022391F0
ov70_022391F0: ; 0x022391F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	ldr r3, _022392AC ; =ov70_022452A0
	add r6, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	add r2, sp, #0x54
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, #4
	str r0, [r2]
	add r0, r5, #0
	add r2, r7, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r5, #0
	mov r1, #4
	bl BgClearTilemapBufferAndCommit
	ldr r3, _022392B0 ; =ov70_02245284
	add r2, sp, #0x38
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, #6
	str r0, [r2]
	add r0, r5, #0
	add r2, r7, #0
	mov r3, #0
	bl InitBgFromTemplate
	cmp r6, #0
	bne _02239252
	add r0, r5, #0
	mov r1, #6
	bl BgClearTilemapBufferAndCommit
_02239252:
	ldr r6, _022392B4 ; =ov70_022452BC
	add r3, sp, #0x1c
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
	add r0, r5, #0
	mov r3, #0
	str r4, [sp, #0x20]
	bl InitBgFromTemplate
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x3d
	bl BG_ClearCharDataRange
	ldr r4, _022392B8 ; =ov70_0224532C
	add r3, sp, #0
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	mov r1, #7
	str r0, [r3]
	add r0, r5, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r5, #0
	mov r1, #7
	bl BgClearTilemapBufferAndCommit
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022392AC: .word ov70_022452A0
_022392B0: .word ov70_02245284
_022392B4: .word ov70_022452BC
_022392B8: .word ov70_0224532C
	thumb_func_end ov70_022391F0

