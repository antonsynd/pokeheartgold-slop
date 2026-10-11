	.include "asm/macros.inc"
	.include "unk_02058034.inc"
	.include "global.inc"
	.public sub_02058258
	.extern _021D41C8
	.extern sub_020588F8
	.extern sub_02058930

	.text
	thumb_func_start sub_02058258
sub_02058258: ; 0x02058258
	ldr r0, _02058278 ; =_021D41C8
	ldr r0, [r0]
	ldr r1, [r0, #0x30]
	ldr r0, _0205827C ; =sub_020588F8
	cmp r1, r0
	bne _02058268
	mov r0, #0
	bx lr
_02058268:
	ldr r0, _02058280 ; =sub_02058930
	cmp r1, r0
	beq _02058272
	mov r0, #1
	bx lr
_02058272:
	mov r0, #0
	bx lr
	nop
_02058278: .word _021D41C8
_0205827C: .word sub_020588F8
_02058280: .word sub_02058930
	thumb_func_end sub_02058258

