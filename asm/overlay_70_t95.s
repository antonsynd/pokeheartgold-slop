#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223AA90
	.public ov70_0223AB00
	.public ov70_0223AB3C
	.extern ov70_02238E58
	.extern ov70_02238F9C
	.extern ov70_022391F0
	.extern ov70_0223ABD8
	.extern ov70_0223ACE4
	.extern ov70_0223AE40
	.extern ov70_0223AF30
	.extern ov70_02241330
	.extern ov70_022454B4
	.extern ov70_022454D0
	.extern ov70_022464CC

	.text

	.text
	thumb_func_start ov70_0223AA90
ov70_0223AA90: ; 0x0223AA90
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r1, [r6, #0x2c]
	lsl r2, r1, #2
	ldr r1, _0223AAEC ; =ov70_022464CC
	ldr r1, [r1, r2]
	blx r1
	ldr r7, _0223AAF0 ; =0x0000120E
	str r0, [sp]
	mov r4, #0
	add r5, r6, #0
_0223AAA6:
	ldr r2, _0223AAF4 ; =0x00000F14
	ldr r1, _0223AAF8 ; =0x0000120C
	ldr r3, [r6, r2]
	ldrsh r2, [r5, r7]
	ldr r0, _0223AAFC ; =0x00000EE4
	ldrsh r1, [r5, r1]
	add r2, r3, r2
	ldr r0, [r5, r0]
	add r2, #0x20
	bl ov70_02238F9C
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #8
	blt _0223AAA6
	mov r2, #0xee
	lsl r2, r2, #4
	ldr r0, [r6, r2]
	add r2, #0x34
	ldr r3, [r6, r2]
	mov r2, #0x3a
	mov r1, #0xd0
	sub r2, r2, r3
	bl ov70_02238F9C
	mov r1, #0x4b
	ldr r2, _0223AAF4 ; =0x00000F14
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	ldr r2, [r6, r2]
	add r0, r6, #0
	bl ov70_02241330
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0223AAEC: .word ov70_022464CC
_0223AAF0: .word 0x0000120E
_0223AAF4: .word 0x00000F14
_0223AAF8: .word 0x0000120C
_0223AAFC: .word 0x00000EE4
	thumb_func_end ov70_0223AA90

	thumb_func_start ov70_0223AB00
ov70_0223AB00: ; 0x0223AB00
	push {r4, lr}
	ldr r1, _0223AB38 ; =0x00001208
	add r4, r0, #0
	mov r2, #0
	str r2, [r4, r1]
	bl ov70_0223ACE4
	add r0, r4, #0
	bl ov70_0223AF30
	add r0, r4, #0
	bl ov70_0223AE40
	ldr r0, [r4, #4]
	bl ov70_0223ABD8
	mov r0, #0xf1
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	add r0, r4, #0
	bl ov70_02238E58
	mov r0, #1
	pop {r4, pc}
	nop
_0223AB38: .word 0x00001208
	thumb_func_end ov70_0223AB00

	thumb_func_start ov70_0223AB3C
ov70_0223AB3C: ; 0x0223AB3C
	push {r4, r5, r6, lr}
	sub sp, #0x38
	ldr r6, _0223ABCC ; =ov70_022454D0
	add r3, sp, #0x1c
	add r5, r0, #0
	add r4, r1, #0
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	mov r1, #0
	str r0, [r3]
	add r0, r5, #0
	add r3, r1, #0
	bl InitBgFromTemplate
	add r0, r5, #0
	mov r1, #0
	bl BgClearTilemapBufferAndCommit
	ldr r6, _0223ABD0 ; =ov70_022454B4
	add r3, sp, #0
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
	add r0, r5, #0
	mov r3, #0
	bl InitBgFromTemplate
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0x3d
	bl BG_ClearCharDataRange
	ldr r0, _0223ABD4 ; =0x0400106C
	bl GXx_GetMasterBrightness_
	cmp r0, #0
	bne _0223ABAE
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov70_022391F0
	b _0223ABB8
_0223ABAE:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov70_022391F0
_0223ABB8:
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #8
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	add sp, #0x38
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0223ABCC: .word ov70_022454D0
_0223ABD0: .word ov70_022454B4
_0223ABD4: .word 0x0400106C
	thumb_func_end ov70_0223AB3C

