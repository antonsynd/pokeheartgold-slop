#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_022380A8
	.public ov70_02240598

	.text

	thumb_func_start ov70_02240598
ov70_02240598: ; 0x02240598
	push {r4, lr}
	add r4, r0, #0
	bl ov70_022380A8
	mov r0, #0x14
	str r0, [r4, #0x2c]
	ldr r0, _022405B0 ; =0x00001604
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #3
	pop {r4, pc}
	nop
_022405B0: .word 0x00001604
	thumb_func_end ov70_02240598

