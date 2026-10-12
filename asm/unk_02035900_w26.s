	.include "asm/macros.inc"
	.include "unk_02035900.inc"
	.include "global.inc"
	.public sub_02037474
	.extern _021D4140

	.text
	thumb_func_start sub_02037474
sub_02037474: ; 0x02037474
	push {r3, lr}
	ldr r0, _02037494 ; =_021D4140
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0203748E
	bl sub_0203993C
	bl sub_02034044
	cmp r0, #0
	beq _0203748E
	mov r0, #1
	pop {r3, pc}
_0203748E:
	bl sub_02035650
	pop {r3, pc}
	.balign 4, 0
_02037494: .word _021D4140
	thumb_func_end sub_02037474

