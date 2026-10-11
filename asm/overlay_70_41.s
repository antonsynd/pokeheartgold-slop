#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223997C

	.text

	thumb_func_start ov70_0223997C
ov70_0223997C: ; 0x0223997C
	ldr r1, _0223998C ; =0x000011DC
	ldrh r1, [r0, r1]
	cmp r1, #0
	beq _02239988
	mov r1, #9
	str r1, [r0, #0x2c]
_02239988:
	mov r0, #3
	bx lr
	.balign 4, 0
_0223998C: .word 0x000011DC
	thumb_func_end ov70_0223997C

