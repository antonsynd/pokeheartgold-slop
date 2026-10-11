#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222EB94
	.extern _022577C0
	.extern ov45_0222F74C

	.text

	.text
	thumb_func_start ov45_0222EB94
ov45_0222EB94: ; 0x0222EB94
	push {r3, lr}
	ldr r0, _0222EBBC ; =_022577C0
	ldr r0, [r0]
	cmp r0, #0
	bne _0222EBA2
	bl GF_AssertFail
_0222EBA2:
	bl ov45_02231EC0
	bl ov45_0222F74C
	cmp r0, #1
	bne _0222EBB8
	ldr r1, _0222EBBC ; =_022577C0
	mov r3, #3
	ldr r2, [r1]
	ldr r1, _0222EBC0 ; =0x0000012E
	strb r3, [r2, r1]
_0222EBB8:
	pop {r3, pc}
	nop
_0222EBBC: .word _022577C0
_0222EBC0: .word 0x0000012E
	thumb_func_end ov45_0222EB94

