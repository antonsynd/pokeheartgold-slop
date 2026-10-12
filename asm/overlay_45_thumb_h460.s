#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222FC44
	.extern _022577C0
	.extern ov45_0222EB94
	.extern ov45_0222F74C
	.extern ov45_0222F7A8
	.extern ov45_0222FA74
	.extern ov45_0222FB84
	.extern ov45_02254EF0

	.text

	.text
	thumb_func_start ov45_0222FC44
ov45_0222FC44: ; 0x0222FC44
	push {r3, r4, r5, lr}
	add r5, r0, #0
	cmp r1, #0
	bne _0222FC84
	ldr r0, _0222FCD0 ; =_022577C0
	mov r3, #1
	ldr r2, [r0]
	ldr r1, _0222FCD4 ; =0x000005B4
	lsl r3, r3, #0xa
	str r3, [r2, r1]
	ldr r2, [r0]
	mov r0, #0x6d
	lsl r0, r0, #2
	add r0, r2, r0
	add r1, r2, r1
	bl ov45_02232170
	bl ov45_0222F74C
	cmp r0, #0
	bne _0222FC72
	bl GF_AssertFail
_0222FC72:
	ldr r2, _0222FCD8 ; =ov45_02254EF0
	mov r0, #0
	mov r1, #0
	ldr r2, [r2]
	mvn r0, r0
	add r3, r1, #0
	bl ov45_02232304
	pop {r3, r4, r5, pc}
_0222FC84:
	ldr r0, _0222FCD0 ; =_022577C0
	ldr r4, [r0]
	add r0, r1, #0
	bl ov45_0222F7A8
	ldr r1, _0222FCDC ; =0x0000012D
	ldrb r2, [r4, r1]
	cmp r2, r0
	bne _0222FCC4
	cmp r5, #1
	bne _0222FCBC
	mov r2, #1
	add r0, r1, #2
	strb r2, [r4, r0]
	ldr r0, _0222FCD0 ; =_022577C0
	ldr r0, [r0]
	ldrb r1, [r0, r1]
	bl ov45_0222FB84
	bl ov45_02232580
	add r1, r0, #0
	ldr r0, _0222FCD0 ; =_022577C0
	mov r2, #1
	ldr r0, [r0]
	bl ov45_0222FA74
	pop {r3, r4, r5, pc}
_0222FCBC:
	mov r2, #2
	add r0, r1, #2
	strb r2, [r4, r0]
	pop {r3, r4, r5, pc}
_0222FCC4:
	bl GF_AssertFail
	bl ov45_0222EB94
	pop {r3, r4, r5, pc}
	nop
_0222FCD0: .word _022577C0
_0222FCD4: .word 0x000005B4
_0222FCD8: .word ov45_02254EF0
_0222FCDC: .word 0x0000012D
	thumb_func_end ov45_0222FC44

