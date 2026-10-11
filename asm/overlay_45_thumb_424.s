#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222F70C
	.extern _022577C0

	.text

	.text
	thumb_func_start ov45_0222F70C
ov45_0222F70C: ; 0x0222F70C
	push {r4, lr}
	ldr r0, _0222F744 ; =_022577C0
	ldr r0, [r0]
	cmp r0, #0
	bne _0222F71A
	bl GF_AssertFail
_0222F71A:
	mov r0, #0
	add r1, r0, #0
	bl ov00_021E5CD0
	mov r0, #0
	add r1, r0, #0
	bl ov00_021E5CA0
	ldr r2, _0222F744 ; =_022577C0
	ldr r0, _0222F748 ; =0x0000069C
	ldr r1, [r2]
	mov r3, #3
	strh r3, [r1, r0]
	add r1, r0, #2
	ldr r3, [r2]
	mov r4, #0
	strb r4, [r3, r1]
	ldr r1, [r2]
	add r0, r0, #3
	strb r4, [r1, r0]
	pop {r4, pc}
	.balign 4, 0
_0222F744: .word _022577C0
_0222F748: .word 0x0000069C
	thumb_func_end ov45_0222F70C

