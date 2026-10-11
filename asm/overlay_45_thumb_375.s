#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222E6C8
	.extern _022577C0
	.extern ov45_0222E96C
	.extern ov45_022302E4

	.text

	.text
	thumb_func_start ov45_0222E6C8
ov45_0222E6C8: ; 0x0222E6C8
	push {r3, lr}
	ldr r0, _0222E7C4 ; =_022577C0
	ldr r0, [r0]
	cmp r0, #0
	bne _0222E6D6
	mov r0, #0
	pop {r3, pc}
_0222E6D6:
	bl ov45_02231514
	cmp r0, #0xa
	bhi _0222E744
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222E6EA: ; jump table
	.short _0222E700 - _0222E6EA - 2 ; case 0
	.short _0222E70E - _0222E6EA - 2 ; case 1
	.short _0222E70E - _0222E6EA - 2 ; case 2
	.short _0222E70E - _0222E6EA - 2 ; case 3
	.short _0222E70E - _0222E6EA - 2 ; case 4
	.short _0222E70E - _0222E6EA - 2 ; case 5
	.short _0222E70E - _0222E6EA - 2 ; case 6
	.short _0222E70E - _0222E6EA - 2 ; case 7
	.short _0222E71C - _0222E6EA - 2 ; case 8
	.short _0222E72A - _0222E6EA - 2 ; case 9
	.short _0222E738 - _0222E6EA - 2 ; case 10
_0222E700:
	ldr r0, _0222E7C4 ; =_022577C0
	mov r2, #0
	ldr r1, [r0]
	mov r0, #0x4b
	lsl r0, r0, #2
	strb r2, [r1, r0]
	b _0222E744
_0222E70E:
	ldr r0, _0222E7C4 ; =_022577C0
	mov r2, #1
	ldr r1, [r0]
	mov r0, #0x4b
	lsl r0, r0, #2
	strb r2, [r1, r0]
	b _0222E744
_0222E71C:
	ldr r0, _0222E7C4 ; =_022577C0
	mov r2, #2
	ldr r1, [r0]
	mov r0, #0x4b
	lsl r0, r0, #2
	strb r2, [r1, r0]
	b _0222E744
_0222E72A:
	ldr r0, _0222E7C4 ; =_022577C0
	mov r2, #3
	ldr r1, [r0]
	mov r0, #0x4b
	lsl r0, r0, #2
	strb r2, [r1, r0]
	b _0222E744
_0222E738:
	ldr r0, _0222E7C4 ; =_022577C0
	mov r2, #4
	ldr r1, [r0]
	mov r0, #0x4b
	lsl r0, r0, #2
	strb r2, [r1, r0]
_0222E744:
	ldr r0, _0222E7C4 ; =_022577C0
	mov r1, #0x4b
	ldr r0, [r0]
	lsl r1, r1, #2
	ldrb r1, [r0, r1]
	cmp r1, #2
	bne _0222E7BC
	bl ov45_022302E4
	ldr r0, _0222E7C4 ; =_022577C0
	ldr r1, [r0]
	mov r0, #0x67
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov45_022320C4
	bl ov45_022321E0
	cmp r0, #3
	bhi _0222E7BC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222E778: ; jump table
	.short _0222E780 - _0222E778 - 2 ; case 0
	.short _0222E794 - _0222E778 - 2 ; case 1
	.short _0222E7A0 - _0222E778 - 2 ; case 2
	.short _0222E7B2 - _0222E778 - 2 ; case 3
_0222E780:
	ldr r1, _0222E7C4 ; =_022577C0
	ldr r0, _0222E7C8 ; =0x0000012E
	ldr r2, [r1]
	mov r3, #0
	strb r3, [r2, r0]
	ldr r1, [r1]
	mov r2, #4
	sub r0, r0, #1
	strb r2, [r1, r0]
	b _0222E7BC
_0222E794:
	ldr r0, _0222E7C4 ; =_022577C0
	mov r2, #1
	ldr r1, [r0]
	ldr r0, _0222E7C8 ; =0x0000012E
	strb r2, [r1, r0]
	b _0222E7BC
_0222E7A0:
	ldr r0, _0222E7C4 ; =_022577C0
	ldr r2, [r0]
	ldr r0, _0222E7C8 ; =0x0000012E
	ldrb r1, [r2, r0]
	cmp r1, #3
	beq _0222E7BC
	mov r1, #2
	strb r1, [r2, r0]
	b _0222E7BC
_0222E7B2:
	ldr r0, _0222E7C4 ; =_022577C0
	mov r2, #4
	ldr r1, [r0]
	ldr r0, _0222E7C8 ; =0x0000012E
	strb r2, [r1, r0]
_0222E7BC:
	bl ov45_0222E96C
	pop {r3, pc}
	nop
_0222E7C4: .word _022577C0
_0222E7C8: .word 0x0000012E
	thumb_func_end ov45_0222E6C8

