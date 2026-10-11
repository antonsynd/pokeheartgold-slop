#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E8EBC

	.text

	thumb_func_start ov73_021E8EBC
ov73_021E8EBC: ; 0x021E8EBC
	push {r4, lr}
	add r4, r0, #0
	bl ov72_02237CB0
	mov r0, #8
	str r0, [r4, #0x1c]
	ldr r0, _021E8ED4 ; =0x00000F94
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #3
	pop {r4, pc}
	nop
_021E8ED4: .word 0x00000F94
	thumb_func_end ov73_021E8EBC

