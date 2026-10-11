#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222E688
	.extern _022577C0
	.extern ov45_0222F878
	.extern ov45_0222FA10
	.extern ov45_022303FC

	.text

	.text
	thumb_func_start ov45_0222E688
ov45_0222E688: ; 0x0222E688
	push {r3, lr}
	ldr r0, _0222E6C4 ; =_022577C0
	ldr r0, [r0]
	cmp r0, #0
	bne _0222E696
	bl GF_AssertFail
_0222E696:
	ldr r0, _0222E6C4 ; =_022577C0
	ldr r1, [r0]
	mov r0, #0x6a
	lsl r0, r0, #4
	add r0, r1, r0
	bl ov45_022303FC
	ldr r0, _0222E6C4 ; =_022577C0
	ldr r0, [r0]
	bl ov45_0222FA10
	ldr r0, _0222E6C4 ; =_022577C0
	ldr r0, [r0]
	bl ov45_0222F878
	ldr r0, _0222E6C4 ; =_022577C0
	ldr r0, [r0]
	bl Heap_Free
	ldr r0, _0222E6C4 ; =_022577C0
	mov r1, #0
	str r1, [r0]
	pop {r3, pc}
	.balign 4, 0
_0222E6C4: .word _022577C0
	thumb_func_end ov45_0222E688

