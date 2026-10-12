#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238FB4

	.text

	.text
	thumb_func_start ov70_02238FB4
ov70_02238FB4: ; 0x02238FB4
	push {r3, lr}
	cmp r0, #0
	beq _02238FC8
	mov r1, #0x1e
	add r2, r1, #0
	ldr r0, _02238FD8 ; =0x04000050
	sub r2, #0x25
	bl G2x_SetBlendBrightness_
	pop {r3, pc}
_02238FC8:
	mov r1, #0x1e
	add r2, r1, #0
	ldr r0, _02238FDC ; =0x04001050
	sub r2, #0x25
	bl G2x_SetBlendBrightness_
	pop {r3, pc}
	nop
_02238FD8: .word 0x04000050
_02238FDC: .word 0x04001050
	thumb_func_end ov70_02238FB4

