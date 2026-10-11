	.include "asm/macros.inc"
	.include "unk_02058034.inc"
	.include "global.inc"
	.public sub_02058164
	.extern _021D41C8
	.extern sub_020582F4
	.extern sub_0205834C

	.text
	thumb_func_start sub_02058164
sub_02058164: ; 0x02058164
	ldr r1, _02058174 ; =_021D41C8
	ldr r3, _02058178 ; =sub_020582F4
	ldr r1, [r1]
	add r1, #0x3a
	strb r0, [r1]
	ldr r0, _0205817C ; =sub_0205834C
	mov r1, #0
	bx r3
	.balign 4, 0
_02058174: .word _021D41C8
_02058178: .word sub_020582F4
_0205817C: .word sub_0205834C
	thumb_func_end sub_02058164

