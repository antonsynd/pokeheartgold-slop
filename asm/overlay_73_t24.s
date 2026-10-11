#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E6A70
	.extern ov73_021E66F0
	.extern ov73_021E670C

	.text

	.text
	thumb_func_start ov73_021E6A70
ov73_021E6A70: ; 0x021E6A70
	push {r3, r4, r5, lr}
	ldr r2, _021E6A8C ; =0x00004A28
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	strb r1, [r5, r2]
	bl ov73_021E670C
	add r0, r5, #0
	bl ov73_021E66F0
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021E6A8C: .word 0x00004A28
	thumb_func_end ov73_021E6A70

