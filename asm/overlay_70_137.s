#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238D84
	.public ov70_0223DDD0
	.public ov70_0223E01C

	.text

	thumb_func_start ov70_0223DDD0
ov70_0223DDD0: ; 0x0223DDD0
	push {r4, lr}
	sub sp, #8
	ldr r1, _0223DDF8 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r2, #1
	mov r1, #0x19
	mov r3, #0
	str r2, [sp, #4]
	bl ov70_0223E01C
	add r0, r4, #0
	mov r1, #3
	mov r2, #0xc
	bl ov70_02238D84
	mov r0, #3
	add sp, #8
	pop {r4, pc}
	nop
_0223DDF8: .word 0x00000F0F
	thumb_func_end ov70_0223DDD0

