#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E8D2C
	.extern ov73_021EA180

	.text

	.text
	thumb_func_start ov73_021E8D2C
ov73_021E8D2C: ; 0x021E8D2C
	push {r3, r4, lr}
	sub sp, #0x44
	add r4, r0, #0
	bl ov00_021EC60C
	bl ov00_021EC5B4
	cmp r0, #0
	beq _021E8DAC
	bl ov00_021EC724
	cmp r0, #8
	bhi _021E8D8A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E8D52: ; jump table
	.short _021E8D8A - _021E8D52 - 2 ; case 0
	.short _021E8D8A - _021E8D52 - 2 ; case 1
	.short _021E8D8A - _021E8D52 - 2 ; case 2
	.short _021E8D8A - _021E8D52 - 2 ; case 3
	.short _021E8DA2 - _021E8D52 - 2 ; case 4
	.short _021E8D8A - _021E8D52 - 2 ; case 5
	.short _021E8D8A - _021E8D52 - 2 ; case 6
	.short _021E8D64 - _021E8D52 - 2 ; case 7
	.short _021E8D8A - _021E8D52 - 2 ; case 8
_021E8D64:
	add r0, sp, #4
	bl ov00_021EC0FC
	mov r1, #0xf1
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r2, [sp, #4]
	add r0, r1, #4
	str r2, [r4, r0]
	bl ov00_021EC210
	bl ov00_021EC8D8
	add r0, r4, #0
	bl ov73_021EA180
	mov r0, #0x37
	str r0, [r4, #0x1c]
	b _021E8DAC
_021E8D8A:
	add r0, sp, #0
	bl ov00_021EC0FC
	add r0, r4, #0
	bl ov73_021EA180
	mov r1, #0x35
	str r1, [r4, #0x1c]
	ldr r0, _021E8DB4 ; =0x00000F1C
	sub r1, #0x37
	str r1, [r4, r0]
	b _021E8DAC
_021E8DA2:
	add r0, sp, #8
	bl ov00_021EC9E0
	mov r0, #4
	str r0, [r4, #0x1c]
_021E8DAC:
	mov r0, #3
	add sp, #0x44
	pop {r3, r4, pc}
	nop
_021E8DB4: .word 0x00000F1C
	thumb_func_end ov73_021E8D2C

