#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222EFAC
	.extern _022577C0
	.extern ov45_0222F74C
	.extern ov45_0222F7B0

	.text

	.text
	thumb_func_start ov45_0222EFAC
ov45_0222EFAC: ; 0x0222EFAC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0222F020 ; =_022577C0
	add r6, r1, #0
	ldr r0, [r0]
	add r4, r2, #0
	cmp r0, #0
	bne _0222EFC0
	bl GF_AssertFail
_0222EFC0:
	ldr r0, _0222F020 ; =_022577C0
	ldr r1, [r0]
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, r5
	bhi _0222EFD2
	bl GF_AssertFail
_0222EFD2:
	ldr r0, _0222F020 ; =_022577C0
	ldr r1, [r0]
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r1, [r1, r0]
	lsl r0, r5, #3
	add r0, r1, r0
	ldr r0, [r0, #4]
	cmp r4, r0
	beq _0222EFEA
	bl GF_AssertFail
_0222EFEA:
	ldr r0, _0222F020 ; =_022577C0
	ldr r1, [r0]
	ldr r0, _0222F024 ; =0x0000012D
	ldrb r0, [r1, r0]
	cmp r0, #4
	bne _0222EFFA
	bl GF_AssertFail
_0222EFFA:
	ldr r0, _0222F020 ; =_022577C0
	ldr r1, [r0]
	ldr r0, _0222F024 ; =0x0000012D
	ldrb r0, [r1, r0]
	bl ov45_0222F7B0
	add r1, r5, #0
	add r2, r6, #0
	add r3, r4, #0
	bl ov45_0223247C
	bl ov45_0222F74C
	cmp r0, #1
	beq _0222F01C
	bl GF_AssertFail
_0222F01C:
	pop {r4, r5, r6, pc}
	nop
_0222F020: .word _022577C0
_0222F024: .word 0x0000012D
	thumb_func_end ov45_0222EFAC

