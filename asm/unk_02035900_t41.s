	.include "asm/macros.inc"
	.include "unk_02035900.inc"
	.include "global.inc"
	.public sub_02037958
	.public sub_02037974
	.public sub_02037988
	.extern _021D4140

	.text
	thumb_func_start sub_02037958
sub_02037958: ; 0x02037958
	ldr r0, _0203796C ; =_021D4140
	ldr r1, [r0, #8]
	ldr r0, _02037970 ; =0x000006B1
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02037968
	mov r0, #1
	bx lr
_02037968:
	mov r0, #0
	bx lr
	.balign 4, 0
_0203796C: .word _021D4140
_02037970: .word 0x000006B1
	thumb_func_end sub_02037958

	thumb_func_start sub_02037974
sub_02037974: ; 0x02037974
	ldr r0, _02037980 ; =_021D4140
	mov r2, #1
	ldr r1, [r0, #8]
	ldr r0, _02037984 ; =0x000006B8
	strb r2, [r1, r0]
	bx lr
	.balign 4, 0
_02037980: .word _021D4140
_02037984: .word 0x000006B8
	thumb_func_end sub_02037974

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
