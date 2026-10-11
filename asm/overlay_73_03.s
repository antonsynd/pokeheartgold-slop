#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E5ED4
	.public ov73_021E77E8

	.text

	thumb_func_start ov73_021E5ED4
ov73_021E5ED4: ; 0x021E5ED4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl ov73_021E77E8
	ldr r0, [r6, #0x18]
	bl Heap_Free
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl Heap_Free
	mov r4, #0
	add r5, r6, #0
_021E5EF0:
	ldr r0, [r5, #0x2c]
	bl String_Delete
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _021E5EF0
	ldr r0, [r6, #0x48]
	bl String_Delete
	ldr r0, [r6, #0x44]
	bl String_Delete
	pop {r4, r5, r6, pc}
	thumb_func_end ov73_021E5ED4

