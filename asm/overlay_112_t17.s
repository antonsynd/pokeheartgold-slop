#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021E5EEC
	.public ov112_021E6004
	.extern ov112_021E5A5C
	.extern ov112_021E5A68
	.extern ov112_021E5E18
	.extern ov112_021E5EC4
	.extern ov112_021E6134
	.extern ov112_021FFAA4
	.extern ov112_021FFAF0
	.extern ov112_021FFAF8
	.extern ov112_021FFB24
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021E5EEC
ov112_021E5EEC: ; 0x021E5EEC
	push {r4, r5, r6, lr}
	sub sp, #0x80
	ldr r1, _021E5FF4 ; =ov112_021FFB24
	ldr r0, [r1, #0x28]
	ldrh r5, [r1, #0x30]
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r5, #0x80
	bls _021E5F00
	mov r5, #0x80
_021E5F00:
	ldr r1, _021E5FF4 ; =ov112_021FFB24
	mov r0, #0
	ldrb r1, [r1, #0x1d]
	cmp r1, #0x3a
	beq _021E5F10
	cmp r1, #0x3c
	beq _021E5F1C
	b _021E5F26
_021E5F10:
	ldr r1, _021E5FF8 ; =ov112_021FFAA4
	ldr r1, [r1, #0x50]
	cmp r1, #0
	beq _021E5F26
	ldr r0, _021E5FFC ; =ov112_021FFAF0
	b _021E5F26
_021E5F1C:
	ldr r1, _021E5FF8 ; =ov112_021FFAA4
	ldr r1, [r1, #0x58]
	cmp r1, #0
	beq _021E5F26
	ldr r0, _021E6000 ; =ov112_021FFAF8
_021E5F26:
	cmp r0, #0
	bne _021E5F84
	mov r0, #0x7f
	add r1, r4, #0
	and r1, r0
	beq _021E5F62
	mov r0, #0x80
	sub r0, r0, r1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, sp, #0
	strb r4, [r0]
	ldr r0, _021E5FF4 ; =ov112_021FFB24
	add r1, sp, #0
	ldr r0, [r0, #0x20]
	add r1, #1
	add r2, r5, #0
	bl MI_CpuCopy8
	add r1, r5, #1
	asr r3, r4, #8
	lsl r1, r1, #0x18
	lsl r3, r3, #0x18
	add r0, sp, #0
	lsr r1, r1, #0x18
	mov r2, #0xa
	lsr r3, r3, #0x18
	bl ov112_021E5A68
	b _021E5FCE
_021E5F62:
	mov r2, #0x80
	add r3, r4, #0
	ldr r0, _021E5FF4 ; =ov112_021FFB24
	and r3, r2
	mov r2, #2
	orr r2, r3
	asr r3, r4, #8
	lsl r1, r5, #0x18
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r0, [r0, #0x20]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl ov112_021E5A68
	b _021E5FCE
_021E5F84:
	ldr r1, [r0]
	ldr r0, _021E5FF4 ; =ov112_021FFB24
	ldrh r0, [r0, #0x36]
	ldrb r6, [r1, r0]
	cmp r6, #0x80
	bls _021E5F94
	bl OS_Halt
_021E5F94:
	cmp r6, #0x80
	bne _021E5FB6
	mov r1, #0x80
	add r3, r4, #0
	ldr r0, _021E5FF4 ; =ov112_021FFB24
	and r3, r1
	mov r2, #2
	orr r2, r3
	asr r3, r4, #8
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r0, [r0, #0x20]
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl ov112_021E5A68
	b _021E5FCE
_021E5FB6:
	ldr r0, _021E5FF4 ; =ov112_021FFB24
	mov r2, #0x80
	and r2, r4
	asr r3, r4, #8
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r0, [r0, #0x20]
	add r1, r6, #0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl ov112_021E5A68
_021E5FCE:
	ldr r0, _021E5FF4 ; =ov112_021FFB24
	ldr r1, [r0, #0x20]
	add r1, r1, r5
	str r1, [r0, #0x20]
	ldr r1, [r0, #0x28]
	add r1, r1, r5
	str r1, [r0, #0x28]
	ldrh r1, [r0, #0x30]
	sub r1, r1, r5
	strh r1, [r0, #0x30]
	ldrh r1, [r0, #0x36]
	add r1, r1, #1
	strh r1, [r0, #0x36]
	ldrh r1, [r0, #0x3a]
	add r1, r1, #1
	strh r1, [r0, #0x3a]
	add sp, #0x80
	pop {r4, r5, r6, pc}
	nop
_021E5FF4: .word ov112_021FFB24
_021E5FF8: .word ov112_021FFAA4
_021E5FFC: .word ov112_021FFAF0
_021E6000: .word ov112_021FFAF8
	thumb_func_end ov112_021E5EEC

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

