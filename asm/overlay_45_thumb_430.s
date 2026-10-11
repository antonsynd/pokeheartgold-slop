#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222F848
	.extern _022577C0

	.text

	.text
	thumb_func_start ov45_0222F848
ov45_0222F848: ; 0x0222F848
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r0, #0x14
	add r4, r5, #0
	mul r4, r0
	add r0, r2, #0
	add r1, r4, #0
	bl Heap_Alloc
	ldr r1, _0222F874 ; =_022577C0
	ldr r2, [r1]
	str r0, [r2, #0x24]
	ldr r0, [r1]
	mov r1, #0
	ldr r0, [r0, #0x24]
	add r2, r4, #0
	bl memset
	ldr r0, _0222F874 ; =_022577C0
	ldr r0, [r0]
	str r5, [r0, #0x28]
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0222F874: .word _022577C0
	thumb_func_end ov45_0222F848

