#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02237FB4
	.extern _02246800
	.extern ov70_02238360
	.extern ov70_022460EC
	.extern ov70_0224680C
	.extern ov70_02246814
	.extern ov70_0224693C

	.text

	.text
	thumb_func_start ov70_02237FB4
ov70_02237FB4: ; 0x02237FB4
	push {r3, lr}
	ldr r0, _02237FF4 ; =ov70_0224680C
	ldr r2, _02237FF8 ; =ov70_02246814
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [r2]
	str r0, [r2, #4]
	bl ov38_0221BE84
	mov r0, #2
	str r0, [sp]
	ldr r0, _02237FFC ; =ov70_022460EC
	ldr r1, _02237FF8 ; =ov70_02246814
	ldr r3, _02238000 ; =ov70_0224693C
	mov r2, #8
	bl ov70_02238360
	cmp r0, #0
	beq _02237FE2
	ldr r0, _02238004 ; =_02246800
	mov r1, #4
	str r1, [r0]
	pop {r3, pc}
_02237FE2:
	ldr r0, _02238004 ; =_02246800
	mov r1, #0x18
	str r1, [r0]
	sub r1, #0x25
	str r1, [r0, #4]
	bl ov38_0221BFEC
	pop {r3, pc}
	nop
_02237FF4: .word ov70_0224680C
_02237FF8: .word ov70_02246814
_02237FFC: .word ov70_022460EC
_02238000: .word ov70_0224693C
_02238004: .word _02246800
	thumb_func_end ov70_02237FB4

