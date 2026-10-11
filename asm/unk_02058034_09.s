	.include "asm/macros.inc"
	.include "unk_02058034.inc"
	.include "global.inc"
	.public sub_020582A8
	.extern _021D41C8
	.extern sub_020582F4
	.extern sub_02058A38

	.text
	thumb_func_start sub_020582A8
sub_020582A8: ; 0x020582A8
	push {r3, lr}
	ldr r0, _020582C4 ; =_021D41C8
	ldr r0, [r0]
	cmp r0, #0
	beq _020582C0
	mov r0, #0x5b
	bl sub_02037AC0
	ldr r0, _020582C8 ; =sub_02058A38
	mov r1, #5
	bl sub_020582F4
_020582C0:
	pop {r3, pc}
	nop
_020582C4: .word _021D41C8
_020582C8: .word sub_02058A38
	thumb_func_end sub_020582A8

