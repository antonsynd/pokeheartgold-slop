	.include "asm/macros.inc"
	.include "unk_02058034.inc"
	.include "global.inc"
	.public sub_02058AA0
	.extern _021D41C8
	.extern sub_0205876C
	.extern sub_020587E8
	.extern sub_0205882C
	.extern sub_02058854
	.extern sub_02058870

	.text
	thumb_func_start sub_02058AA0
sub_02058AA0: ; 0x02058AA0
	ldr r0, _02058AD4 ; =_021D41C8
	ldr r0, [r0]
	cmp r0, #0
	bne _02058AAC
	mov r0, #0
	bx lr
_02058AAC:
	ldr r1, [r0, #0x30]
	ldr r0, _02058AD8 ; =sub_02058870
	cmp r1, r0
	beq _02058ACC
	ldr r0, _02058ADC ; =sub_02058854
	cmp r1, r0
	beq _02058ACC
	ldr r0, _02058AE0 ; =sub_0205882C
	cmp r1, r0
	beq _02058ACC
	ldr r0, _02058AE4 ; =sub_020587E8
	cmp r1, r0
	beq _02058ACC
	ldr r0, _02058AE8 ; =sub_0205876C
	cmp r1, r0
	bne _02058AD0
_02058ACC:
	mov r0, #1
	bx lr
_02058AD0:
	mov r0, #0
	bx lr
	.balign 4, 0
_02058AD4: .word _021D41C8
_02058AD8: .word sub_02058870
_02058ADC: .word sub_02058854
_02058AE0: .word sub_0205882C
_02058AE4: .word sub_020587E8
_02058AE8: .word sub_0205876C
	thumb_func_end sub_02058AA0
