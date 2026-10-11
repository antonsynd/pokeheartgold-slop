#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E6444
	.public ov73_021E670C
	.public ov73_021E756C

	.text

	thumb_func_start ov73_021E6444
ov73_021E6444: ; 0x021E6444
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0
	mov r1, #1
	bl sub_020398D4
	bl sub_0203769C
	cmp r0, #0
	bne _021E646E
	bl sub_02037454
	cmp r0, #2
	blt _021E6478
	add r0, r5, #0
	mov r1, #2
	mov r2, #0
	bl ov73_021E756C
	b _021E6478
_021E646E:
	add r0, r5, #0
	mov r1, #8
	mov r2, #0
	bl ov73_021E756C
_021E6478:
	add r0, r5, #0
	mov r1, #3
	bl ov73_021E670C
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov73_021E6444

