#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E8DC8
	.extern ov73_021EA180

	.text

	.text
	thumb_func_start ov73_021E8DC8
ov73_021E8DC8: ; 0x021E8DC8
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	bl ov00_021ECDC8
	cmp r0, #5
	bhi _021E8E6E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E8DE2: ; jump table
	.short _021E8DF4 - _021E8DE2 - 2 ; case 0
	.short _021E8E6E - _021E8DE2 - 2 ; case 1
	.short _021E8E6E - _021E8DE2 - 2 ; case 2
	.short _021E8DEE - _021E8DE2 - 2 ; case 3
	.short _021E8DF4 - _021E8DE2 - 2 ; case 4
	.short _021E8DF4 - _021E8DE2 - 2 ; case 5
_021E8DEE:
	mov r0, #6
	str r0, [r4, #0x1c]
	b _021E8E6E
_021E8DF4:
	add r0, r4, #0
	bl ov73_021EA180
	add r0, sp, #4
	add r1, sp, #0
	bl ov00_021EC11C
	mov r1, #0xf1
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r2, [sp, #4]
	add r0, r1, #4
	str r2, [r4, r0]
	bl ov00_021EC210
	bl ov00_021EC8D8
	mov r0, #0x37
	str r0, [r4, #0x1c]
	ldr r1, [sp]
	cmp r1, #7
	bhi _021E8E5C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E8E2C: ; jump table
	.short _021E8E5C - _021E8E2C - 2 ; case 0
	.short _021E8E3C - _021E8E2C - 2 ; case 1
	.short _021E8E3C - _021E8E2C - 2 ; case 2
	.short _021E8E4E - _021E8E2C - 2 ; case 3
	.short _021E8E40 - _021E8E2C - 2 ; case 4
	.short _021E8E58 - _021E8E2C - 2 ; case 5
	.short _021E8E4A - _021E8E2C - 2 ; case 6
	.short _021E8E58 - _021E8E2C - 2 ; case 7
_021E8E3C:
	str r0, [r4, #0x1c]
	b _021E8E5C
_021E8E40:
	bl ov00_021FA0D8
	mov r0, #0x37
	str r0, [r4, #0x1c]
	b _021E8E5C
_021E8E4A:
	str r0, [r4, #0x1c]
	b _021E8E5C
_021E8E4E:
	bl ov00_021ED9B4
	mov r0, #0x37
	str r0, [r4, #0x1c]
	b _021E8E5C
_021E8E58:
	bl sub_020399EC
_021E8E5C:
	ldr r1, [sp, #4]
	ldr r0, _021E8E74 ; =0xFFFFB1E0
	cmp r1, r0
	bge _021E8E6E
	ldr r0, _021E8E78 ; =0xFFFF8AD1
	cmp r1, r0
	blt _021E8E6E
	mov r0, #0x37
	str r0, [r4, #0x1c]
_021E8E6E:
	mov r0, #3
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
_021E8E74: .word 0xFFFFB1E0
_021E8E78: .word 0xFFFF8AD1
	thumb_func_end ov73_021E8DC8

