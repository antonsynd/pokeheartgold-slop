#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02244E44
	.extern ov70_02238E50
	.extern ov70_02244FA4

	.text

	.text
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

