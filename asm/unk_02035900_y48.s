	.include "asm/macros.inc"
	.include "unk_02035900.inc"
	.include "global.inc"
	.public sub_02037894
	.public sub_020378AC
	.extern _021D4140

	.text
	thumb_func_start sub_02037894
sub_02037894: ; 0x02037894
	ldr r2, _020378A4 ; =_021D4140
	ldr r2, [r2, #8]
	cmp r2, #0
	beq _020378A2
	add r2, r2, r1
	ldr r1, _020378A8 ; =0x000006A6
	strb r0, [r2, r1]
_020378A2:
	bx lr
	.balign 4, 0
_020378A4: .word _021D4140
_020378A8: .word 0x000006A6
	thumb_func_end sub_02037894

	thumb_func_start sub_020378AC
sub_020378AC: ; 0x020378AC
	ldr r1, _020378C4 ; =_021D4140
	ldr r1, [r1, #8]
	cmp r1, #0
	beq _020378C0
	add r2, r1, r0
	ldr r1, _020378C8 ; =0x000006A6
	ldrb r1, [r2, r1]
	cmp r1, #0xff
	beq _020378C0
	add r0, r1, #0
_020378C0:
	bx lr
	nop
_020378C4: .word _021D4140
_020378C8: .word 0x000006A6
	thumb_func_end sub_020378AC

