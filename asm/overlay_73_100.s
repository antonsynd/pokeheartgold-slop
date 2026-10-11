#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E9B9C

	.text

	thumb_func_start ov73_021E9B9C
ov73_021E9B9C: ; 0x021E9B9C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #2
	ldr r0, [r0, #0xc]
	bl Save_PrepareForAsyncWrite
	mov r0, #0x28
	str r0, [r4, #0x1c]
	mov r0, #3
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov73_021E9B9C

