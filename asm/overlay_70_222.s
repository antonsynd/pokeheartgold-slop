#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238F80
	.public ov70_022408BC

	.text

	thumb_func_start ov70_022408BC
ov70_022408BC: ; 0x022408BC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	ldr r0, [r0, #0x20]
	bl Save_WriteFileAsync
	cmp r0, #2
	bne _022408D8
	ldr r0, _022408DC ; =0x000011D6
	ldrh r0, [r4, r0]
	str r0, [r4, #0x2c]
	add r0, r4, #0
	bl ov70_02238F80
_022408D8:
	mov r0, #3
	pop {r4, pc}
	.balign 4, 0
_022408DC: .word 0x000011D6
	thumb_func_end ov70_022408BC

