#include "config.h"
#include "constants/pokemon.h"
	.include "macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223826C
	.extern _02246800
	.extern ov70_02238360
	.extern ov70_02246304
	.extern ov70_0224680C
	.extern ov70_02246814
	.extern ov70_0224693C

	.text

	.text
	thumb_func_start ov70_0223826C
ov70_0223826C: ; 0x0223826C
	push {r3, lr}
	ldr r0, _022382AC ; =ov70_0224680C
	ldr r2, _022382B0 ; =ov70_02246814
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [r2]
	str r0, [r2, #4]
	bl ov38_0221BE84
	mov r0, #2
	str r0, [sp]
	ldr r0, _022382B4 ; =ov70_02246304
	ldr r1, _022382B0 ; =ov70_02246814
	ldr r3, _022382B8 ; =ov70_0224693C
	mov r2, #8
	bl ov70_02238360
	cmp r0, #0
	beq _0223829A
	ldr r0, _022382BC ; =_02246800
	mov r1, #0x12
	str r1, [r0]
	pop {r3, pc}
_0223829A:
	ldr r0, _022382BC ; =_02246800
	mov r1, #0x18
	str r1, [r0]
	sub r1, #0x25
	str r1, [r0, #4]
	bl ov38_0221BFEC
	pop {r3, pc}
	nop
_022382AC: .word ov70_0224680C
_022382B0: .word ov70_02246814
_022382B4: .word ov70_02246304
_022382B8: .word ov70_0224693C
_022382BC: .word _02246800
	thumb_func_end ov70_0223826C

