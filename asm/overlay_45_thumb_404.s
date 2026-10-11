#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222EEF0
	.extern _022577C0
	.extern ov45_0222F74C

	.text

	.text
	thumb_func_start ov45_0222EEF0
ov45_0222EEF0: ; 0x0222EEF0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0222EF48 ; =_022577C0
	add r6, r1, #0
	ldr r0, [r0]
	add r4, r2, #0
	cmp r0, #0
	bne _0222EF04
	bl GF_AssertFail
_0222EF04:
	ldr r0, _0222EF48 ; =_022577C0
	ldr r1, [r0]
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, r5
	bhi _0222EF16
	bl GF_AssertFail
_0222EF16:
	ldr r0, _0222EF48 ; =_022577C0
	ldr r1, [r0]
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	lsl r0, r5, #3
	add r0, r1, r0
	ldr r0, [r0, #4]
	cmp r4, r0
	beq _0222EF2E
	bl GF_AssertFail
_0222EF2E:
	mov r0, #0
	add r1, r5, #0
	add r2, r6, #0
	add r3, r4, #0
	bl ov45_0223247C
	bl ov45_0222F74C
	cmp r0, #1
	beq _0222EF46
	bl GF_AssertFail
_0222EF46:
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0222EF48: .word _022577C0
	thumb_func_end ov45_0222EEF0

