#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238058
	.public ov70_02240220

	.text

	thumb_func_start ov70_02240220
ov70_02240220: ; 0x02240220
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x4f
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov70_02238058
	mov r0, #0x19
	str r0, [r4, #0x2c]
	ldr r0, _0224023C ; =0x00001604
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #3
	pop {r4, pc}
	.balign 4, 0
_0224023C: .word 0x00001604
	thumb_func_end ov70_02240220

