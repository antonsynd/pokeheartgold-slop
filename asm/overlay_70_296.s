#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02237F38
	.public ov70_02237F58
	.public ov70_02238E50
	.public ov70_02238F80
	.public ov70_02244B54

	.text

	thumb_func_start ov70_02244B54
ov70_02244B54: ; 0x02244B54
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ov70_02237F38
	cmp r0, #0
	bne _02244B62
	b _02244C72
_02244B62:
	bl ov70_02237F58
	add r5, r0, #0
	ldr r0, _02244C8C ; =0x00001604
	mov r1, #0
	str r1, [r4, r0]
	add r0, r5, #0
	add r0, #0xf
	cmp r0, #0x11
	bhi _02244C66
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02244B82: ; jump table
	.short _02244C4A - _02244B82 - 2 ; case 0
	.short _02244C58 - _02244B82 - 2 ; case 1
	.short _02244C66 - _02244B82 - 2 ; case 2
	.short _02244C4A - _02244B82 - 2 ; case 3
	.short _02244C66 - _02244B82 - 2 ; case 4
	.short _02244C66 - _02244B82 - 2 ; case 5
	.short _02244C66 - _02244B82 - 2 ; case 6
	.short _02244C66 - _02244B82 - 2 ; case 7
	.short _02244C66 - _02244B82 - 2 ; case 8
	.short _02244C66 - _02244B82 - 2 ; case 9
	.short _02244C66 - _02244B82 - 2 ; case 10
	.short _02244C66 - _02244B82 - 2 ; case 11
	.short _02244C66 - _02244B82 - 2 ; case 12
	.short _02244C58 - _02244B82 - 2 ; case 13
	.short _02244C3C - _02244B82 - 2 ; case 14
	.short _02244BA6 - _02244B82 - 2 ; case 15
	.short _02244C2E - _02244B82 - 2 ; case 16
	.short _02244C3C - _02244B82 - 2 ; case 17
_02244BA6:
	add r0, r4, #0
	bl ov70_02238F80
	ldr r0, _02244C90 ; =0x000012C4
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _02244BBE
	cmp r1, #1
	beq _02244C0E
	cmp r1, #2
	beq _02244C18
	b _02244C22
_02244BBE:
	add r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #3
	bhi _02244C08
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02244BD2: ; jump table
	.short _02244BDA - _02244BD2 - 2 ; case 0
	.short _02244BF4 - _02244BD2 - 2 ; case 1
	.short _02244BFE - _02244BD2 - 2 ; case 2
	.short _02244BEA - _02244BD2 - 2 ; case 3
_02244BDA:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov70_02238E50
	mov r0, #0xb
	str r0, [r4, #0x2c]
	b _02244C88
_02244BEA:
	ldr r0, _02244C94 ; =0xFFFFEC75
	str r0, [r4, #0x3c]
	mov r0, #0x15
	str r0, [r4, #0x2c]
	b _02244C88
_02244BF4:
	ldr r0, _02244C98 ; =0xFFFFEC78
	str r0, [r4, #0x3c]
	mov r0, #0x15
	str r0, [r4, #0x2c]
	b _02244C88
_02244BFE:
	ldr r0, _02244C9C ; =0xFFFFEC77
	str r0, [r4, #0x3c]
	mov r0, #0x15
	str r0, [r4, #0x2c]
	b _02244C88
_02244C08:
	bl sub_020399EC
	b _02244C88
_02244C0E:
	ldr r0, _02244CA0 ; =0xFFFFEC74
	str r0, [r4, #0x3c]
	mov r0, #0x15
	str r0, [r4, #0x2c]
	b _02244C88
_02244C18:
	ldr r0, _02244CA4 ; =0xFFFFEC73
	str r0, [r4, #0x3c]
	mov r0, #0x15
	str r0, [r4, #0x2c]
	b _02244C88
_02244C22:
	add r0, r4, #0
	bl ov70_02238F80
	bl sub_020399EC
	b _02244C88
_02244C2E:
	add r0, r4, #0
	bl ov70_02238F80
	str r5, [r4, #0x3c]
	mov r0, #0x15
	str r0, [r4, #0x2c]
	b _02244C88
_02244C3C:
	add r0, r4, #0
	bl ov70_02238F80
	str r5, [r4, #0x3c]
	mov r0, #0x15
	str r0, [r4, #0x2c]
	b _02244C88
_02244C4A:
	add r0, r4, #0
	bl ov70_02238F80
	str r5, [r4, #0x3c]
	mov r0, #0x15
	str r0, [r4, #0x2c]
	b _02244C88
_02244C58:
	add r0, r4, #0
	bl ov70_02238F80
	str r5, [r4, #0x3c]
	mov r0, #0x15
	str r0, [r4, #0x2c]
	b _02244C88
_02244C66:
	add r0, r4, #0
	bl ov70_02238F80
	bl sub_020399EC
	b _02244C88
_02244C72:
	ldr r0, _02244C8C ; =0x00001604
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _02244C88
	bl sub_020399EC
_02244C88:
	mov r0, #3
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02244C8C: .word 0x00001604
_02244C90: .word 0x000012C4
_02244C94: .word 0xFFFFEC75
_02244C98: .word 0xFFFFEC78
_02244C9C: .word 0xFFFFEC77
_02244CA0: .word 0xFFFFEC74
_02244CA4: .word 0xFFFFEC73
	thumb_func_end ov70_02244B54

