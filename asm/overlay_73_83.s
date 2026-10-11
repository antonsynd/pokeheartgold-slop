#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E8FB0

	.text

	thumb_func_start ov73_021E8FB0
ov73_021E8FB0: ; 0x021E8FB0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	ldr r1, _021E8FDC ; =0x00000F24
	ldr r0, [r0, #0xc]
	add r1, r4, r1
	bl sub_0203189C
	ldr r1, _021E8FDC ; =0x00000F24
	add r0, r4, r1
	add r1, #0x64
	add r1, r4, r1
	bl ov72_02237CF4
	mov r0, #0xa
	str r0, [r4, #0x1c]
	ldr r0, _021E8FE0 ; =0x00000F94
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #3
	pop {r4, pc}
	nop
_021E8FDC: .word 0x00000F24
_021E8FE0: .word 0x00000F94
	thumb_func_end ov73_021E8FB0

