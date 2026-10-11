#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238208
	.public ov70_0224006C
	.public ov70_02240D44

	.text

	thumb_func_start ov70_0224006C
ov70_0224006C: ; 0x0224006C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x4f
	lsl r0, r0, #2
	add r0, r4, r0
	bl Pokemon_RemoveCapsule
	mov r1, #0x4b
	lsl r1, r1, #2
	add r0, r1, #0
	ldr r2, [r4, r1]
	sub r0, #8
	mul r0, r2
	add r2, r4, r0
	mov r0, #0xda
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	ldr r2, _022400B4 ; =0x00000A5C
	add r1, #0x10
	add r1, r4, r1
	add r2, r4, r2
	bl ov70_02238208
	add r0, r4, #0
	mov r1, #0xe
	mov r2, #0x10
	bl ov70_02240D44
	mov r0, #0xd
	str r0, [r4, #0x2c]
	ldr r0, _022400B8 ; =0x00001604
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #3
	pop {r4, pc}
	nop
_022400B4: .word 0x00000A5C
_022400B8: .word 0x00001604
	thumb_func_end ov70_0224006C

