#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02242C64
	.extern ov70_02238F9C
	.extern ov70_02242164
	.extern ov70_02242B5C
	.extern ov70_02242BBC
	.extern ov70_02245D8A
	.extern ov70_02245D8B

	.text

	.text
	thumb_func_start ov70_02242C64
ov70_02242C64: ; 0x02242C64
	push {r3, r4, r5, lr}
	ldr r1, _02242D34 ; =gSystem
	add r5, r0, #0
	ldr r2, [r1, #0x4c]
	mov r1, #0x40
	ldr r4, [r5, #0x48]
	tst r1, r2
	beq _02242C8C
	ldr r0, _02242D38 ; =0x000005DC
	bl PlaySE
	ldr r0, [r5, #0x48]
	cmp r0, #0
	beq _02242C86
	sub r0, r0, #1
	str r0, [r5, #0x48]
	b _02242CC6
_02242C86:
	mov r0, #5
	str r0, [r5, #0x48]
	b _02242CC6
_02242C8C:
	mov r1, #0x80
	tst r1, r2
	beq _02242CAA
	ldr r0, _02242D38 ; =0x000005DC
	bl PlaySE
	ldr r0, [r5, #0x48]
	cmp r0, #5
	beq _02242CA4
	add r0, r0, #1
	str r0, [r5, #0x48]
	b _02242CC6
_02242CA4:
	mov r0, #0
	str r0, [r5, #0x48]
	b _02242CC6
_02242CAA:
	mov r1, #0x20
	add r3, r2, #0
	tst r3, r1
	beq _02242CBA
	sub r1, #0x21
	bl ov70_02242BBC
	b _02242CC6
_02242CBA:
	mov r1, #0x10
	tst r1, r2
	beq _02242CC6
	mov r1, #1
	bl ov70_02242BBC
_02242CC6:
	ldr r0, [r5, #0x48]
	cmp r4, r0
	beq _02242CF2
	ldr r1, _02242D3C ; =ov70_02245D8A
	lsl r3, r0, #1
	ldr r2, _02242D40 ; =ov70_02245D8B
	ldrb r1, [r1, r3]
	ldrb r2, [r2, r3]
	ldr r0, [r5, #0xc]
	bl ov70_02238F9C
	ldr r0, [r5, #0x48]
	cmp r0, #5
	ldr r0, [r5, #0xc]
	bne _02242CEC
	mov r1, #0x30
	bl Sprite_SetAnimCtrlSeq
	b _02242CF2
_02242CEC:
	mov r1, #0x32
	bl Sprite_SetAnimCtrlSeq
_02242CF2:
	add r0, r5, #0
	mov r1, #3
	bl ov70_02242164
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _02242D0C
	add r0, r5, #0
	bl ov70_02242B5C
	pop {r3, r4, r5, pc}
_02242D0C:
	ldr r1, _02242D34 ; =gSystem
	ldr r2, [r1, #0x48]
	mov r1, #1
	tst r1, r2
	beq _02242D20
	ldr r1, [r5, #0x48]
	add r0, r5, #0
	bl ov70_02242B5C
	pop {r3, r4, r5, pc}
_02242D20:
	mov r1, #2
	tst r1, r2
	beq _02242D30
	ldr r0, _02242D38 ; =0x000005DC
	bl PlaySE
	mov r0, #1
	mvn r0, r0
_02242D30:
	pop {r3, r4, r5, pc}
	nop
_02242D34: .word gSystem
_02242D38: .word 0x000005DC
_02242D3C: .word ov70_02245D8A
_02242D40: .word ov70_02245D8B
	thumb_func_end ov70_02242C64

