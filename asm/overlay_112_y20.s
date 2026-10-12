#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021E6004
	.extern ov112_021E5A5C
	.extern ov112_021E5A68
	.extern ov112_021E5E18
	.extern ov112_021E5EC4
	.extern ov112_021E5EEC
	.extern ov112_021E6134
	.extern ov112_021FFAA4
	.extern ov112_021FFB24
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021E6004
ov112_021E6004: ; 0x021E6004
	push {r3, lr}
	bl OS_GetTick
	ldr r2, _021E6114 ; =ov112_021FFAA4
	ldr r3, [r2, #0x3c]
	ldr r2, [r2, #0x40]
	sub r3, r0, r3
	sbc r1, r2
	lsr r0, r3, #0x1a
	lsl r1, r1, #6
	orr r1, r0
	lsl r0, r3, #6
	ldr r2, _021E6118 ; =0x000082EA
	mov r3, #0
	bl _ll_udiv
	bl _f_ulltof
	ldr r1, _021E611C ; =0x447A0000
	bl _fdiv
	ldr r0, _021E6120 ; =ov112_021FFB24
	ldrb r1, [r0, #0x1d]
	cmp r1, #0xb0
	bgt _021E604C
	bge _021E60F8
	cmp r1, #0x3e
	bgt _021E6106
	cmp r1, #0x3a
	blt _021E6106
	beq _021E607C
	cmp r1, #0x3c
	beq _021E60A6
	cmp r1, #0x3e
	beq _021E60CE
	b _021E6106
_021E604C:
	cmp r1, #0xb2
	bgt _021E6054
	beq _021E60F8
	b _021E6106
_021E6054:
	sub r1, #0xb4
	cmp r1, #0xa
	bhi _021E6106
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E6066: ; jump table
	.short _021E60F8 - _021E6066 - 2 ; case 0
	.short _021E6106 - _021E6066 - 2 ; case 1
	.short _021E60F8 - _021E6066 - 2 ; case 2
	.short _021E6106 - _021E6066 - 2 ; case 3
	.short _021E60F8 - _021E6066 - 2 ; case 4
	.short _021E6106 - _021E6066 - 2 ; case 5
	.short _021E60F8 - _021E6066 - 2 ; case 6
	.short _021E6106 - _021E6066 - 2 ; case 7
	.short _021E60F8 - _021E6066 - 2 ; case 8
	.short _021E6106 - _021E6066 - 2 ; case 9
	.short _021E60F8 - _021E6066 - 2 ; case 10
_021E607C:
	ldr r0, _021E6120 ; =ov112_021FFB24
	mov r1, #0x3c
	strb r1, [r0, #0x1d]
	ldr r1, _021E6114 ; =ov112_021FFAA4
	ldr r2, _021E6124 ; =0x000028BE
	ldr r0, [r1, #0x58]
	cmp r0, #0
	beq _021E6096
	mov r1, #0xd7
	lsl r1, r1, #8
	bl ov112_021E5EC4
	b _021E60A0
_021E6096:
	ldr r0, [r1, #0x2c]
	mov r1, #0xd7
	lsl r1, r1, #8
	bl ov112_021E5EC4
_021E60A0:
	bl ov112_021E5EEC
	pop {r3, pc}
_021E60A6:
	mov r1, #0x3e
	strb r1, [r0, #0x1d]
	ldr r1, _021E6114 ; =ov112_021FFAA4
	mov r2, #0x28
	ldr r0, [r1, #0x24]
	ldr r1, [r1, #0x30]
	add r0, #0x10
	add r1, #8
	bl MI_CpuCopy8
	ldr r0, _021E6114 ; =ov112_021FFAA4
	mov r2, #0x89
	ldr r0, [r0, #0x30]
	ldr r1, _021E6128 ; =0x0000D480
	lsl r2, r2, #2
	bl ov112_021E5EC4
	bl ov112_021E5EEC
	pop {r3, pc}
_021E60CE:
	ldrb r1, [r0, #0x1c]
	cmp r1, #0x52
	bne _021E60EA
	mov r1, #0x48
	strb r1, [r0, #0x1d]
	ldr r1, _021E6114 ; =ov112_021FFAA4
	ldr r0, _021E612C ; =0x0000CE80
	ldr r1, [r1, #0x38]
	ldr r2, _021E6130 ; =0x00000D4C
	bl ov112_021E5EC4
	bl ov112_021E6134
	pop {r3, pc}
_021E60EA:
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x24
	mov r3, #1
	bl ov112_021E5A68
	pop {r3, pc}
_021E60F8:
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x24
	mov r3, #1
	bl ov112_021E5A68
	pop {r3, pc}
_021E6106:
	mov r0, #0xc
	bl ov112_021E5E18
	bl ov112_021E5A5C
	pop {r3, pc}
	nop
_021E6114: .word ov112_021FFAA4
_021E6118: .word 0x000082EA
_021E611C: .word 0x447A0000
_021E6120: .word ov112_021FFB24
_021E6124: .word 0x000028BE
_021E6128: .word 0x0000D480
_021E612C: .word 0x0000CE80
_021E6130: .word 0x00000D4C
	thumb_func_end ov112_021E6004

