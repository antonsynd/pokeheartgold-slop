#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EAB78
	.extern ov112_021EABE8
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EAB78
ov112_021EAB78: ; 0x021EAB78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r2, #0
	add r7, r3, #0
	add r5, r0, #0
	add r4, r1, #0
	add r0, r6, #0
	mov r1, #0
	add r2, r7, #0
	bl GetMonIconNaixEx
	ldr r3, _021EABDC ; =0x0001EA64
	add r1, r0, #0
	mov r0, #0x9a
	str r0, [sp]
	mov r0, #0x14
	mov r2, #0
	add r3, r5, r3
	bl GfGfxLoader_GetCharData
	ldr r1, _021EABE0 ; =0x0001EA60
	str r0, [r5, r1]
	add r0, r1, #4
	ldr r0, [r5, r0]
	mov r1, #1
	ldr r0, [r0, #0x14]
	lsl r1, r1, #0xa
	bl DC_FlushRange
	str r4, [sp]
	add r4, #9
	lsl r0, r4, #2
	add r1, r5, r0
	ldr r0, _021EABE4 ; =0x0001E530
	add r2, r7, #0
	ldr r0, [r1, r0]
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, _021EABDC ; =0x0001EA64
	mov r3, #0
	ldr r0, [r5, r0]
	bl ov112_021EABE8
	ldr r0, _021EABE0 ; =0x0001EA60
	ldr r0, [r5, r0]
	bl Heap_Free
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EABDC: .word 0x0001EA64
_021EABE0: .word 0x0001EA60
_021EABE4: .word 0x0001E530
	thumb_func_end ov112_021EAB78

