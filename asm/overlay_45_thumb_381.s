#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222E944
	.extern _022577C0

	.text

	.text
	thumb_func_start ov45_0222E944
ov45_0222E944: ; 0x0222E944
	push {r3, lr}
	ldr r0, _0222E968 ; =_022577C0
	ldr r0, [r0]
	cmp r0, #0
	bne _0222E952
	bl GF_AssertFail
_0222E952:
	ldr r0, _0222E968 ; =_022577C0
	ldr r1, [r0]
	mov r0, #0x4b
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _0222E964
	mov r0, #1
	pop {r3, pc}
_0222E964:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
_0222E968: .word _022577C0
	thumb_func_end ov45_0222E944

