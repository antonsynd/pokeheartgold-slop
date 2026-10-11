	.include "asm/macros.inc"
	.include "unk_02058034.inc"
	.include "global.inc"
	.public sub_02058720
	.extern _021D41C8

	.text
	thumb_func_start sub_02058720
sub_02058720: ; 0x02058720
	push {r4, lr}
	add r4, r2, #0
	bl sub_0203769C
	ldrb r1, [r4]
	cmp r1, r0
	bne _02058738
	ldr r0, _0205873C ; =_021D41C8
	mov r1, #1
	ldr r0, [r0]
	add r0, #0x3f
	strb r1, [r0]
_02058738:
	pop {r4, pc}
	nop
_0205873C: .word _021D41C8
	thumb_func_end sub_02058720

