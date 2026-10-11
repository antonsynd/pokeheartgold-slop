	.include "asm/macros.inc"
	.include "unk_02035900.inc"
	.include "global.inc"
	.public sub_02037824
	.public sub_0203783C
	.public sub_02037854
	.public sub_0203786C
	.public sub_02037880
	.public sub_02037894
	.public sub_020378AC
	.extern _021D4140

	.text
	thumb_func_start sub_02037824
sub_02037824: ; 0x02037824
	add r1, r0, #0
	ldr r0, _02037834 ; =_021D4140
	ldr r3, _02037838 ; =sub_02033F9C
	ldr r2, [r0, #8]
	mov r0, #0x5a
	lsl r0, r0, #4
	add r0, r2, r0
	bx r3
	.balign 4, 0
_02037834: .word _021D4140
_02037838: .word sub_02033F9C
	thumb_func_end sub_02037824

	thumb_func_start sub_0203783C
sub_0203783C: ; 0x0203783C
	ldr r0, _0203784C ; =_021D4140
	ldr r3, _02037850 ; =sub_02033C50
	ldr r1, [r0, #8]
	mov r0, #0x5a
	lsl r0, r0, #4
	add r0, r1, r0
	bx r3
	nop
_0203784C: .word _021D4140
_02037850: .word sub_02033C50
	thumb_func_end sub_0203783C

	thumb_func_start sub_02037854
sub_02037854: ; 0x02037854
	ldr r0, _02037864 ; =_021D4140
	ldr r3, _02037868 ; =sub_02033C50
	ldr r1, [r0, #8]
	mov r0, #0x16
	lsl r0, r0, #6
	add r0, r1, r0
	bx r3
	nop
_02037864: .word _021D4140
_02037868: .word sub_02033C50
	thumb_func_end sub_02037854

	thumb_func_start sub_0203786C
sub_0203786C: ; 0x0203786C
	ldr r1, _02037878 ; =_021D4140
	ldr r2, [r1, #8]
	ldr r1, _0203787C ; =0x000006B6
	strb r0, [r2, r1]
	bx lr
	nop
_02037878: .word _021D4140
_0203787C: .word 0x000006B6
	thumb_func_end sub_0203786C

	thumb_func_start sub_02037880
sub_02037880: ; 0x02037880
	ldr r0, _0203788C ; =_021D4140
	ldr r1, [r0, #8]
	ldr r0, _02037890 ; =0x000006B6
	ldrb r0, [r1, r0]
	bx lr
	nop
_0203788C: .word _021D4140
_02037890: .word 0x000006B6
	thumb_func_end sub_02037880

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

