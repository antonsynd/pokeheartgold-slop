	.include "asm/macros.inc"
	.include "unk_02058034.inc"
	.include "global.inc"
	.public sub_0205834C
	.extern _021D41C8
	.extern sub_020582F4
	.extern sub_0205836C

	.text
	thumb_func_start sub_0205834C
sub_0205834C: ; 0x0205834C
	push {r3, lr}
	ldr r0, _02058364 ; =_021D41C8
	ldr r0, [r0]
	add r0, #0x3a
	ldrb r0, [r0]
	bl sub_02037E1C
	ldr r0, _02058368 ; =sub_0205836C
	mov r1, #0
	bl sub_020582F4
	pop {r3, pc}
	.balign 4, 0
_02058364: .word _021D41C8
_02058368: .word sub_0205836C
	thumb_func_end sub_0205834C

