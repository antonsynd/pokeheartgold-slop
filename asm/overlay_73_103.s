#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E844C
	.public ov73_021E9CBC

	.text

	thumb_func_start ov73_021E9CBC
ov73_021E9CBC: ; 0x021E9CBC
	push {r4, lr}
	add r4, r0, #0
	bl ov00_021EC8D8
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov73_021E844C
	mov r0, #0x2b
	str r0, [r4, #0x1c]
	mov r0, #3
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov73_021E9CBC

