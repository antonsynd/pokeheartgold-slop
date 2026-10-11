	.include "asm/macros.inc"
	.include "unk_02058034.inc"
	.include "global.inc"
	.public sub_020588F8
	.extern _021D41C8
	.extern sub_020582F4
	.extern sub_02058930

	.text
	thumb_func_start sub_020588F8
sub_020588F8: ; 0x020588F8
	push {r4, lr}
	bl sub_0203769C
	add r4, r0, #0
	mov r0, #0x5f
	bl sub_02037B38
	cmp r0, #0
	beq _02058922
	ldr r1, _02058924 ; =_021D41C8
	mov r0, #0x58
	ldr r2, [r1]
	lsl r1, r4, #2
	ldr r1, [r2, r1]
	ldr r2, _02058928 ; =0x0000066C
	bl sub_02036FD8
	ldr r0, _0205892C ; =sub_02058930
	mov r1, #0
	bl sub_020582F4
_02058922:
	pop {r4, pc}
	.balign 4, 0
_02058924: .word _021D41C8
_02058928: .word 0x0000066C
_0205892C: .word sub_02058930
	thumb_func_end sub_020588F8

