#include "config.h"
	.include "macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EDCB0
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EDCB0
ov112_021EDCB0: ; 0x021EDCB0
	cmp r0, #0x21
	bgt _021EDCE4
	bge _021EDD06
	cmp r0, #0xe
	bhi _021EDD06
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EDCC6: ; jump table
	.short _021EDD06 - _021EDCC6 - 2 ; case 0
	.short _021EDD06 - _021EDCC6 - 2 ; case 1
	.short _021EDD06 - _021EDCC6 - 2 ; case 2
	.short _021EDCFC - _021EDCC6 - 2 ; case 3
	.short _021EDCE8 - _021EDCC6 - 2 ; case 4
	.short _021EDCEC - _021EDCC6 - 2 ; case 5
	.short _021EDCF4 - _021EDCC6 - 2 ; case 6
	.short _021EDCF0 - _021EDCC6 - 2 ; case 7
	.short _021EDCF8 - _021EDCC6 - 2 ; case 8
	.short _021EDCF8 - _021EDCC6 - 2 ; case 9
	.short _021EDD06 - _021EDCC6 - 2 ; case 10
	.short _021EDCFC - _021EDCC6 - 2 ; case 11
	.short _021EDCFC - _021EDCC6 - 2 ; case 12
	.short _021EDD00 - _021EDCC6 - 2 ; case 13
	.short _021EDD04 - _021EDCC6 - 2 ; case 14
_021EDCE4:
	cmp r0, #0x2a
	bx lr
_021EDCE8:
	mov r0, #0x22
	bx lr
_021EDCEC:
	mov r0, #0x24
	bx lr
_021EDCF0:
	mov r0, #0x25
	bx lr
_021EDCF4:
	mov r0, #0x2b
	bx lr
_021EDCF8:
	mov r0, #0x26
	bx lr
_021EDCFC:
	mov r0, #0x27
	bx lr
_021EDD00:
	mov r0, #0x23
	bx lr
_021EDD04:
	mov r0, #0x2a
_021EDD06:
	bx lr
	thumb_func_end ov112_021EDCB0

