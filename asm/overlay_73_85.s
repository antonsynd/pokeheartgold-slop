#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E9120
	.public ov73_021EA15C

	.text

	thumb_func_start ov73_021E9120
ov73_021E9120: ; 0x021E9120
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x94
	ldr r0, [r0]
	bl ov72_02237B80
	mov r0, #0xc
	str r0, [r4, #0x1c]
	ldr r0, _021E9140 ; =0x00000F94
	mov r1, #0
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov73_021EA15C
	mov r0, #3
	pop {r4, pc}
	.balign 4, 0
_021E9140: .word 0x00000F94
	thumb_func_end ov73_021E9120

