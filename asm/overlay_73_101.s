#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E9BB4
	.public ov73_021EA180

	.text

	thumb_func_start ov73_021E9BB4
ov73_021E9BB4: ; 0x021E9BB4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	bl Save_WriteFileAsync
	cmp r0, #2
	bne _021E9BCE
	ldr r0, [r4, #0x20]
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov73_021EA180
_021E9BCE:
	mov r0, #3
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov73_021E9BB4

