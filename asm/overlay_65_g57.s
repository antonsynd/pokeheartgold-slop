#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221E558
	.extern ov65_0221E474
	.extern ov65_0221FCA0

	.text

	.text
	thumb_func_start ov65_0221E558
ov65_0221E558: ; 0x0221E558
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0221E5EC ; =0x000036A0
	ldr r0, [r5, r0]
	bl sub_0202C2F8
	str r0, [sp]
	add r0, r0, #1
	mov r1, #0x1a
	bl ListMenuItems_New
	ldr r1, _0221E5F0 ; =0x00003688
	str r0, [r5, r1]
	mov r0, #0x64
	mov r1, #0x1a
	bl String_New
	ldr r7, _0221E5EC ; =0x000036A0
	add r6, r0, #0
	mov r4, #0
_0221E580:
	ldr r0, [r5, r7]
	add r1, r4, #0
	bl sub_0202C2DC
	cmp r0, #0
	beq _0221E5AA
	ldr r0, _0221E5EC ; =0x000036A0
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl sub_0202C254
	add r1, r0, #0
	add r0, r6, #0
	bl CopyU16ArrayToString
	ldr r0, _0221E5F0 ; =0x00003688
	add r1, r6, #0
	ldr r0, [r5, r0]
	add r2, r4, #0
	bl ListMenuItems_AddItem
_0221E5AA:
	add r4, r4, #1
	cmp r4, #0x20
	blt _0221E580
	ldr r1, _0221E5F0 ; =0x00003688
	mov r2, #0xb
	ldr r0, [r5, r1]
	sub r1, r1, #4
	add r3, r2, #0
	ldr r1, [r5, r1]
	sub r3, #0xd
	bl ListMenuItems_AppendFromMsgData
	add r0, r6, #0
	bl String_Delete
	ldr r2, _0221E5F0 ; =0x00003688
	mov r3, #6
	lsl r3, r3, #6
	ldr r0, [r5, r2]
	add r2, #8
	ldr r1, [sp]
	ldr r3, [r5, r3]
	add r2, r5, r2
	bl ov65_0221FCA0
	ldr r1, _0221E5F4 ; =0x0000368C
	str r0, [r5, r1]
	ldr r1, _0221E5F8 ; =ov65_0221E474
	ldr r0, _0221E5FC ; =0x00002220
	str r1, [r5, r0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0221E5EC: .word 0x000036A0
_0221E5F0: .word 0x00003688
_0221E5F4: .word 0x0000368C
_0221E5F8: .word ov65_0221E474
_0221E5FC: .word 0x00002220
	thumb_func_end ov65_0221E558

