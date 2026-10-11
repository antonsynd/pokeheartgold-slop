#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_022380EC
	.public ov70_0223FFCC

	.text

	thumb_func_start ov70_0223FFCC
ov70_0223FFCC: ; 0x0223FFCC
	push {r4, lr}
	add r4, r0, #0
	bl ov70_022380EC
	mov r0, #0xa
	str r0, [r4, #0x2c]
	ldr r0, _0223FFE4 ; =0x00001604
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #3
	pop {r4, pc}
	nop
_0223FFE4: .word 0x00001604
	thumb_func_end ov70_0223FFCC

