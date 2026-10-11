	.include "asm/macros.inc"
	.include "unk_02035900.inc"
	.include "global.inc"
	.public sub_020360EC
	.extern _021D4140
	.extern sub_02036508
	.extern sub_02036AD8
	.extern sub_020373B4
	.extern sub_0203769C

	.text
	thumb_func_start sub_020360EC
sub_020360EC: ; 0x020360EC
	push {r3, lr}
	ldr r0, _02036118 ; =_021D4140
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _02036116
	bl sub_02036AD8
	bl sub_0203769C
	cmp r0, #0
	bne _02036110
	mov r0, #0
	bl sub_020373B4
	cmp r0, #0
	beq _02036110
	bl sub_02036508
_02036110:
	ldr r0, _02036118 ; =_021D4140
	mov r1, #0
	strb r1, [r0, #1]
_02036116:
	pop {r3, pc}
	.balign 4, 0
_02036118: .word _021D4140
	thumb_func_end sub_020360EC

