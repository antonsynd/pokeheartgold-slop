#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021E6164
	.public ov112_021E6A6C
	.extern ov112_021E5A5C
	.extern ov112_021E5A68
	.extern ov112_021E5E18
	.extern ov112_021E5E28
	.extern ov112_021E5E48
	.extern ov112_021E5EC4
	.extern ov112_021E5EEC
	.extern ov112_021E6134
	.extern ov112_021FFAA4
	.extern ov112_021FFB24
	.extern ov112_021FFB64
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021E6164
ov112_021E6164: ; 0x021E6164
	push {r3, r4, r5, r6, r7, lr}
	bl OS_GetTick
	ldr r2, _021E64C8 ; =ov112_021FFAA4
	ldr r3, [r2, #0x3c]
	ldr r2, [r2, #0x40]
	sub r3, r0, r3
	sbc r1, r2
	lsr r0, r3, #0x1a
	lsl r1, r1, #6
	orr r1, r0
	lsl r0, r3, #6
	ldr r2, _021E64CC ; =0x000082EA
	mov r3, #0
	bl _ll_udiv
	bl _f_ulltof
	ldr r1, _021E64D0 ; =0x447A0000
	bl _fdiv
	ldr r1, _021E64D4 ; =ov112_021FFB24
	ldrb r0, [r1, #0x1d]
	sub r0, #0x46
	cmp r0, #6
	bls _021E619C
	bl _021E6A50
_021E619C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E61A8: ; jump table
	.short _021E61B6 - _021E61A8 - 2 ; case 0
	.short _021E6A50 - _021E61A8 - 2 ; case 1
	.short _021E61CC - _021E61A8 - 2 ; case 2
	.short _021E6A50 - _021E61A8 - 2 ; case 3
	.short _021E63C2 - _021E61A8 - 2 ; case 4
	.short _021E6A50 - _021E61A8 - 2 ; case 5
	.short _021E6A44 - _021E61A8 - 2 ; case 6
_021E61B6:
	mov r0, #0x48
	strb r0, [r1, #0x1d]
	ldr r1, _021E64C8 ; =ov112_021FFAA4
	ldr r0, _021E64D8 ; =0x0000CE80
	ldr r1, [r1, #0x38]
	ldr r2, _021E64DC ; =0x00000D4C
	bl ov112_021E5EC4
	bl ov112_021E6134
	pop {r3, r4, r5, r6, r7, pc}
_021E61CC:
	ldr r0, _021E64C8 ; =ov112_021FFAA4
	mov r4, #0
	ldr r0, [r0, #0x38]
	add r5, r4, #0
	ldrh r2, [r0, #0xa]
	asr r1, r2, #8
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	mov r1, #0xff
	lsl r2, r2, #8
	lsl r1, r1, #8
	and r1, r2
	orr r1, r3
	strh r1, [r0, #0xa]
_021E61E8:
	ldr r0, _021E64C8 ; =ov112_021FFAA4
	mov r1, #0xff
	ldr r0, [r0, #0x38]
	lsl r1, r1, #0x18
	add r3, r0, r5
	ldr r0, [r3, #0x70]
	add r4, r4, #1
	lsl r2, r0, #0x18
	add r7, r2, #0
	and r7, r1
	lsl r2, r0, #8
	lsr r1, r1, #8
	and r2, r1
	lsr r1, r0, #0x18
	lsl r1, r1, #0x18
	lsr r6, r1, #0x18
	lsr r1, r0, #8
	mov r0, #0xff
	lsl r0, r0, #8
	and r0, r1
	orr r0, r6
	orr r0, r2
	orr r0, r7
	add r5, r5, #4
	str r0, [r3, #0x70]
	cmp r4, #7
	blt _021E61E8
	ldr r7, _021E64C8 ; =ov112_021FFAA4
	mov r1, #0xff
	ldr r5, [r7, #0x38]
	lsl r1, r1, #0x18
	ldr r0, [r5]
	lsl r2, r0, #0x18
	add r4, r2, #0
	lsl r3, r0, #8
	lsr r2, r1, #8
	and r3, r2
	lsr r2, r0, #0x18
	lsl r2, r2, #0x18
	lsr r6, r2, #0x18
	lsr r2, r0, #8
	lsr r0, r1, #0x10
	and r0, r2
	orr r0, r6
	and r4, r1
	orr r0, r3
	orr r0, r4
	str r0, [r5]
	ldr r0, [r7, #0x38]
	mov r6, #0
	ldr r2, [r0, #4]
	lsl r3, r2, #0x18
	add r5, r3, #0
	lsl r4, r2, #8
	lsr r3, r1, #8
	and r4, r3
	lsr r3, r2, #0x18
	and r5, r1
	lsl r3, r3, #0x18
	lsr r2, r2, #8
	lsr r1, r1, #0x10
	lsr r3, r3, #0x18
	and r1, r2
	orr r1, r3
	orr r1, r4
	orr r1, r5
	str r1, [r0, #4]
	ldr r0, [r7, #0x38]
	mov r7, #0xff
	add r0, #0x8c
	lsl r7, r7, #8
_021E6276:
	ldr r1, [r0]
	mov r2, #0xff
	lsl r3, r1, #0x18
	add r5, r3, #0
	lsl r2, r2, #0x18
	lsl r3, r1, #8
	and r5, r2
	lsr r2, r2, #8
	add r4, r3, #0
	and r4, r2
	lsr r2, r1, #0x18
	lsl r2, r2, #0x18
	lsr r3, r2, #0x18
	lsr r2, r1, #8
	mov r1, #0xff
	lsl r1, r1, #8
	and r1, r2
	orr r1, r3
	orr r1, r4
	orr r1, r5
	str r1, [r0]
	add r1, r0, #0
	add r1, #0x78
	ldrh r2, [r1]
	add r6, r6, #1
	asr r1, r2, #8
	lsl r3, r2, #8
	mov r2, #0xff
	lsl r1, r1, #0x18
	lsl r2, r2, #8
	lsr r1, r1, #0x18
	and r2, r3
	orr r2, r1
	add r1, r0, #0
	add r1, #0x78
	strh r2, [r1]
	add r1, r0, #0
	add r1, #0x7a
	ldrh r2, [r1]
	asr r1, r2, #8
	lsl r3, r2, #8
	mov r2, #0xff
	lsl r1, r1, #0x18
	lsl r2, r2, #8
	lsr r1, r1, #0x18
	and r2, r3
	orr r2, r1
	add r1, r0, #0
	add r1, #0x7a
	strh r2, [r1]
	ldr r1, [r0, #0x7c]
	mov r2, #0xff
	lsl r3, r1, #0x18
	add r5, r3, #0
	lsl r2, r2, #0x18
	lsl r3, r1, #8
	and r5, r2
	lsr r2, r2, #8
	add r4, r3, #0
	and r4, r2
	lsr r2, r1, #0x18
	lsl r2, r2, #0x18
	lsr r3, r2, #0x18
	lsr r2, r1, #8
	mov r1, #0xff
	lsl r1, r1, #8
	and r1, r2
	orr r1, r3
	orr r1, r4
	orr r1, r5
	str r1, [r0, #0x7c]
	add r1, r0, #0
	add r1, #0x80
	ldr r4, [r1]
	mov r1, #0xff
	lsl r2, r4, #0x18
	add r3, r2, #0
	lsl r1, r1, #0x18
	and r3, r1
	lsl r2, r4, #8
	lsr r1, r1, #8
	and r2, r1
	lsr r1, r4, #0x18
	lsl r1, r1, #0x18
	lsr r4, r4, #8
	lsr r1, r1, #0x18
	and r4, r7
	orr r1, r4
	orr r1, r2
	add r2, r3, #0
	orr r2, r1
	add r1, r0, #0
	add r1, #0x80
	add r0, #0x88
	str r2, [r1]
	cmp r6, #0x18
	blt _021E6276
	ldr r1, _021E64D4 ; =ov112_021FFB24
	ldrb r0, [r1, #0x1c]
	cmp r0, #0x60
	bgt _021E6344
	beq _021E638C
	b _021E63A8
_021E6344:
	sub r0, #0xb0
	cmp r0, #0xe
	bhi _021E63A8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E6356: ; jump table
	.short _021E6374 - _021E6356 - 2 ; case 0
	.short _021E63A8 - _021E6356 - 2 ; case 1
	.short _021E6374 - _021E6356 - 2 ; case 2
	.short _021E63A8 - _021E6356 - 2 ; case 3
	.short _021E6374 - _021E6356 - 2 ; case 4
	.short _021E63A8 - _021E6356 - 2 ; case 5
	.short _021E6374 - _021E6356 - 2 ; case 6
	.short _021E63A8 - _021E6356 - 2 ; case 7
	.short _021E6374 - _021E6356 - 2 ; case 8
	.short _021E63A8 - _021E6356 - 2 ; case 9
	.short _021E6374 - _021E6356 - 2 ; case 10
	.short _021E63A8 - _021E6356 - 2 ; case 11
	.short _021E6374 - _021E6356 - 2 ; case 12
	.short _021E63A8 - _021E6356 - 2 ; case 13
	.short _021E6374 - _021E6356 - 2 ; case 14
_021E6374:
	mov r0, #0x4a
	strb r0, [r1, #0x1d]
	ldr r1, _021E64C8 ; =ov112_021FFAA4
	mov r0, #0x2e
	ldr r1, [r1, #0x34]
	lsl r0, r0, #0xa
	mov r2, #4
	bl ov112_021E5EC4
	bl ov112_021E6134
	pop {r3, r4, r5, r6, r7, pc}
_021E638C:
	mov r0, #0x4c
	strb r0, [r1, #0x1d]
	ldr r1, _021E64C8 ; =ov112_021FFAA4
	ldr r0, _021E64E0 ; =0x0000DE24
	ldr r2, [r1, #0x30]
	mov r1, #0x89
	lsl r1, r1, #2
	add r1, r2, r1
	ldr r2, _021E64E4 ; =0x00001568
	bl ov112_021E5EC4
	bl ov112_021E6134
	pop {r3, r4, r5, r6, r7, pc}
_021E63A8:
	ldr r0, _021E64D4 ; =ov112_021FFB24
	mov r1, #0x4a
	strb r1, [r0, #0x1d]
	ldr r1, _021E64C8 ; =ov112_021FFAA4
	mov r0, #0x2e
	ldr r1, [r1, #0x34]
	ldr r2, _021E64E8 ; =0x000006C8
	lsl r0, r0, #0xa
	bl ov112_021E5EC4
	bl ov112_021E6134
	pop {r3, r4, r5, r6, r7, pc}
_021E63C2:
	ldrb r0, [r1, #0x1c]
	cmp r0, #0x52
	bgt _021E63D0
	bge _021E6404
	cmp r0, #0x40
	beq _021E6412
	b _021E6A3E
_021E63D0:
	add r2, r0, #0
	sub r2, #0xb0
	cmp r2, #0xe
	bls _021E63DA
	b _021E6A3E
_021E63DA:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021E63E6: ; jump table
	.short _021E642E - _021E63E6 - 2 ; case 0
	.short _021E6A3E - _021E63E6 - 2 ; case 1
	.short _021E645E - _021E63E6 - 2 ; case 2
	.short _021E6A3E - _021E63E6 - 2 ; case 3
	.short _021E6490 - _021E63E6 - 2 ; case 4
	.short _021E6A3E - _021E63E6 - 2 ; case 5
	.short _021E64C2 - _021E63E6 - 2 ; case 6
	.short _021E6A3E - _021E63E6 - 2 ; case 7
	.short _021E6526 - _021E63E6 - 2 ; case 8
	.short _021E6A3E - _021E63E6 - 2 ; case 9
	.short _021E6664 - _021E63E6 - 2 ; case 10
	.short _021E6A3E - _021E63E6 - 2 ; case 11
	.short _021E67A4 - _021E63E6 - 2 ; case 12
	.short _021E6A3E - _021E63E6 - 2 ; case 13
	.short _021E68FE - _021E63E6 - 2 ; case 14
_021E6404:
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x24
	mov r3, #1
	bl ov112_021E5A68
	pop {r3, r4, r5, r6, r7, pc}
_021E6412:
	mov r0, #0x4c
	strb r0, [r1, #0x1d]
	ldr r1, _021E64C8 ; =ov112_021FFAA4
	ldr r0, _021E64E0 ; =0x0000DE24
	ldr r2, [r1, #0x30]
	mov r1, #0x89
	lsl r1, r1, #2
	add r1, r2, r1
	ldr r2, _021E64E4 ; =0x00001568
	bl ov112_021E5EC4
	bl ov112_021E6134
	pop {r3, r4, r5, r6, r7, pc}
_021E642E:
	ldr r0, _021E64C8 ; =ov112_021FFAA4
	ldr r2, [r0, #0x34]
	ldrb r0, [r2]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	beq _021E6448
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x9c
	mov r3, #1
	bl ov112_021E5A68
	pop {r3, r4, r5, r6, r7, pc}
_021E6448:
	mov r0, #0xb0
	strb r0, [r1, #0x1d]
	add r0, r2, #4
	mov r2, #9
	ldr r1, _021E64EC ; =0x0000B804
	lsl r2, r2, #6
	bl ov112_021E5EC4
	bl ov112_021E5EEC
	pop {r3, r4, r5, r6, r7, pc}
_021E645E:
	ldr r0, _021E64C8 ; =ov112_021FFAA4
	ldr r3, [r0, #0x34]
	ldrb r0, [r3]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	beq _021E6478
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x9c
	mov r3, #1
	bl ov112_021E5A68
	pop {r3, r4, r5, r6, r7, pc}
_021E6478:
	mov r0, #0xb2
	mov r2, #0x91
	strb r0, [r1, #0x1d]
	lsl r2, r2, #2
	add r0, r3, r2
	ldr r1, _021E64F0 ; =0x0000BA44
	add r2, #0xb8
	bl ov112_021E5EC4
	bl ov112_021E5EEC
	pop {r3, r4, r5, r6, r7, pc}
_021E6490:
	ldr r0, _021E64C8 ; =ov112_021FFAA4
	ldr r3, [r0, #0x34]
	ldrb r0, [r3]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	beq _021E64AA
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x9c
	mov r3, #1
	bl ov112_021E5A68
	pop {r3, r4, r5, r6, r7, pc}
_021E64AA:
	mov r2, #0xb4
	strb r2, [r1, #0x1d]
	mov r0, #0x15
	lsl r0, r0, #6
	ldr r1, _021E64F4 ; =0x0000BD40
	add r0, r3, r0
	add r2, #0xd4
	bl ov112_021E5EC4
	bl ov112_021E5EEC
	pop {r3, r4, r5, r6, r7, pc}
_021E64C2:
	ldr r0, _021E64C8 ; =ov112_021FFAA4
	b _021E64F8
	nop
_021E64C8: .word ov112_021FFAA4
_021E64CC: .word 0x000082EA
_021E64D0: .word 0x447A0000
_021E64D4: .word ov112_021FFB24
_021E64D8: .word 0x0000CE80
_021E64DC: .word 0x00000D4C
_021E64E0: .word 0x0000DE24
_021E64E4: .word 0x00001568
_021E64E8: .word 0x000006C8
_021E64EC: .word 0x0000B804
_021E64F0: .word 0x0000BA44
_021E64F4: .word 0x0000BD40
_021E64F8:
	ldr r2, [r0, #0x34]
	ldrb r2, [r2]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x1f
	beq _021E6510
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x9c
	mov r3, #1
	bl ov112_021E5A68
	pop {r3, r4, r5, r6, r7, pc}
_021E6510:
	mov r2, #0xb6
	strb r2, [r1, #0x1d]
	mov r1, #0xbf
	ldr r0, [r0, #0xc]
	ldr r2, _021E6824 ; =0x00000CBC
	lsl r1, r1, #8
	bl ov112_021E5EC4
	bl ov112_021E5EEC
	pop {r3, r4, r5, r6, r7, pc}
_021E6526:
	ldr r2, _021E6828 ; =ov112_021FFAA4
	ldr r1, [r2, #4]
	cmp r1, #3
	bhi _021E65A2
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E653A: ; jump table
	.short _021E6542 - _021E653A - 2 ; case 0
	.short _021E655A - _021E653A - 2 ; case 1
	.short _021E6572 - _021E653A - 2 ; case 2
	.short _021E658A - _021E653A - 2 ; case 3
_021E6542:
	ldr r1, [r2, #0x34]
	ldrb r1, [r1]
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1f
	beq _021E65A2
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x9c
	mov r3, #1
	bl ov112_021E5A68
	pop {r3, r4, r5, r6, r7, pc}
_021E655A:
	ldr r1, [r2, #0x34]
	ldrb r1, [r1]
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1f
	beq _021E65A2
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x9c
	mov r3, #1
	bl ov112_021E5A68
	pop {r3, r4, r5, r6, r7, pc}
_021E6572:
	ldr r1, [r2, #0x34]
	ldrb r1, [r1]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x1f
	beq _021E65A2
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x9c
	mov r3, #1
	bl ov112_021E5A68
	pop {r3, r4, r5, r6, r7, pc}
_021E658A:
	ldr r1, [r2, #0x34]
	ldrb r1, [r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1f
	beq _021E65A2
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x9c
	mov r3, #1
	bl ov112_021E5A68
	pop {r3, r4, r5, r6, r7, pc}
_021E65A2:
	ldr r1, _021E6828 ; =ov112_021FFAA4
	mov r5, #0xe
	ldr r3, [r1, #0x34]
	ldrb r2, [r3]
	lsl r4, r2, #0x1c
	lsr r4, r4, #0x1c
	and r5, r4
	cmp r5, #0xe
	bne _021E6640
	mov r0, #0xf
	bic r2, r0
	mov r0, #1
	orr r0, r4
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	mov r0, #0xf
	and r0, r4
	orr r0, r2
	strb r0, [r3]
	ldr r0, [r1, #4]
	cmp r0, #3
	bhi _021E663A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E65DA: ; jump table
	.short _021E65E2 - _021E65DA - 2 ; case 0
	.short _021E65F8 - _021E65DA - 2 ; case 1
	.short _021E6610 - _021E65DA - 2 ; case 2
	.short _021E6628 - _021E65DA - 2 ; case 3
_021E65E2:
	ldr r0, _021E682C ; =ov112_021FFB24
	mov r2, #0xb0
	strb r2, [r0, #0x1d]
	ldr r0, [r1, #0x34]
	mov r2, #9
	ldr r1, _021E6830 ; =0x0000B804
	add r0, r0, #4
	lsl r2, r2, #6
	bl ov112_021E5EC4
	b _021E663A
_021E65F8:
	ldr r0, _021E682C ; =ov112_021FFB24
	mov r2, #0xb2
	strb r2, [r0, #0x1d]
	ldr r0, [r1, #0x34]
	mov r2, #0x91
	lsl r2, r2, #2
	add r0, r0, r2
	ldr r1, _021E6834 ; =0x0000BA44
	add r2, #0xb8
	bl ov112_021E5EC4
	b _021E663A
_021E6610:
	ldr r0, _021E682C ; =ov112_021FFB24
	mov r2, #0xb4
	strb r2, [r0, #0x1d]
	mov r0, #0x15
	ldr r1, [r1, #0x34]
	lsl r0, r0, #6
	add r0, r1, r0
	ldr r1, _021E6838 ; =0x0000BD40
	add r2, #0xd4
	bl ov112_021E5EC4
	b _021E663A
_021E6628:
	ldr r0, _021E682C ; =ov112_021FFB24
	mov r2, #0xb6
	strb r2, [r0, #0x1d]
	ldr r0, [r1, #0xc]
	mov r1, #0xbf
	ldr r2, _021E6824 ; =0x00000CBC
	lsl r1, r1, #8
	bl ov112_021E5EC4
_021E663A:
	bl ov112_021E5EEC
	pop {r3, r4, r5, r6, r7, pc}
_021E6640:
	mov r3, #1
	add r1, r4, #0
	tst r1, r3
	beq _021E6654
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x9e
	bl ov112_021E5A68
	pop {r3, r4, r5, r6, r7, pc}
_021E6654:
	ldr r1, _021E682C ; =ov112_021FFB24
	mov r2, #0x24
	strb r0, [r1, #0x1d]
	mov r0, #0
	add r1, r0, #0
	bl ov112_021E5A68
	pop {r3, r4, r5, r6, r7, pc}
_021E6664:
	ldr r2, _021E6828 ; =ov112_021FFAA4
	ldr r1, [r2, #4]
	cmp r1, #3
	bhi _021E66E0
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E6678: ; jump table
	.short _021E6680 - _021E6678 - 2 ; case 0
	.short _021E6698 - _021E6678 - 2 ; case 1
	.short _021E66B0 - _021E6678 - 2 ; case 2
	.short _021E66C8 - _021E6678 - 2 ; case 3
_021E6680:
	ldr r1, [r2, #0x34]
	ldrb r1, [r1]
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1f
	beq _021E66E0
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x9c
	mov r3, #1
	bl ov112_021E5A68
	pop {r3, r4, r5, r6, r7, pc}
_021E6698:
	ldr r1, [r2, #0x34]
	ldrb r1, [r1]
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1f
	beq _021E66E0
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x9c
	mov r3, #1
	bl ov112_021E5A68
	pop {r3, r4, r5, r6, r7, pc}
_021E66B0:
	ldr r1, [r2, #0x34]
	ldrb r1, [r1]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x1f
	beq _021E66E0
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x9c
	mov r3, #1
	bl ov112_021E5A68
	pop {r3, r4, r5, r6, r7, pc}
_021E66C8:
	ldr r1, [r2, #0x34]
	ldrb r1, [r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1f
	beq _021E66E0
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x9c
	mov r3, #1
	bl ov112_021E5A68
	pop {r3, r4, r5, r6, r7, pc}
_021E66E0:
	ldr r1, _021E6828 ; =ov112_021FFAA4
	mov r5, #0xd
	ldr r4, [r1, #0x34]
	ldrb r2, [r4]
	lsl r3, r2, #0x1c
	lsr r3, r3, #0x1c
	and r5, r3
	cmp r5, #0xd
	bne _021E677E
	mov r0, #0xf
	bic r2, r0
	mov r0, #2
	orr r0, r3
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	mov r0, #0xf
	and r0, r3
	orr r0, r2
	strb r0, [r4]
	ldr r0, [r1, #4]
	cmp r0, #3
	bhi _021E6778
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E6718: ; jump table
	.short _021E6720 - _021E6718 - 2 ; case 0
	.short _021E6736 - _021E6718 - 2 ; case 1
	.short _021E674E - _021E6718 - 2 ; case 2
	.short _021E6766 - _021E6718 - 2 ; case 3
_021E6720:
	ldr r0, _021E682C ; =ov112_021FFB24
	mov r2, #0xb0
	strb r2, [r0, #0x1d]
	ldr r0, [r1, #0x34]
	mov r2, #9
	ldr r1, _021E6830 ; =0x0000B804
	add r0, r0, #4
	lsl r2, r2, #6
	bl ov112_021E5EC4
	b _021E6778
_021E6736:
	ldr r0, _021E682C ; =ov112_021FFB24
	mov r2, #0xb2
	strb r2, [r0, #0x1d]
	ldr r0, [r1, #0x34]
	mov r2, #0x91
	lsl r2, r2, #2
	add r0, r0, r2
	ldr r1, _021E6834 ; =0x0000BA44
	add r2, #0xb8
	bl ov112_021E5EC4
	b _021E6778
_021E674E:
	ldr r0, _021E682C ; =ov112_021FFB24
	mov r2, #0xb4
	strb r2, [r0, #0x1d]
	mov r0, #0x15
	ldr r1, [r1, #0x34]
	lsl r0, r0, #6
	add r0, r1, r0
	ldr r1, _021E6838 ; =0x0000BD40
	add r2, #0xd4
	bl ov112_021E5EC4
	b _021E6778
_021E6766:
	ldr r0, _021E682C ; =ov112_021FFB24
	mov r2, #0xb6
	strb r2, [r0, #0x1d]
	ldr r0, [r1, #0xc]
	mov r1, #0xbf
	ldr r2, _021E6824 ; =0x00000CBC
	lsl r1, r1, #8
	bl ov112_021E5EC4
_021E6778:
	bl ov112_021E5EEC
	pop {r3, r4, r5, r6, r7, pc}
_021E677E:
	mov r1, #2
	tst r1, r3
	beq _021E6792
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x9e
	mov r3, #1
	bl ov112_021E5A68
	pop {r3, r4, r5, r6, r7, pc}
_021E6792:
	ldr r1, _021E682C ; =ov112_021FFB24
	mov r2, #0x24
	strb r0, [r1, #0x1d]
	mov r0, #0
	add r1, r0, #0
	mov r3, #1
	bl ov112_021E5A68
	pop {r3, r4, r5, r6, r7, pc}
_021E67A4:
	ldr r2, _021E6828 ; =ov112_021FFAA4
	ldr r1, [r2, #4]
	cmp r1, #3
	bhi _021E6820
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E67B8: ; jump table
	.short _021E67C0 - _021E67B8 - 2 ; case 0
	.short _021E67D8 - _021E67B8 - 2 ; case 1
	.short _021E67F0 - _021E67B8 - 2 ; case 2
	.short _021E6808 - _021E67B8 - 2 ; case 3
_021E67C0:
	ldr r1, [r2, #0x34]
	ldrb r1, [r1]
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1f
	beq _021E6820
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x9c
	mov r3, #1
	bl ov112_021E5A68
	pop {r3, r4, r5, r6, r7, pc}
_021E67D8:
	ldr r1, [r2, #0x34]
	ldrb r1, [r1]
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1f
	beq _021E6820
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x9c
	mov r3, #1
	bl ov112_021E5A68
	pop {r3, r4, r5, r6, r7, pc}
_021E67F0:
	ldr r1, [r2, #0x34]
	ldrb r1, [r1]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x1f
	beq _021E6820
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x9c
	mov r3, #1
	bl ov112_021E5A68
	pop {r3, r4, r5, r6, r7, pc}
_021E6808:
	ldr r1, [r2, #0x34]
	ldrb r1, [r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1f
	beq _021E6820
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x9c
	mov r3, #1
	bl ov112_021E5A68
	pop {r3, r4, r5, r6, r7, pc}
_021E6820:
	ldr r1, _021E6828 ; =ov112_021FFAA4
	b _021E683C
	.balign 4, 0
_021E6824: .word 0x00000CBC
_021E6828: .word ov112_021FFAA4
_021E682C: .word ov112_021FFB24
_021E6830: .word 0x0000B804
_021E6834: .word 0x0000BA44
_021E6838: .word 0x0000BD40
_021E683C:
	mov r5, #0xb
	ldr r4, [r1, #0x34]
	ldrb r2, [r4]
	lsl r3, r2, #0x1c
	lsr r3, r3, #0x1c
	and r5, r3
	cmp r5, #0xb
	bne _021E68D8
	mov r0, #0xf
	bic r2, r0
	mov r0, #4
	orr r0, r3
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	mov r0, #0xf
	and r0, r3
	orr r0, r2
	strb r0, [r4]
	ldr r0, [r1, #4]
	cmp r0, #3
	bhi _021E68D2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E6872: ; jump table
	.short _021E687A - _021E6872 - 2 ; case 0
	.short _021E6890 - _021E6872 - 2 ; case 1
	.short _021E68A8 - _021E6872 - 2 ; case 2
	.short _021E68C0 - _021E6872 - 2 ; case 3
_021E687A:
	ldr r0, _021E6A54 ; =ov112_021FFB24
	mov r2, #0xb0
	strb r2, [r0, #0x1d]
	ldr r0, [r1, #0x34]
	mov r2, #9
	ldr r1, _021E6A58 ; =0x0000B804
	add r0, r0, #4
	lsl r2, r2, #6
	bl ov112_021E5EC4
	b _021E68D2
_021E6890:
	ldr r0, _021E6A54 ; =ov112_021FFB24
	mov r2, #0xb2
	strb r2, [r0, #0x1d]
	ldr r0, [r1, #0x34]
	mov r2, #0x91
	lsl r2, r2, #2
	add r0, r0, r2
	ldr r1, _021E6A5C ; =0x0000BA44
	add r2, #0xb8
	bl ov112_021E5EC4
	b _021E68D2
_021E68A8:
	ldr r0, _021E6A54 ; =ov112_021FFB24
	mov r2, #0xb4
	strb r2, [r0, #0x1d]
	mov r0, #0x15
	ldr r1, [r1, #0x34]
	lsl r0, r0, #6
	add r0, r1, r0
	ldr r1, _021E6A60 ; =0x0000BD40
	add r2, #0xd4
	bl ov112_021E5EC4
	b _021E68D2
_021E68C0:
	ldr r0, _021E6A54 ; =ov112_021FFB24
	mov r2, #0xb6
	strb r2, [r0, #0x1d]
	ldr r0, [r1, #0xc]
	mov r1, #0xbf
	ldr r2, _021E6A64 ; =0x00000CBC
	lsl r1, r1, #8
	bl ov112_021E5EC4
_021E68D2:
	bl ov112_021E5EEC
	pop {r3, r4, r5, r6, r7, pc}
_021E68D8:
	mov r1, #4
	tst r1, r3
	beq _021E68EC
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x9e
	mov r3, #1
	bl ov112_021E5A68
	pop {r3, r4, r5, r6, r7, pc}
_021E68EC:
	ldr r1, _021E6A54 ; =ov112_021FFB24
	mov r2, #0x24
	strb r0, [r1, #0x1d]
	mov r0, #0
	add r1, r0, #0
	mov r3, #1
	bl ov112_021E5A68
	pop {r3, r4, r5, r6, r7, pc}
_021E68FE:
	ldr r2, _021E6A68 ; =ov112_021FFAA4
	ldr r1, [r2, #4]
	cmp r1, #3
	bhi _021E697A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E6912: ; jump table
	.short _021E691A - _021E6912 - 2 ; case 0
	.short _021E6932 - _021E6912 - 2 ; case 1
	.short _021E694A - _021E6912 - 2 ; case 2
	.short _021E6962 - _021E6912 - 2 ; case 3
_021E691A:
	ldr r1, [r2, #0x34]
	ldrb r1, [r1]
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1f
	beq _021E697A
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x9c
	mov r3, #1
	bl ov112_021E5A68
	pop {r3, r4, r5, r6, r7, pc}
_021E6932:
	ldr r1, [r2, #0x34]
	ldrb r1, [r1]
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1f
	beq _021E697A
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x9c
	mov r3, #1
	bl ov112_021E5A68
	pop {r3, r4, r5, r6, r7, pc}
_021E694A:
	ldr r1, [r2, #0x34]
	ldrb r1, [r1]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x1f
	beq _021E697A
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x9c
	mov r3, #1
	bl ov112_021E5A68
	pop {r3, r4, r5, r6, r7, pc}
_021E6962:
	ldr r1, [r2, #0x34]
	ldrb r1, [r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1f
	beq _021E697A
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x9c
	mov r3, #1
	bl ov112_021E5A68
	pop {r3, r4, r5, r6, r7, pc}
_021E697A:
	ldr r1, _021E6A68 ; =ov112_021FFAA4
	mov r5, #7
	ldr r4, [r1, #0x34]
	ldrb r2, [r4]
	lsl r3, r2, #0x1c
	lsr r3, r3, #0x1c
	and r5, r3
	cmp r5, #7
	bne _021E6A18
	mov r0, #0xf
	bic r2, r0
	mov r0, #8
	orr r0, r3
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	mov r0, #0xf
	and r0, r3
	orr r0, r2
	strb r0, [r4]
	ldr r0, [r1, #4]
	cmp r0, #3
	bhi _021E6A12
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E69B2: ; jump table
	.short _021E69BA - _021E69B2 - 2 ; case 0
	.short _021E69D0 - _021E69B2 - 2 ; case 1
	.short _021E69E8 - _021E69B2 - 2 ; case 2
	.short _021E6A00 - _021E69B2 - 2 ; case 3
_021E69BA:
	ldr r0, _021E6A54 ; =ov112_021FFB24
	mov r2, #0xb0
	strb r2, [r0, #0x1d]
	ldr r0, [r1, #0x34]
	mov r2, #9
	ldr r1, _021E6A58 ; =0x0000B804
	add r0, r0, #4
	lsl r2, r2, #6
	bl ov112_021E5EC4
	b _021E6A12
_021E69D0:
	ldr r0, _021E6A54 ; =ov112_021FFB24
	mov r2, #0xb2
	strb r2, [r0, #0x1d]
	ldr r0, [r1, #0x34]
	mov r2, #0x91
	lsl r2, r2, #2
	add r0, r0, r2
	ldr r1, _021E6A5C ; =0x0000BA44
	add r2, #0xb8
	bl ov112_021E5EC4
	b _021E6A12
_021E69E8:
	ldr r0, _021E6A54 ; =ov112_021FFB24
	mov r2, #0xb4
	strb r2, [r0, #0x1d]
	mov r0, #0x15
	ldr r1, [r1, #0x34]
	lsl r0, r0, #6
	add r0, r1, r0
	ldr r1, _021E6A60 ; =0x0000BD40
	add r2, #0xd4
	bl ov112_021E5EC4
	b _021E6A12
_021E6A00:
	ldr r0, _021E6A54 ; =ov112_021FFB24
	mov r2, #0xb6
	strb r2, [r0, #0x1d]
	ldr r0, [r1, #0xc]
	mov r1, #0xbf
	ldr r2, _021E6A64 ; =0x00000CBC
	lsl r1, r1, #8
	bl ov112_021E5EC4
_021E6A12:
	bl ov112_021E5EEC
	pop {r3, r4, r5, r6, r7, pc}
_021E6A18:
	mov r1, #8
	tst r1, r3
	beq _021E6A2C
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x9e
	mov r3, #1
	bl ov112_021E5A68
	pop {r3, r4, r5, r6, r7, pc}
_021E6A2C:
	ldr r1, _021E6A54 ; =ov112_021FFB24
	mov r2, #0x24
	strb r0, [r1, #0x1d]
	mov r0, #0
	add r1, r0, #0
	mov r3, #1
	bl ov112_021E5A68
	pop {r3, r4, r5, r6, r7, pc}
_021E6A3E:
	bl OS_Halt
	pop {r3, r4, r5, r6, r7, pc}
_021E6A44:
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x24
	mov r3, #1
	bl ov112_021E5A68
_021E6A50:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E6A54: .word ov112_021FFB24
_021E6A58: .word 0x0000B804
_021E6A5C: .word 0x0000BA44
_021E6A60: .word 0x0000BD40
_021E6A64: .word 0x00000CBC
_021E6A68: .word ov112_021FFAA4
	thumb_func_end ov112_021E6164

	thumb_func_start ov112_021E6A6C
ov112_021E6A6C: ; 0x021E6A6C
	push {r3, lr}
	ldr r1, _021E6BD0 ; =ov112_021FFAA4
	mov r2, #0
	str r2, [r1, #0x14]
	cmp r0, #0
	bne _021E6A84
	mov r0, #0xc
	bl ov112_021E5E18
	bl ov112_021E5A5C
	pop {r3, pc}
_021E6A84:
	cmp r0, #2
	bls _021E6A94
	mov r0, #0xc
	bl ov112_021E5E18
	bl ov112_021E5A5C
	pop {r3, pc}
_021E6A94:
	bl OS_GetTick
	ldr r2, _021E6BD0 ; =ov112_021FFAA4
	str r0, [r2, #0x3c]
	ldr r0, _021E6BD4 ; =ov112_021FFB24
	str r1, [r2, #0x40]
	ldrb r0, [r0, #0x1c]
	cmp r0, #0x60
	bgt _021E6AC4
	blt _021E6AAA
	b _021E6BBC
_021E6AAA:
	cmp r0, #0x32
	bgt _021E6AB6
	bge _021E6BAA
	cmp r0, #0x2a
	beq _021E6B88
	pop {r3, pc}
_021E6AB6:
	cmp r0, #0x40
	bgt _021E6ABE
	beq _021E6BAA
	pop {r3, pc}
_021E6ABE:
	cmp r0, #0x52
	beq _021E6BAA
	pop {r3, pc}
_021E6AC4:
	cmp r0, #0xe2
	bgt _021E6B04
	bge _021E6B4A
	cmp r0, #0xbe
	bgt _021E6AFE
	add r1, r0, #0
	sub r1, #0xb0
	bmi _021E6BCE
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E6AE0: ; jump table
	.short _021E6BBC - _021E6AE0 - 2 ; case 0
	.short _021E6BCE - _021E6AE0 - 2 ; case 1
	.short _021E6BBC - _021E6AE0 - 2 ; case 2
	.short _021E6BCE - _021E6AE0 - 2 ; case 3
	.short _021E6BBC - _021E6AE0 - 2 ; case 4
	.short _021E6BCE - _021E6AE0 - 2 ; case 5
	.short _021E6BBC - _021E6AE0 - 2 ; case 6
	.short _021E6BCE - _021E6AE0 - 2 ; case 7
	.short _021E6BBC - _021E6AE0 - 2 ; case 8
	.short _021E6BCE - _021E6AE0 - 2 ; case 9
	.short _021E6BBC - _021E6AE0 - 2 ; case 10
	.short _021E6BCE - _021E6AE0 - 2 ; case 11
	.short _021E6BBC - _021E6AE0 - 2 ; case 12
	.short _021E6BCE - _021E6AE0 - 2 ; case 13
	.short _021E6BBC - _021E6AE0 - 2 ; case 14
_021E6AFE:
	cmp r0, #0xe0
	beq _021E6B70
	pop {r3, pc}
_021E6B04:
	cmp r0, #0xf0
	bgt _021E6B0C
	beq _021E6B12
	pop {r3, pc}
_021E6B0C:
	cmp r0, #0xfe
	beq _021E6B34
	pop {r3, pc}
_021E6B12:
	bl ov112_021E5E28
	ldr r0, _021E6BD0 ; =ov112_021FFAA4
	ldr r1, _021E6BD8 ; =ov112_021FFB64
	ldr r0, [r0, #0x20]
	mov r2, #0x28
	add r0, #0x10
	bl MI_CpuCopy8
	ldr r2, _021E6BD4 ; =ov112_021FFB24
	ldr r0, _021E6BD8 ; =ov112_021FFB64
	ldrb r2, [r2, #0x1c]
	mov r1, #0x74
	mov r3, #1
	bl ov112_021E5A68
	pop {r3, pc}
_021E6B34:
	bl ov112_021E5E28
	ldr r2, _021E6BD4 ; =ov112_021FFB24
	ldr r0, _021E6BD0 ; =ov112_021FFAA4
	ldrb r2, [r2, #0x1c]
	ldr r0, [r0, #0x28]
	mov r1, #8
	mov r3, #1
	bl ov112_021E5A68
	pop {r3, pc}
_021E6B4A:
	mov r1, #0x80
	add r0, sp, #0
	strb r1, [r0]
	ldrh r2, [r2]
	mov r3, #0
	asr r1, r2, #8
	strb r1, [r0, #1]
	strb r2, [r0, #2]
	ldrb r1, [r0, #1]
	add r2, r1, #1
	ldrb r1, [r0, #2]
	add r1, r2, r1
	strb r1, [r0, #3]
	add r0, sp, #0
	mov r1, #4
	mov r2, #0xa
	bl ov112_021E5A68
	pop {r3, pc}
_021E6B70:
	bl ov112_021E5E28
	ldr r0, _021E6BD0 ; =ov112_021FFAA4
	ldr r2, _021E6BD4 ; =ov112_021FFB24
	ldr r0, [r0, #0x20]
	ldrb r2, [r2, #0x1c]
	add r0, #0x10
	mov r1, #0x28
	mov r3, #1
	bl ov112_021E5A68
	pop {r3, pc}
_021E6B88:
	bl ov112_021E5E28
	ldr r0, _021E6BD0 ; =ov112_021FFAA4
	ldr r2, _021E6BD4 ; =ov112_021FFB24
	ldr r0, [r0, #0x20]
	ldrb r2, [r2, #0x1d]
	add r0, #0x10
	mov r1, #0x28
	mov r3, #1
	bl ov112_021E5A68
	mov r0, #0xf
	bl ov112_021E5E18
	bl ov112_021E5A5C
	pop {r3, pc}
_021E6BAA:
	bl ov112_021E5E48
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x20
	mov r3, #1
	bl ov112_021E5A68
	pop {r3, pc}
_021E6BBC:
	ldr r1, _021E6BD0 ; =ov112_021FFAA4
	mov r0, #0
	ldr r1, [r1, #0x20]
	mov r2, #0x20
	str r0, [r1, #0x60]
	add r1, r0, #0
	mov r3, #1
	bl ov112_021E5A68
_021E6BCE:
	pop {r3, pc}
	.balign 4, 0
_021E6BD0: .word ov112_021FFAA4
_021E6BD4: .word ov112_021FFB24
_021E6BD8: .word ov112_021FFB64
	thumb_func_end ov112_021E6A6C

