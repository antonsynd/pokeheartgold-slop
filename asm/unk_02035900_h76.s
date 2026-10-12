	.include "asm/macros.inc"
	.include "unk_02035900.inc"
	.include "global.inc"
	.public sub_02037988
	.extern _021D4140

	.text
	thumb_func_start sub_02037988
sub_02037988: ; 0x02037988
	ldr r0, _02037998 ; =_021D4140
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _02037996
	ldr r0, _0203799C ; =0x000006B9
	mov r1, #1
	strb r1, [r2, r0]
_02037996:
	bx lr
	.balign 4, 0
_02037998: .word _021D4140
_0203799C: .word 0x000006B9
	thumb_func_end sub_02037988
