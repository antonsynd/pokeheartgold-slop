	.include "asm/macros.inc"
	.include "unk_02035900.inc"
	.include "global.inc"
	.public sub_02035FF0
	.extern _021D4140

	.text
	thumb_func_start sub_02035FF0
sub_02035FF0: ; 0x02035FF0
	ldr r0, _02036008 ; =_021D4140
	ldr r1, [r0, #8]
	ldr r0, _0203600C ; =0x000006AD
	ldrb r0, [r1, r0]
	cmp r0, #2
	bne _02036000
	mov r0, #1
	bx lr
_02036000:
	cmp r0, #3
	bne _02036006
	mov r0, #0
_02036006:
	bx lr
	.balign 4, 0
_02036008: .word _021D4140
_0203600C: .word 0x000006AD
	thumb_func_end sub_02035FF0

