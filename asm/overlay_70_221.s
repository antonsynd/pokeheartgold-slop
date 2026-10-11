#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0224089C

	.text

	thumb_func_start ov70_0224089C
ov70_0224089C: ; 0x0224089C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	ldr r0, [r0, #0x20]
	bl Save_WriteFileAsync
	cmp r0, #1
	bne _022408B2
	ldr r0, _022408B8 ; =0x000011D4
	ldrh r0, [r4, r0]
	str r0, [r4, #0x2c]
_022408B2:
	mov r0, #3
	pop {r4, pc}
	nop
_022408B8: .word 0x000011D4
	thumb_func_end ov70_0224089C

