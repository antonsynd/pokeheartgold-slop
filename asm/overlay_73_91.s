#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E941C
	.public ov73_021EA15C

	.text

	thumb_func_start ov73_021E941C
ov73_021E941C: ; 0x021E941C
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r0, #0x90
	add r1, #0x9c
	add r2, r4, #0
	ldr r0, [r0]
	ldr r1, [r1]
	add r2, #0xa0
	bl ov72_02237BD0
	add r0, r4, #0
	bl ov73_021EA15C
	mov r0, #0x12
	str r0, [r4, #0x1c]
	ldr r0, _021E9448 ; =0x00000F94
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #3
	pop {r4, pc}
	nop
_021E9448: .word 0x00000F94
	thumb_func_end ov73_021E941C

