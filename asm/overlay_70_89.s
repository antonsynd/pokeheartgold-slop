#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223B258
	.public ov70_0223B2C0

	.text

	thumb_func_start ov70_0223B2C0
ov70_0223B2C0: ; 0x0223B2C0
	push {r4, lr}
	add r4, r0, #0
	bl ov70_0223B258
	mov r0, #1
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	thumb_func_end ov70_0223B2C0

