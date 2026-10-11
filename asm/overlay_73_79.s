#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E8DB8

	.text

	thumb_func_start ov73_021E8DB8
ov73_021E8DB8: ; 0x021E8DB8
	push {r4, lr}
	add r4, r0, #0
	bl ov00_021ECD04
	mov r0, #5
	str r0, [r4, #0x1c]
	mov r0, #3
	pop {r4, pc}
	thumb_func_end ov73_021E8DB8

