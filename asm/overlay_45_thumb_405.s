#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222EF4C
	.extern _022577C0
	.extern ov45_0222F74C

	.text

	.text
	thumb_func_start ov45_0222EF4C
ov45_0222EF4C: ; 0x0222EF4C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0222EFA8 ; =_022577C0
	add r6, r1, #0
	ldr r0, [r0]
	add r7, r2, #0
	add r4, r3, #0
	cmp r0, #0
	bne _0222EF62
	bl GF_AssertFail
_0222EF62:
	ldr r0, _0222EFA8 ; =_022577C0
	ldr r1, [r0]
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, r5
	bhi _0222EF74
	bl GF_AssertFail
_0222EF74:
	ldr r0, _0222EFA8 ; =_022577C0
	ldr r1, [r0]
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	lsl r0, r5, #3
	add r0, r1, r0
	ldr r0, [r0, #4]
	cmp r4, r0
	beq _0222EF8C
	bl GF_AssertFail
_0222EF8C:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	add r3, r4, #0
	bl ov45_02232500
	bl ov45_0222F74C
	cmp r0, #1
	beq _0222EFA4
	bl GF_AssertFail
_0222EFA4:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222EFA8: .word _022577C0
	thumb_func_end ov45_0222EF4C

