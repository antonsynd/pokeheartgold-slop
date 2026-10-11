	.include "asm/macros.inc"
	.include "unk_02035900.inc"
	.include "global.inc"
	.public sub_020378E4
	.extern _021D4140

	.text
	thumb_func_start sub_020378E4
sub_020378E4: ; 0x020378E4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0203993C
	bl sub_02034044
	cmp r0, #0
	beq _02037922
	ldr r2, _02037924 ; =_021D4140
	ldr r1, _02037928 ; =0x00000664
	ldr r3, [r2, #8]
	ldr r0, [r3, r1]
	cmp r0, r4
	beq _02037922
	str r4, [r3, r1]
	cmp r4, #0
	beq _02037922
	ldr r3, [r2, #8]
	mov r0, #0
	add r1, r1, #4
	str r0, [r3, r1]
	ldr r1, _0203792C ; =0x0000066C
	add r5, r0, #0
	add r4, r0, #0
_02037914:
	ldr r3, [r2, #8]
	add r0, r0, #1
	add r3, r3, r5
	add r5, r5, #4
	str r4, [r3, r1]
	cmp r0, #8
	blt _02037914
_02037922:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02037924: .word _021D4140
_02037928: .word 0x00000664
_0203792C: .word 0x0000066C
	thumb_func_end sub_020378E4

