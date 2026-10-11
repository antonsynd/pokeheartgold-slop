#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_022380EC
	.public ov70_0224069C

	.text

	thumb_func_start ov70_0224069C
ov70_0224069C: ; 0x0224069C
	push {r4, lr}
	add r4, r0, #0
	bl ov70_022380EC
	mov r0, #0x17
	str r0, [r4, #0x2c]
	ldr r0, _022406B4 ; =0x00001604
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #3
	pop {r4, pc}
	nop
_022406B4: .word 0x00001604
	thumb_func_end ov70_0224069C

