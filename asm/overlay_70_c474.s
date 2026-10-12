#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02244D80
	.public ov70_02244E44
	.extern ov70_02238D84
	.extern ov70_02238E50
	.extern ov70_02244FA4

	.text

	.text
	thumb_func_start ov70_02244D80
ov70_02244D80: ; 0x02244D80
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r2, #0xd
	ldr r0, [r4, #0x3c]
	mvn r2, r2
	cmp r0, r2
	bgt _02244DBE
	bge _02244DFA
	ldr r1, _02244E38 ; =0xFFFFEC78
	cmp r0, r1
	bgt _02244DB6
	ldr r1, _02244E3C ; =0x0000138D
	add r1, r0, r1
	bmi _02244DFE
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02244DAA: ; jump table
	.short _02244E12 - _02244DAA - 2 ; case 0
	.short _02244E0E - _02244DAA - 2 ; case 1
	.short _02244E02 - _02244DAA - 2 ; case 2
	.short _02244DFE - _02244DAA - 2 ; case 3
	.short _02244E0A - _02244DAA - 2 ; case 4
	.short _02244E06 - _02244DAA - 2 ; case 5
_02244DB6:
	mov r1, #0xe
	mvn r1, r1
	cmp r0, r1
	b _02244DFE
_02244DBE:
	add r1, r2, #0
	add r1, #9
	cmp r0, r1
	bgt _02244DD4
	add r1, r2, #0
	add r1, #9
	cmp r0, r1
	bge _02244DFE
	add r1, r2, #2
	cmp r0, r1
	b _02244DFE
_02244DD4:
	add r0, r0, #3
	cmp r0, #5
	bhi _02244DFE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02244DE6: ; jump table
	.short _02244DFE - _02244DE6 - 2 ; case 0
	.short _02244DFA - _02244DE6 - 2 ; case 1
	.short _02244DF6 - _02244DE6 - 2 ; case 2
	.short _02244DFE - _02244DE6 - 2 ; case 3
	.short _02244DF2 - _02244DE6 - 2 ; case 4
	.short _02244DF6 - _02244DE6 - 2 ; case 5
_02244DF2:
	mov r2, #0x96
	b _02244E14
_02244DF6:
	mov r2, #0x97
	b _02244E14
_02244DFA:
	mov r2, #0x9c
	b _02244E14
_02244DFE:
	mov r2, #0x9b
	b _02244E14
_02244E02:
	mov r2, #0xb9
	b _02244E14
_02244E06:
	mov r2, #0xb6
	b _02244E14
_02244E0A:
	mov r2, #0xb6
	b _02244E14
_02244E0E:
	mov r2, #0xb7
	b _02244E14
_02244E12:
	mov r2, #0xb8
_02244E14:
	ldr r0, _02244E40 ; =0x00000F0F
	mov r1, #0xba
	str r0, [sp]
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r3, #1
	bl ov70_02244FA4
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #0x16
	bl ov70_02238D84
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_02244E38: .word 0xFFFFEC78
_02244E3C: .word 0x0000138D
_02244E40: .word 0x00000F0F
	thumb_func_end ov70_02244D80

	thumb_func_start ov70_02244E44
ov70_02244E44: ; 0x02244E44
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #0x16
	add r4, r0, #0
	lsl r1, r1, #8
	ldrsh r1, [r4, r1]
	cmp r1, #3
	bhi _02244EE8
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02244E60: ; jump table
	.short _02244E68 - _02244E60 - 2 ; case 0
	.short _02244E86 - _02244E60 - 2 ; case 1
	.short _02244EAC - _02244E60 - 2 ; case 2
	.short _02244ECA - _02244E60 - 2 ; case 3
_02244E68:
	ldr r1, _02244F0C ; =0x00000F0F
	mov r2, #0xba
	str r1, [sp]
	mov r1, #0xba
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov70_02244FA4
	mov r0, #0x16
	lsl r0, r0, #8
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	b _02244F04
_02244E86:
	mov r0, #0xbf
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl TextPrinterCheckActive
	cmp r0, #0
	bne _02244F04
	bl sub_0203946C
	bl ov00_021EC8D8
	mov r0, #0x16
	lsl r0, r0, #8
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	b _02244F04
_02244EAC:
	ldr r1, _02244F0C ; =0x00000F0F
	mov r2, #0xbb
	str r1, [sp]
	mov r1, #0xba
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov70_02244FA4
	mov r0, #0x16
	lsl r0, r0, #8
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	b _02244F04
_02244ECA:
	mov r0, #0xbf
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl TextPrinterCheckActive
	cmp r0, #0
	bne _02244F04
	mov r0, #0x16
	lsl r0, r0, #8
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	b _02244F04
_02244EE8:
	ldr r0, _02244F10 ; =0x00001602
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	ldrsh r0, [r4, r0]
	cmp r0, #0x1e
	ble _02244F04
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov70_02238E50
	mov r0, #0xb
	str r0, [r4, #0x2c]
_02244F04:
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_02244F0C: .word 0x00000F0F
_02244F10: .word 0x00001602
	thumb_func_end ov70_02244E44

