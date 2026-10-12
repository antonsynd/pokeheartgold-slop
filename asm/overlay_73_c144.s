#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E944C
	.extern ov73_021E83EC
	.extern ov73_021EA180

	.text

	.text
	thumb_func_start ov73_021E944C
ov73_021E944C: ; 0x021E944C
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, r0, #0
	bl ov72_02237B54
	cmp r0, #0
	beq _021E953A
	bl ov72_02237B74
	ldr r1, _021E9558 ; =0x00000F94
	mov r2, #0
	str r2, [r4, r1]
	add r2, r0, #7
	cmp r2, #7
	bhi _021E9550
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021E9476: ; jump table
	.short _021E9516 - _021E9476 - 2 ; case 0
	.short _021E9506 - _021E9476 - 2 ; case 1
	.short _021E9526 - _021E9476 - 2 ; case 2
	.short _021E94F6 - _021E9476 - 2 ; case 3
	.short _021E94F6 - _021E9476 - 2 ; case 4
	.short _021E94E6 - _021E9476 - 2 ; case 5
	.short _021E94D6 - _021E9476 - 2 ; case 6
	.short _021E9486 - _021E9476 - 2 ; case 7
_021E9486:
	add r2, r4, #0
	add r3, r4, #0
	add r2, #0x90
	add r3, #0x9c
	ldr r0, [r4]
	ldr r2, [r2]
	ldr r3, [r3]
	add r1, r4, #0
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r0, [r0, #4]
	add r1, #0xa0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0202D7C0
	add r0, r4, #0
	mov r1, #0x27
	mov r2, #0x13
	bl ov73_021E83EC
	add r0, sp, #0
	add r1, sp, #0x10
	bl ov00_021ECB94
	add r1, r4, #0
	ldr r0, [r4]
	add r1, #0x94
	add r4, #0x9c
	ldr r1, [r1]
	ldr r2, [r4]
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	ldr r0, [r0, #4]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	add r3, sp, #0
	bl sub_0202D678
	b _021E9550
_021E94D6:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov73_021EA180
	b _021E9550
_021E94E6:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov73_021EA180
	b _021E9550
_021E94F6:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0xb
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov73_021EA180
	b _021E9550
_021E9506:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov73_021EA180
	b _021E9550
_021E9516:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov73_021EA180
	b _021E9550
_021E9526:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov73_021EA180
	bl sub_020399EC
	b _021E9550
_021E953A:
	ldr r0, _021E9558 ; =0x00000F94
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _021E9550
	bl sub_020399EC
_021E9550:
	mov r0, #3
	add sp, #0x1c
	pop {r3, r4, pc}
	nop
_021E9558: .word 0x00000F94
	thumb_func_end ov73_021E944C

