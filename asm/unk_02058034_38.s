	.include "asm/macros.inc"
	.include "unk_02058034.inc"
	.include "global.inc"
	.public sub_02058930
	.extern _021D41C8
	.extern sub_020582F4
	.extern sub_020589D8

	.text
	thumb_func_start sub_02058930
sub_02058930: ; 0x02058930
	push {r3, r4, r5, lr}
	mov r4, #0
	bl sub_02037454
	cmp r0, #0
	ble _02058952
	ldr r5, _02058964 ; =_021D41C8
_0205893E:
	ldr r0, [r5]
	add r0, r0, r4
	ldrb r0, [r0, #0x10]
	cmp r0, #0
	beq _02058960
	add r4, r4, #1
	bl sub_02037454
	cmp r4, r0
	blt _0205893E
_02058952:
	mov r0, #0x61
	bl sub_02037AC0
	ldr r0, _02058968 ; =sub_020589D8
	mov r1, #0
	bl sub_020582F4
_02058960:
	pop {r3, r4, r5, pc}
	nop
_02058964: .word _021D41C8
_02058968: .word sub_020589D8
	thumb_func_end sub_02058930

