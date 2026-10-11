#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0223099C
	.extern ov45_02254C48

	.text

	.text
	thumb_func_start ov45_0223099C
ov45_0223099C: ; 0x0223099C
	push {r3, lr}
	ldr r3, _022309C0 ; =ov45_02254C48
	mov r2, #0
_022309A2:
	ldrh r1, [r3]
	cmp r0, r1
	bne _022309B0
	ldr r1, _022309C0 ; =ov45_02254C48
	lsl r0, r2, #2
	add r0, r1, r0
	pop {r3, pc}
_022309B0:
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, #0x14
	blt _022309A2
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
_022309C0: .word ov45_02254C48
	thumb_func_end ov45_0223099C

