	.include "asm/macros.inc"
	.include "unk_02056D7C.inc"
	.include "global.inc"
	.public sub_02056EE0
	.extern _021D41C4

	.text
	thumb_func_start sub_02056EE0
sub_02056EE0: ; 0x02056EE0
	ldr r0, _02056EF0 ; =_021D41C4
	ldr r0, [r0]
	cmp r0, #0
	beq _02056EEC
	mov r0, #1
	bx lr
_02056EEC:
	mov r0, #0
	bx lr
	.balign 4, 0
_02056EF0: .word _021D41C4
	thumb_func_end sub_02056EE0

