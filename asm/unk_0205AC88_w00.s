	.include "asm/macros.inc"
	.include "unk_0205AC88.inc"
	.include "global.inc"
	.public sub_0205AC88
	.public sub_0205AD0C
	.public sub_0205AD24
	.extern sub_0205AD60
	.extern sub_0205B3B8

	.public _020FC824

	.text

	.text
	thumb_func_start sub_0205AC88
sub_0205AC88: ; 0x0205AC88
	push {r3, r4, r5, lr}
	ldr r1, _0205ACF4 ; =0x000004E8
	add r5, r0, #0
	mov r0, #0x1f
	bl Heap_Alloc
	add r4, r0, #0
	ldr r2, _0205ACF4 ; =0x000004E8
	mov r0, #0
	add r1, r4, #0
	bl MIi_CpuClearFast
	mov r0, #0x4e
	str r5, [r4]
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r0, _0205ACF8 ; =sub_0205AD60
	add r1, r4, #0
	mov r2, #0xb
	bl SysTask_CreateOnMainQueue
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_0205A1F0
	ldr r1, _0205ACFC ; =0x000004D4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #8
	ldr r0, [r0, #0xc]
	bl SaveArray_Get
	ldr r1, _0205AD00 ; =0x000004D8
	ldr r2, _0205AD04 ; =0x00002710
	str r0, [r4, r1]
	sub r0, r1, #4
	ldr r0, [r4, r0]
	mov r1, #0x57
	ldr r0, [r0, #0x40]
	str r0, [r4, #8]
	mov r0, #0xb
	bl Heap_CreateAtEnd
	mov r0, #0x57
	bl sub_0205B3B8
	ldr r1, _0205AD08 ; =0x000004DC
	str r0, [r4, r1]
	add r0, r4, #0
	bl sub_0205AD24
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0205ACF4: .word 0x000004E8
_0205ACF8: .word sub_0205AD60
_0205ACFC: .word 0x000004D4
_0205AD00: .word 0x000004D8
_0205AD04: .word 0x00002710
_0205AD08: .word 0x000004DC
	thumb_func_end sub_0205AC88

	thumb_func_start sub_0205AD0C
sub_0205AD0C: ; 0x0205AD0C
	mov r3, #0
	mov r1, #3
_0205AD10:
	ldrb r2, [r0, #0xd]
	cmp r2, #0
	beq _0205AD18
	strb r1, [r0, #0xc]
_0205AD18:
	add r3, r3, #1
	add r0, #0x18
	cmp r3, #0x33
	blt _0205AD10
	bx lr
	.balign 4, 0
	thumb_func_end sub_0205AD0C

	thumb_func_start sub_0205AD24
sub_0205AD24: ; 0x0205AD24
	mov r2, #0
	add r1, r2, #0
_0205AD28:
	strb r1, [r0, #0xc]
	strb r1, [r0, #0xd]
	strb r1, [r0, #0xe]
	strb r1, [r0, #0xf]
	add r2, r2, #1
	add r0, #0x18
	cmp r2, #0x33
	blt _0205AD28
	bx lr
	.balign 4, 0
	thumb_func_end sub_0205AD24

