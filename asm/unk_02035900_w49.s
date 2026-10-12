	.include "asm/macros.inc"
	.include "unk_02035900.inc"
	.include "global.inc"
	.public sub_02037958
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

